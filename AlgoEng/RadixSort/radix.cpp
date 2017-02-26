#include<iostream>
using namespace std;

int getMax(int array[], int n)
{
    int max = array[0];
    for (int i = 1; i < n; i++)
        if (array[i] > max)
            max = array[i];
    return max;
}

// A function to do counting sort of arr[] according to
// the digit represented by exp.
void countSort(int array[], int n, int exp)
{
    int output[n];
    int i, count[10] = {0};

    // Store count of occurrences in count[]
    for (i = 0; i < n; i++)
        count[ (array[i]/exp)%10 ]++;

    // Change count[i] so that count[i] now contains actual
    //  position of this digit in output[]
    for (i = 1; i < 10; i++)
        count[i] += count[i - 1];

    // Build the output array
    for (i = n - 1; i >= 0; i--)
    {
        output[count[ (array[i]/exp)%10 ] - 1] = array[i];
        count[ (array[i]/exp)%10 ]--;
    }

    // Copy the output array to arr[], so that arr[] now
    // contains sorted numbers according to current digit
    for (i = 0; i < n; i++)
        array[i] = output[i];
}

// The main function to that sorts arr[] of size n using
// Radix Sort
void radixsort(int array[], int n)
{
    // Find the maximum number to know number of digits
    int max = getMax(array, n);

    // Do counting sort for every digit. Note that instead
    // of passing digit number, exp is passed. exp is 10^i
    // where i is current digit number
    for (int exp = 1; max/exp > 0; exp *= 10)
        countSort(array, n, exp);
}

// A utility function to print an array
void print(int array[], int n)
{
    for (int i = 0; i < n; i++)
        cout << array[i] << " ";
}

// Driver program to test above functions
int main()
{
    int array[] = {170, 45, 75, 90, 802, 24, 2, 66};
    int n = sizeof(array)/sizeof(array[0]);
    radixsort(array, n);
    print(array, n);
    return 0;
}
