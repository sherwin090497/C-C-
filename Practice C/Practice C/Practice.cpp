#include <iostream>

using namespace std;


class Cars {

	private:
		int year;
		
	public:
		
		string carBrand;
		string model;
		
		Cars(int aYear, string aCarBrand, string aModel) {
			setYear(aYear);
			carBrand = aCarBrand;
			model = aModel;
		}

		void setYear(int aYear) {
				year = aYear;
		}

		int getYear() {
			return year;
		}
};


int main() {
	/*
	Cars daily(2010, "Nissan", "370z");
	Cars project(2003, "Nissan", "350z");
	Cars want(2016, "Nissan", "GTR");

	cout << daily.getYear() << " " << daily.carBrand << " " << daily.model << endl;
	cout << project.getYear() << " " << project.carBrand << " " << project.model << endl;
	cout << want.getYear() << " " << want.carBrand << " " << want.model << endl;
	*/

	string i = "first";

	if (i == "first") {
	}

	if (i == "second") {
		printf("Hi");

	}
	else {
		printf("Bye");
	}
	
	



	return 0;
}

