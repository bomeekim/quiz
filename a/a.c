#include "a.h"
#include "all.h"

int func_a(void)
{
	printf("%s %s %s\n", __func__, DEFINE_ALL, DEFINE_A);
	return 0;
}
