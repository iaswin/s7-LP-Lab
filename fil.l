%{
#include<stdio.h>

%}


%%
[{] {fprintf(yyout,"%s","begin");}
[}] {fprintf(yyout,"%s","end");}
[a-zA-Z]+ {fprintf(yyout,"%s",yytext);}
" " 
%%

int yywrap()
{
	return 1;
}

int main()
{
	extern FILE *yyin,*yyout;
	yyin=fopen("input.txt","r");
	yyout=fopen("output.txt","w");
	yylex();
	return 0;
}
	
