#ifndef ICSP_CFG_H
#define ICSP_CFG_H

#define ICSP_LOG_LEN                    APP_BUFFER_LOG_LEN
#define Icsp_Log_Buffer                 App_Log_Buffer       
#define ICSP_Shared_IO_Module_Enable()  __ICSP_Shared_IO_Module_Enable()
#define ICSP_Shared_IO_Module_Disable() __ICSP_Shared_IO_Module_Disable()
#define ICSP_LedActive()                Indicator_SetHigh(0)
#define ICSP_LedRelease()               Indicator_SetState(0, 5, 995, IND_LOOP_FOREVER)
#define ICSP_Exit()                     PIC32MM_ExitICSP()
#define ICSP_Entry()                    PIC32MM_EnterICSP()
#define ICSP_ChipErase()                PIC32MM_MTAP_ChipErase()
#define ICSP_DownloadPE()               PIC32MM_DownloadPE() // set 1 if without PE
#define ICSP_BlankCheck()               PIC32MM_PE_BlankCheck(TARGET_PFM_START, TARGET_PFM_WORD_LENGTH)
#define ICSP_DWordProg(Addr, W1, W0)    PIC32MM_PE_DoubleWordProg(Addr, W1, W0)
#define ICSP_Begin_Callback()           StatusLED_SetState(SLED_ACTIVE)
#define ICSP_Error_Callback()           StatusLED_SetState(SLED_FAIL)
#define ICSP_End_Callback()             StatusLED_SetState(SLED_IDLE)

void __ICSP_Shared_IO_Module_Enable(void);
void __ICSP_Shared_IO_Module_Disable(void);

#endif