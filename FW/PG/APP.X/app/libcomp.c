#include "libcomp.h"

public uint8_t App_Log_Buffer[APP_BUFFER_LOG_LEN];

public void DummyInterruptHandler(void) // <editor-fold defaultstate="collapsed" desc="Dummy interrupt handler">
{
    // Do nothing
} // </editor-fold>

public void LibComp_Initialize(void) // <editor-fold defaultstate="collapsed" desc="App porting initialize">
{

} // </editor-fold>

public bool ProgButton_GetState(void) // <editor-fold defaultstate="collapsed" desc="Get state of PG button">
{
    return BT_nRESET_GetValue();
} // </editor-fold>