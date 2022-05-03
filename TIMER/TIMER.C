#include <stdio.h>
#include <pc98.h>

int t;

void test(void)
{
	t=2;
}

void main(void)
{
	t=1;
	pc98timer(100, test);
	while(1)
		printf("t = %d\n", t);

}