#include "libcomp.h"
#include "usb_device_msd_cfg.h"

/* ***************************************************** Copied from sd_spi.c */
enum SD_STATE
{
    SD_STATE_NOT_INITIALIZED,
    SD_STATE_READY_FOR_COMMAND,
    SD_STATE_BUSY
};

typedef struct
{
    FILEIO_MEDIA_ERRORS errorCode; // The status of the initialization MEDIA_ERRORS
    uint16_t sectorSize; // The sector size of the target device.
    enum SD_STATE state;
    uint32_t finalLBA;
    uint8_t gSDMode;
} media_information_t;

/* ************************************************************************** */

FILEIO_MEDIA_INFORMATION* MEDIA_Initialize(void * config)
{
    static FILEIO_MEDIA_INFORMATION mediaInformation;

    media_information_t *rslt=(media_information_t*) SD_SPI_MediaInitialize();

    mediaInformation.maxLUN=1;
    mediaInformation.validityFlags.value=0;
    mediaInformation.errorCode=MEDIA_CANNOT_INITIALIZE;

    if(rslt!=NULL)
    {
        mediaInformation.errorCode=rslt->errorCode;
        mediaInformation.validityFlags.bits.sectorSize=true;
        mediaInformation.sectorSize=rslt->sectorSize;
    }

    return &mediaInformation;
}

uint32_t MEDIA_ReadCapacity(void * config)
{
    return SD_SPI_GetSectorCount();
}

uint16_t MEDIA_ReadSectorSize(void * config)
{
    return SD_SPI_GetSectorSize();
}

bool MEDIA_Detect(void * config)
{
    return SD_SPI_IsMediaPresent();
}

uint8_t MEDIA_SectorRead(void * config, uint32_t sector_addr, uint8_t* buffer, uint8_t seg)
{
    return SD_SPI_SectorRead(sector_addr, buffer, seg);
}

uint8_t MEDIA_WriteProtectState(void * config)
{
    return SD_SPI_IsWriteProtected();
}

uint8_t MEDIA_SectorWrite(void * config, uint32_t sector_addr, uint8_t* buffer, uint8_t seg)
{
    return SD_SPI_SectorWrite(sector_addr, buffer, seg);
}