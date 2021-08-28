#include "libcomp.h"
#include "Icsp_Cfg.h"

void __ICSP_Shared_IO_Module_Enable(void)
{
    KIT_USB_Device_CDC_Uart_Enable();
    VICSP_SetLow();
    VICSP_SetDigitalInput();
}

void __ICSP_Shared_IO_Module_Disable(void)
{
    KIT_USB_Device_CDC_Uart_Disable();
    VICSP_SetHigh();
    VICSP_SetDigitalOutput();
}