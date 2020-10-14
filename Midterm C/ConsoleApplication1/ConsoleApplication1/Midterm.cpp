#include <iostream>
using namespace std;
int main()
{
    int row, col, n, layer;
    int data[] = 320;
    for (row = 0; row < n; row++)
        for (col = 0; col < n; col++)
            for (layer = 0; layer < n; layer++)
                if (data[row][col][layer] == 320)
                    cout << "hello";

    
}

