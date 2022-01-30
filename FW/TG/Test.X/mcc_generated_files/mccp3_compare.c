/**
  MCCP3 Generated Driver File 

  @Company
    Microchip Technology Inc.

  @File Name
    mccp3.c

  @Summary
    This is the generated driver implementation file for the MCCP3 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This header file provides implementations for driver APIs for MCCP3. 
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

#include "mccp3_compare.h"

/** OC Mode.

  @Summary
    Defines the OC Mode.

  @Description
    This data type defines the OC Mode of operation.

*/

static uint16_t         gMCCP3Mode;

/**
  Section: Driver Interface
*/


void MCCP3_COMPARE_Initialize (void)
{
    // ON enabled; MOD 16-Bit Single Edge, High; ALTSYNC disabled; SIDL disabled; OPS Each Time Base Period Match; CCPSLP disabled; TMRSYNC disabled; RTRGEN disabled; CCSEL disabled; ONESHOT disabled; TRIGEN disabled; T32 16 Bit; SYNC None; OPSSRC Timer Interrupt Event; TMRPS 1:1; CLKSEL SYSCLK; 
    CCP3CON1 = (0x8001 & 0xFFFF7FFF); //Disabling CCPON bit
    //OCCEN enabled; OCDEN enabled; ASDGM disabled; OCEEN enabled; ICGSM Level-Sensitive mode; OCFEN enabled; ICS ICM3; SSDG disabled; AUXOUT Disabled; ASDG 0; OCAEN enabled; OCBEN enabled; OENSYNC disabled; PWMRSEN disabled; 
    CCP3CON2 = 0x3F000000;
    //DT 0; OETRIG disabled; OSCNT None; POLACE disabled; POLBDF disabled; PSSBDF Tri-state; OUTM Steerable single output; PSSACE Tri-state; 
    CCP3CON3 = 0x00;
    //SCEVT disabled; TRSET disabled; ICOV disabled; ASEVT disabled; ICGARM disabled; RBWIP disabled; TRCLR disabled; RAWIP disabled; TMRHWIP disabled; TMRLWIP disabled; PRLWIP disabled; 
    CCP3STAT = 0x00;
    //TMRL 0; TMRH 0; 
    CCP3TMR = 0x00;
    //PRH 0; PRL 0; 
    CCP3PR = 0x00;
    //CMPA 0; 
    CCP3RA = 0x00;
    //CMPB 0; 
    CCP3RB = 0x00;
    //BUFL 0; BUFH 0; 
    CCP3BUF = 0x00;

    CCP3CON1bits.ON = 0x1; //Enabling CCP

    gMCCP3Mode = CCP3CON1bits.MOD;

}

void __attribute__ ((weak)) MCCP3_COMPARE_CallBack(void)
{
    // Add your custom callback code here
}

void MCCP3_COMPARE_Tasks( void )
{
    if(IFS2bits.CCP3IF)
    {
		// MCCP3 COMPARE callback function 
		MCCP3_COMPARE_CallBack();
		
        IFS2CLR= 1 << _IFS2_CCP3IF_POSITION;
    }
}

void __attribute__ ((weak)) MCCP3_COMPARE_TimerCallBack(void)
{
    // Add your custom callback code here
}


void MCCP3_COMPARE_TimerTasks( void )
{
    if(IFS2bits.CCT3IF)
    {
		// MCCP3 COMPARE Timer callback function 
		MCCP3_COMPARE_TimerCallBack();
	
        IFS2CLR= 1 << _IFS2_CCT3IF_POSITION;
    }
}

void MCCP3_COMPARE_Start( void )
{
    /* Start the Timer */
    CCP3CON1SET = (1 << _CCP3CON1_ON_POSITION);
}

void MCCP3_COMPARE_Stop( void )
{
    /* Start the Timer */
    CCP3CON1CLR = (1 << _CCP3CON1_ON_POSITION);
}

void MCCP3_COMPARE_SingleCompare16ValueSet( uint16_t value )
{   
    CCP3RA = value;
}


void MCCP3_COMPARE_DualCompareValueSet( uint16_t priVal, uint16_t secVal )
{

    CCP3RA = priVal;

    CCP3RB = secVal;
}

void MCCP3_COMPARE_DualEdgeBufferedConfig( uint16_t priVal, uint16_t secVal )
{

    CCP3RA = priVal;

    CCP3RB = secVal;
}

void MCCP3_COMPARE_CenterAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP3RA = priVal;

    CCP3RB = secVal;
}

void MCCP3_COMPARE_EdgeAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP3RA = priVal;

    CCP3RB = secVal;
}

void MCCP3_COMPARE_VariableFrequencyPulseConfig( uint16_t priVal )
{
    CCP3RA = priVal;
}

bool MCCP3_COMPARE_IsCompareCycleComplete( void )
{
    return(IFS2bits.CCP3IF);
}

bool MCCP3_COMPARE_TriggerStatusGet( void )
{
    return( CCP3STATbits.CCPTRIG );
    
}

void MCCP3_COMPARE_TriggerStatusSet( void )
{
    CCP3STATSET = (1 << _CCP3STAT_TRSET_POSITION);
}

void MCCP3_COMPARE_TriggerStatusClear( void )
{
    /* Clears the trigger status */
    CCP3STATCLR = (1 << _CCP3STAT_TRCLR_POSITION);
}

bool MCCP3_COMPARE_SingleCompareStatusGet( void )
{
    return( CCP3STATbits.SCEVT );
}

void MCCP3_COMPARE_SingleCompareStatusClear( void )
{
    /* Clears the trigger status */
    CCP3STATCLR = (1 << _CCP3STAT_SCEVT_POSITION);
    
}
/**
 End of File
*/
