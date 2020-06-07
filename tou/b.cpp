#include <iostream>
using namespace std;
int main() {
    int a[5] = {1,2,3,4,5};
    int b[5];
    for(int i=0;i<5;){
        b[i] = a[i++];
        cout<<i-1<<" "<<b[i-1]<<endl;
    }
    cout<<endl;

    for(int i=0;i<5;i++){
        cout<<b[i]<<" ";
    }
    cout<<endl;
}