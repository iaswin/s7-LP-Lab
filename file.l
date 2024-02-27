%{
#include<stdio.h>
int a;
%}


%%
"{" fprintf(yyout,"%s","begin");
"begin" fprintf(yyout,"%s","}");
[a-zA-Z]+ fprintf(yyout,"%s",yytext);
[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] fprintf(yyout,"%s","xxxxxxxxxx");

%%

int yywrap()
{
	return 1;
}

int main()
{
	extern FILE *yyin,*yyout;
	yyin=fopen("input.txt","r");
	yyout=fopen("outpu.txt","w");
	yylex();
	return 0;
}
	
