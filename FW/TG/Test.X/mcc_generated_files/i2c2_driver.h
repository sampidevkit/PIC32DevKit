/*
Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 */

#ifndef __i2c2_driver_H
#define __i2c2_driver_H

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

#define INLINE  inline 
 
typedef void (*interruptHandler)(void);

/* arbitration interface */
INLINE void i2c2_driver_close(void);

/* Interrupt interfaces */
INLINE void i2c2_enableIRQ(void);
INLINE bool i2c2_IRQisEnabled(void);
INLINE void i2c2_disableIRQ(void);
INLINE void i2c2_clearIRQ(void);
INLINE void i2c2_setIRQ(void);
INLINE void i2c2_waitForEvent(uint16_t*);

/* I2C interfaces */
bool  i2c2_driver_driver_open(void);
INLINE char i2c2_driver_getRXData(void);
INLINE void i2c2_driver_TXData(uint8_t);
INLINE void i2c2_driver_resetBus(void);
INLINE void i2c2_driver_start(void);
INLINE void i2c2_driver_restart(void);
INLINE void i2c2_driver_stop(void);
INLINE bool i2c2_driver_isNACK(void);
INLINE void i2c2_driver_startRX(void);
INLINE void i2c2_driver_sendACK(void);
INLINE void i2c2_driver_sendNACK(void);
INLINE void i2c2_driver_clearBusCollision(void);

bool  i2c2_driver_initSlaveHardware(void);
INLINE void i2c2_driver_releaseClock(void);
INLINE bool i2c2_driver_isBuferFull(void);
INLINE bool i2c2_driver_isStart(void);
INLINE bool i2c2_driver_isStop(void);
INLINE bool i2c2_driver_isAddress(void);
INLINE bool i2c2_driver_isData(void);
INLINE bool i2c2_driver_isRead(void);
INLINE void i2c2_driver_enableStartIRQ(void);
INLINE void i2c2_driver_disableStartIRQ(void);
INLINE void i2c2_driver_enableStopIRQ(void);
INLINE void i2c2_driver_disableStopIRQ(void);

INLINE void i2c2_driver_setBusCollisionISR(interruptHandler handler);
INLINE void i2c2_driver_setMasterI2cISR(interruptHandler handler);
INLINE void i2c2_driver_setSlaveI2cISR(interruptHandler handler);

#endif // __i2c2_driver_H
