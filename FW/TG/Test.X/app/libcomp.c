#include "libcomp.h"

public void DummyInterruptHandler(void) // <editor-fold defaultstate="collapsed" desc="Dummy interrupt handler">
{
    // Do nothing
} // </editor-fold>

public void LibComp_Initialize(void) // <editor-fold defaultstate="collapsed" desc="App porting initialize">
{
} // </editor-fold>

public bool Button_GetState(void) // <editor-fold defaultstate="collapsed" desc="Get state of PG button">
{
    return USER_nBT_GetValue();
} // </editor-fold>