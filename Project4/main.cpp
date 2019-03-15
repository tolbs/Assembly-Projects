//Name: Tolby Lam

#include <iostream>
using namespace std;

extern"C" {
	void reverse(char[], int length);
	int length(char[]);
}

int main()
{
	char myString[] = "tolby needs to sleep";
	int stringLength = length(myString);

	cout << "Length: " << stringLength << endl;
	cout << "Original: " << myString << endl;
	reverse(myString, stringLength);
	cout << "Reversed: " << myString << endl;
	system("pause");
	return 0;
}