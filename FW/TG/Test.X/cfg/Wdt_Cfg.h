#ifndef WDT_CFG_H
#define WDT_CFG_H

#define ClrWdt()                WATCHDOG_TimerClear()
#define WDT_Task_UserCb()
#define WDT_STT_LED_Toggle()    RLED_Toggle()
#define WDT_STT_LED_SetHigh()   RLED_SetHigh()
#define WDT_STT_LED_SetLow()    RLED_SetLow()

#endif