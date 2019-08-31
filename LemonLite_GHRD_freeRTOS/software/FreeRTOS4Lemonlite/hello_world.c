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

#include <stddef.h>
#include <stdio.h>
#include <alt_types.h>
#include <unistd.h>

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "io.h"
#include "led.h"
#include "serial.h"

//Aaron 20170829
//#include "Drivers/accelerometer_adxl345_spi.h"


#define LED_0_TASK_PRIORITY			( tskIDLE_PRIORITY + 1)
#define LED_1_TASK_PRIORITY			( tskIDLE_PRIORITY + 2)
//#define LED_2_6_TASK_PRIORITY		( tskIDLE_PRIORITY + 3)
#define LED_2_7_TASK_PRIORITY		( tskIDLE_PRIORITY + 3)
#define ACC_TASK_PRIORITY   		( tskIDLE_PRIORITY + 4)


void SetupHardware()
{
	WRITE_LED_PORT(0);
	xSerialPortInitMinimal(115200, 4096);
	//Aaron 20170829
	//ADXL345_SPI_Init(GSENSOR_SPI_BASE);
}

void Task_LED0 (void *pvParameters)
{
	for(;;) {
		TOGGLE_LED(0);
		vTaskDelay(500 / portTICK_RATE_MS);
	}

	vTaskDelete(NULL);
}

void Task_LED1 (void *pvParameters)
{
	for(;;) {
		TOGGLE_LED(1);
		vTaskDelay(1000 / portTICK_RATE_MS);
	}

	vTaskDelete(NULL);
}

void Task_LED2_6 (void *pvParameters)
{
	unsigned char led_2_6;
	unsigned char temp_led;
	led_2_6 = 1;

	for(;;) {
		if(led_2_6 & 0x10) { //over led
			led_2_6 = 1;
		}
		led_2_6  = (led_2_6 << 1);
		temp_led = READ_LED_PORT & 0x83;
		temp_led = temp_led | (led_2_6 <<2);
		WRITE_LED_PORT(temp_led);
		vTaskDelay(250 / portTICK_RATE_MS);
	}

	vTaskDelete(NULL);
}

void Task_LED2_7 (void *pvParameters)
{
	unsigned char led_2_7;
	unsigned char temp_led;
	led_2_7 = 1;

	for(;;) {
		if(led_2_7 & 0x40) { //over led
			led_2_7 = 1;
		}
		led_2_7  = (led_2_7 << 1);

		temp_led = READ_LED_PORT & 0x03;
		temp_led = temp_led | (led_2_7 <<1);
		WRITE_LED_PORT(temp_led);
		vTaskDelay(100 / portTICK_RATE_MS);
	}

	vTaskDelete(NULL);
}

#if 0
	void Tarea_acelerometro_xyz (void * pvParameters)
	{

		for(;;) {
			xSerialPutChar( serCOM1, 'a', 0);
			vTaskDelay(1000 / portTICK_RATE_MS);
		}

		vTaskDelete(NULL);
	}
#else
	void Tarea_acelerometro_xyz (void * pvParameters)
	{
		alt_16 szXYZ[3];
		//Aaron
		//bool bSuccess;
		unsigned char DATA_XYZ_TO_UART[10];
		unsigned char i = 0;

		for(;;) {

#if 0
			if (ADXL345_SPI_IsDataReady(GSENSOR_SPI_BASE) ) {
				bSuccess = ADXL345_SPI_XYZ_Read(GSENSOR_SPI_BASE, szXYZ);
				if (bSuccess) {
					printf("X=%d, Y=%d, Z=%d\n", szXYZ[0], szXYZ[1], szXYZ[2]);
				}
			}


			//PACKET ID
			DATA_XYZ_TO_UART[0] = 7;

			//HEAD
			DATA_XYZ_TO_UART[1] = 128 | ((szXYZ[0]>>7 & 1));
			DATA_XYZ_TO_UART[1] = DATA_XYZ_TO_UART[1] | ((szXYZ[0]>>15 & 1) *2);
			DATA_XYZ_TO_UART[1] = DATA_XYZ_TO_UART[1] | ((szXYZ[1]>> 7 & 1) *4);
			DATA_XYZ_TO_UART[1] = DATA_XYZ_TO_UART[1] | ((szXYZ[1]>>15 & 1) *8);
			DATA_XYZ_TO_UART[1] = DATA_XYZ_TO_UART[1] | ((szXYZ[2]>> 7 & 1) *16);
			DATA_XYZ_TO_UART[1] = DATA_XYZ_TO_UART[1] | ((szXYZ[2]>>15 & 1) *32);

			//DATA
			DATA_XYZ_TO_UART[2] = (((szXYZ[0]     ) & 127) + 128);
			DATA_XYZ_TO_UART[3] = (((szXYZ[0] >> 8) & 127) + 128);
			DATA_XYZ_TO_UART[4] = (((szXYZ[1]     ) & 127) + 128);
			DATA_XYZ_TO_UART[5] = (((szXYZ[1] >> 8) & 127) + 128);
			DATA_XYZ_TO_UART[6] = (((szXYZ[2]     ) & 127) + 128);
			DATA_XYZ_TO_UART[7] = (((szXYZ[2] >> 8) & 127) + 128);


			for (i=0; i <8; i++) {
				xSerialPutChar( serCOM1, DATA_XYZ_TO_UART[i], 0);
			}
#endif
			vTaskDelay(1000 / portTICK_RATE_MS);
		}

		vTaskDelete(NULL);
	}
#endif

int main()
{
  printf("Hello from Nios II!\n");
  printf("FreeRTOS for LemonLite\n");
  SetupHardware();

  (void) xTaskCreate (
		  	  	  	  	  Task_LED0,
		  	  	  	  	  ( signed portCHAR *) "Task_LED0",
		  	  	  	  	  configMINIMAL_STACK_SIZE,
		  	  	  	  	  (void *) 0,
		  	  	  	  	  LED_0_TASK_PRIORITY,
		  	  	  	  	  (xTaskHandle *) NULL
		  	  	  	  	  );

#if 0
  (void) xTaskCreate (
		  	  	  	  	  Task_LED1,
		  	  	  	  	  ( signed portCHAR *) "Task_LED1",
		  	  	  	  	  configMINIMAL_STACK_SIZE,
		  	  	  	  	  (void *) 0,
		  	  	  	  	  LED_1_TASK_PRIORITY,
		  	  	  	  	  (xTaskHandle *) NULL
		  	  	  	  	  );
#endif

#if 0 //Task_LED2_6
  (void) xTaskCreate (
		  	  	  	  	  Task_LED2_6,
		  	  	  	  	  ( signed portCHAR *) "Task_LED2_6",
		  	  	  	  	  configMINIMAL_STACK_SIZE,
		  	  	  	  	  (void *) 0,
		  	  	  	  	  LED_2_6_TASK_PRIORITY,
		  	  	  	  	  (xTaskHandle *) NULL
		  	  	  	  	  );
#endif

#if 0
  (void) xTaskCreate (
		  	  	  	  	  Task_LED2_7,
		  	  	  	  	  ( signed portCHAR *) "Task_LED2_7",
		  	  	  	  	  configMINIMAL_STACK_SIZE,
		  	  	  	  	  (void *) 0,
		  	  	  	  	  LED_2_7_TASK_PRIORITY,
		  	  	  	  	  (xTaskHandle *) NULL
		  	  	  	  	  );

  (void) xTaskCreate (
		  	  	  	  	  Tarea_acelerometro_xyz,
		  	  	  	  	  ( signed portCHAR *) "Task_ACC",
		  	  	  	  	  configMINIMAL_STACK_SIZE,
		  	  	  	  	  (void *) 0,
		  	  	  	  	  ACC_TASK_PRIORITY,
		  	  	  	  	  (xTaskHandle *) NULL
		  	  	  	  	  );
#endif

#if 1
  //Aaron start FreeRTOS
  vTaskStartScheduler();

  for (;;) {};
#else
  //Aaron test LED 20170829
  while(1) {
	  TOGGLE_LED(0);
	  //TOGGLE_LED(1);
	  usleep(100000);
	  //usleep(1000);
  }
#endif
  return 0;
}
