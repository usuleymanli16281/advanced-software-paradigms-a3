
#include <iostream>
#include <chrono>
using namespace std;
using namespace chrono;

const int SIZE = 10000;
const int TIMES = 100000;

void staticArray()
{
    static int arr[SIZE];
}

void stackArray()
{
    int arr[SIZE];
}

void heapArray()
{
    int* arr = new int[SIZE];
    delete[] arr;
}

void benchmark(void (*func)(), const string& name)
{
    auto start = steady_clock::now();

    for (int i = 0; i < TIMES; i++)
    {
        func();
    }

    auto end = steady_clock::now();

    cout << name << ": "
         << duration<double, milli>(end - start).count()
         << " ms" << endl;
}

int main()
{
    benchmark(staticArray, "Static allocation");
    benchmark(stackArray, "Stack allocation");
    benchmark(heapArray, "Heap allocation");

    return 0;
}
