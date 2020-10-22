#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>

extern "C" double calc(float, float, float, float, float);
// X = A1 / B2 + C3 - D1 * E1 + K	
int main()
{
	float a, d, e;
	double b, c, x = 0;

	printf("Ånter numbers:\n"); 
	printf("A = ");
	scanf("%f", &a);
	printf("B = ");
	scanf("%lf", &b); 
	printf("C = ");
	scanf("%lf", &c);
	printf("D = ");
	scanf("%f", &d);
	printf("E = ");
	scanf("%f", &e);
	x = calc(a, b, c, d, e);
	printf("Result is: %.4f\n", x); 
	return 0;
}
