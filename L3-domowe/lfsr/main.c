#include <stdio.h>
#include "shift_lfsr.h"

int main(void)
{
  const unsigned int init = 1;
  unsigned int v = init;
  do {

getchar();// putchar('\n');
    v = shift_lfsr(v);
	printf("%d",v);
//    putchar(((v & 1) == 0) ? '0' : '1');

  } while (v != init);
}
