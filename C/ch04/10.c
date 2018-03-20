#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

#define NUMBER '0'
#define MAXLINE 100
#define NAME 'n'
#define BUFFSIZE 100

int li = 0;
char line[MAXLINE];
char buf[BUFFSIZE];
int bufp = 0;
int sp = 0;
double val[BUFFSIZE];

int my_getline(char line[], int limit);
int getop(char[]);
void push(double);
double pop(void);
void clear(void);
void mathfunc(char[]);
void ungets(char s[]);

int main(void)
{
    int i, type, var = 0;
    double op1, op2, v;
    char s[BUFFSIZE];
    double variable[26];

    for (i = 0; i < 26; i++)
        variable[i] = 0.0;

    while ((type = getop(s)) != EOF)
    {
        switch (type)
        {
        case NUMBER:
            push(atof(s));
            break;
        case NAME:
            mathfunc(s);
            break;
        case '+':
            push(pop() + pop());
            break;
        case '*':
            push(pop() * pop());
            break;
        case '-':
            op2 = pop();
            push(pop() - op2);
            break;
        case '/':
            op2 = pop();
            if (op2 != 0.0)
                push(pop() / op2);
            else
                printf("error:zero divisor\n");
            break;
        case '%':
            op2 = pop();
            if (op2 != 0.0)
                push(fmod(pop(), op2));
            else
                printf("error:zero divisor\n");
            break;
        case '?':
            op2 = pop();
            printf("\t%.8g\n", op2);
            push(op2);
            break;
        case 's':
            op1 = pop();
            op2 = pop();
            push(op1);
            push(op2);
            break;
        case 'c':
            clear();
            break;
        case 'd':
            op2 = pop();
            push(op2);
            push(op2);
            break;
        case '=':
            pop();
            if (var >= 'A' && var <= 'Z')
                variable[var - 'A'] = pop();
            else
                printf("error:no variable name\n");
            break;
        case '\n':
            v = pop();
            printf("\t%.8g\n", v);
            break;
        default:
            if (type >= 'A' && type <= 'Z')
                push(variable[type - 'A']);
            else if (type == 'v')
                push(v);
            else
                printf("error:unknown command %s\n", s);
            break;
        }
        var = type;
    }

    return 0;
}

int getop(char s[])
{
    int c, i;

    if (line[li] == '\0')
    {
        if (my_getline(line, MAXLINE) == 0)
            return EOF;
        else
            li = 0;
    }

    while ((s[0] = c = line[li++]) == ' ' || c == '\t')
        ;
    s[1] = '\0';
    if (!isdigit(c) && c != '.')
        return c;
    i = 0;
    if (!isdigit(c))
        while (isdigit(s[++i] = c = line[li++]))
            ;

    if (c == '.')
        while (isdigit(s[++i] = c = line[li++]))
            ;
    s[i] = '\0';
    li--;
    return NUMBER;
}

void push(double f)
{
    if (sp < BUFFSIZE)
        val[sp++] = f;
    else
        printf("error:stack full, can't push %g\n", f);
}

double pop(void)
{
    if (sp > 0)
        return val[--sp];
    else
        printf("error:stack empty\n");
    return 0.0;
}

//clear the stack
void clear(void)
{
    sp = 0;
}

//mathfunc:check string s for supported math functions
void mathfunc(char s[])
{
    double op2;

    if (strcmp(s, "sin") == 0)
        push(sin(pop()));
    else if (strcmp(s, "cos") == 0)
        push(cos(pop()));
    else if (strcmp(s, "exp") == 0)
        push(exp(pop()));
    else if (strcmp(s, "pow") == 0)
    {
        op2 = pop();
        push(pow(pop(), op2));
    }
    else
        printf("error:%s not supported\n", s);
}

int my_getline(char line[], int maxline)
{
    int c, i, j;

    j = 0;
    for (i = 0; (c = getchar()) != EOF && c != '\n'; ++i)
        if (i < maxline - 2)
        {
            line[j] = c;
            ++j;
        }

    if (c == '\n')
    {
        line[i] = c;
        ++j;
        ++i;
    }
    line[j] = '\0';
    return i;
}