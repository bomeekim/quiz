#include "all.h"
#include "c.h"

int func_c(void)
{
	printf("%s %s %s\n", __func__, DEFINE_ALL, DEFINE_C);
	return 0;
}
