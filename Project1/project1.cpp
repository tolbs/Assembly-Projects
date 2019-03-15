// Tolby Lam
// Homework1.cpp
// 9-14-2018

#include <iostream>
#include <cstring>
using namespace std;

char decToHex(int dec)
{
	char hex;
	switch (dec)
	{
	case 0: hex = '0';
		break;
	case 1: hex = '1';
		break;
	case 2: hex = '2';
		break;
	case 3: hex = '3';
		break;
	case 4: hex = '4';
		break;
	case 5: hex = '5';
		break;
	case 6: hex = '6';
		break;
	case 7: hex = '7';
		break;
	case 8: hex = '8';
		break;
	case 9: hex = '9';
		break;
	case 10: hex = 'A';
		break;
	case 11: hex = 'B';
		break;
	case 12: hex = 'C';
		break;
	case 13: hex = 'D';
		break;
	case 14: hex = 'E';
		break;
	case 15: hex = 'F';
	}
	return hex;
}

char decToBin(int dec)
{
	char bin;
	switch(dec)
	{
	case 0: bin = '0';
		break;
	case 1: bin = '1';
		break;
	}
	return bin;
}

void intToBin( int intVal, char binArr[])
{
	int remainder;
	int i = 0;

	while (intVal > 0)
	{
		remainder = intVal % 2;
		binArr[i] = decToBin(remainder);
		intVal = intVal / 2;
		i++;
	}
}

int binToDec(char bin)
{
	int dec;
	switch (bin)
	{
	case '0': dec = 0;
		break;
	case '1': dec = 1;
	}

	return dec;
}

void reverseArray(char arr[])
{
	int j = strlen(arr) - 1;
	int i = 0;

	while ( i < j )
	{
		char temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
		i++;
		j--;
	}
}

void intToHex(int intVal, char hexArr[])
{
	int remainder;
	int i = 0;

	while (intVal > 0)
	{
		remainder = intVal % 16;
		hexArr[i] = decToHex(remainder);
		intVal = intVal / 16;
		i++;
	}

	reverseArray(hexArr);
}

int hexToDec(char hex)
{
	int dec;
	switch (hex)
	{
		case '0': dec = 0;
				  break;
		case '1': dec = 1;
			break;
		case '2': dec = 2;
			break;
		case '3': dec = 3;
			break;
		case '4': dec = 4;
			break;
		case '5': dec = 5;
				break;
		case '6': dec = 6;
			break;
		case '7': dec = 7;
			break;
		case '8': dec = 8;
			break;
		case '9': dec = 3;
			break;
		case 'A':
		case 'a': dec = 10;
			break;
		case 'B':
		case 'b': dec = 11;
			break;
		case 'C':
		case 'c': dec = 12;
			break;
		case 'D':
		case 'd': dec = 13;
			break;
		case 'E':
		case 'e': dec = 14;
			break;
		case 'F':
		case 'f': dec = 15;
	}
	return dec;
}


int main()
{
	char hexaInput[17];
	char hexaResult[17] = { '\0' };

	cout << "Enter hexadecimal: ";
	cin >> hexaInput;
	cout << "You typed: " << hexaInput << "\n";

	int count = strlen(hexaInput);
	double powerVal = 0.0;
	int decValue = 0;

	for (int i = count - 1; i >= 0 ; i--)
	{
		cout << hexToDec(hexaInput[i]) << "\n";
		decValue += hexToDec(hexaInput[i]) * pow(16, powerVal);
		powerVal++;

	}

	cout << "Decimal value is " << decValue << "\n";
	intToHex(decValue*10, hexaResult);
	cout << "For decimal " << decValue*10 << " Hexadecimal is: " << hexaResult << endl;

	/*
	char binInput[17];
	char binResult[17] = { '\0' };

	cout << "Enter binary: ";
	cin >> binInput;
	cout << "You typed: " << binInput << "\n";

	int count = strlen(binInput);
	double powerVal = 0.0;
	int decValue = 0;

	for (int i = count - 1; i >= 0; i--)
	{
		cout << binToDec(binInput[i]) << "\n";
		decValue += binToDec(binInput[i]) * pow(2, powerVal);
		powerVal++;

	}

	cout << "Decimal value is " << decValue << "\n";
	intToBin(decValue * 10, binResult);
	reverseArray(binResult);
	cout << "For decimal " << decValue * 10 << " Binary is: " << binResult << endl;
	*/

	system("pause");
	return 0;
}

