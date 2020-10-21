#define _CRT_SECURE_NO_WARNINGS

#include <iostream>

//16.	X=A4/4+C2-D1*2+K	616

extern "C" void calc(int, short, char);

int main()
{
	signed int a;
	signed short c;
	signed char d;
	printf("X=A/4+C-D*2+K | K = 616h \nEnter numbers: \n");
	printf("A = ");
	scanf("%d", &a);
	printf("C = ");
	scanf("%hd", &c);
	printf("D = ");
	scanf("%hhd", &d);
	calc(a, c, d);

	return 0;
}
