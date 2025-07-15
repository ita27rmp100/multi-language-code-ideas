#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){
    int n , numEntered , oddNumbers = 0 , sumOdd = 0 , productOdd = 1 ;
    do{
        printf("*** Enter the number of values : ");
        scanf("%i",&n);
    } while (n<=0);
    // A loop to enter 'n' value by user :
    for (int i=1;i<=n;i++){
        printf("Enter value %i : ",i);
        scanf("%i",&numEntered);
        // this condition is to check if the number entred is odd or not
        if (numEntered%2 != 0){ 
            sumOdd += numEntered;
            productOdd *= numEntered; 
            oddNumbers = oddNumbers*10 + numEntered;
        }
    }
    printf("odd numbers : ");
    // the while to print the odd numbers
    while(oddNumbers!=0){
        printf("%i ",oddNumbers%10);
        oddNumbers = oddNumbers/10;
    }
    // print the sum and product of odd numbers the user entred :
    printf("\nSum of odd numbers : %i\nProduct of odd numbers : %i",sumOdd,productOdd);
    return 0;
}