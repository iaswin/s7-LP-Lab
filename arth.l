%{
#include "y.tab.h"
#include<stdio.h>
#include<stdlib.h>


%}

%%
[0-9]+ {return NUM;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
[\n] {return NL;}
. {return yytext[0];}
%%


int yywrap()
{
return 1;
}

