%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A NL
%%
S:A A X NL {printf("valid string\n");exit(0);}
;
X:X A A
|
;
%%

int yyerror(char *msg){
    printf("invalid string\n");
}

int main(){
    yyparse();
}