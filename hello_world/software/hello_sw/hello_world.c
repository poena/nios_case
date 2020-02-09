/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>
#include "altera_avalon_sysid_qsys_regs.h"
#include "priv/alt_busy_sleep.h"


void test_timer(){
	printf("Start Test Timer.\n");
    unsigned char led_data = 0x1;
	for(int i=0;i<1000;i++){
		alt_busy_sleep(1000000);
		IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,led_data);
		led_data = (led_data >> (8 - 1)) | (led_data << 1);
	}
	printf("Timer test done.\n");
}

int main()
{
  printf("Hello from Nios II!\n");
  IOWR_ALTERA_AVALON_PIO_DIRECTION(PIO_0_BASE,0xF);
  IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,0xA);
  //wait(1);
  int sys_id = IORD_ALTERA_AVALON_SYSID_QSYS_ID(SYSID_QSYS_0_BASE);
  printf("System ID is: %#08x\n", sys_id);
  char cc = getchar();
  printf("You input: %c\n",cc);

  test_timer();

  return 0;
}
