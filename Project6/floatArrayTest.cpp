// main.cpp
// Program that calls assembly functions to calculate the avg, max, and min of floats.
// CS G242
// Student name:


#include <stdio.h>
#include <iostream>
using namespace std;
extern"C"
{
	float average(float [], int);   // external assembly function prototypes
	float max(float [], int);
	float min(float [], int);
}


int main()
{
	// declare an array of floats to pass into assembly functions
	const int SIZE = 5;
	float floatArr[SIZE] = {2.2, 3.75, 1.11, 5.9, 4.64};

	// display the array content
	printf("The array contains the float numbers: ");

	for (int i = 0; i<SIZE; i++)
		printf("%f ", floatArr[i]);

	// call the assembly function to compute average
	float avg = average(floatArr, SIZE);
	printf("\n\nThe average of the floats are: %f\n", avg);

	// call assembly function to commpute maximum
	float maximum = max(floatArr, SIZE);
	printf("The largest float is: %f\n", maximum);

	// call assembly function to commpute minimum
	float minimum = min(floatArr, SIZE);
	printf("The smallest float is: %f\n", minimum);

	system("pause");
	return 0;
}

