
/**
  SPI3 Generated Driver API Source File

  Company:
    Microchip Technology Inc.

  File Name:
    spi3.c

  @Summary
    This is the generated source file for the SPI3 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This source file provides APIs for driver for SPI3.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0256GPM064
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.50
        MPLAB             :  MPLAB X v5.45
*/

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

/**
  Section: Included Files
*/

#include "spi3.h"

/**
 Section: File specific functions
*/

/**
  SPI3 Transfer Mode Enumeration

  @Summary
    Defines the Transfer Mode enumeration for SPI3.

  @Description
    This defines the Transfer Mode enumeration for SPI3.
 */
typedef enum {
    SPI3_TRANSFER_MODE_32BIT  = 2,
    SPI3_TRANSFER_MODE_16BIT = 1,
    SPI3_TRANSFER_MODE_8BIT = 0
}SPI3_TRANSFER_MODE;

inline __attribute__((__always_inline__)) SPI3_TRANSFER_MODE SPI3_TransferModeGet(void);
static void SPI3_Exchange( uint8_t *pTransmitData, uint8_t *pReceiveData );
static uint16_t SPI3_ExchangeBuffer(uint8_t *pTransmitData, uint16_t byteCount, uint8_t *pReceiveData);

/**
 Section: Driver Interface Function Definitions
*/


void SPI3_Initialize (void)
{
    // FRMERR disabled; 
    SPI3STAT = 0x00;
    // SPI3BRG 0; 
    SPI3BRG = 0x00;
    // AUDMONO disabled; AUDEN disabled; SPITUREN disabled; FRMERREN disabled; IGNROV disabled; SPISGNEXT disabled; SPIROVEN disabled; AUDMOD disabled; IGNTUR disabled; 
    SPI3CON2 = 0x00;
    // MCLKSEL PBCLK; DISSDO disabled; SRXISEL Last Word is Read; CKP Idle:Low, Active:High; FRMEN disabled; FRMSYPW One-Clock; SSEN disabled; FRMCNT 1; MSSEN disabled; MSTEN Master; MODE16 disabled; FRMPOL disabled; SMP Middle; SIDL disabled; FRMSYNC disabled; CKE Idle to Active; MODE32 disabled; SPIFE Frame Sync pulse precedes; STXISEL Complete; DISSDI disabled; ON enabled; ENHBUF enabled; 
    SPI3CON = 0x18020;

}

static void SPI3_Exchange( uint8_t *pTransmitData, uint8_t *pReceiveData )
{

    while( SPI3STATbits.SPITBF == true )
    {

    }

    SPI3BUF = *((uint8_t*)pTransmitData);


    while ( SPI3STATbits.SPIRBE == true)
    {
    
    }

    *((uint8_t*)pReceiveData) = SPI3BUF;

}

static uint16_t SPI3_ExchangeBuffer(uint8_t *pTransmitData, uint16_t byteCount, uint8_t *pReceiveData)
{

    uint16_t dataSentCount = 0;
    uint16_t dataReceivedCount = 0;
    uint8_t dummyDataReceived = 0;
    uint8_t dummyDataTransmit = (uint8_t)SPI3_DUMMY_DATA;
    uint8_t fifoMultiplier;
    uint8_t fifoLimit8Bit;
    uint16_t quotient;
    uint16_t remainder;
    uint16_t count = 0;
    uint8_t  *pSend, *pReceived;

    fifoMultiplier = 4;
    fifoLimit8Bit = ((SPI3_FIFO_FILL_LIMIT)*fifoMultiplier);
    quotient = (byteCount>>4);
    remainder = ((byteCount)&(0x000F));

    if((pTransmitData == NULL)&&(pReceiveData == NULL))
    {
        return dataSentCount;
    }
    else if (pTransmitData == NULL)
    {
        pReceived = (uint8_t*)pReceiveData;
        count = quotient;
        while (quotient--)
        {
            while ( SPI3STATbits.SPITBE != true );

            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;
            SPI3BUF = dummyDataTransmit;

            while ( SPI3STATbits.SPIRBF != true );

            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
        }

        dataSentCount = count*fifoLimit8Bit;
        dataReceivedCount = dataSentCount;

        if (remainder)
        {
            while ( SPI3STATbits.SPITBE != true );

            while ( remainder-- )
            {
                SPI3BUF = dummyDataTransmit;
            }
            dataSentCount = dataSentCount + (byteCount - dataSentCount);

            while( dataReceivedCount < byteCount )
            {
                if (SPI3STATbits.SPIRBE == false)
                {
                    *(pReceived++) = SPI3BUF;
                    dataReceivedCount++;
                }
            }
        }   
    }
    else if (pReceiveData == NULL)
    {
        pSend = (uint8_t*)pTransmitData;
        count = quotient;
        while (quotient--)
        {
            while ( SPI3STATbits.SPITBE != true );

            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);

            while ( SPI3STATbits.SPIRBF != true );

            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
            dummyDataReceived = SPI3BUF;
        }

        dataSentCount = count*fifoLimit8Bit;
        dataReceivedCount = dataSentCount;

        if (remainder)
        {
            while ( SPI3STATbits.SPITBE != true );

            while ( remainder-- )
            {
                SPI3BUF = *(pSend++);
            }
            dataSentCount = dataSentCount + (byteCount - dataSentCount);

            while( dataReceivedCount < byteCount )
            {
                if (SPI3STATbits.SPIRBE == false)
                {
                    dummyDataReceived = SPI3BUF;
                    dataReceivedCount++;
                }
            }
        }
    }
    else
    {
        pSend = (uint8_t*)pTransmitData;
        pReceived = (uint8_t*)pReceiveData;
        count = quotient;
        while (quotient--)
        {
            while ( SPI3STATbits.SPITBE != true );

            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);
            SPI3BUF = *(pSend++);

            while ( SPI3STATbits.SPIRBF != true );

            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
            *(pReceived++) = SPI3BUF;
        }

        dataSentCount = count*fifoLimit8Bit;
        dataReceivedCount = dataSentCount;

        if (remainder)
        {
            while ( SPI3STATbits.SPITBE != true );

            while ( remainder-- )
            {
                SPI3BUF = *(pSend++);
            }
            dataSentCount = dataSentCount + (byteCount - dataSentCount);

            while( dataReceivedCount < byteCount )
            {
                if (SPI3STATbits.SPIRBE == false)
                {
                    *(pReceived++) = SPI3BUF;
                    dataReceivedCount++;
                }
            }
        } 
    }
    return dataSentCount;
}

uint8_t SPI3_Exchange8bit( uint8_t data )
{
    uint8_t receiveData;
    
    SPI3_Exchange(&data, &receiveData);

    return (receiveData);
}


uint16_t SPI3_Exchange8bitBuffer(uint8_t *dataTransmitted, uint16_t byteCount, uint8_t *dataReceived)
{
    return (SPI3_ExchangeBuffer(dataTransmitted, byteCount, dataReceived));
}

inline __attribute__((__always_inline__)) SPI3_TRANSFER_MODE SPI3_TransferModeGet(void)
{
    if (SPI3CONbits.MODE32 == 1)
        return SPI3_TRANSFER_MODE_32BIT;
    else if (SPI3CONbits.MODE16 == 1)
        return SPI3_TRANSFER_MODE_16BIT;
    else
        return SPI3_TRANSFER_MODE_8BIT;
}

SPI3_STATUS SPI3_StatusGet()
{
    return(SPI3STAT);
}

/**
 End of File
*/
