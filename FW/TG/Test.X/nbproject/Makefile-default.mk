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
FINAL_IMAGE=${DISTDIR}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/AppMain.c cfg/user_usb_device_descriptors.c cfg/usb_device_msd_cfg.c ../../Library/buttons/ButtonApi.c ../../Library/buttons/Buttons.c ../../Library/common/UserFunctions.c ../../Library/fileio/fileio.c ../../Library/kit/kit.c ../../Library/kit/kit_usb_device.c ../../Library/kit/kit_usb_device_msd.c ../../Library/system/TaskManager.c ../../Library/system/TickCounter.c ../../Library/system/TickTimer.c ../../Library/system/Wdt.c ../../Library/usb/usb_device_msd.c ../../Library/usb/user_usb_device_events.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/usb/usb_device.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/rtcc.c mcc_generated_files/exceptions.c mcc_generated_files/clock.c mcc_generated_files/uart1.c mcc_generated_files/spi1_driver.c mcc_generated_files/clc1.c mcc_generated_files/adc1.c mcc_generated_files/i2c2_driver.c mcc_generated_files/ext_int.c mcc_generated_files/uart2.c mcc_generated_files/cdac.c mcc_generated_files/spi2.c mcc_generated_files/mccp3_compare.c mcc_generated_files/i2c1.c mcc_generated_files/clc2.c mcc_generated_files/spi3.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o ${OBJECTDIR}/cfg/usb_device_msd_cfg.o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ${OBJECTDIR}/_ext/1412088941/Buttons.o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ${OBJECTDIR}/_ext/1811300662/fileio.o ${OBJECTDIR}/_ext/1610024510/kit.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ${OBJECTDIR}/_ext/2096488509/Wdt.o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/rtcc.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/clc1.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/cdac.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/clc2.o ${OBJECTDIR}/mcc_generated_files/spi3.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d ${OBJECTDIR}/cfg/usb_device_msd_cfg.o.d ${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d ${OBJECTDIR}/_ext/1412088941/Buttons.o.d ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d ${OBJECTDIR}/_ext/1811300662/fileio.o.d ${OBJECTDIR}/_ext/1610024510/kit.o.d ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d ${OBJECTDIR}/_ext/2096488509/TickCounter.o.d ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d ${OBJECTDIR}/_ext/2096488509/Wdt.o.d ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/rtcc.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d ${OBJECTDIR}/mcc_generated_files/clc1.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d ${OBJECTDIR}/mcc_generated_files/ext_int.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/cdac.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/clc2.o.d ${OBJECTDIR}/mcc_generated_files/spi3.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o ${OBJECTDIR}/cfg/usb_device_msd_cfg.o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ${OBJECTDIR}/_ext/1412088941/Buttons.o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ${OBJECTDIR}/_ext/1811300662/fileio.o ${OBJECTDIR}/_ext/1610024510/kit.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ${OBJECTDIR}/_ext/2096488509/Wdt.o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/rtcc.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/clc1.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/cdac.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/clc2.o ${OBJECTDIR}/mcc_generated_files/spi3.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=app/libcomp.c app/AppMain.c cfg/user_usb_device_descriptors.c cfg/usb_device_msd_cfg.c ../../Library/buttons/ButtonApi.c ../../Library/buttons/Buttons.c ../../Library/common/UserFunctions.c ../../Library/fileio/fileio.c ../../Library/kit/kit.c ../../Library/kit/kit_usb_device.c ../../Library/kit/kit_usb_device_msd.c ../../Library/system/TaskManager.c ../../Library/system/TickCounter.c ../../Library/system/TickTimer.c ../../Library/system/Wdt.c ../../Library/usb/usb_device_msd.c ../../Library/usb/user_usb_device_events.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/usb/usb_device.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/rtcc.c mcc_generated_files/exceptions.c mcc_generated_files/clock.c mcc_generated_files/uart1.c mcc_generated_files/spi1_driver.c mcc_generated_files/clc1.c mcc_generated_files/adc1.c mcc_generated_files/i2c2_driver.c mcc_generated_files/ext_int.c mcc_generated_files/uart2.c mcc_generated_files/cdac.c mcc_generated_files/spi2.c mcc_generated_files/mccp3_compare.c mcc_generated_files/i2c1.c mcc_generated_files/clc2.c mcc_generated_files/spi3.c main.c



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
ImagePath="${DISTDIR}\Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/45aee0683494c1823b41f2fae845052746047b2f .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/flags/default/51dc27f6e3307523ad960482b374b67fae135ed6 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/user_usb_device_descriptors.o: cfg/user_usb_device_descriptors.c  .generated_files/flags/default/adef61bd1c25915affc01b5a5d915a57ec2ae7a7 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o cfg/user_usb_device_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/usb_device_msd_cfg.o: cfg/usb_device_msd_cfg.c  .generated_files/flags/default/9b18b514d78f78387064c0c5f2cf1f18d073e43d .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/usb_device_msd_cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/usb_device_msd_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/cfg/usb_device_msd_cfg.o.d" -o ${OBJECTDIR}/cfg/usb_device_msd_cfg.o cfg/usb_device_msd_cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1412088941/ButtonApi.o: ../../Library/buttons/ButtonApi.c  .generated_files/flags/default/735927d87944eaa3e9b9d1348701f1cb4ed9d42b .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1412088941" 
	@${RM} ${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1412088941/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ../../Library/buttons/ButtonApi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1412088941/Buttons.o: ../../Library/buttons/Buttons.c  .generated_files/flags/default/9fa98447d26aa63ca48276429b623cb47b3dfa8c .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1412088941" 
	@${RM} ${OBJECTDIR}/_ext/1412088941/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1412088941/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1412088941/Buttons.o.d" -o ${OBJECTDIR}/_ext/1412088941/Buttons.o ../../Library/buttons/Buttons.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1730991999/UserFunctions.o: ../../Library/common/UserFunctions.c  .generated_files/flags/default/3e2cc2922e8ab6f53c070dae0dbf9222c27f2ce3 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1730991999" 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ../../Library/common/UserFunctions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811300662/fileio.o: ../../Library/fileio/fileio.c  .generated_files/flags/default/bcb0bd2887ab449a7db7c6d01bb0c7adbbd54e15 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1811300662" 
	@${RM} ${OBJECTDIR}/_ext/1811300662/fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811300662/fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1811300662/fileio.o.d" -o ${OBJECTDIR}/_ext/1811300662/fileio.o ../../Library/fileio/fileio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit.o: ../../Library/kit/kit.c  .generated_files/flags/default/c3bb8b7e1aebf830a0751d43119b6b04b6458330 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit.o ../../Library/kit/kit.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device.o: ../../Library/kit/kit_usb_device.c  .generated_files/flags/default/e56f882f4ecd24279c327a80bc0de1d48dd4267 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ../../Library/kit/kit_usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o: ../../Library/kit/kit_usb_device_msd.c  .generated_files/flags/default/b9d1acabaed0d5f2e85a4f7174439f64ad01e0af .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ../../Library/kit/kit_usb_device_msd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TaskManager.o: ../../Library/system/TaskManager.c  .generated_files/flags/default/313ad87a7af17a0856737f0cc2152ff1c833f63e .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TaskManager.o.d" -o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ../../Library/system/TaskManager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickCounter.o: ../../Library/system/TickCounter.c  .generated_files/flags/default/9476ec6a64f2e27ce78f72dda6d4ce1908ac98ca .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickCounter.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ../../Library/system/TickCounter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickTimer.o: ../../Library/system/TickTimer.c  .generated_files/flags/default/6ce63f29b4599c501c5da8876eb9a9344234b963 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickTimer.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ../../Library/system/TickTimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/Wdt.o: ../../Library/system/Wdt.c  .generated_files/flags/default/cfb5c277e5500a1e9371b03380065b9d9ef692d3 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/Wdt.o.d" -o ${OBJECTDIR}/_ext/2096488509/Wdt.o ../../Library/system/Wdt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/usb_device_msd.o: ../../Library/usb/usb_device_msd.c  .generated_files/flags/default/e85e2acb200ff731a76fda6b894ba302e7e654b6 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ../../Library/usb/usb_device_msd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o: ../../Library/usb/user_usb_device_events.c  .generated_files/flags/default/e37e7946bb17629d9ad914c488974e1a8e63ddd1 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ../../Library/usb/user_usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/39a9399cb9fd5c71be284b41a960f5cbf065a45a .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/f2d12b9b02953f9c2fe0344a43a9a1b222fd8f1e .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/ebae06eb78dbf97534d73e607b1fb18f133722e2 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/7a4d740f82ab3084390eb16aa158e8cf80b29c56 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/54c88a2dfb5e1709617a1cb430a40b6f21f2d3da .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/c8ec8e0583e496a12fef21e5536807f4c5a9f484 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/ad78a08962262b40878e5b1c5f74b9f680552 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/rtcc.o: mcc_generated_files/rtcc.c  .generated_files/flags/default/6456e6367ffe70894eac879e8b769ced96f14efd .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/rtcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/rtcc.o mcc_generated_files/rtcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/9141267c8a27f34d39f1a811cc3cd84688fa10ed .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/f3979ab8383089ec554cf5142447ddbdb4f5c6fb .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/cc053db26cccb13cb30089d8b3377cdb7bfdac23 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/1036ad0c3e35465428ded7c880d67f2e055078d .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o mcc_generated_files/spi1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clc1.o: mcc_generated_files/clc1.c  .generated_files/flags/default/678a1f88be5bc7bcf444bdb6bc296f596c84fe71 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/clc1.o mcc_generated_files/clc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/f50a560d00fe8e91cecd2e9cc42e960ce8c6838c .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/85c925597d09fcbfe963fe8c06c7b97bc1e577b .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o mcc_generated_files/i2c2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/ext_int.o: mcc_generated_files/ext_int.c  .generated_files/flags/default/e5a1330c8ec46bacb3b2a34870e0669f306a8298 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/ext_int.o.d" -o ${OBJECTDIR}/mcc_generated_files/ext_int.o mcc_generated_files/ext_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/a5908afe46000f29111af23e33781c913ee40050 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/cdac.o: mcc_generated_files/cdac.c  .generated_files/flags/default/3213b06696fe74ea26eec2251bbe7167c90344f .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cdac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cdac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cdac.o.d" -o ${OBJECTDIR}/mcc_generated_files/cdac.o mcc_generated_files/cdac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/default/aa1f0acfeb3bae25954a5099bc1111e9434d23af .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mccp3_compare.o: mcc_generated_files/mccp3_compare.c  .generated_files/flags/default/e8c3e4227bb1625b8942f7ba0be7ec26f4c1e64e .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mccp3_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o mcc_generated_files/mccp3_compare.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/b7f88a9bff8975a826fdd0459bb712bb0f839162 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clc2.o: mcc_generated_files/clc2.c  .generated_files/flags/default/faffc51d26e7280c3b8e90883d8842cd09c44ea6 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clc2.o.d" -o ${OBJECTDIR}/mcc_generated_files/clc2.o mcc_generated_files/clc2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi3.o: mcc_generated_files/spi3.c  .generated_files/flags/default/2000c4120fa6832afe88fd67ac6967b09bbbf30a .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi3.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi3.o mcc_generated_files/spi3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/cf516bc4971b2fde3afd6d45ba7914be6dfbf698 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/8c1176778f81fe580b297fab1cc5f1ad98f8c99c .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/flags/default/a16f14432b3b625b9e1bcb4c4a21957dfdf8151b .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/user_usb_device_descriptors.o: cfg/user_usb_device_descriptors.c  .generated_files/flags/default/eec87c97df217c5db59acfea900d8a40257fd28b .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/cfg/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o cfg/user_usb_device_descriptors.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/cfg/usb_device_msd_cfg.o: cfg/usb_device_msd_cfg.c  .generated_files/flags/default/e90195870db471f9ce09f7f81b5fe91392c6028 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/cfg" 
	@${RM} ${OBJECTDIR}/cfg/usb_device_msd_cfg.o.d 
	@${RM} ${OBJECTDIR}/cfg/usb_device_msd_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/cfg/usb_device_msd_cfg.o.d" -o ${OBJECTDIR}/cfg/usb_device_msd_cfg.o cfg/usb_device_msd_cfg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1412088941/ButtonApi.o: ../../Library/buttons/ButtonApi.c  .generated_files/flags/default/d25f300c7d46e98d74e429a5a0b87bac16a5f84 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1412088941" 
	@${RM} ${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1412088941/ButtonApi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d" -o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ../../Library/buttons/ButtonApi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1412088941/Buttons.o: ../../Library/buttons/Buttons.c  .generated_files/flags/default/139af447f451273fa05c7f9a2b5e8702347de9dc .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1412088941" 
	@${RM} ${OBJECTDIR}/_ext/1412088941/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1412088941/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1412088941/Buttons.o.d" -o ${OBJECTDIR}/_ext/1412088941/Buttons.o ../../Library/buttons/Buttons.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1730991999/UserFunctions.o: ../../Library/common/UserFunctions.c  .generated_files/flags/default/7ba7e2fcb4b4d01ca8336468dbce0955e7923c5a .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1730991999" 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ../../Library/common/UserFunctions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811300662/fileio.o: ../../Library/fileio/fileio.c  .generated_files/flags/default/87de1010bfc012aeb308ab49cba92545a57b3816 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1811300662" 
	@${RM} ${OBJECTDIR}/_ext/1811300662/fileio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811300662/fileio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1811300662/fileio.o.d" -o ${OBJECTDIR}/_ext/1811300662/fileio.o ../../Library/fileio/fileio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit.o: ../../Library/kit/kit.c  .generated_files/flags/default/e4df16dae8d5b6e9ddc848e7503225d285a6da62 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit.o ../../Library/kit/kit.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device.o: ../../Library/kit/kit_usb_device.c  .generated_files/flags/default/6d5e5338afdc8d6b8d9beb1a3080fa4bc035636 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ../../Library/kit/kit_usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o: ../../Library/kit/kit_usb_device_msd.c  .generated_files/flags/default/1d4183f560db79e1121474b63abf2a5dadc9019f .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ../../Library/kit/kit_usb_device_msd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TaskManager.o: ../../Library/system/TaskManager.c  .generated_files/flags/default/b010e55f778477bb9d2d2e3dacd2159658eae1df .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TaskManager.o.d" -o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ../../Library/system/TaskManager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickCounter.o: ../../Library/system/TickCounter.c  .generated_files/flags/default/8ba55dfbd04f3ee10e304deb213f125a87b8bd0 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickCounter.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickCounter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickCounter.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ../../Library/system/TickCounter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickTimer.o: ../../Library/system/TickTimer.c  .generated_files/flags/default/cf146c50f9b37befb7df0aeccde15206242f87d3 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickTimer.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ../../Library/system/TickTimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/Wdt.o: ../../Library/system/Wdt.c  .generated_files/flags/default/b143555833580f716bfcd3c0b9093af60b6874b5 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/Wdt.o.d" -o ${OBJECTDIR}/_ext/2096488509/Wdt.o ../../Library/system/Wdt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/usb_device_msd.o: ../../Library/usb/usb_device_msd.c  .generated_files/flags/default/e2ce6f7edd7b3676cb92e776b1cae47bcf68f713 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ../../Library/usb/usb_device_msd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o: ../../Library/usb/user_usb_device_events.c  .generated_files/flags/default/15d7138cc75292fbb4b278a61e0cd6a9061b1564 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ../../Library/usb/user_usb_device_events.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/7dedcafaf0e0d2925cebafde3e6762ec1de22f5a .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/cb697b7c68dd80361975a1b226d2598d7d830288 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/2d967c45906a30e51df5cd2a2eaffea7c9d32514 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/814b6e4894de2e3d77cc44387a7579dea4c84459 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/38870b589ec3a889a1be58004386bfba11092e58 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/c7d5735dfc5ad3647941e62140eb4c8e5d6f77a5 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/4e2477e04e8b28783c22ad81489c5c6bde32a1c1 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/rtcc.o: mcc_generated_files/rtcc.c  .generated_files/flags/default/d2f9f3a7c1ccf4ee03222da3df46e0438ea9b1a2 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/rtcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/rtcc.o mcc_generated_files/rtcc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  .generated_files/flags/default/1a4eaf98080343326f3b4c933f8f1a66b139b91 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/b4139dd669a0f05a9a59962aee03a77601ad5342 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/b44908feb014b8228d2c617e137300dfebce1791 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/5786ef2b4e4b372ead59988a949dc8d5b362cf86 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o mcc_generated_files/spi1_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clc1.o: mcc_generated_files/clc1.c  .generated_files/flags/default/c459c946895b7dfd58c80147c13cbc86e1eef908 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/clc1.o mcc_generated_files/clc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/efc374f6b14aac2a8111d437abe7160d89ec2cee .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/62b697c8353cd67b6d6200204ee9ca46a9d2bec5 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o mcc_generated_files/i2c2_driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/ext_int.o: mcc_generated_files/ext_int.c  .generated_files/flags/default/39fe28ac1fcfb2ecb883ccccd7f07176fb495658 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/ext_int.o.d" -o ${OBJECTDIR}/mcc_generated_files/ext_int.o mcc_generated_files/ext_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/906d8371061f3ccce7416539ff647c47daa92ec6 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart2.o mcc_generated_files/uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/cdac.o: mcc_generated_files/cdac.c  .generated_files/flags/default/2541d6e742a18f0c75707eb1cace1139e7a2925 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cdac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cdac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cdac.o.d" -o ${OBJECTDIR}/mcc_generated_files/cdac.o mcc_generated_files/cdac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/default/bdaf76fa2ba35af61d5fb7a9e2ea0b910b63dbd3 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mccp3_compare.o: mcc_generated_files/mccp3_compare.c  .generated_files/flags/default/cc29e90cd40b2bfd0f3ba3a055b27e22ee45e6c1 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mccp3_compare.o.d" -o ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o mcc_generated_files/mccp3_compare.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/ad3a2f00466df6bf36d9891f7cfac867ec528e6b .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d" -o ${OBJECTDIR}/mcc_generated_files/i2c1.o mcc_generated_files/i2c1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clc2.o: mcc_generated_files/clc2.c  .generated_files/flags/default/9f46620606ec19104fbf953b6f7b40ac83538262 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clc2.o.d" -o ${OBJECTDIR}/mcc_generated_files/clc2.o mcc_generated_files/clc2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/spi3.o: mcc_generated_files/spi3.c  .generated_files/flags/default/f8047ce5c117689593ef824e6bfea25c0f65c6d7 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi3.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi3.o mcc_generated_files/spi3.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/c0c09b4ee8d01ff2f1efe9faf59dc6bdf8b1253 .generated_files/flags/default/63f80d3e53f67d92df857c76536421b47c21c374
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"app" -I"cfg" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -O2 -fno-common -DUSBCFG_H -DUSBGEN_H -D__USB_DESCRIPTORS_C -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/Test.X.${IMAGE_TYPE}.hex -o${DISTDIR}/Test.X.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
