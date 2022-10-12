#include <stdio.h>

int main(){
	int area, l,w;
	printf("Enter the lenght:");
	scanf("%i", &l);
	printf("Enter the width:");
	scanf("%i", &w);
	area = l * w;
	printf("The area of a rectangle with length of %i and width of %i is %i\n",l,w,area);
        return 0;


}
