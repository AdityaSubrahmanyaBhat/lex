%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A B NL
%start S
%%
S:A A A X B B B NL {printf("valid string\n");exit(0);}
;
X:A X B
|
;
/* X:X B */
/* | */
/* ; */
%%

int yyerror(char *msg){
    printf("invalid string\n");
}

int main(){
    yyparse();
}