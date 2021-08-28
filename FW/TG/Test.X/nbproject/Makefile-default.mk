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
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/AppMain.c cfg/user_usb_device_descriptors.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/sd_spi/sd_spi.c mcc_generated_files/usb/usb_device.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/rtcc.c mcc_generated_files/exceptions.c mcc_generated_files/clock.c mcc_generated_files/uart1.c mcc_generated_files/spi1_driver.c mcc_generated_files/clc1.c main.c ../../Library/buttons/ButtonApi.c ../../Library/buttons/Buttons.c ../../Library/common/UserFunctions.c ../../Library/fileio/fileio.c ../../Library/indicator/Indicator.c ../../Library/kit/kit.c ../../Library/kit/kit_usb_device.c ../../Library/kit/kit_usb_device_msd.c ../../Library/system/TaskManager.c ../../Library/system/TickCounter.c ../../Library/system/TickTimer.c ../../Library/system/Wdt.c ../../Library/usb/usb_device_msd.c ../../Library/usb/user_usb_device_events.c cfg/Indicator_Cfg.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/rtcc.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/clc1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ${OBJECTDIR}/_ext/1412088941/Buttons.o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ${OBJECTDIR}/_ext/1811300662/fileio.o ${OBJECTDIR}/_ext/915785733/Indicator.o ${OBJECTDIR}/_ext/1610024510/kit.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ${OBJECTDIR}/_ext/2096488509/Wdt.o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ${OBJECTDIR}/cfg/Indicator_Cfg.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/rtcc.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d ${OBJECTDIR}/mcc_generated_files/clc1.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d ${OBJECTDIR}/_ext/1412088941/Buttons.o.d ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d ${OBJECTDIR}/_ext/1811300662/fileio.o.d ${OBJECTDIR}/_ext/915785733/Indicator.o.d ${OBJECTDIR}/_ext/1610024510/kit.o.d ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d ${OBJECTDIR}/_ext/2096488509/TickCounter.o.d ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d ${OBJECTDIR}/_ext/2096488509/Wdt.o.d ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d ${OBJECTDIR}/cfg/Indicator_Cfg.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/rtcc.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/clc1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ${OBJECTDIR}/_ext/1412088941/Buttons.o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ${OBJECTDIR}/_ext/1811300662/fileio.o ${OBJECTDIR}/_ext/915785733/Indicator.o ${OBJECTDIR}/_ext/1610024510/kit.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ${OBJECTDIR}/_ext/2096488509/Wdt.o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ${OBJECTDIR}/cfg/Indicator_Cfg.o

# Source Files
SOURCEFILES=app/libcomp.c app/AppMain.c cfg/user_usb_device_descriptors.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/sd_spi/sd_spi.c mcc_generated_files/usb/usb_device.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/rtcc.c mcc_generated_files/exceptions.c mcc_generated_files/clock.c mcc_generated_files/uart1.c mcc_generated_files/spi1_driver.c mcc_generated_files/clc1.c main.c ../../Library/buttons/ButtonApi.c ../../Library/buttons/Buttons.c ../../Library/common/UserFunctions.c ../../Library/fileio/fileio.c ../../Library/indicator/Indicator.c ../../Library/kit/kit.c ../../Library/kit/kit_usb_device.c ../../Library/kit/kit_usb_device_msd.c ../../Library/system/TaskManager.c ../../Library/system/TickCounter.c ../../Library/system/TickTimer.c ../../Library/system/Wdt.c ../../Library/usb/usb_device_msd.c ../../Library/usb/user_usb_device_events.c cfg/Indicator_Cfg.c



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
Device=PIC32MM0256GPM064
ProjectDir="F:\Git\SAMPI\P32DK\FW\TG\Test.X"
ProjectName=Test
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\app.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\app.${OUTPUT_SUFFIX}"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MM0256GPM064
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/5187282bc3a04c5fe0b6c7abddf457db2e7b1c29 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/flags/default/964f3f2db15a9f78e514872f547d7cd7e352cab7 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/user_usb_device_descriptors.o: cfg/user_usb_device_descriptors.c  .generated_files/flags/default/b18d3af1bd562b800471526e388c07a998c5af1c .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o cfg/user_usb_device_descriptors.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/672693f340e5bd2cfe7fd924a78e664e6bf946b2 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o: mcc_generated_files/sd_spi/sd_spi.c  .generated_files/flags/default/16051277ddd4785e0ccf2fb20dcf0e56b8a61686 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/sd_spi" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o.d" -o ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o mcc_generated_files/sd_spi/sd_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/f0cb9dfc948dd7f7a68c357cf16ade1f8eebaf1 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/79b3cc620992fc6e88cbe7680ab03009835e093 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/ecc70c1c15d8434acf8816216b0a4d53f3bd65a9 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/399d04f48844f78a1a6850927e52829ff8855680 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/a7db18b801224624f3e2086321331e581f5d82ef .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/64192030aec7e308303544cfe45e36e44c5627c9 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/rtcc.o: mcc_generated_files/rtcc.c  .generated_files/flags/default/8be099ecf3c92f4fd24e10b22031a35ad51fa662 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/rtcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/rtcc.o mcc_generated_files/rtcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/96aab4382d05e3b1348ba1dba3897a6ba8a7bb53 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/8903b6596472ebb8dc4c50ed6941cea4fae3ee8e .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/fd288599e856725f1ff6e302ec23f0f43ee61fbc .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/f89c144054d32084cf605aa0d0dfedc8b0ab1173 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o mcc_generated_files/spi1_driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clc1.o: mcc_generated_files/clc1.c  .generated_files/flags/default/7058f17456c05206c95f6c04eeb4b900059bb5e5 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/clc1.o mcc_generated_files/clc1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/7cb3bee27dcccbb5aff9e87cd34714427e1d79fb .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1412088941/ButtonApi.o: ../../Library/buttons/ButtonApi.c  .generated_files/flags/default/6b4e2d06414bc20ffa1a8e4e79c76eefd7505f30 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1412088941" 
	@${RM} ${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1412088941/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ../../Library/buttons/ButtonApi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1412088941/Buttons.o: ../../Library/buttons/Buttons.c  .generated_files/flags/default/65fd9c36a83a8ccef542beed2b1706e7ec97b2e3 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1412088941" 
	@${RM} ${OBJECTDIR}/_ext/1412088941/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1412088941/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1412088941/Buttons.o.d" -o ${OBJECTDIR}/_ext/1412088941/Buttons.o ../../Library/buttons/Buttons.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1730991999/UserFunctions.o: ../../Library/common/UserFunctions.c  .generated_files/flags/default/c51630df3aa5d195a90eb360b4e0c0be4d9e50cf .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1730991999" 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ../../Library/common/UserFunctions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811300662/fileio.o: ../../Library/fileio/fileio.c  .generated_files/flags/default/5155347909306e325ac7ae9722c312ecbbda68fb .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1811300662" 
	@${RM} ${OBJECTDIR}/_ext/1811300662/fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811300662/fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1811300662/fileio.o.d" -o ${OBJECTDIR}/_ext/1811300662/fileio.o ../../Library/fileio/fileio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/915785733/Indicator.o: ../../Library/indicator/Indicator.c  .generated_files/flags/default/216d5e7d0fbd200ebcd5f18a69db4e56695906f7 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/915785733" 
	@${RM} ${OBJECTDIR}/_ext/915785733/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/915785733/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/915785733/Indicator.o.d" -o ${OBJECTDIR}/_ext/915785733/Indicator.o ../../Library/indicator/Indicator.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit.o: ../../Library/kit/kit.c  .generated_files/flags/default/354c4f0f0389c74e2b933c1f7c1c2d332983b07a .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit.o ../../Library/kit/kit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device.o: ../../Library/kit/kit_usb_device.c  .generated_files/flags/default/c6549bd741a9956c1aa0a6f807bb63fc3d3c686a .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ../../Library/kit/kit_usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o: ../../Library/kit/kit_usb_device_msd.c  .generated_files/flags/default/5a8bcac98fba1e874797a0fac08ac676cb1e663b .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ../../Library/kit/kit_usb_device_msd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TaskManager.o: ../../Library/system/TaskManager.c  .generated_files/flags/default/427274509ded49985d269d0b61bd9f923dafb1e6 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TaskManager.o.d" -o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ../../Library/system/TaskManager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickCounter.o: ../../Library/system/TickCounter.c  .generated_files/flags/default/695818059d5b7d808551648643544ce59c2ba640 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickCounter.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ../../Library/system/TickCounter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickTimer.o: ../../Library/system/TickTimer.c  .generated_files/flags/default/8956c9a4b53c9318ae82949e8483981fa5d93c63 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickTimer.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ../../Library/system/TickTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/Wdt.o: ../../Library/system/Wdt.c  .generated_files/flags/default/75dfac963ef8aed4c380659f358772527ad7b704 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/Wdt.o.d" -o ${OBJECTDIR}/_ext/2096488509/Wdt.o ../../Library/system/Wdt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/usb_device_msd.o: ../../Library/usb/usb_device_msd.c  .generated_files/flags/default/4e03ec4d79f0112577c21ecf0635fc1ab01886da .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ../../Library/usb/usb_device_msd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o: ../../Library/usb/user_usb_device_events.c  .generated_files/flags/default/d93075269051ab3321a555cf8bdb4abad1eefe0a .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ../../Library/usb/user_usb_device_events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/Indicator_Cfg.o: cfg/Indicator_Cfg.c  .generated_files/flags/default/b0d99b1ebe11a2b48ac8d2a5a0ba995fdadb1979 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/Indicator_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/Indicator_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/cfg/Indicator_Cfg.o.d" -o ${OBJECTDIR}/cfg/Indicator_Cfg.o cfg/Indicator_Cfg.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/6155e9af4b35fb6e59227986a9bb4371a1a74646 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/flags/default/6c72bcd37db8b51cacd9e06b05a59ca8ce464986 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/user_usb_device_descriptors.o: cfg/user_usb_device_descriptors.c  .generated_files/flags/default/8bc7aea22b52012341488ca5254d7ff21100572c .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o cfg/user_usb_device_descriptors.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/2bc741008ae33f698850c277c2f526574f71c9c7 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o: mcc_generated_files/sd_spi/sd_spi.c  .generated_files/flags/default/54ac92483ba5a71f42c1b0683c42f76efe7170de .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/sd_spi" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o.d" -o ${OBJECTDIR}/mcc_generated_files/sd_spi/sd_spi.o mcc_generated_files/sd_spi/sd_spi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/5af46b8060350445e2e07755ecd7efe0735802fa .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/291fc1399d7af8e26e530f9cd590f355d80c29b2 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/fb0bea33cdc128960746ec068cc5b8b937810f63 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/72170c34c9e6bd3e503eb97fa04fe8a95143f38a .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/d9068030b2fb1478840d57513332ea4ad67e2f2 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/3813d4cb4bfe1bc060bad9be3d1f086b0b02ac38 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/rtcc.o: mcc_generated_files/rtcc.c  .generated_files/flags/default/9dbc8d94c5820d0814271b6e0e375de72685b67d .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/rtcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/rtcc.o mcc_generated_files/rtcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/d15d5c09701ab9e8867edc175f3e2d7e3960d492 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/91eca720c0ec548e55d0611753e00d87c4f4c62 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/902a7a23d57889a93e366cfb9a999d5248637761 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/6316ebd3d4a613e78670f797a036fa2f51e4e87f .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o mcc_generated_files/spi1_driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clc1.o: mcc_generated_files/clc1.c  .generated_files/flags/default/28f9a1d8cd81dabe7a667b6efb823262ca3ced01 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/clc1.o mcc_generated_files/clc1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/90974fe47d3afadf84db11110f91d60b32c0956e .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1412088941/ButtonApi.o: ../../Library/buttons/ButtonApi.c  .generated_files/flags/default/4fea075aa1eb9285f8608f88460db128ad024af1 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1412088941" 
	@${RM} ${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1412088941/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ../../Library/buttons/ButtonApi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1412088941/Buttons.o: ../../Library/buttons/Buttons.c  .generated_files/flags/default/4ebcca922c4d31886c0c640e7575724417c116cb .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1412088941" 
	@${RM} ${OBJECTDIR}/_ext/1412088941/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1412088941/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1412088941/Buttons.o.d" -o ${OBJECTDIR}/_ext/1412088941/Buttons.o ../../Library/buttons/Buttons.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1730991999/UserFunctions.o: ../../Library/common/UserFunctions.c  .generated_files/flags/default/ebf46dc33ed63c59796e715be6edccff4306b886 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1730991999" 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ../../Library/common/UserFunctions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811300662/fileio.o: ../../Library/fileio/fileio.c  .generated_files/flags/default/1248b001ef852299fc1b7c90d95dfa82f083e36b .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1811300662" 
	@${RM} ${OBJECTDIR}/_ext/1811300662/fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811300662/fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1811300662/fileio.o.d" -o ${OBJECTDIR}/_ext/1811300662/fileio.o ../../Library/fileio/fileio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/915785733/Indicator.o: ../../Library/indicator/Indicator.c  .generated_files/flags/default/dc0c2e27fa0620b2d5144449a1f42071a949af39 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/915785733" 
	@${RM} ${OBJECTDIR}/_ext/915785733/Indicator.o.d 
	@${RM} ${OBJECTDIR}/_ext/915785733/Indicator.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/915785733/Indicator.o.d" -o ${OBJECTDIR}/_ext/915785733/Indicator.o ../../Library/indicator/Indicator.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit.o: ../../Library/kit/kit.c  .generated_files/flags/default/4dcda95a8fe316b12a9e6e8a6e8db647d73a24de .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit.o ../../Library/kit/kit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device.o: ../../Library/kit/kit_usb_device.c  .generated_files/flags/default/f4bb74779d13e3b1ac6ae72c6e4c390dc64309c9 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ../../Library/kit/kit_usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o: ../../Library/kit/kit_usb_device_msd.c  .generated_files/flags/default/a133fcb3c76e6812927983a38ac407530fa719e9 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ../../Library/kit/kit_usb_device_msd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TaskManager.o: ../../Library/system/TaskManager.c  .generated_files/flags/default/744c8bda4a9f1a5be295ae02e30bbf92dce1f67e .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TaskManager.o.d" -o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ../../Library/system/TaskManager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickCounter.o: ../../Library/system/TickCounter.c  .generated_files/flags/default/c94b5f34363519db1ede0eefea8cc11b09160f0f .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickCounter.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ../../Library/system/TickCounter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickTimer.o: ../../Library/system/TickTimer.c  .generated_files/flags/default/4d03c06cad9c02cd99d22e6a21282f3baf4aae8c .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickTimer.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ../../Library/system/TickTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/Wdt.o: ../../Library/system/Wdt.c  .generated_files/flags/default/3826ffb2b67ed8fae23540448ce3c0d2d1356bf .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/Wdt.o.d" -o ${OBJECTDIR}/_ext/2096488509/Wdt.o ../../Library/system/Wdt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/usb_device_msd.o: ../../Library/usb/usb_device_msd.c  .generated_files/flags/default/f2e15d189e14cadf403fffb70fa64f072658736d .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ../../Library/usb/usb_device_msd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o: ../../Library/usb/user_usb_device_events.c  .generated_files/flags/default/c1c58f8208d60dda9abcf23651b85263b8821601 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ../../Library/usb/user_usb_device_events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/Indicator_Cfg.o: cfg/Indicator_Cfg.c  .generated_files/flags/default/605690a2b7d68165c96b82bbc2f4ddd192e06964 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/Indicator_Cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/Indicator_Cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/cfg/Indicator_Cfg.o.d" -o ${OBJECTDIR}/cfg/Indicator_Cfg.o cfg/Indicator_Cfg.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/Test.X.${IMAGE_TYPE}.hex

endif


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
