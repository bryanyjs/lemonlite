/*
 * led.h
 *
 *  Created on: 2015. 11. 8.
 *      Author: aaron
 */

#ifndef LED_H_
#define LED_H_

#define LED_SET(x) \
{\
	unsigned char in_led=IORD(LED_BASE, 0);\
	unsigned char out_tmp=1<<x;\
	unsigned char out=in_led | out_tmp;\
	IOWR(LED_BASE, 0, out);\
}

#define TOGGLE_LED(x) \
{\
	unsigned char in_led=IORD(LED_BASE, 0);\
	unsigned char out_tmp=1<<x;\
	unsigned char out=in_led ^ out_tmp;\
	IOWR(LED_BASE, 0, out);\
}

#define READ_LED_PORT (IORD(LED_BASE, 0))
#define WRITE_LED_PORT(x) (IOWR(LED_BASE, 0, x))

#endif /* LED_H_ */
