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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/AppMain.c config/user_usb_device_descriptors.c ../../Library/bootloader/BLD_FileIO.c ../../Library/bootloader/BLD_Nvm.c ../../Library/bootloader/Bootloader.c ../../Library/bootloader/asm.S ../../Library/fileio/files_lite.c ../../Library/kit/kit.c ../../Library/kit/kit_usb_device.c ../../Library/kit/kit_usb_device_msd.c ../../Library/programmer/HexParsing.c ../../Library/system/TaskManager.c ../../Library/system/TickTimer.c ../../Library/system/Wdt.c ../../Library/usb/usb_device_msd.c ../../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/system.c mcc_generated_files/coretimer.c mcc_generated_files/clock.c mcc_generated_files/mcc.c main.c ../../Library/common/UserFunctions.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o ${OBJECTDIR}/_ext/382251289/Bootloader.o ${OBJECTDIR}/_ext/382251289/asm.o ${OBJECTDIR}/_ext/1811300662/files_lite.o ${OBJECTDIR}/_ext/1610024510/kit.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ${OBJECTDIR}/_ext/1989768086/HexParsing.o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ${OBJECTDIR}/_ext/2096488509/Wdt.o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/config/user_usb_device_descriptors.o.d ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o.d ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o.d ${OBJECTDIR}/_ext/382251289/Bootloader.o.d ${OBJECTDIR}/_ext/382251289/asm.o.d ${OBJECTDIR}/_ext/1811300662/files_lite.o.d ${OBJECTDIR}/_ext/1610024510/kit.o.d ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/1989768086/HexParsing.o.d ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d ${OBJECTDIR}/_ext/2096488509/Wdt.o.d ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/config/user_usb_device_descriptors.o ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o ${OBJECTDIR}/_ext/382251289/Bootloader.o ${OBJECTDIR}/_ext/382251289/asm.o ${OBJECTDIR}/_ext/1811300662/files_lite.o ${OBJECTDIR}/_ext/1610024510/kit.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ${OBJECTDIR}/_ext/1989768086/HexParsing.o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ${OBJECTDIR}/_ext/2096488509/Wdt.o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o

# Source Files
SOURCEFILES=app/libcomp.c app/AppMain.c config/user_usb_device_descriptors.c ../../Library/bootloader/BLD_FileIO.c ../../Library/bootloader/BLD_Nvm.c ../../Library/bootloader/Bootloader.c ../../Library/bootloader/asm.S ../../Library/fileio/files_lite.c ../../Library/kit/kit.c ../../Library/kit/kit_usb_device.c ../../Library/kit/kit_usb_device_msd.c ../../Library/programmer/HexParsing.c ../../Library/system/TaskManager.c ../../Library/system/TickTimer.c ../../Library/system/Wdt.c ../../Library/usb/usb_device_msd.c ../../Library/usb/user_usb_device_events.c mcc_generated_files/memory/flash.c mcc_generated_files/usb/usb_device.c mcc_generated_files/pin_manager.c mcc_generated_files/interrupt_manager.c mcc_generated_files/system.c mcc_generated_files/coretimer.c mcc_generated_files/clock.c mcc_generated_files/mcc.c main.c ../../Library/common/UserFunctions.c



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
ProjectDir="F:\Git\SAMPI\P32DK\FW\PG\BLD.X"
ProjectName=BLD
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [copy ${ImagePath} ".\bld.${OUTPUT_SUFFIX}"]"
	@copy ${ImagePath} ".\bld.${OUTPUT_SUFFIX}"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MM0064GPM028
MP_LINKER_FILE_OPTION=,--script="..\..\Library\bootloader\Linker\p32MM0064GPM028\Bld.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/382251289/asm.o: ../../Library/bootloader/asm.S  .generated_files/flags/default/55ac426c0d416212d83a3d007bb5beccfe4c4f30 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/382251289" 
	@${RM} ${OBJECTDIR}/_ext/382251289/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/382251289/asm.o 
	@${RM} ${OBJECTDIR}/_ext/382251289/asm.o.ok ${OBJECTDIR}/_ext/382251289/asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/382251289/asm.o.d"  -o ${OBJECTDIR}/_ext/382251289/asm.o ../../Library/bootloader/asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/382251289/asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/382251289/asm.o.d" "${OBJECTDIR}/_ext/382251289/asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/382251289/asm.o: ../../Library/bootloader/asm.S  .generated_files/flags/default/89991c80344ba4f62fb3ddd754c16eeeac1b2f85 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/382251289" 
	@${RM} ${OBJECTDIR}/_ext/382251289/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/382251289/asm.o 
	@${RM} ${OBJECTDIR}/_ext/382251289/asm.o.ok ${OBJECTDIR}/_ext/382251289/asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/382251289/asm.o.d"  -o ${OBJECTDIR}/_ext/382251289/asm.o ../../Library/bootloader/asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/382251289/asm.o.asm.d",--gdwarf-2 -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/382251289/asm.o.d" "${OBJECTDIR}/_ext/382251289/asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/7557e16f0f08fd771ec403f0909a891a4b608473 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/flags/default/3d8700425a8287397890dcc727698edcd5cc9249 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/flags/default/1f9d9f9fb12a0f244d5a3b5371e05cef4f335a0b .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/382251289/BLD_FileIO.o: ../../Library/bootloader/BLD_FileIO.c  .generated_files/flags/default/c42be2a2e029f8c184b9e30ab7a7c5be7f2ffaf0 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/382251289" 
	@${RM} ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/382251289/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o ../../Library/bootloader/BLD_FileIO.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/382251289/BLD_Nvm.o: ../../Library/bootloader/BLD_Nvm.c  .generated_files/flags/default/72f6da37b4c7f76c909a186a7e3bf3d0cfb2c154 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/382251289" 
	@${RM} ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/382251289/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o ../../Library/bootloader/BLD_Nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/382251289/Bootloader.o: ../../Library/bootloader/Bootloader.c  .generated_files/flags/default/93ca4a47fb448e743908a32836affaf043f7ff6b .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/382251289" 
	@${RM} ${OBJECTDIR}/_ext/382251289/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/382251289/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/382251289/Bootloader.o.d" -o ${OBJECTDIR}/_ext/382251289/Bootloader.o ../../Library/bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811300662/files_lite.o: ../../Library/fileio/files_lite.c  .generated_files/flags/default/4ed009b74c4f75ae3d407a4264cbf8b01182e6e1 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1811300662" 
	@${RM} ${OBJECTDIR}/_ext/1811300662/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811300662/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1811300662/files_lite.o.d" -o ${OBJECTDIR}/_ext/1811300662/files_lite.o ../../Library/fileio/files_lite.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit.o: ../../Library/kit/kit.c  .generated_files/flags/default/d46998cb0d6732c7c7bb302199109533637b886c .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit.o ../../Library/kit/kit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device.o: ../../Library/kit/kit_usb_device.c  .generated_files/flags/default/97a909517b1e7afc491a90e37192884e4d8f30cc .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ../../Library/kit/kit_usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o: ../../Library/kit/kit_usb_device_msd.c  .generated_files/flags/default/ed921fee54480e13736eef600f356bac38ed98e3 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ../../Library/kit/kit_usb_device_msd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1989768086/HexParsing.o: ../../Library/programmer/HexParsing.c  .generated_files/flags/default/434ab48ebc0fa201b4b7ab8c2b8c45e31c3372b2 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1989768086" 
	@${RM} ${OBJECTDIR}/_ext/1989768086/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1989768086/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1989768086/HexParsing.o.d" -o ${OBJECTDIR}/_ext/1989768086/HexParsing.o ../../Library/programmer/HexParsing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TaskManager.o: ../../Library/system/TaskManager.c  .generated_files/flags/default/4e35e0d023d18e03b683fdca0750ca6ddb2740b5 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TaskManager.o.d" -o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ../../Library/system/TaskManager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickTimer.o: ../../Library/system/TickTimer.c  .generated_files/flags/default/47dc5b4a6f48223807b32783d1693656ac3c06 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickTimer.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ../../Library/system/TickTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/Wdt.o: ../../Library/system/Wdt.c  .generated_files/flags/default/121f302797d0a400d4cb821408ea53fac41b8940 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/Wdt.o.d" -o ${OBJECTDIR}/_ext/2096488509/Wdt.o ../../Library/system/Wdt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/usb_device_msd.o: ../../Library/usb/usb_device_msd.c  .generated_files/flags/default/1ee5a1a6026872438440ab6254c0a5554acba5d9 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ../../Library/usb/usb_device_msd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o: ../../Library/usb/user_usb_device_events.c  .generated_files/flags/default/d57bc452667cab44b75d803f23f4e609e8184e04 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ../../Library/usb/user_usb_device_events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/4649613f7c9dcf7fa84a01ebe4ff3766ea91bbbf .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/a3afd9895f56dc4b61c930c4795f60f759857f61 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/72a06b5740419fcfc1908b96239b181124faa02a .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/bfcbbb751de8e0bd2a3c9480dc01dfff9795ffc5 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/27312d9aa485735ec73b0c895ecbe47f04c76ae .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/dd971ed6c82b21078cc0fa63178e7f8a9c7017aa .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/3a547a9d222a1abb8d4608223ce7cd4df0785f20 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/7029f9768eda123ca62a32c646c9c9684e47a4f5 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4a18f54d05bb6880699d3ddffc04157124ca4ef4 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1730991999/UserFunctions.o: ../../Library/common/UserFunctions.c  .generated_files/flags/default/aa2f9a24f656b214ac1292ae7c16ca6cdd65fd2c .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1730991999" 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ../../Library/common/UserFunctions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/app/libcomp.o: app/libcomp.c  .generated_files/flags/default/1fc0cb7200ca22e198e8f993444cb5a5954b10d1 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/libcomp.o.d 
	@${RM} ${OBJECTDIR}/app/libcomp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/libcomp.o.d" -o ${OBJECTDIR}/app/libcomp.o app/libcomp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/app/AppMain.o: app/AppMain.c  .generated_files/flags/default/6a458b47a85d20575a7b7d9976ae66d57bde782e .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/app" 
	@${RM} ${OBJECTDIR}/app/AppMain.o.d 
	@${RM} ${OBJECTDIR}/app/AppMain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/app/AppMain.o.d" -o ${OBJECTDIR}/app/AppMain.o app/AppMain.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/config/user_usb_device_descriptors.o: config/user_usb_device_descriptors.c  .generated_files/flags/default/6643f736ab89b1132294fbb0a7613fb7c1951242 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o.d 
	@${RM} ${OBJECTDIR}/config/user_usb_device_descriptors.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/config/user_usb_device_descriptors.o.d" -o ${OBJECTDIR}/config/user_usb_device_descriptors.o config/user_usb_device_descriptors.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/382251289/BLD_FileIO.o: ../../Library/bootloader/BLD_FileIO.c  .generated_files/flags/default/4cd232e4de9b88d5b88597ebc687bdb550f0df42 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/382251289" 
	@${RM} ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o.d 
	@${RM} ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/382251289/BLD_FileIO.o.d" -o ${OBJECTDIR}/_ext/382251289/BLD_FileIO.o ../../Library/bootloader/BLD_FileIO.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/382251289/BLD_Nvm.o: ../../Library/bootloader/BLD_Nvm.c  .generated_files/flags/default/4085d93787608291713f7d44c9b6ab1ae40c14 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/382251289" 
	@${RM} ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/382251289/BLD_Nvm.o.d" -o ${OBJECTDIR}/_ext/382251289/BLD_Nvm.o ../../Library/bootloader/BLD_Nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/382251289/Bootloader.o: ../../Library/bootloader/Bootloader.c  .generated_files/flags/default/3e5f52171b89266bae3c8b9f4a5b21b899ea60 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/382251289" 
	@${RM} ${OBJECTDIR}/_ext/382251289/Bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/382251289/Bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/382251289/Bootloader.o.d" -o ${OBJECTDIR}/_ext/382251289/Bootloader.o ../../Library/bootloader/Bootloader.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1811300662/files_lite.o: ../../Library/fileio/files_lite.c  .generated_files/flags/default/e0ab6d8a83b37a020f2c27ef06ed1e142e753f13 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1811300662" 
	@${RM} ${OBJECTDIR}/_ext/1811300662/files_lite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1811300662/files_lite.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1811300662/files_lite.o.d" -o ${OBJECTDIR}/_ext/1811300662/files_lite.o ../../Library/fileio/files_lite.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit.o: ../../Library/kit/kit.c  .generated_files/flags/default/abb18f78a996683c3b430940fd37a81c1638c7a3 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit.o ../../Library/kit/kit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device.o: ../../Library/kit/kit_usb_device.c  .generated_files/flags/default/549edf27e205ac8dd5d22aee51a83a5ded62a91c .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ../../Library/kit/kit_usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o: ../../Library/kit/kit_usb_device_msd.c  .generated_files/flags/default/b20a6d146685ce45a2c6da205afef4fbcea5d5ab .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610024510" 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ../../Library/kit/kit_usb_device_msd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1989768086/HexParsing.o: ../../Library/programmer/HexParsing.c  .generated_files/flags/default/2b606474a87c71652b6c9bb0334e4bf6fb457572 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1989768086" 
	@${RM} ${OBJECTDIR}/_ext/1989768086/HexParsing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1989768086/HexParsing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1989768086/HexParsing.o.d" -o ${OBJECTDIR}/_ext/1989768086/HexParsing.o ../../Library/programmer/HexParsing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TaskManager.o: ../../Library/system/TaskManager.c  .generated_files/flags/default/9bd4e575b3db185dc5aee8c0f86c12bb206d8744 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TaskManager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TaskManager.o.d" -o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ../../Library/system/TaskManager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/TickTimer.o: ../../Library/system/TickTimer.c  .generated_files/flags/default/4f52bdba04a44e0708fd4e284f8c0004af8b2ad4 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/TickTimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/TickTimer.o.d" -o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ../../Library/system/TickTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2096488509/Wdt.o: ../../Library/system/Wdt.c  .generated_files/flags/default/428d14ea93fc45e973533bedadbfc603657df670 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/2096488509" 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2096488509/Wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/2096488509/Wdt.o.d" -o ${OBJECTDIR}/_ext/2096488509/Wdt.o ../../Library/system/Wdt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/usb_device_msd.o: ../../Library/usb/usb_device_msd.c  .generated_files/flags/default/88f6510a24b6dadd923f9198e91cde1ff9ea0242 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d" -o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ../../Library/usb/usb_device_msd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o: ../../Library/usb/user_usb_device_events.c  .generated_files/flags/default/cf71c9d8fd7ad7c1fd1797774f677b409fcb5c82 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1610014608" 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d" -o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ../../Library/usb/user_usb_device_events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.c  .generated_files/flags/default/9609251be21cdc1bcbd4d4d4a6cef6ea2132ba58 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash.o.d" -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o mcc_generated_files/memory/flash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/28cc8ef37b2fbf47a3e7279afd6bca1a44a0eea0 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/3c440b3fabe0046d1f829c6587436d04dabaa00d .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/305029360898daf78065ce26d7cb3b1c63289464 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/3d25240b067587e44a75bb73c4c0a6dc1dcdd8e9 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/coretimer.o: mcc_generated_files/coretimer.c  .generated_files/flags/default/450d3106ed1bd3d130c14410dd7ecbbcbbea12ec .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/coretimer.o.d" -o ${OBJECTDIR}/mcc_generated_files/coretimer.o mcc_generated_files/coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/138d1361d3068afc5e6d8108b75eb8a9d5c2c560 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/abb7ec850cd7b3d656dd2b205d4134b1e1ffbf7e .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/3013a7b9d9f8b118ed378ff187a4e326fcb6ca73 .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1730991999/UserFunctions.o: ../../Library/common/UserFunctions.c  .generated_files/flags/default/f88c0be637783d3018520b938cc5fb016be8a55a .generated_files/flags/default/90b386029bd3786c6bb60d0a18451b496f288066
	@${MKDIR} "${OBJECTDIR}/_ext/1730991999" 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1730991999/UserFunctions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"app" -I"config" -I"mcc_generated_files" -I"mcc_generated_files/usb" -I"../../Library" -I"../../Library/usb" -ffunction-sections -fdata-sections -ftoplevel-reorder -O2 -fschedule-insns -fschedule-insns2 -fno-common -D__USB_DESCRIPTORS_C -DUSBCFG_H -DUSBGEN_H -DCOMMON_LIB_CFG -MP -MMD -MF "${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d" -o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ../../Library/common/UserFunctions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../Library/bootloader/Linker/p32MM0064GPM028/Bld.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../Library/bootloader/Linker/p32MM0064GPM028/Bld.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--cref,--warn-section-align,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/BLD.X.${IMAGE_TYPE}.hex

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
