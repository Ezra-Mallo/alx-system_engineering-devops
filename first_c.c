#include <stdio.h>
#include <string.h>

int main()
{
   int a = 3;
   int b = 4;	   
   int i, j;
   for (int i = 1; i <= a; i++) {

   	   for (int j = 1; j <= b; j++) {

  	   	printf("%i, ", i);
  	   	printf("%i", j);
		printf("\n");
//		printf("  Hello World\n");
	}
   }
   return 0;
}
