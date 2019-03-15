#include <iostream>
using namespace std;

extern"C" {
	int length(char[]);
	bool palindrome(char[], int length);
}

int main() {
	char myStr[] = "RaceCar";
	int strLen = length(myStr);

	cout << "String: " << myStr << endl;

	if (palindrome(myStr, strLen))
		cout << "Palindrome!" << endl;
	else
		cout << "Not a palindrome..." << endl;

	system("pause");
	return 0;
}