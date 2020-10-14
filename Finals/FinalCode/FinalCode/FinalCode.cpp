#include<iostream>
#include<map>
using namespace std;

bool contains(int arr[], int size) {
    map<int, int> nums;
    for (int i = 0; i < size; i++) nums[arr[i]] = 1;
    int product;
    for (int i = 0; i < size - 1; i++) {
        for (int j = i + 1;j < size;j++) {
            product = arr[i] * arr[j];
            if (nums[product] == 1) return true;
        }
    }
    return false;

}

int main() {

    
    int arr0[] = { 0,1,3,5,15 };
    cout << "Example 1: { ";
    for (int i = 0; i < 5; i++) {
        cout << arr0[i] << " ";
    }
    cout << "} \t";
    cout << boolalpha << contains(arr0, 5) << endl;


    int arr1[] = { 0,1,3,3,7};
    cout << "Example 2: { ";
    for (int i = 0; i < 5; i++) {
        cout << arr1[i] << " ";
    }
    cout << "} \t";
    cout << boolalpha << contains(arr1, 5) << endl;

    int arr2[] = { 2,-1,-3,10,8 };
    cout << "Example 3: { ";
    for (int i = 0; i < 5; i++) {
        cout << arr2[i] << " ";
    }
    cout << "} \t";
    cout << boolalpha << contains(arr2, 5) << endl;

    int arr3[] = { 6,4,-3,-2,0,5 };
    cout << "Example 4: { ";
    for (int i = 0; i < 6; i++) {
        cout << arr3[i] << " ";
    }
    cout << "} \t";
    cout << boolalpha << contains(arr3, 5) << endl;

    return 0;
}