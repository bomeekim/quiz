#include "all.h"
#include <stdio.h>

unsigned int bits[MAX_N];

void print_binary(unsigned int n)
{
    int i;
    
    for (i = 7; i >= 0; --i) {
        printf("%d", (n >> i) & 1);
    }
    printf("\n");
}

void remain_binary(unsigned int n)
{
    int i;
  
    printf("\n====remain_binary====\n");
    
    for (i = 7; i >= 0; --i) {
        if(i == 3 || i == 1){
            printf("%d", (n >> i) & 1);
        }else{
            printf("%d", (n >> i) & 0);
        }
    }
    
    printf("\n");
}

void reverse_binary(unsigned int n)
{

    int i;
    n ^= 245;
    
    printf("\n====reverse_binary====\n");
    
    for (i = 7; i >= 0; --i) {
        printf("%d", (n >> i) & 1);
    }
    
    printf("\n");
}

void reverse_array(unsigned int n)
{
    int arr[MAX_N];
    int i,j;
    
    for (i = 7; i >= 0; --i) {
        arr[i] = (n >> i) & 1;
    }
    
    for(j = 0; j < (sizeof(arr) / sizeof(arr[0])); j++){
        printf("%d", arr[j]);
    }
    
    printf("\n");
}

int main(int argc, char* argv[])
{
	int i;
	unsigned int a=188;
	unsigned int array[8]= {1, 3, 7, 15, 31, 63, 127, 255};

	func_a();
	func_b();
	func_c();

    printf("\n====print_binary====\n");
    
	print_binary(a);
    remain_binary(a);
    reverse_binary(a);

    printf("\n====print_array====\n");
    
	for(i=0; i<MAX_N; i++) {
		print_binary(array[i]);
	}
    
    printf("\n====print_reverse_array====\n");
    
    for(i=0; i<MAX_N; i++) {
        reverse_array(array[i]);
    }
	
	return 0;
}
