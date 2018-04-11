#include "xparameters.h"
#include "xil_io.h"
#include "C:\Users\Anthony\Documents\ECE532\servo\servo.sdk\design_1_wrapper_hw_platform_0\drivers\srervo_ip_v1_0\src\srervo_ip.h"
volatile unsigned int *mpip_ptr = (unsigned int*) XPAR_SERVO_IP_0_S00_AXI_BASEADDR;
int main()
{
	// Low Level Driver
	SRERVO_IP_mWriteReg(XPAR_SERVO_IP_0_S00_AXI_BASEADDR, 0, 0x0000000F);
	return 0;
}


