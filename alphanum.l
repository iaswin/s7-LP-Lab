%{
#include<stdio.h>
#include<stdlib.h>

 int alphanumeric=0,alphabet=0,num=0,line=0,flag=0,abb;


%}

%%
"hello"[ ]* {printf("Matched in line :%d\n",line);alphabet=alphabet+5;}
\n {line++;}

[a-zA-Z]+[@][a-z]+[.](com|in) {flag++;}
[a-zA-z]*abb[a-zA-z]* {abb++;}

[a-zA-Z]+[0-9]+ {alphanumeric++;}
[a-zA-Z] {alphabet+=yyleng;}
[0-9] {num++;}




"/" {return 0;}
%%

 int yywrap()
 {
 	return 1;
 }
 
  
 int main(){
	extern FILE* yyin;
	yyin=fopen("input.txt","r");
	yylex();
	
	printf("Number of alphanumeric :%d\n",alphanumeric);
	printf("Number of alphabet :%d\n",alphabet);
	printf("Number is :%d\n",num);
	printf("line count is:%d\n",line);
	printf("No of abb is:%d\n",abb);
	if(flag==1){
	printf("valid");
	}
	else{
	printf("invalid");
	}
	return 0;
	}
