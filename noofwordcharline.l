%{

#include<stdlib.h>

int chara=0,line=0,word=0,num=0;
%}

%%

[a-zA-Z]* {word++; chara+=yyleng;}
[ ] {word++;}
[\n] {line++;}
[0-9] {num++;}
. ;
%%




int yywrap()
{
	return 1;
}

int main(){
	extern FILE*yyin;
	yyin=fopen("input.txt","r");
	yylex();
	
	printf("No of words:%d",word);
	printf("No of Line:%d",line);
	printf("No of character:%d",chara);
	printf("No of number:%d",num);
	
	return 0;
	
	
	}
