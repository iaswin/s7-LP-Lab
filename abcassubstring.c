#include<stdio.h>

#include<string.h>

int main()
{	char arr[100];
	int state=0,final=3,flag=0;
	printf("enter the string::");
	scanf("%s",arr);
	int n=strlen(arr);
	
	for(int i=0;i<n;i++)
	{
		if(arr[i]=='a'||arr[i]=='b'||arr[i]=='c')
			{
			switch(state)
				{
					case 0:
						if(arr[i]=='b'||arr[i]=='c')
							{
								state=0;
							}
						else if(arr[i]=='a')
							{
								state=1;
							}
					break;
					
					case 1:
						if(arr[i]=='c')
							{
								state=0;
							}
						else if(arr[i]=='a')
							{
								state=1;
							}
						else if(arr[i]=='b')
							{
								state=2;
							}
					break;
					
					case 2:
						if(arr[i]=='a')
							{
								state=1;
							}
						else if(arr[i]=='b')
							{
								state=0;
							}
						else if(arr[i]=='c')
							{
								state=3;
							}
					break;
					
					
					case 3:
						if(arr[i]=='a'||arr[i]=='b'||arr[i]=='c')
							{
								state=3;
							}
						
					break;
					
					
					}
				}
			else 
			{
				state=0;
				flag=1;
				break;
			}
		}
	if(state==final&&flag==0)
	{
		printf("string accepted");
	}
	else{
		printf("not accepted");
	}
}
								
