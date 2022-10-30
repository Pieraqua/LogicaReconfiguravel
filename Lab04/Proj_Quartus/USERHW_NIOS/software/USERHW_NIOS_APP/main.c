/*
 * main.c
*/
#include <system.h>

int main()
{
	//IOWR_32DIRECT(BASE, OFFSET, DATA)
	//IORD_32DIRECT(BASE, OFFSET, DATA)

	/**
	 * Memory Configuration

Name             Origin             Length             Attributes
reset            0x0000000000000000 0x0000000000000020
ROM              0x0000000000000020 0x0000000000001fd6
RAM              0x0000000000004000 0x0000000000001ff6
*default*        0x0000000000000000 0xffffffffffffffff
*default*        */
	int i = 0;
	int count = 0;
	const char nome[] = "+++--+++ PAULO SERGIO AVILA JUNIOR";

	(*(int*)USERHW_NIOS_0_BASE) = 0x05;

	for(i = 0; i < 1024; i++)
	{
		//Escreve dados
		count++;
		if(count == 34)
			count = 0;
	}

	for(i = 0; i < 1024; i++)
	{
		//Le dados
	}

	return 0;
}
