#include <stdio.h>
#include <stdlib.h>

#define Hamada 10

int main()
{

	int x = Hamada;
	int y = 20;
	printf("Befor Swapping\n");
	printf("X value : %i\n", x);
	printf("Y value : %i\n", y);
	printf("X + Y value: %i\n", x+y);

	printf("\n");
	swapping(x,y);
	return 0;
}


void swapping(int x, int y)
{
	int temp;
	temp = x;
	x = y;
	y = temp;

	printf("After Swapping\n");
	printf("X value : %i\n", x);
	printf("Y value : %i\n", y);
	return;
}