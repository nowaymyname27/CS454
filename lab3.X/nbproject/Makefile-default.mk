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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=${DISTDIR}/lab3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=${DISTDIR}/lab3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../Downloads/lab3/aux/Client/crc16.c ../../Downloads/lab3/aux/Client/main.c ../../Downloads/lab3/aux/Client/timer.c ../../Downloads/lab3/aux/Client/uart.c ../../Downloads/lab3/aux/lab3_server.c ../../Downloads/lab3/aux/lab3_server_sol.c ../../Downloads/lab3/aux/lab3_troll.c ../../Downloads/lab3/aux/pc_crc16.c ../../Downloads/lab3/aux/serialdebug.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/91187227/crc16.o ${OBJECTDIR}/_ext/91187227/main.o ${OBJECTDIR}/_ext/91187227/timer.o ${OBJECTDIR}/_ext/91187227/uart.o ${OBJECTDIR}/_ext/503017505/lab3_server.o ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o ${OBJECTDIR}/_ext/503017505/lab3_troll.o ${OBJECTDIR}/_ext/503017505/pc_crc16.o ${OBJECTDIR}/_ext/503017505/serialdebug.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/91187227/crc16.o.d ${OBJECTDIR}/_ext/91187227/main.o.d ${OBJECTDIR}/_ext/91187227/timer.o.d ${OBJECTDIR}/_ext/91187227/uart.o.d ${OBJECTDIR}/_ext/503017505/lab3_server.o.d ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o.d ${OBJECTDIR}/_ext/503017505/lab3_troll.o.d ${OBJECTDIR}/_ext/503017505/pc_crc16.o.d ${OBJECTDIR}/_ext/503017505/serialdebug.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/91187227/crc16.o ${OBJECTDIR}/_ext/91187227/main.o ${OBJECTDIR}/_ext/91187227/timer.o ${OBJECTDIR}/_ext/91187227/uart.o ${OBJECTDIR}/_ext/503017505/lab3_server.o ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o ${OBJECTDIR}/_ext/503017505/lab3_troll.o ${OBJECTDIR}/_ext/503017505/pc_crc16.o ${OBJECTDIR}/_ext/503017505/serialdebug.o

# Source Files
SOURCEFILES=../../Downloads/lab3/aux/Client/crc16.c ../../Downloads/lab3/aux/Client/main.c ../../Downloads/lab3/aux/Client/timer.c ../../Downloads/lab3/aux/Client/uart.c ../../Downloads/lab3/aux/lab3_server.c ../../Downloads/lab3/aux/lab3_server_sol.c ../../Downloads/lab3/aux/lab3_troll.c ../../Downloads/lab3/aux/pc_crc16.c ../../Downloads/lab3/aux/serialdebug.c



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

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/lab3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ256MC710
MP_LINKER_FILE_OPTION=,--script=p33FJ256MC710.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/91187227/crc16.o: ../../Downloads/lab3/aux/Client/crc16.c  .generated_files/flags/default/fe5116bc8e2ba24535e3a5c03605e5d1af2f2952 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/91187227" 
	@${RM} ${OBJECTDIR}/_ext/91187227/crc16.o.d 
	@${RM} ${OBJECTDIR}/_ext/91187227/crc16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/Client/crc16.c  -o ${OBJECTDIR}/_ext/91187227/crc16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/91187227/crc16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/91187227/main.o: ../../Downloads/lab3/aux/Client/main.c  .generated_files/flags/default/448b991d36d434ef0f9a9083926dbdb1d055a6d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/91187227" 
	@${RM} ${OBJECTDIR}/_ext/91187227/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/91187227/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/Client/main.c  -o ${OBJECTDIR}/_ext/91187227/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/91187227/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/91187227/timer.o: ../../Downloads/lab3/aux/Client/timer.c  .generated_files/flags/default/2ed7582406557ecd0e113bd575b1e92231aaa00e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/91187227" 
	@${RM} ${OBJECTDIR}/_ext/91187227/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/91187227/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/Client/timer.c  -o ${OBJECTDIR}/_ext/91187227/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/91187227/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/91187227/uart.o: ../../Downloads/lab3/aux/Client/uart.c  .generated_files/flags/default/8702fc51bb2c3000d207f9bd378772fd0bc349f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/91187227" 
	@${RM} ${OBJECTDIR}/_ext/91187227/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/91187227/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/Client/uart.c  -o ${OBJECTDIR}/_ext/91187227/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/91187227/uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/lab3_server.o: ../../Downloads/lab3/aux/lab3_server.c  .generated_files/flags/default/a4f5128560cf3041b247c924a8a218ec107f4dc3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/lab3_server.c  -o ${OBJECTDIR}/_ext/503017505/lab3_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/lab3_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/lab3_server_sol.o: ../../Downloads/lab3/aux/lab3_server_sol.c  .generated_files/flags/default/64ff71211e20861f47d31173cdf790695906a78c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/lab3_server_sol.c  -o ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/lab3_server_sol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/lab3_troll.o: ../../Downloads/lab3/aux/lab3_troll.c  .generated_files/flags/default/48905d70b60877e0fc5f2d19512fab8e16a59d1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_troll.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_troll.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/lab3_troll.c  -o ${OBJECTDIR}/_ext/503017505/lab3_troll.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/lab3_troll.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/pc_crc16.o: ../../Downloads/lab3/aux/pc_crc16.c  .generated_files/flags/default/5b4155ff87dce0a8eb7c14a7a4457d5703623773 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/pc_crc16.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/pc_crc16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/pc_crc16.c  -o ${OBJECTDIR}/_ext/503017505/pc_crc16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/pc_crc16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/serialdebug.o: ../../Downloads/lab3/aux/serialdebug.c  .generated_files/flags/default/50bc835ef0d0a4744984b91a24ea4c559590fd4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/serialdebug.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/serialdebug.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/serialdebug.c  -o ${OBJECTDIR}/_ext/503017505/serialdebug.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/serialdebug.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/91187227/crc16.o: ../../Downloads/lab3/aux/Client/crc16.c  .generated_files/flags/default/b0a31802274a5b06014067b248c835169311a47f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/91187227" 
	@${RM} ${OBJECTDIR}/_ext/91187227/crc16.o.d 
	@${RM} ${OBJECTDIR}/_ext/91187227/crc16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/Client/crc16.c  -o ${OBJECTDIR}/_ext/91187227/crc16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/91187227/crc16.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/91187227/main.o: ../../Downloads/lab3/aux/Client/main.c  .generated_files/flags/default/42e731d894f44380c75d181bffe3c153fa728d9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/91187227" 
	@${RM} ${OBJECTDIR}/_ext/91187227/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/91187227/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/Client/main.c  -o ${OBJECTDIR}/_ext/91187227/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/91187227/main.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/91187227/timer.o: ../../Downloads/lab3/aux/Client/timer.c  .generated_files/flags/default/1eab36a1b327d5a038a966851fcf47e8b9d90d75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/91187227" 
	@${RM} ${OBJECTDIR}/_ext/91187227/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/91187227/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/Client/timer.c  -o ${OBJECTDIR}/_ext/91187227/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/91187227/timer.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/91187227/uart.o: ../../Downloads/lab3/aux/Client/uart.c  .generated_files/flags/default/c6e1b53c964cfe1ee711baa764c40fa916bcf5e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/91187227" 
	@${RM} ${OBJECTDIR}/_ext/91187227/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/91187227/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/Client/uart.c  -o ${OBJECTDIR}/_ext/91187227/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/91187227/uart.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/lab3_server.o: ../../Downloads/lab3/aux/lab3_server.c  .generated_files/flags/default/9b133e8772887d269e38e64907dc02e8cb1f7a34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/lab3_server.c  -o ${OBJECTDIR}/_ext/503017505/lab3_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/lab3_server.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/lab3_server_sol.o: ../../Downloads/lab3/aux/lab3_server_sol.c  .generated_files/flags/default/c235516fc097422fb872aa558ef6d82158bc1f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/lab3_server_sol.c  -o ${OBJECTDIR}/_ext/503017505/lab3_server_sol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/lab3_server_sol.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/lab3_troll.o: ../../Downloads/lab3/aux/lab3_troll.c  .generated_files/flags/default/39f5f3a52846a29a5022be9c7d75feda2af4b922 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_troll.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/lab3_troll.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/lab3_troll.c  -o ${OBJECTDIR}/_ext/503017505/lab3_troll.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/lab3_troll.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/pc_crc16.o: ../../Downloads/lab3/aux/pc_crc16.c  .generated_files/flags/default/d8d1673dd0dff9b875a2c411f8c5529fd6a7521e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/pc_crc16.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/pc_crc16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/pc_crc16.c  -o ${OBJECTDIR}/_ext/503017505/pc_crc16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/pc_crc16.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/503017505/serialdebug.o: ../../Downloads/lab3/aux/serialdebug.c  .generated_files/flags/default/62239add41b08d389d29c430126c80027fe71770 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/503017505" 
	@${RM} ${OBJECTDIR}/_ext/503017505/serialdebug.o.d 
	@${RM} ${OBJECTDIR}/_ext/503017505/serialdebug.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../Downloads/lab3/aux/serialdebug.c  -o ${OBJECTDIR}/_ext/503017505/serialdebug.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/503017505/serialdebug.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/lab3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../Downloads/CS_454_654_Lab_0/lcd.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/lab3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    ../../Downloads/CS_454_654_Lab_0/lcd.a  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/lab3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../Downloads/CS_454_654_Lab_0/lcd.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/lab3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    ../../Downloads/CS_454_654_Lab_0/lcd.a  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=coff -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/lab3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=coff   -mdfp="${DFP_DIR}/xc16" 
	
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
