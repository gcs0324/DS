#include <iostream>
#include "Vector.h"

int main()
{
    int a[10]={7,2,1,4,6,3,5,99,101,121};
    Vector<int> v(a, 0, 10);
    v.show(10);
    v.testmerge();
}