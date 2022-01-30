/**
  CLC2 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    clc2.c

  @Summary
    This is the generated driver implementation file for the CLC2 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This source file provides implementations for driver APIs for CLC2.
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

#include "clc2.h"

/**
  Section: CLC2 APIs
*/

void CLC2_Initialize(void)
{
    // Set the CLC2 to the options selected in the User Interface

    // G1POL inverted; ON enabled; INTN disabled; G2POL not_inverted; G3POL not_inverted; G4POL not_inverted; LCPOL not_inverted; LCOUT disabled; INTP disabled; MODE 1-input transparent latch with S and R; LCOE disabled; 
	CLC2CON = 0x18007 & ~(0x8000);
	
    // DS2 CMP1 Output; DS1 LPRC clock source; DS4 RTCC Event; DS3 SCCP4 OCM4 Output; 
    CLC2SEL = 0x5523;
	
    // G1D1T disabled; G1D3T disabled; G2D2T disabled; G3D1T disabled; G2D4T disabled; G3D3T disabled; G4D2T disabled; G1D1N disabled; G4D4T disabled; G1D2N disabled; G2D1N disabled; G3D2N disabled; G4D1N disabled; G1D4N disabled; G2D3N disabled; G3D4N disabled; G4D3N disabled; G1D2T disabled; G2D1T disabled; G3D2T disabled; G4D1T disabled; G1D4T disabled; G2D3T disabled; G3D4T disabled; G4D3T disabled; G1D3N disabled; G2D2N disabled; G3D1N disabled; G2D4N disabled; G3D3N disabled; G4D2N disabled; G4D4N disabled; 
    CLC2GLS = 0x00;
	
	
	CLC2_Enable();	
}

void __attribute__ ((weak)) CLC2_CallBack(void)
{
    // Add your custom callback code here
}

void CLC2_Tasks ( void )
{
	if(IFS1CLR= 1 << _IFS1_CLC2IF_POSITION)
	{
		// CLC2 callback function 
		CLC2_CallBack();
		
		// clear the CLC2 interrupt flag
		IFS1CLR= 1 << _IFS1_CLC2IF_POSITION;
	}
}

bool CLC2_OutputStatusGet(void)
{
    return(CLC2CONbits.LCOUT);

}
/**
 End of File
*/
