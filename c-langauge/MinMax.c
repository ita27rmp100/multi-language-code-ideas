#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(){
    int n , i , n_read , max=0 , min=0 ;
    do{
        printf("Enter the number of values to be read : ");
        scanf("%i",&n); 
    }while(n<=0);
    for(i=1;i<=n;i++){
        printf("Enter value %i : ",i);
        scanf("%i",&n_read);
        // get max
        if(n_read>=max){max=n_read;}
        // get min
        if(i==1){min = n_read;}
        else{
            if(-n_read>-min){min=n_read;}
        }
    }
    printf("The max value is : %i \nThe min value is : %i",max,min);
    return 0;
}