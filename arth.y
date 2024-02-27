%{
#include <stdio.h>
#include <stdlib.h>
%}

%token NUM ID NL

%%

stmt: exp NL { printf("Valid String"); exit(0); };
exp: exp '+' exp | exp '-' exp | exp '*' exp | exp '/' exp | '(' exp ')' | ID | NUM;

%%

int yyerror(char *msg)
{
    printf("error");
    exit(0);
}

int main()
{
    printf("Enter the arithmetic expression: ");
    yyparse();
    return 0;
}

