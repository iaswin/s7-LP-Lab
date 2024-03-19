/* Write a lex program to recognize whether a given sentence is simple or compound. */

%{
	#include<stdio.h>
	int flag=0;
%}
%%

(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[bB][uU][tT]"") {flag=1;}
%%

int main()
{
	
	printf("Enter the sentence: \n");
	yylex();
	if(flag==1) printf("Compound sentence\n");
	else printf("Simple sentence\n");
	return 0;
}
