%{
#include "y.tab.h"
#include<stdio.h>





%}

%%
a {return A;}
b {return B;}
\n {return NL;}
. {printf("Invalid");exit(0);}


%%


int yywrap()
{

	return 1;

}
