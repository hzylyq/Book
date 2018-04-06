#include <iostream>
#include <ctime>
#include <cstdlib>

using namespace std;

int select(int *A, int k, int n)
{
    int *minHeap = (int *)malloc(sizeof(int) * k);
    int heapSize = 0;

    minHeap[heapSize++] = A[0];
    int j = 0;
    int i = 0;

    for (i = 0; i < k; i++)
    {
        for (j = heapSize; j > 0; j--)
        {
            if (minHeap[j - 1] < A[i])
                break;
            minHeap[j] = minHeap[j - 1];
        }

        minHeap[j] = A[i];
        heapSize++;
    }

    for (i = k; i < n; i++)
    {
        if (minHeap[heapSize - 1] < A[i])
            continue;

        for (j = heapSize - 1; j > 0; j--)
        {
            if (minHeap[j - 1] < A[i])
                break;
            minHeap[j] = minHeap[j - 1];
        }

        minHeap[j] = A[i];
    }

    cout << "minHeap" << endl;

    for (i = 0; i < k; i++)
        cout << minHeap[i] << " ";
    cout << endl;

    int val = minHeap[heapSize - 1];

    free(minHeap);

    return val;
}

int main(void)
{
    srand((unsigned)time(NULL));
    int i = 0;
    int n = 10000;
    int *A = (int *)malloc(sizeof(int) * n);

    while (i < n)
    {
        A[i] = rand() % n;
        cout << A[i++] << " ";
    }
    cout << endl;

    clock_t start = clock();
    cout << "number: " << select(A, n / 2, n) << endl;
    clock_t end = clock();
    cout << "time: " << end - start << endl;

    free(A);

    return 0;
}