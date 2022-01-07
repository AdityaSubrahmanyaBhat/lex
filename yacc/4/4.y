%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A B C NL
%%
S: A X B C C Z NL {printf("valid string\n");exit(0);}
;
X:A X B
|
;
Z:Z C
|
;
%%

int yyerror(char *msg){
    printf("invalid string\n");
}

int main(){
    yyparse();
}