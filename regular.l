%{

#include<stdio.h>

int flag=0,flag2=0;
%}

%%

aa[a|b]*bb {flag++;}
[0|1]*000[0|1]* {flag++;}
\n {return 0;}
. {flag2++;}


%%

int yywrap()
{
return 1;
}


int main()
{
	printf("enter the string");
	yylex();
	
	if(flag==1)
	{	printf("string is valid");
	}
	
	if (flag2==1)
	{
		printf("string is invalid");
	}
	return 0;
}
