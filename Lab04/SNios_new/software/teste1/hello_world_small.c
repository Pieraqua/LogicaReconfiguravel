#include <stdio.h>
#include "io.h"
#include "system.h"
int main()
{
     int atual;
     //printf("Hello from Nios II!\n")
     while(1){
         IOWR(TOP_AVALON_0_BASE,0,0x2);
         IOWR(TOP_AVALON_0_BASE,1,0x12);
             atual = IORD(TOP_AVALON_0_BASE,0);
     }
return 0;
}
