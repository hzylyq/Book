#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
    // int ia[3][4] = {g
    //     {0, 1, 2, 3},
    //     {4, 5, 6, 7},
    //     {8, 9, 10, 11}
    // };
    // int arr[10][20][30] = {0};
    //
    // ia[2][3] = arr[0][0][0];
    // int (&row)[4] = ia[1];
    //
    // cout << ia[2][3] << endl;
    //
    // cout << ia[2][0] << " " << *row << endl;
    // constexpr size_t rowCnt = 3, colCnt = 4;
    // int ia[rowCnt][colCnt];
    // for (size_t i = 0; i < rowCnt; i++) {
    //     for (size_t j = 0; j < colCnt; j++) {
    //         ia[i][j] = i * colCnt + j;
    //     }
    // }
    // size_t cnt = 0;
    // for (auto &row : ia){
    //     for (auto &col : row){
    //         col = cnt;
    //         cnt++;
    //     }
    // }
    //
    // for (const auto &row : ia){
    //     for (auto col : row){
    //         cout << col << " ";
    //     }
    //     cout << endl;
    // }
    int ia[3][4];
    int (*p)[4] = ia;
    p = &ia[2];

    // for (auto p = ia; p != ia + 3; p++){
    //     for (auto q = *p; q != *p + 4; q++) {
    //         cout << *q << " ";
    //     }
    //     cout << endl;
    // }

    for (auto p = begin(ia); p != end(ia); p++) {
        for (auto q = begin(*p); q != end(*p); q++) {
            cout << *q << " ";
        }
        cout << endl;
    }

    return 0;
}
