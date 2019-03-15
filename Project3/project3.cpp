// ConsoleApplication1.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
using namespace std;

extern"C" {
	int min(int*, int);
	int max(int*, int);
	int average(int*, int);
}

int main()
{
	const int SIZE = 7;
	int array[SIZE] = { 1, 2, 3, 4, 5, 6, 7};

	int minimum = min(array, SIZE);
	int maximum = max(array, SIZE);
	int mean = average(array, SIZE);

	cout << "The minimum is: " << minimum << endl;
	cout << "The maximum is: " << maximum << endl;
	cout << "The average is: " << mean << endl;
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
