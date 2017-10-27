// main.c

#include <stdio.h>
#include "liba.h"

int main(int argc, char *argv[]) {
	printf("main.c: main()\n");
	double a = liba_func(1.0); // 42
	printf("main.c: a = %f\n", a);
}
