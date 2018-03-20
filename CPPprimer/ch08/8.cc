#include <iostream>
#include <fstream>
#include "Sales_data.h"

using namespace std;

int main(int argc, char* argv[])
{
    if (argc != 3) {
        cout << "Please input output filename and input filename" << endl;
        return -1;
    }

    ifstream in(argv[1]);
    if (!in) {
        cerr << "Can't open input filename" << endl;
        return -1;
    }

    ofstream out(argv[2], ofstream::app);
    if (!out) {
        cerr << "can't open output filename" << endl;
        return -1;
    }

    Sales_data total;
    if (read(in, total)) {
        Sales_data trans;
        while (read(in, total)) {
            if (total.isbn() == trans.isbn()) {
                total.combine(trans);
            }
            else {
                print(out, total) << endl;
                total = trans;
            }
        }
        print(out, total) << endl;
    }
    else {
        cerr << "No data" << endl;
    }

    return 0;
}
