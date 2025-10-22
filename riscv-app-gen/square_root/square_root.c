#include <stdio.h>

int square_root (int value){
    int root   = 1;
    int square = 0;
    int ready  = 1;
    int cicles = 1;
    
    while(!(value-square < 0)){
        square = square + (root<<1)-1;
        root   = root + 1;
        cicles += 1;   
    } 
    return root-2;
}

int main(){
    int input  = 100;
    square_root(input);
    
}