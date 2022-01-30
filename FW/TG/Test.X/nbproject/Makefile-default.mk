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
FINAL_IMAGE=${DISTDIR}/Test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=null
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
SOURCEFILES_QUOTED_IF_SPACED=app/libcomp.c app/AppMain.c cfg/user_usb_device_descriptors.c cfg/usb_device_msd_cfg.c ../../Library/buttons/ButtonApi.c ../../Library/buttons/Buttons.c ../../Library/common/UserFunctions.c ../../Library/fileio/fileio.c ../../Library/kit/kit.c ../../Library/kit/kit_usb_device.c ../../Library/kit/kit_usb_device_msd.c ../../Library/system/TaskManager.c ../../Library/system/TickCounter.c ../../Library/system/TickTimer.c ../../Library/system/Wdt.c ../../Library/usb/usb_device_msd.c ../../Library/usb/user_usb_device_events.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/usb/usb_device.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/rtcc.c mcc_generated_files/exceptions.c mcc_generated_files/clock.c mcc_generated_files/uart1.c mcc_generated_files/spi1_driver.c mcc_generated_files/clc1.c main.c mcc_generated_files/adc1.c mcc_generated_files/i2c2_driver.c mcc_generated_files/ext_int.c mcc_generated_files/uart2.c mcc_generated_files/cdac.c mcc_generated_files/spi2.c mcc_generated_files/mccp3_compare.c mcc_generated_files/i2c1.c mcc_generated_files/clc2.c mcc_generated_files/spi3.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o ${OBJECTDIR}/cfg/usb_device_msd_cfg.o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ${OBJECTDIR}/_ext/1412088941/Buttons.o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ${OBJECTDIR}/_ext/1811300662/fileio.o ${OBJECTDIR}/_ext/1610024510/kit.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ${OBJECTDIR}/_ext/2096488509/Wdt.o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/rtcc.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/clc1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/cdac.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/clc2.o ${OBJECTDIR}/mcc_generated_files/spi3.o
POSSIBLE_DEPFILES=${OBJECTDIR}/app/libcomp.o.d ${OBJECTDIR}/app/AppMain.o.d ${OBJECTDIR}/cfg/user_usb_device_descriptors.o.d ${OBJECTDIR}/cfg/usb_device_msd_cfg.o.d ${OBJECTDIR}/_ext/1412088941/ButtonApi.o.d ${OBJECTDIR}/_ext/1412088941/Buttons.o.d ${OBJECTDIR}/_ext/1730991999/UserFunctions.o.d ${OBJECTDIR}/_ext/1811300662/fileio.o.d ${OBJECTDIR}/_ext/1610024510/kit.o.d ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o.d ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o.d ${OBJECTDIR}/_ext/2096488509/TaskManager.o.d ${OBJECTDIR}/_ext/2096488509/TickCounter.o.d ${OBJECTDIR}/_ext/2096488509/TickTimer.o.d ${OBJECTDIR}/_ext/2096488509/Wdt.o.d ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o.d ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/coretimer.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/rtcc.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d ${OBJECTDIR}/mcc_generated_files/clc1.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d ${OBJECTDIR}/mcc_generated_files/ext_int.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/cdac.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/clc2.o.d ${OBJECTDIR}/mcc_generated_files/spi3.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app/libcomp.o ${OBJECTDIR}/app/AppMain.o ${OBJECTDIR}/cfg/user_usb_device_descriptors.o ${OBJECTDIR}/cfg/usb_device_msd_cfg.o ${OBJECTDIR}/_ext/1412088941/ButtonApi.o ${OBJECTDIR}/_ext/1412088941/Buttons.o ${OBJECTDIR}/_ext/1730991999/UserFunctions.o ${OBJECTDIR}/_ext/1811300662/fileio.o ${OBJECTDIR}/_ext/1610024510/kit.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device.o ${OBJECTDIR}/_ext/1610024510/kit_usb_device_msd.o ${OBJECTDIR}/_ext/2096488509/TaskManager.o ${OBJECTDIR}/_ext/2096488509/TickCounter.o ${OBJECTDIR}/_ext/2096488509/TickTimer.o ${OBJECTDIR}/_ext/2096488509/Wdt.o ${OBJECTDIR}/_ext/1610014608/usb_device_msd.o ${OBJECTDIR}/_ext/1610014608/user_usb_device_events.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/coretimer.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/rtcc.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/clc1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/ext_int.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/cdac.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/mccp3_compare.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/clc2.o ${OBJECTDIR}/mcc_generated_files/spi3.o

# Source Files
SOURCEFILES=app/libcomp.c app/AppMain.c cfg/user_usb_device_descriptors.c cfg/usb_device_msd_cfg.c ../../Library/buttons/ButtonApi.c ../../Library/buttons/Buttons.c ../../Library/common/UserFunctions.c ../../Library/fileio/fileio.c ../../Library/kit/kit.c ../../Library/kit/kit_usb_device.c ../../Library/kit/kit_usb_device_msd.c ../../Library/system/TaskManager.c ../../Library/system/TickCounter.c ../../Library/system/TickTimer.c ../../Library/system/Wdt.c ../../Library/usb/usb_device_msd.c ../../Library/usb/user_usb_device_events.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/usb/usb_device.c mcc_generated_files/coretimer.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/rtcc.c mcc_generated_files/exceptions.c mcc_generated_files/clock.c mcc_generated_files/uart1.c mcc_generated_files/spi1_driver.c mcc_generated_files/clc1.c main.c mcc_generated_files/adc1.c mcc_generated_files/i2c2_driver.c mcc_generated_files/ext_int.c mcc_generated_files/uart2.c mcc_generated_files/cdac.c mcc_generated_files/spi2.c mcc_generated_files/mccp3_compare.c mcc_generated_files/i2c1.c mcc_generated_files/clc2.c mcc_generated_files/spi3.c



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

MP_PROCESSOR_OPTION=
MP_LINKER_FILE_OPTION=

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
