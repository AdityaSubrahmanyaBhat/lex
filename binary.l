%{
#include<stdio.h>

%}


%%

[0-1]+    { printf("binary"); }

%%



int yywrap(){
    return 1;
}


int main(){
    printf("Enter the number\n");
    yylex();
    return 0;
}