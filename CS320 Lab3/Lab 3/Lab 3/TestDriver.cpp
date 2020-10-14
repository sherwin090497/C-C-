#include <iostream>
#include"point.cpp"

using namespace std;

int main()
{
	int xOne, yOne, xTwo, yTwo;
	cout << "First point (X, Y) \nenter X: ";
	cin >> xOne;
	cout << "enter Y: ";
	cin >> yOne;
	Point p1(xOne, yOne);
	cout << "\nSecond point (X, Y) \nenter X: ";
	cin >> xTwo;
	cout << "enter Y: ";
	cin >> yTwo;
	Point p2(xTwo, yTwo);

	cout << "\nInputs: " << endl;
	cout << "(" << xOne << ", " << yOne << ")" << endl;
	cout << "(" << xTwo << ", " << yTwo << ")\n" << endl;

	cout << "Distance from origin, P1: " << p1.distance() << endl;
	cout << "Distance from origin, P2: " << p2.distance() << endl;

	bool b;
	b = p1 < p2;
	cout << "P1 < P2:  " << boolalpha << b << endl;

	b = p1 > p2;
	cout << "P1 > P2:  " << boolalpha << b << endl;

	b = p1 >= p2;
	cout << "P1 >= P2: " << boolalpha << b << endl;

	b = p1 <= p2;
	cout << "P1 <= P2: " << boolalpha << b << endl;

	b = p1 == p2;
	cout << "P1 = P2:  " << boolalpha << b << endl;

	b = p1 != p2;
	cout << "P1 != P2: " << boolalpha << b << endl;

	return 0;
}