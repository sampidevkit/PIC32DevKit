#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=null
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=null
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/AppMain.c config/user_usb_device_descriptors.c config/Indicator_Cfg.c config/Icsp_Cfg.c ../../Library/Buttons/ButtonApi.c ../../Library/Buttons/Buttons.c ../../Library/Common/UserFunctions.c ../../Library/Common/RingBuffer.c ../../Library/FileIO/files_lite.c ../../Library/Indicator/Indicator.c ../../Library/Kit/kit.c ../../Library/Kit/kit_usb_device.c ../../Library/Kit/kit_usb_device_msd.c ../../Library/Kit/kit_usb_device_cdc.c ../../Library/Programmer/HexParsing.c ../../Library/Programmer/ICSP_FileIO.c ../../Library/Programmer/ICSP_PIC32MM.c ../../Library/Programmer/Icsp.c ../../Library/System/TaskManager.c ../../Library/System/TickTimer.c ../../Library/System/Wdt.c ../../Library/System/TickCounter.c ../../Library/USB/usb_device_msd.c ../../Library/USB/user_usb_device_events.c ../../Library/USB/usb_device_cdc.c mcc_generated_files/usb/usb_device.c mcc_generated_files/uart2.c mcc_generated_files/exceptions.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/system.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/config/Indicator_Cfg.o ${OBJECTDIR}/config/Icsp_Cfg.o ${OBJECTDIR}/_ext/1218225075/ButtonApi.o ${OBJECTDIR}/_ext/1218225075/Buttons.o ${OBJECTDIR}/_ext/814859167/UserFunctions.o ${OBJECTDIR}/_ext/814859167/RingBuffer.o ${OBJECTDIR}/_ext/895166806/files_lite.o ${OBJECTDIR}/_ext/1088182235/Indicator.o ${OBJECTDIR}/_ext/1610055262/kit.o ${OBJECTDIR}/_ext/1610055262/kit_usb_device.o ${OBJECTDIR}/_ext/1610055262/kit_usb_device_msd.o ${OBJECTDIR}/_ext/1610055262/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/3696778/HexParsing.o ${OBJECTDIR}/_ext/3696778/ICSP_FileIO.o ${OBJECTDIR}/_ext/3696778/ICSP_PIC32MM.o ${OBJECTDIR}/_ext/3696778/Icsp.o ${OBJECTDIR}/_ext/1282345955/TaskManager.o ${OBJECTDIR}/_ext/1282345955/TickTimer.o ${OBJECTDIR}/_ext/1282345955/Wdt.o ${OBJECTDIR}/_ext/1282345955/TickCounter.o ${OBJECTDIR}/_ext/1610046384/usb_device_msd.o ${OBJECTDIR}/_ext/1610046384/user_usb_device_events.o ${OBJECTDIR}/_ext/1610046384/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/config/user_usb_device_descriptors.o.d ${OBJECTDIR}/config/Indicator_Cfg.o.d ${OBJECTDIR}/config/Icsp_Cfg.o.d ${OBJECTDIR}/_ext/1218225075/ButtonApi.o.d ${OBJECTDIR}/_ext/1218225075/Buttons.o.d ${OBJECTDIR}/_ext/814859167/UserFunctions.o.d ${OBJECTDIR}/_ext/814859167/RingBuffer.o.d ${OBJECTDIR}/_ext/895166806/files_lite.o.d ${OBJECTDIR}/_ext/1088182235/Indicator.o.d ${OBJECTDIR}/_ext/1610055262/kit.o.d ${OBJECTDIR}/_ext/1610055262/kit_usb_device.o.d ${OBJECTDIR}/_ext/1610055262/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/1610055262/kit_usb_device_cdc.o.d ${OBJECTDIR}/_ext/3696778/HexParsing.o.d ${OBJECTDIR}/_ext/3696778/ICSP_FileIO.o.d ${OBJECTDIR}/_ext/3696778/ICSP_PIC32MM.o.d ${OBJECTDIR}/_ext/3696778/Icsp.o.d ${OBJECTDIR}/_ext/1282345955/TaskManager.o.d ${OBJECTDIR}/_ext/1282345955/TickTimer.o.d ${OBJECTDIR}/_ext/1282345955/Wdt.o.d ${OBJECTDIR}/_ext/1282345955/TickCounter.o.d ${OBJECTDIR}/_ext/1610046384/usb_device_msd.o.d ${OBJECTDIR}/_ext/1610046384/user_usb_device_events.o.d ${OBJECTDIR}/_ext/1610046384/usb_device_cdc.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/config/Indicator_Cfg.o ${OBJECTDIR}/config/Icsp_Cfg.o ${OBJECTDIR}/_ext/1218225075/ButtonApi.o ${OBJECTDIR}/_ext/1218225075/Buttons.o ${OBJECTDIR}/_ext/814859167/UserFunctions.o ${OBJECTDIR}/_ext/814859167/RingBuffer.o ${OBJECTDIR}/_ext/895166806/files_lite.o ${OBJECTDIR}/_ext/1088182235/Indicator.o ${OBJECTDIR}/_ext/1610055262/kit.o ${OBJECTDIR}/_ext/1610055262/kit_usb_device.o ${OBJECTDIR}/_ext/1610055262/kit_usb_device_msd.o ${OBJECTDIR}/_ext/1610055262/kit_usb_device_cdc.o ${OBJECTDIR}/_ext/3696778/HexParsing.o ${OBJECTDIR}/_ext/3696778/ICSP_FileIO.o ${OBJECTDIR}/_ext/3696778/ICSP_PIC32MM.o ${OBJECTDIR}/_ext/3696778/Icsp.o ${OBJECTDIR}/_ext/1282345955/TaskManager.o ${OBJECTDIR}/_ext/1282345955/TickTimer.o ${OBJECTDIR}/_ext/1282345955/Wdt.o ${OBJECTDIR}/_ext/1282345955/TickCounter.o ${OBJECTDIR}/_ext/1610046384/usb_device_msd.o ${OBJECTDIR}/_ext/1610046384/user_usb_device_events.o ${OBJECTDIR}/_ext/1610046384/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=app/libcomp.c app/AppMain.c config/user_usb_device_descriptors.c config/Indicator_Cfg.c config/Icsp_Cfg.c ../../Library/Buttons/ButtonApi.c ../../Library/Buttons/Buttons.c ../../Library/Common/UserFunctions.c ../../Library/Common/RingBuffer.c ../../Library/FileIO/files_lite.c ../../Library/Indicator/Indicator.c ../../Library/Kit/kit.c ../../Library/Kit/kit_usb_device.c ../../Library/Kit/kit_usb_device_msd.c ../../Library/Kit/kit_usb_device_cdc.c ../../Library/Programmer/HexParsing.c ../../Library/Programmer/ICSP_FileIO.c ../../Library/Programmer/ICSP_PIC32MM.c ../../Library/Programmer/Icsp.c ../../Library/System/TaskManager.c ../../Library/System/TickTimer.c ../../Library/System/Wdt.c ../../Library/System/TickCounter.c ../../Library/USB/usb_device_msd.c ../../Library/USB/user_usb_device_events.c ../../Library/USB/usb_device_cdc.c mcc_generated_files/usb/usb_device.c mcc_generated_files/uart2.c mcc_generated_files/exceptions.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/clock.c mcc_generated_files/coretimer.c mcc_generated_files/system.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MM0064GPM028
ProjectDir="F:\Git\SAMPI\P32DK\FW\PG\APP.X"
ProjectName=APP
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/APP.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\app.hex"]"
	@copy ${ImagePath} ".\app.hex"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=
MP_LINKER_FILE_OPTION=

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
