%{
#include<stdio.h>
#include<stdlib.h>

%}

%token NUM INC ID FOR INT NL

%%
stmt:FOR1 NL {printf("valid");exit(0);}

FOR1:FOR'('init';'cond';'inc')' '{'T'}'
;

init:INT ID'='NUM
;

cond:ID'>'NUM | ID'<'NUM | ID'>'ID'!''='NUM
;

inc:ID INC
;

T:code T| 
;

code:ID'='NUM|ID'<'NUM|ID'>'NUM
;
%%

int yyerror(char *msg)
{
	printf("error");
	exit(0);
}
int main()
{
	printf("enter ");
	yyparse();
	return 0;
}
