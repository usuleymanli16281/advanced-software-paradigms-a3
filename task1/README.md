# Task 1 — Static, Stack, and Heap Memory Allocation

## Introduction
This task compares thre memory allocation methods in C++: static, stack and heap allocation. The objective is to measure the execution time of each approach and understand how different memory alocation methods affects performance.

## Implementation
The program contains three functions each using an array of 10000 integers allocated in a different way.

### 1. Static Allocation
The `staticArray` function declares array using the `static` keyword.

```cpp
void staticArray()
{
    static int arr[SIZE];
}
```

The array has static storage duration meaning it exists throughout the program's lifetime. Its storage is not alocated again on subsequent function calls.

### 2. Stack Allocation

The `stackArray` function declares local array.

```cpp
void stackArray()
{
    int arr[SIZE];
}
```

The array has automatic storage duration and is typically stored on the stack. Its lifetime is limited to the function call and stack storage management generally requires little overhead.

### 3. Heap Allocation

The `heapArray` function dynamically allocates array using `new[]`.

```cpp
void heapArray()
{
    int* arr = new int[SIZE];
    delete[] arr;
}
```

The array is allocated dynamically each time function is called. The `delete[]` statment release the allocated memory.

## Performance Measurement

Each function is called 100000 times using the `benchmark` function.

The program uses `std::chrono::steady_clock` to measure the total execution time in milliseconds.

The experiment was performed using OnlineGDB.


## Results

The following execution times were obtained:

| Memory Allocation Method | Execution Time (ms) |
|--------------------------|--------------------:|
| Static Allocation        | 0.198398            |
| Stack Allocation         | 0.297639            |
| Heap Allocation          | 4.98673             |



## Analysis of Results

**Static allocation** had the lowest execution time (0.198398 ms). The array has static storage duration so its storage is not allocated again during subsequent function calls.

**Stack allocation** was slightly slower (0.297639 ms). The local array has automatic storage duration and stack storage management generally requires little overhead.

**Heap allocation** took the longest time (4.98673 ms). Each function call dynamically allocates memory using `new[]` and releases it using `delete[]` introducing additional overhead.

In this experiment, heap allocation took approximately 25.1 times as long as static allocation.

The results depend on the compiler, optimization settings, hardware, and execution environment. Since the arrays are not accessed, compiler optimizations may eliminate unused allocation operations.


## Conclusion

The experiment demonstrates the differences between static, stack and heap memory allocation in C++.

Static and stack allocation produced similar execution times, while heap allocation required significantly more time because of repeated dynamic alocation and deallocation.

The results illustrate the overhead associated with dynamic memory management in this particular implementation. They do not imply that heap memory access is always slower than stack or static memory access.

## How to Run

The program can be compiled using a C++ compiler that supports C++11 or later.

```bash
g++ main.cpp -o main
./main
```

Alternatively [OnlineGDB](https://www.onlinegdb.com/) can be used.