/**
  PIN MANAGER Generated Driver File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.c

  @Summary:
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description:
    This source file provides implementations for PIN MANAGER.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0256GPM064
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.50
        MPLAB 	          :  MPLAB X v5.45
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
    Section: Includes
*/

#include <xc.h>
#include "pin_manager.h"
#include "system.h"

/**
 Section: File specific functions
*/
void (*INT1_InterruptHandler)(void) = NULL;

/**
 Section: Driver Interface Function Definitions
*/
void PIN_MANAGER_Initialize (void)
{
    /****************************************************************************
     * Setting the Output Latch SFR(s)
     ***************************************************************************/
    LATA = 0x0400;
    LATB = 0x0080;
    LATC = 0x1038;
    LATD = 0x0000;

    /****************************************************************************
     * Setting the GPIO Direction SFR(s)
     ***************************************************************************/
    TRISA = 0x09CC;
    TRISB = 0x8F7F;
    TRISC = 0x00C3;
    TRISD = 0x0014;

    /****************************************************************************
     * Setting the Weak Pull Up and Weak Pull Down SFR(s)
     ***************************************************************************/
    CNPDA = 0x0000;
    CNPDB = 0x0040;
    CNPDC = 0x0000;
    CNPDD = 0x0000;
    CNPUA = 0x08C0;
    CNPUB = 0x8023;
    CNPUC = 0x0000;
    CNPUD = 0x0004;

    /****************************************************************************
     * Setting the Open Drain SFR(s)
     ***************************************************************************/
    ODCA = 0x0000;
    ODCB = 0x0000;
    ODCC = 0x0000;
    ODCD = 0x0000;

    /****************************************************************************
     * Setting the Analog/Digital Configuration SFR(s)
     ***************************************************************************/
    ANSELA = 0x000C;
    ANSELB = 0x4000;
    ANSELC = 0x0003;

    /****************************************************************************
     * Set the PPS
     ***************************************************************************/
    SYSTEM_RegUnlock(); // unlock PPS
    RPCONbits.IOLOCK = 0;

    RPINR1bits.INT4R = 0x0015;    //RA7->EXT_INT:INT4
    RPINR11bits.SDI2R = 0x0017;    //RC6->SPI2:SDI2
    RPOR3bits.RP15R = 0x0008;    //RB13->SPI2:SDO2
    RPOR5bits.RP24R = 0x0012;    //RA9->CLC2:CLC2OUT
    RPINR11bits.SCK2INR = 0x0014;    //RC7->SPI2:SCK2OUT
    RPINR9bits.U2RXR = 0x000B;    //RB5->UART2:U2RX
    RPOR4bits.RP20R = 0x0009;    //RC7->SPI2:SCK2OUT
    RPOR2bits.RP12R = 0x0004;    //RB7->UART2:U2TX
    RPOR4bits.RP19R = 0x0011;    //RC2->CLC1:CLC1OUT

    RPCONbits.IOLOCK = 1; // lock   PPS
    SYSTEM_RegLock(); 

    /****************************************************************************
     * Interrupt On Change: any
     ***************************************************************************/
    CNEN0Bbits.CNIE0B15 = 1;    //Pin : RB15
    CNEN1Bbits.CNIE1B15 = 1;    //Pin : RB15
    /****************************************************************************
     * Interrupt On Change: flag
     ***************************************************************************/
    CNFBbits.CNFB15 = 0;    //Pin : RB15
    /****************************************************************************
     * Interrupt On Change: config
     ***************************************************************************/
    CNCONBbits.CNSTYLE = 1;    //Config for PORTB
    CNCONBbits.ON = 1;    //Config for PORTB
    
    /* Initialize IOC Interrupt Handler*/
    INT1_SetInterruptHandler(&INT1_CallBack);
    
    /****************************************************************************
     * Interrupt On Change: Interrupt Enable
     ***************************************************************************/
    IFS0CLR= 1 << _IFS0_CNBIF_POSITION; //Clear CNBI interrupt flag
    IEC0bits.CNBIE = 1; //Enable CNBI interrupt
}

void __attribute__ ((weak)) INT1_CallBack(void)
{

}

void INT1_SetInterruptHandler(void (* InterruptHandler)(void))
{ 
    IEC0bits.CNBIE = 0; //Disable CNBI interrupt
    INT1_InterruptHandler = InterruptHandler; 
    IEC0bits.CNBIE = 1; //Enable CNBI interrupt
}

void INT1_SetIOCInterruptHandler(void *handler)
{ 
    INT1_SetInterruptHandler(handler);
}

/* Interrupt service routine for the CNBI interrupt. */
void __attribute__ ((vector(_CHANGE_NOTICE_B_VECTOR), interrupt(IPL7SOFT))) _CHANGE_NOTICE_B( void )
{
    if(IFS0bits.CNBIF == 1)
    {
        if(CNFBbits.CNFB15 == 1)
        {
            if(INT1_InterruptHandler) 
            { 
                INT1_InterruptHandler(); 
            }
            
            CNFBCLR = 0x8000;  //Clear CNFBbits.CNFB15
        }
        
        // Clear the flag
        IFS0CLR= 1 << _IFS0_CNBIF_POSITION; // Clear IFS0bits.CNBIF
    }
}

