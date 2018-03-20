#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

#define NUMBER '0'
#define BUFFSIZE 100
#define NAME 'n'

char buf[BUFFSIZE];
int bufp = 0;
char buf_one;

int sp = 0;
double val[BUFFSIZE];

int getch(void);
int getch_one(void);
void ungetch(int);
void ungetch_one(int);
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

int getch(void)
{
    return (bufp > 0) ? buf[--bufp] : getchar();
}

int getch_one(void)
{
    int c;

    if (buf_one != 0)
        c = buf_one;
    else
        c = getchar();
    buf_one = 0;

    return c;
}

void ungetch(int c)
{
    if (bufp >= BUFFSIZE)
        printf("ungetch:too many characters\n");
    else
        buf[bufp++] = c;
}

void ungetch_one(int c)
{
    if (buf_one != 0)
        printf("ungetch:too many characters\n");
    else
        buf_one = c;
}

int getop(char s[])
{
    int i, c;

    while ((s[0] = c = getch()) == ' ' || c == '\t')
        ;
    s[1] = '\0';
    i = 0;

    if (islower(c))
    {
        while (islower(s[++i] = c = getch()))
            ;
        s[i] = '\0';
        if (c != EOF)
            ungetch(c);
        if (strlen(s) > 1)
            return NAME;
        else
            return c;
    }

    if (!isdigit(c) && c != '.' && c != '-')
        return c; //not a number
    if (c == '-')
    {
        if (isdigit(c = getch()) || c == '.')
            s[++i] = c; //negative number
        else
        {
            if (c != EOF)
                ungetch(c);
            return '-';
        }
    }

    if (isdigit(c))
        while (isdigit(s[++i] = c = getch()))
            ;
    if (c == '.')
        while (isdigit(s[++i] = c = getch()))
            ;
    s[i] = '\0';
    if (c != EOF)
        ungetch(c);
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

//ungets:push string back onto the input
void ungets(char s[])
{
    int len = strlen(s);
    while (len > 0)
        ungetch(s[--len]);
}