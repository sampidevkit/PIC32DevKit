#include "libcomp.h"
#include "AppMain.h"

static uint8_t DoNext;
static tick_timer_t Tick;

public void APP_Main_Initialize(void) // <editor-fold defaultstate="collapsed" desc="Application Initialize">
{
    DoNext=0;
} // </editor-fold>

public void APP_Main_Tasks(void) // <editor-fold defaultstate="collapsed" desc="Application Main Task">
{
    if(BLED_GetValue()!=SD_SPI_IsMediaPresent())
    {
        if(SD_SPI_IsMediaPresent())
        {
            BLED_SetHigh();
            printf("\nSD is inserted");
        }
        else
        {
            BLED_SetLow();
            printf("\nSD is removed");
        }
    }

    if(Sw1_Is_Pressed())
    {
        struct tm Now;
        
        while(!RTCC_TimeGet(&Now));
        printf("\nButton is pressed at: ");
        printf("%02d:%02d:%02d - ", Now.tm_hour, Now.tm_min, Now.tm_sec);
        printf("%02d/%02d/20%02d", Now.tm_mday, Now.tm_mon, Now.tm_year);
    }
} // </editor-fold>