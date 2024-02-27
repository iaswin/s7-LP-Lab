#include<stdio.h>
#include<string.h>

int main()
{
    char arr[100];
    int state=0, final=2, flag=0;
    
    printf("Enter the string: ");
    scanf("%s", arr);
    
    int n = strlen(arr);

    for(int i=0; i<n; i++)
    {
        if(arr[i] == '0' || arr[i] == '1')
        {
            switch(state)
            {
                case 0:
                    if(arr[i] == '1')
                    {
                        state = 0;
                    }
                    else if(arr[i] == '0')
                    {
                        state = 1;
                    }
                    break;
                case 1:
                    if(arr[i] == '1')
                    {
                        state = 0;
                    }
                    else if(arr[i] == '0')
                    {
                        state = 2;
                    }
                    break;
                case 2:
                    if(arr[i] == '1')
                    {
                        state = 0;
                    }
                    else if(arr[i] == '0')
                    {
                        state = 2;
                    }
                    break;
            }
        }
        else
        {
            state = 0;
            flag = 1;
        }
    }

    if(state == final && flag == 0)
    {
        printf("Valid");
    }
    else
    {
        printf("Invalid");
    }

    return 0;
}

