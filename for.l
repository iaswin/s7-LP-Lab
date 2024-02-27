%{
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"

%}

%%
[ ] {}
"for" {return FOR;}
"int" {return INT;}
[0-9]+ {return NUM;}
[a-z]+ {return ID;}

"++" {return INC;}
[\n] {return NL;}

. {return yytext[0];}


%%

int yywrap()
{
	return 1;
	
}

