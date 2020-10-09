#include "mss_uart.h"
#include <stdio.h>
/* Main function */
int main()
{
int i = 0, j = 8;
/* printing Microsemi logo on the serial terminal using "printf" */
printf ("\n\r \
** ** ******* ****** ***** **** ***** ****** ** ** ******* \n\r \
* * * * * * * * * * * * * * * * * \n\r \
* * * * * * ***** * * **** ****** * * * * * \n\r \
* * * * * * * * * * * * * * * \n\r \
* * ******* ****** * * **** ***** ****** * * ******* \n\r"
);/* printing greeting message on the serial terminal using "printf" */
printf ("Welcome to SmartFusion-customizable system-on-chip(cSoC)\n\r");
/* printing 8 Table on UART */
printf("Times 8 Table: \n\r");
for(i = 0; i <= 10; i++)
{
printf(" %d x %d = %d\n\r", i, j, j*i);
}
while(1)
{
}
return 0;
};
