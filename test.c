#include "all.h"
#include <stdio.h>

void print_binary(unsigned int n)
{


}

int main(int argc, char* argv[])
{
	int i;
	unsigned int a=188;
	unsigned int array[8]= {1, 3, 7, 15, 31, 63, 127, 255};

	func_a();
	func_b();
	func_c();

	print_binary(a);	

	for(i=0; i<MAX_N; i++) {
		print_binary(array[i]);
	}
	
	return 0;
}
