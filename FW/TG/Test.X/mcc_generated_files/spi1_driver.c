/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "mcc.h"
#include "spi1_driver.h"

void (*spi1_interruptHandler)(void); 

inline void spi1_close(void)
{
    SPI1CONbits.ON = 0;
}

//con == SPIxCON, con2 == SPIxCON2, stat == SPIxSTAT, brg == SPIxBRG, operation == Master/Slave
typedef struct { uint32_t con; uint32_t con2; uint32_t stat; uint32_t brg; uint8_t operation;} spi1_configuration_t;
static const spi1_configuration_t spi1_configuration[] = {   
    { 0x00000060, 0x00000000, 0x00000000, 0x00000000, 0 },
    { 0x00000060, 0x00000000, 0x00000000, 0x0000001D, 0 },
    { 0x00000120, 0x00000000, 0x00000000, 0x0000005F, 0 }
};

bool spi1_open(spi1_modes spiUniqueConfiguration)
{
    if(!SPI1CONbits.ON)
    {
        SPI1CON = spi1_configuration[spiUniqueConfiguration].con;
        SPI1CON2 = spi1_configuration[spiUniqueConfiguration].con2;
        SPI1STAT = spi1_configuration[spiUniqueConfiguration].stat;
        SPI1BRG = spi1_configuration[spiUniqueConfiguration].brg;
        
        TRISCbits.TRISC13 = spi1_configuration[spiUniqueConfiguration].operation;
        SPI1CONbits.ON = 1;
        return true;
    }
    return false;
}

// Full Duplex SPI Functions
uint8_t spi1_exchangeByte(uint8_t b)
{
    SPI1BUF = b;
    while(!SPI1STATbits.SPIRBF);
    return SPI1BUF;
}

void spi1_exchangeBlock(void *block, size_t blockSize)
{
    uint8_t *data = block;
    while(blockSize--)
    {
        *data = spi1_exchangeByte(*data );
        data++;
    }
}

// Half Duplex SPI Functions
void spi1_writeBlock(void *block, size_t blockSize)
{
    uint8_t *data = block;
    while(blockSize--)
    {
        spi1_exchangeByte(*data++);
    }
}

void spi1_readBlock(void *block, size_t blockSize)
{
    uint8_t *data = block;
    while(blockSize--)
    {
        *data++ = spi1_exchangeByte(0);
    }
}

void spi1_writeByte(uint8_t byte)
{
    SPI1BUF = byte;
}

uint8_t spi1_readByte(void)
{
    return SPI1BUF;
}

/**
 * Interrupt from SPI on bit 8 received and SR moved to buffer
 * If interrupts are not being used, then call this method from the main while(1) loop
 */
void spi1_isr(void)
{
    if(IFS1bits.SPI1EIF == 1){
        if(spi1_interruptHandler){
            spi1_interruptHandler();
        }
        IFS1bits.SPI1EIF = 0;
    }
}

void spi1_setSpiISR(void(*handler)(void))
{
    spi1_interruptHandler = handler;
}
