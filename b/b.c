#include "all.h"
#include "b.h"

int func_b(void)
{
	printf("%s %s %s\n", __func__, DEFINE_ALL, DEFINE_B);
	return 0;
}
