#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
    unsigned aCnt = 0, eCnt = 0, iCnt = 0, oCnt = 0, uCnt = 0;
    char ch = 0;

    while (cin >> ch) {
        switch (ch) {
            case 'a':
                ++aCnt;
                break;
            case 'e':
                ++eCnt;
                break;
            case 'i':
                ++iCnt;
                break;
            case 'o':
                ++oCnt;
                break;
            case 'u':
                ++uCnt;
                break;
        }
    }

    cout << "A:" << aCnt << endl;
    cout << "E:" << eCnt << endl;
    cout << "I:" << iCnt << endl;
    cout << "O:" << oCnt << endl;
    cout << "U:" << uCnt << endl;
    
    return 0;
}
