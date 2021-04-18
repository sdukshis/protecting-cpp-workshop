#include <stdio.h>
#include <string.h>
#include "alloc.h"

int main(int argc, char **argv)
{
	char *buf1 = alloc(128);
	dump_heap();
	char *buf2 = alloc(128);
	dump_heap();
	strcpy(buf1, argv[1]);
	dealloc(buf1);
	dump_heap();
	strcpy(buf2, argv[2]);
	dealloc(buf2);
	dump_heap();
	return 0;
}
