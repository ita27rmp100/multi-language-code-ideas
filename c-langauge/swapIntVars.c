#include <stdio.h>
#include <stdlib.h>

int main(){
    int a , b ;
    printf("* A = "); scanf("%i",&a);
    printf("* B = "); scanf("%i",&b);
    a = a+b ;
    b =  a-b ;
    a = a-b;

    printf("After swapping : a = %i and b = %i ",a,b);

    return 0 ;
}