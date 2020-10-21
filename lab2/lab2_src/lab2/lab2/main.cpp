#define _CRT_SECURE_NO_WARNINGS

#include <iostream>

//16.	X=A4/4+C2-D1*2+K	616

extern "C" int calc(int, short, char);

int main()
{
	int a;
	short c;
	char d;
	int res;
	printf("X=A/4+C-D*2+K | K = 616h (1558d)\nEnter numbers: \n");
	printf("A = ");
	scanf("%d", &a);
	printf("C = ");
	scanf("%hd", &c);
	printf("D = ");
	scanf("%hhd", &d);

	res = calc(a, c, d);

	printf("\nX = %x", res);
	printf("\nX = %x", a/4+c-d*2+1558);

	return 0;
}
