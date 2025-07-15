#include <stdlib.h>
#include <string.h>
#include <stdio.h>

// definition of function that recieve a string and return it after remove a specific charachter :
char* remove_char_from(char word[255],char c);

int main(){
    // Example :
    printf("'hello world' without 'l' is : %s",remove_char_from("hello world",'l'));
    // output will be : 'hello world' without 'l' is : heo word
    return 0;
}

// declaring the function
char* remove_char_from(char word[255],char c){
    char* newWORD = malloc(strlen(word)+1) ;
    int i , y = 0  ;
    y = 0 ;
    for(i=0;i<strlen(word);i++){
        if(word[i]!=c){
            newWORD[y]=word[i];
            y++;
        }
    }
    newWORD[y]='\0';
    return newWORD ;
}