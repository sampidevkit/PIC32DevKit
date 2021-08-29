#ifndef USB_DEVICE_MSD_CFG_H
#define USB_DEVICE_MSD_CFG_H

#include "fileio/fileio_media.h"

#define T10_ASSIGNED_VENDOR_ID  'S', 'A', 'M', 'P', 'I', 'K', 'I', 'T' // this is the T10 assigned Vendor ID
#define MEDIA_Parameters        NULL

FILEIO_MEDIA_INFORMATION* MEDIA_Initialize(void * config);
// Function pointer to the ReadCapacity() function of the physical media being used.
uint32_t MEDIA_ReadCapacity(void * config);
// Function pointer to the ReadSectorSize() function of the physical media being used.
uint16_t MEDIA_ReadSectorSize(void * config);
// Function pointer to the MediaDetect() function of the physical media being used.
bool MEDIA_Detect(void * config);
// Function pointer to the SectorRead() function of the physical media being used.
uint8_t MEDIA_SectorRead(void * config, uint32_t sector_addr, uint8_t* buffer, uint8_t seg);
// Function pointer to the WriteProtectState() function of the physical media being used.
uint8_t MEDIA_WriteProtectState(void * config);
// Function pointer to the SectorWrite() function of the physical media being used.
uint8_t MEDIA_SectorWrite(void * config, uint32_t sector_addr, uint8_t* buffer, uint8_t seg);

#endif