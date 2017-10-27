// liba.c

#include <stdio.h>
#include "libb.h"

double liba_func(double i) {
	printf("liba.c:liba_func() side effects!\n");
	return i + 1.0 + libb_func(); // return i + 1 + 40
}
