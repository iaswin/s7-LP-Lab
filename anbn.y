%{
#include<stdio.h>
#include<stdlib.h>


%}

%token A B NL
%%

stmt:S NL{printf("valid");exit(0);
};
S:A S B | ;

%%



int yyerror(char *msg)
{
printf("invalid");
exit(0);
}


int main()
{
printf("enter string");
yyparse();
return 0;
}
