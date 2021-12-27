%{
    #include<stdio.h>
    #include<string.h>
    int len=0;
    char str[100];
%}

%%
[aA-zZ]+ {
  if (yyleng > len) {
    len = yyleng;
    strcpy(str, yytext);
  }}
%%

int yywrap(){
    return 1;
}

int main(){
    extern FILE *yyin;
    yyin=fopen("input.txt","r");
    yylex();
    printf("\tName : %s\n",str);
    printf("\tLength : %d",len);
    return 0;
}