! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_SleepingBarber
	.export	_Method_P_Main_SleepingBarber_1
	.export	_Method_P_Main_SleepingBarber_2
	.export	_Method_P_Main_SleepingBarber_3
	.export	_Method_P_Main_SleepingBarber_4
	.export	_Method_P_Main_SleepingBarber_5
	.export	_Method_P_Main_SleepingBarber_6
	.export	_Method_P_Main_SleepingBarber_7
	.export	_Method_P_Main_SleepingBarber_8
	.export	_Method_P_Main_SleepingBarber_9
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
_Global_sb:
	.skip	16
_Global_bStatus:
	.word	0x00000002		! decimal value = 2
_Global_cStatus:
! Static array
	.word	10		! number of elements
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.align
_Global_Barber:
	.skip	4092
_Global_customers:
	.skip	20
_Global_barbers:
	.skip	20
_Global_cutting:
	.skip	20
_Global_done:
	.skip	20
_Global_access_lock:
	.skip	20
_Global_waiting:
	.skip	4
	.align
! String constants
_StringConst_15:
	.word	7			! length
	.ascii	"      \t"
	.align
_StringConst_14:
	.word	4			! length
	.ascii	"End\n"
	.align
_StringConst_13:
	.word	6			! length
	.ascii	"Start\n"
	.align
_StringConst_12:
	.word	2			! length
	.ascii	"10"
	.align
_StringConst_11:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_10:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_9:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_8:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_7:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_6:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_5:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_4:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_3:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_2:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_1:
	.word	7			! length
	.ascii	"Barber\t"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x9e2d928e,r3		! .  hashVal = -1641180530
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_19		! .
	ret				! .
_Label_19:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Task2.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0x9e2d928e,r4		! myHashVal = -1641180530
	cmp	r3,r4
	be	_Label_20
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_20:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_21
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_21
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_21
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_21
_Label_21:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CA",r10
	call	_function_18_sleepingbarber
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_22
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_22:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION sleepingbarber  ===============
! 
_function_18_sleepingbarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_18_sleepingbarber,r1
	push	r1
	mov	21579,r1
_Label_644:
	push	r0
	sub	r1,1,r1
	bne	_Label_644
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0AS",r10
!   _Global_waiting = 0		(4 bytes)
	mov	0,r1
	set	_Global_waiting,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0AS",r10
!   _temp_23 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	set	-45380,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_25 = &_temp_24
	set	-45376,r1
	add	r14,r1,r1
	store	r1,[r14+-4452]
!   _temp_25 = _temp_25 + 4
	load	[r14+-4452],r1
	add	r1,4,r1
	store	r1,[r14+-4452]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_27 = zeros  (sizeInBytes=4092)
	add	r14,-4444,r4
	mov	1023,r3
_Label_645:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_645
!   _temp_27 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4444]
	mov	10,r1
	store	r1,[r14+-4448]
_Label_29:
!   Data Move: *_temp_25 = _temp_27  (sizeInBytes=4092)
	add	r14,-4444,r5
	load	[r14+-4452],r4
	mov	1023,r3
_Label_646:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_646
!   _temp_25 = _temp_25 + 4092
	load	[r14+-4452],r1
	add	r1,4092,r1
	store	r1,[r14+-4452]
!   _temp_26 = _temp_26 + -1
	load	[r14+-4448],r1
	add	r1,-1,r1
	store	r1,[r14+-4448]
!   if intNotZero (_temp_26) then goto _Label_29
	load	[r14+-4448],r1
	cmp	r1,r0
	bne	_Label_29
!   Initialize the array size...
	mov	10,r1
	set	-45376,r2
	store	r1,[r14+r2]
!   _temp_30 = &_temp_24
	set	-45376,r1
	add	r14,r1,r1
	store	r1,[r14+-348]
!   make sure array has size 10
	set	-45380,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_647
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_647:
!   make sure array has size 10
	load	[r14+-348],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_23 = *_temp_30  (sizeInBytes=40924)
	load	[r14+-348],r5
	set	-45380,r4
	load	[r14+r4],r4
	mov	10231,r3
_Label_648:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_648
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_customers = zeros  (sizeInBytes=20)
	set	_Global_customers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_customers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_customers,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barbers = zeros  (sizeInBytes=20)
	set	_Global_barbers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barbers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barbers,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_cutting = zeros  (sizeInBytes=20)
	set	_Global_cutting,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_cutting = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_cutting,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_done = zeros  (sizeInBytes=20)
	set	_Global_done,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_done = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_done,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_access_lock = zeros  (sizeInBytes=20)
	set	_Global_access_lock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_access_lock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_access_lock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_36 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-324],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_37 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-320]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-320],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   _temp_38 = &_Global_cutting
	set	_Global_cutting,r1
	store	r1,[r14+-316]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   _temp_39 = &_Global_done
	set	_Global_done,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_40 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-308]
!   Send message Init
	load	[r14+-308],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_45 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-304]
!   Calculate and save the FOR-LOOP ending value
!   _temp_46 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-300]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_45  (sizeInBytes=4)
	load	[r14+-304],r1
	set	-45384,r2
	store	r1,[r14+r2]
_Label_41:
!   Perform the FOR-LOOP termination test
!   if i > _temp_46 then goto _Label_44		
	set	-45384,r1
	load	[r14+r1],r1
	load	[r14+-300],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_44
_Label_42:
	mov	76,r13		! source line 76
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	77,r13		! source line 77
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_43:
!   i = i + 1
	set	-45384,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45384,r2
	store	r1,[r14+r2]
	jmp	_Label_41
! END FOR
_Label_44:
! CALL STATEMENT...
!   _temp_47 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_47  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	79,r13		! source line 79
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_52 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-292]
!   Calculate and save the FOR-LOOP ending value
!   _temp_53 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-288]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_52  (sizeInBytes=4)
	load	[r14+-292],r1
	set	-45384,r2
	store	r1,[r14+r2]
_Label_48:
!   Perform the FOR-LOOP termination test
!   if i > _temp_53 then goto _Label_51		
	set	-45384,r1
	load	[r14+r1],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_51
_Label_49:
	mov	80,r13		! source line 80
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_54 = i + 1		(int)
	set	-45384,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
!   Prepare Argument: offset=8  value=_temp_54  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+0]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_50:
!   i = i + 1
	set	-45384,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45384,r2
	store	r1,[r14+r2]
	jmp	_Label_48
! END FOR
_Label_51:
! CALL STATEMENT...
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_sb = zeros  (sizeInBytes=16)
	set	_Global_sb,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_sb = _P_Main_SleepingBarber
	set	_P_Main_SleepingBarber,r1
	set	_Global_sb,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_56 = &_Global_cStatus
	set	_Global_cStatus,r1
	store	r1,[r14+-276]
!   _temp_57 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=12  value=_Global_bStatus  sizeInBytes=4
	set	_Global_bStatus,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_56  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_Barber = zeros  (sizeInBytes=4092)
	set	_Global_Barber,r4
	mov	1023,r3
_Label_649:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_649
!   _Global_Barber = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_Global_Barber,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_59 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-264]
!   _temp_60 = &_Global_Barber
	set	_Global_Barber,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=_temp_59  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_61 = _function_17_call_barber
	set	_function_17_call_barber,r1
	store	r1,[r14+-256]
!   _temp_62 = &_Global_Barber
	set	_Global_Barber,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=_temp_61  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_63 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-248]
!   _temp_64 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-244]
!   Move address of _temp_64 [0 ] into _temp_65
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   Prepare Argument: offset=12  value=_temp_63  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_66 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-236]
!   _temp_67 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-232]
!   Move address of _temp_67 [0 ] into _temp_68
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-228]
!   Prepare Argument: offset=12  value=_temp_66  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0SE",r10
!   _temp_69 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-224]
!   _temp_70 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-220]
!   Move address of _temp_70 [1 ] into _temp_71
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Prepare Argument: offset=12  value=_temp_69  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0SE",r10
!   _temp_72 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-212]
!   _temp_73 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-208]
!   Move address of _temp_73 [1 ] into _temp_74
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-204]
!   Prepare Argument: offset=12  value=_temp_72  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	97,r13		! source line 97
	mov	"\0\0SE",r10
!   _temp_75 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-200]
!   _temp_76 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-196]
!   Move address of _temp_76 [2 ] into _temp_77
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_75  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0SE",r10
!   _temp_78 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-188]
!   _temp_79 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-184]
!   Move address of _temp_79 [2 ] into _temp_80
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_78  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0SE",r10
!   _temp_81 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-176]
!   _temp_82 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   Move address of _temp_82 [3 ] into _temp_83
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_81  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0SE",r10
!   _temp_84 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-164]
!   _temp_85 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-160]
!   Move address of _temp_85 [3 ] into _temp_86
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_84  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0SE",r10
!   _temp_87 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-152]
!   _temp_88 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   Move address of _temp_88 [4 ] into _temp_89
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_87  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0SE",r10
!   _temp_90 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-140]
!   _temp_91 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-136]
!   Move address of _temp_91 [4 ] into _temp_92
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_90  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0SE",r10
!   _temp_93 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-128]
!   _temp_94 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-124]
!   Move address of _temp_94 [5 ] into _temp_95
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_93  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0SE",r10
!   _temp_96 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-116]
!   _temp_97 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-112]
!   Move address of _temp_97 [5 ] into _temp_98
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_96  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0SE",r10
!   _temp_99 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-104]
!   _temp_100 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-100]
!   Move address of _temp_100 [6 ] into _temp_101
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_99  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_102 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-92]
!   _temp_103 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-88]
!   Move address of _temp_103 [6 ] into _temp_104
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_102  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_105 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-80]
!   _temp_106 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   Move address of _temp_106 [7 ] into _temp_107
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_105  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_108 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-68]
!   _temp_109 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   Move address of _temp_109 [7 ] into _temp_110
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_108  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_111 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-56]
!   _temp_112 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   Move address of _temp_112 [8 ] into _temp_113
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_111  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_114 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-44]
!   _temp_115 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-40]
!   Move address of _temp_115 [8 ] into _temp_116
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_114  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_117 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   _temp_118 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-28]
!   Move address of _temp_118 [9 ] into _temp_119
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_117  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_120 = _function_16_call_customer
	set	_function_16_call_customer,r1
	store	r1,[r14+-20]
!   _temp_121 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   Move address of _temp_121 [9 ] into _temp_122
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_120  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0RE",r10
	set	86320,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_18_sleepingbarber:
	.word	_sourceFileName
	.word	_Label_123
	.word	0		! total size of parameters
	.word	86316		! frame size = 86316
	.word	_Label_124
	.word	-12
	.word	4
	.word	_Label_125
	.word	-16
	.word	4
	.word	_Label_126
	.word	-20
	.word	4
	.word	_Label_127
	.word	-24
	.word	4
	.word	_Label_128
	.word	-28
	.word	4
	.word	_Label_129
	.word	-32
	.word	4
	.word	_Label_130
	.word	-36
	.word	4
	.word	_Label_131
	.word	-40
	.word	4
	.word	_Label_132
	.word	-44
	.word	4
	.word	_Label_133
	.word	-48
	.word	4
	.word	_Label_134
	.word	-52
	.word	4
	.word	_Label_135
	.word	-56
	.word	4
	.word	_Label_136
	.word	-60
	.word	4
	.word	_Label_137
	.word	-64
	.word	4
	.word	_Label_138
	.word	-68
	.word	4
	.word	_Label_139
	.word	-72
	.word	4
	.word	_Label_140
	.word	-76
	.word	4
	.word	_Label_141
	.word	-80
	.word	4
	.word	_Label_142
	.word	-84
	.word	4
	.word	_Label_143
	.word	-88
	.word	4
	.word	_Label_144
	.word	-92
	.word	4
	.word	_Label_145
	.word	-96
	.word	4
	.word	_Label_146
	.word	-100
	.word	4
	.word	_Label_147
	.word	-104
	.word	4
	.word	_Label_148
	.word	-108
	.word	4
	.word	_Label_149
	.word	-112
	.word	4
	.word	_Label_150
	.word	-116
	.word	4
	.word	_Label_151
	.word	-120
	.word	4
	.word	_Label_152
	.word	-124
	.word	4
	.word	_Label_153
	.word	-128
	.word	4
	.word	_Label_154
	.word	-132
	.word	4
	.word	_Label_155
	.word	-136
	.word	4
	.word	_Label_156
	.word	-140
	.word	4
	.word	_Label_157
	.word	-144
	.word	4
	.word	_Label_158
	.word	-148
	.word	4
	.word	_Label_159
	.word	-152
	.word	4
	.word	_Label_160
	.word	-156
	.word	4
	.word	_Label_161
	.word	-160
	.word	4
	.word	_Label_162
	.word	-164
	.word	4
	.word	_Label_163
	.word	-168
	.word	4
	.word	_Label_164
	.word	-172
	.word	4
	.word	_Label_165
	.word	-176
	.word	4
	.word	_Label_166
	.word	-180
	.word	4
	.word	_Label_167
	.word	-184
	.word	4
	.word	_Label_168
	.word	-188
	.word	4
	.word	_Label_169
	.word	-192
	.word	4
	.word	_Label_170
	.word	-196
	.word	4
	.word	_Label_171
	.word	-200
	.word	4
	.word	_Label_172
	.word	-204
	.word	4
	.word	_Label_173
	.word	-208
	.word	4
	.word	_Label_174
	.word	-212
	.word	4
	.word	_Label_175
	.word	-216
	.word	4
	.word	_Label_176
	.word	-220
	.word	4
	.word	_Label_177
	.word	-224
	.word	4
	.word	_Label_178
	.word	-228
	.word	4
	.word	_Label_179
	.word	-232
	.word	4
	.word	_Label_180
	.word	-236
	.word	4
	.word	_Label_181
	.word	-240
	.word	4
	.word	_Label_182
	.word	-244
	.word	4
	.word	_Label_183
	.word	-248
	.word	4
	.word	_Label_184
	.word	-252
	.word	4
	.word	_Label_185
	.word	-256
	.word	4
	.word	_Label_186
	.word	-260
	.word	4
	.word	_Label_187
	.word	-264
	.word	4
	.word	_Label_188
	.word	-268
	.word	4
	.word	_Label_189
	.word	-272
	.word	4
	.word	_Label_190
	.word	-276
	.word	4
	.word	_Label_191
	.word	-280
	.word	4
	.word	_Label_192
	.word	-284
	.word	4
	.word	_Label_193
	.word	-288
	.word	4
	.word	_Label_194
	.word	-292
	.word	4
	.word	_Label_195
	.word	-296
	.word	4
	.word	_Label_196
	.word	-300
	.word	4
	.word	_Label_197
	.word	-304
	.word	4
	.word	_Label_198
	.word	-308
	.word	4
	.word	_Label_199
	.word	-312
	.word	4
	.word	_Label_200
	.word	-316
	.word	4
	.word	_Label_201
	.word	-320
	.word	4
	.word	_Label_202
	.word	-324
	.word	4
	.word	_Label_203
	.word	-328
	.word	4
	.word	_Label_204
	.word	-332
	.word	4
	.word	_Label_205
	.word	-336
	.word	4
	.word	_Label_206
	.word	-340
	.word	4
	.word	_Label_207
	.word	-344
	.word	4
	.word	_Label_208
	.word	-348
	.word	4
	.word	_Label_209
	.word	-352
	.word	4
	.word	_Label_210
	.word	-4444
	.word	4092
	.word	_Label_211
	.word	-4448
	.word	4
	.word	_Label_212
	.word	-4452
	.word	4
	.word	_Label_213
	.word	-45376
	.word	40924
	.word	_Label_214
	.word	-45380
	.word	4
	.word	_Label_215
	.word	-45384
	.word	4
	.word	_Label_216
	.word	-86308
	.word	40924
	.word	0
_Label_123:
	.ascii	"sleepingbarber\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_30\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_215:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_216:
	.byte	'A'
	.ascii	"Customers\0"
	.align
! 
! ===============  FUNCTION call_barber  ===============
! 
_function_17_call_barber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_17_call_barber,r1
	push	r1
	mov	3,r1
_Label_650:
	push	r0
	sub	r1,1,r1
	bne	_Label_650
	mov	116,r13		! source line 116
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0SE",r10
!   _temp_217 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=num  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message barber
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_17_call_barber:
	.word	_sourceFileName
	.word	_Label_218
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_219
	.word	8
	.word	4
	.word	_Label_220
	.word	-12
	.word	4
	.word	0
_Label_218:
	.ascii	"call_barber\0"
	.align
_Label_219:
	.byte	'I'
	.ascii	"num\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
! 
! ===============  FUNCTION call_customer  ===============
! 
_function_16_call_customer:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_16_call_customer,r1
	push	r1
	mov	3,r1
_Label_651:
	push	r0
	sub	r1,1,r1
	bne	_Label_651
	mov	120,r13		! source line 120
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0SE",r10
!   _temp_221 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=num  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message customer
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_16_call_customer:
	.word	_sourceFileName
	.word	_Label_222
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_223
	.word	8
	.word	4
	.word	_Label_224
	.word	-12
	.word	4
	.word	0
_Label_222:
	.ascii	"call_customer\0"
	.align
_Label_223:
	.byte	'I'
	.ascii	"num\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
! 
! ===============  CLASS SleepingBarber  ===============
! 
! Dispatch Table:
! 
_P_Main_SleepingBarber:
	.word	_Label_225
	jmp	_Method_P_Main_SleepingBarber_1	! 4:	Init
	jmp	_Method_P_Main_SleepingBarber_3	! 8:	barber
	jmp	_Method_P_Main_SleepingBarber_4	! 12:	cut_hair
	jmp	_Method_P_Main_SleepingBarber_5	! 16:	customer
	jmp	_Method_P_Main_SleepingBarber_6	! 20:	get_haircut
	jmp	_Method_P_Main_SleepingBarber_2	! 24:	printExample
	jmp	_Method_P_Main_SleepingBarber_7	! 28:	printBarberStatus
	jmp	_Method_P_Main_SleepingBarber_8	! 32:	printCustomerStatus
	jmp	_Method_P_Main_SleepingBarber_9	! 36:	printChairs
	.word	0
! 
! Class descriptor:
! 
_Label_225:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_226
	.word	_sourceFileName
	.word	12		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Main_SleepingBarber
	.word	_P_System_Object
	.word	0
_Label_226:
	.ascii	"SleepingBarber\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_SleepingBarber_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_1,r1
	push	r1
	mov	6,r1
_Label_652:
	push	r0
	sub	r1,1,r1
	bne	_Label_652
	mov	130,r13		! source line 130
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_227) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_228 = _temp_227 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_228 = bStat  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_229) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_230 = _temp_229 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_230 = cStat  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_231) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_232 = _temp_231 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_232 = numOfChair  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_1:
	.word	_sourceFileName
	.word	_Label_233
	.word	16		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_234
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_235
	.word	12
	.word	4
	.word	_Label_236
	.word	16
	.word	4
	.word	_Label_237
	.word	20
	.word	4
	.word	_Label_238
	.word	-12
	.word	4
	.word	_Label_239
	.word	-16
	.word	4
	.word	_Label_240
	.word	-20
	.word	4
	.word	_Label_241
	.word	-24
	.word	4
	.word	_Label_242
	.word	-28
	.word	4
	.word	_Label_243
	.word	-32
	.word	4
	.word	0
_Label_233:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_234:
	.ascii	"Pself\0"
	.align
_Label_235:
	.byte	'I'
	.ascii	"bStat\0"
	.align
_Label_236:
	.byte	'P'
	.ascii	"cStat\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"numOfChair\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
! 
! ===============  METHOD printExample  ===============
! 
_Method_P_Main_SleepingBarber_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_2,r1
	push	r1
	mov	88,r1
_Label_653:
	push	r0
	sub	r1,1,r1
	bne	_Label_653
	mov	136,r13		! source line 136
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_245) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_246 = _temp_245 + 8
	load	[r14+-348],r1
	add	r1,8,r1
	store	r1,[r14+-344]
!   Data Move: _temp_244 = *_temp_246  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_244) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_244 [0 ] into _temp_247
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-352],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-340]
!   Data Move: *_temp_247 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-340],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_248) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_250) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = _temp_250 + 8
	load	[r14+-328],r1
	add	r1,8,r1
	store	r1,[r14+-324]
!   Data Move: _temp_249 = *_temp_251  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_249) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_249 [0 ] into _temp_252
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-320]
!   Data Move: *_temp_252 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-320],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_253) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_254 = _temp_253 + 12
	load	[r14+-316],r1
	add	r1,12,r1
	store	r1,[r14+-312]
	load	[r14+8],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_257) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_258 = _temp_257 + 12
	load	[r14+-300],r1
	add	r1,12,r1
	store	r1,[r14+-296]
!   Data Move: _temp_256 = *_temp_258  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   _temp_255 = _temp_256 - 1		(int)
	load	[r14+-304],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-308]
!   Data Move: *_temp_254 = _temp_255  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r14+-312],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_259) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_261) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_262 = _temp_261 + 8
	load	[r14+-284],r1
	add	r1,8,r1
	store	r1,[r14+-280]
!   Data Move: _temp_260 = *_temp_262  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_260) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_260 [1 ] into _temp_263
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-288],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-276]
!   Data Move: *_temp_263 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-276],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_264) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_266) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = _temp_266 + 8
	load	[r14+-264],r1
	add	r1,8,r1
	store	r1,[r14+-260]
!   Data Move: _temp_265 = *_temp_267  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_265) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_265 [1 ] into _temp_268
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-268],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-256]
!   Data Move: *_temp_268 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-256],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_269) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_270 = _temp_269 + 12
	load	[r14+-252],r1
	add	r1,12,r1
	store	r1,[r14+-248]
	load	[r14+8],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_273) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_274 = _temp_273 + 12
	load	[r14+-236],r1
	add	r1,12,r1
	store	r1,[r14+-232]
!   Data Move: _temp_272 = *_temp_274  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_271 = _temp_272 - 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Data Move: *_temp_270 = _temp_271  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	157,r13		! source line 157
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_275) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_276) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_277 = _temp_276 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_277 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-220],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_278) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = _temp_278 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
	load	[r14+8],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_282) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = _temp_282 + 12
	load	[r14+-200],r1
	add	r1,12,r1
	store	r1,[r14+-196]
!   Data Move: _temp_281 = *_temp_283  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_280 = _temp_281 + 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   Data Move: *_temp_279 = _temp_280  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r14+-212],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_284) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_286) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_287 = _temp_286 + 8
	load	[r14+-184],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Data Move: _temp_285 = *_temp_287  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_285) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_285 [0 ] into _temp_288
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Data Move: *_temp_288 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-176],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_289) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_290) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = _temp_290 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_291 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_292) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_294) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_295 = _temp_294 + 8
	load	[r14+-152],r1
	add	r1,8,r1
	store	r1,[r14+-148]
!   Data Move: _temp_293 = *_temp_295  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_293) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_293 [0 ] into _temp_296
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Data Move: *_temp_296 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_297) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_299) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_300 = _temp_299 + 8
	load	[r14+-132],r1
	add	r1,8,r1
	store	r1,[r14+-128]
!   Data Move: _temp_298 = *_temp_300  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_298) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_298 [0 ] into _temp_301
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: *_temp_301 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-124],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_302) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_303) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_304 = _temp_303 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_304 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_305) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_306 = _temp_305 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-104]
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_309) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _temp_309 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_308 = *_temp_310  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_307 = _temp_308 + 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   Data Move: *_temp_306 = _temp_307  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_311) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_313) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_314 = _temp_313 + 8
	load	[r14+-76],r1
	add	r1,8,r1
	store	r1,[r14+-72]
!   Data Move: _temp_312 = *_temp_314  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_312) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_312 [1 ] into _temp_315
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: *_temp_315 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_316) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_317) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_318 = _temp_317 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_318 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_319) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_321) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = _temp_321 + 8
	load	[r14+-44],r1
	add	r1,8,r1
	store	r1,[r14+-40]
!   Data Move: _temp_320 = *_temp_322  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_320) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_320 [1 ] into _temp_323
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: *_temp_323 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_324) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_326) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = _temp_326 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_325 = *_temp_327  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_325) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_325 [1 ] into _temp_328
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: *_temp_328 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_329) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! RETURN STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0RE",r10
	add	r15,356,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_2:
	.word	_sourceFileName
	.word	_Label_330
	.word	4		! total size of parameters
	.word	352		! frame size = 352
	.word	_Label_331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_332
	.word	-12
	.word	4
	.word	_Label_333
	.word	-16
	.word	4
	.word	_Label_334
	.word	-20
	.word	4
	.word	_Label_335
	.word	-24
	.word	4
	.word	_Label_336
	.word	-28
	.word	4
	.word	_Label_337
	.word	-32
	.word	4
	.word	_Label_338
	.word	-36
	.word	4
	.word	_Label_339
	.word	-40
	.word	4
	.word	_Label_340
	.word	-44
	.word	4
	.word	_Label_341
	.word	-48
	.word	4
	.word	_Label_342
	.word	-52
	.word	4
	.word	_Label_343
	.word	-56
	.word	4
	.word	_Label_344
	.word	-60
	.word	4
	.word	_Label_345
	.word	-64
	.word	4
	.word	_Label_346
	.word	-68
	.word	4
	.word	_Label_347
	.word	-72
	.word	4
	.word	_Label_348
	.word	-76
	.word	4
	.word	_Label_349
	.word	-80
	.word	4
	.word	_Label_350
	.word	-84
	.word	4
	.word	_Label_351
	.word	-88
	.word	4
	.word	_Label_352
	.word	-92
	.word	4
	.word	_Label_353
	.word	-96
	.word	4
	.word	_Label_354
	.word	-100
	.word	4
	.word	_Label_355
	.word	-104
	.word	4
	.word	_Label_356
	.word	-108
	.word	4
	.word	_Label_357
	.word	-112
	.word	4
	.word	_Label_358
	.word	-116
	.word	4
	.word	_Label_359
	.word	-120
	.word	4
	.word	_Label_360
	.word	-124
	.word	4
	.word	_Label_361
	.word	-128
	.word	4
	.word	_Label_362
	.word	-132
	.word	4
	.word	_Label_363
	.word	-136
	.word	4
	.word	_Label_364
	.word	-140
	.word	4
	.word	_Label_365
	.word	-144
	.word	4
	.word	_Label_366
	.word	-148
	.word	4
	.word	_Label_367
	.word	-152
	.word	4
	.word	_Label_368
	.word	-156
	.word	4
	.word	_Label_369
	.word	-160
	.word	4
	.word	_Label_370
	.word	-164
	.word	4
	.word	_Label_371
	.word	-168
	.word	4
	.word	_Label_372
	.word	-172
	.word	4
	.word	_Label_373
	.word	-176
	.word	4
	.word	_Label_374
	.word	-180
	.word	4
	.word	_Label_375
	.word	-184
	.word	4
	.word	_Label_376
	.word	-188
	.word	4
	.word	_Label_377
	.word	-192
	.word	4
	.word	_Label_378
	.word	-196
	.word	4
	.word	_Label_379
	.word	-200
	.word	4
	.word	_Label_380
	.word	-204
	.word	4
	.word	_Label_381
	.word	-208
	.word	4
	.word	_Label_382
	.word	-212
	.word	4
	.word	_Label_383
	.word	-216
	.word	4
	.word	_Label_384
	.word	-220
	.word	4
	.word	_Label_385
	.word	-224
	.word	4
	.word	_Label_386
	.word	-228
	.word	4
	.word	_Label_387
	.word	-232
	.word	4
	.word	_Label_388
	.word	-236
	.word	4
	.word	_Label_389
	.word	-240
	.word	4
	.word	_Label_390
	.word	-244
	.word	4
	.word	_Label_391
	.word	-248
	.word	4
	.word	_Label_392
	.word	-252
	.word	4
	.word	_Label_393
	.word	-256
	.word	4
	.word	_Label_394
	.word	-260
	.word	4
	.word	_Label_395
	.word	-264
	.word	4
	.word	_Label_396
	.word	-268
	.word	4
	.word	_Label_397
	.word	-272
	.word	4
	.word	_Label_398
	.word	-276
	.word	4
	.word	_Label_399
	.word	-280
	.word	4
	.word	_Label_400
	.word	-284
	.word	4
	.word	_Label_401
	.word	-288
	.word	4
	.word	_Label_402
	.word	-292
	.word	4
	.word	_Label_403
	.word	-296
	.word	4
	.word	_Label_404
	.word	-300
	.word	4
	.word	_Label_405
	.word	-304
	.word	4
	.word	_Label_406
	.word	-308
	.word	4
	.word	_Label_407
	.word	-312
	.word	4
	.word	_Label_408
	.word	-316
	.word	4
	.word	_Label_409
	.word	-320
	.word	4
	.word	_Label_410
	.word	-324
	.word	4
	.word	_Label_411
	.word	-328
	.word	4
	.word	_Label_412
	.word	-332
	.word	4
	.word	_Label_413
	.word	-336
	.word	4
	.word	_Label_414
	.word	-340
	.word	4
	.word	_Label_415
	.word	-344
	.word	4
	.word	_Label_416
	.word	-348
	.word	4
	.word	_Label_417
	.word	-352
	.word	4
	.word	0
_Label_330:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printExample\0"
	.align
_Label_331:
	.ascii	"Pself\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
! 
! ===============  METHOD barber  ===============
! 
_Method_P_Main_SleepingBarber_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_3,r1
	push	r1
	mov	19,r1
_Label_654:
	push	r0
	sub	r1,1,r1
	bne	_Label_654
	mov	203,r13		! source line 203
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0WH",r10
_Label_418:
!	jmp	_Label_419
_Label_419:
	mov	204,r13		! source line 204
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0SE",r10
!   _temp_421 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-80]
!   Send message Down
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0SE",r10
!   _temp_422 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-76]
!   Send message Lock
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_423) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_424 = _temp_423 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_427) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _temp_427 + 12
	load	[r14+-56],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_426 = *_temp_428  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_425 = _temp_426 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_424 = _temp_425  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_429) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_430 = _temp_429 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_430 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_431) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0SE",r10
!   _temp_432 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-36]
!   Send message Unlock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0SE",r10
!   _temp_433 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-32]
!   Send message Up
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_434) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message cut_hair
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_435) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = _temp_435 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_436 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_437) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0SE",r10
!   _temp_438 = &_Global_done
	set	_Global_done,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END WHILE...
	jmp	_Label_418
_Label_420:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_3:
	.word	_sourceFileName
	.word	_Label_439
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_440
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_441
	.word	12
	.word	4
	.word	_Label_442
	.word	-12
	.word	4
	.word	_Label_443
	.word	-16
	.word	4
	.word	_Label_444
	.word	-20
	.word	4
	.word	_Label_445
	.word	-24
	.word	4
	.word	_Label_446
	.word	-28
	.word	4
	.word	_Label_447
	.word	-32
	.word	4
	.word	_Label_448
	.word	-36
	.word	4
	.word	_Label_449
	.word	-40
	.word	4
	.word	_Label_450
	.word	-44
	.word	4
	.word	_Label_451
	.word	-48
	.word	4
	.word	_Label_452
	.word	-52
	.word	4
	.word	_Label_453
	.word	-56
	.word	4
	.word	_Label_454
	.word	-60
	.word	4
	.word	_Label_455
	.word	-64
	.word	4
	.word	_Label_456
	.word	-68
	.word	4
	.word	_Label_457
	.word	-72
	.word	4
	.word	_Label_458
	.word	-76
	.word	4
	.word	_Label_459
	.word	-80
	.word	4
	.word	0
_Label_439:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"barber\0"
	.align
_Label_440:
	.ascii	"Pself\0"
	.align
_Label_441:
	.byte	'I'
	.ascii	"numChairs\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
! 
! ===============  METHOD cut_hair  ===============
! 
_Method_P_Main_SleepingBarber_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_4,r1
	push	r1
	mov	3,r1
_Label_655:
	push	r0
	sub	r1,1,r1
	bne	_Label_655
	mov	221,r13		! source line 221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0SE",r10
!   _temp_460 = &_Global_cutting
	set	_Global_cutting,r1
	store	r1,[r14+-16]
!   Send message Down
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_461 = &_Global_cutting
	set	_Global_cutting,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_4:
	.word	_sourceFileName
	.word	_Label_462
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	0
_Label_462:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"cut_hair\0"
	.align
_Label_463:
	.ascii	"Pself\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
! 
! ===============  METHOD customer  ===============
! 
_Method_P_Main_SleepingBarber_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_5,r1
	push	r1
	mov	35,r1
_Label_656:
	push	r0
	sub	r1,1,r1
	bne	_Label_656
	mov	228,r13		! source line 228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
!   cutsReceived = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   numCuts = 3		(4 bytes)
	mov	3,r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0WH",r10
_Label_466:
!   if cutsReceived >= numCuts then goto _Label_468		(int)
	load	[r14+-140],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_468
!	jmp	_Label_467
_Label_467:
	mov	235,r13		! source line 235
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0SE",r10
!   _temp_469 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-132]
!   Send message Lock
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_471) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_472 = _temp_471 + 8
	load	[r14+-124],r1
	add	r1,8,r1
	store	r1,[r14+-120]
!   Data Move: _temp_470 = *_temp_472  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_470) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_470 [Customer ] into _temp_473
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   Data Move: *_temp_473 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-116],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_474) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   cutsReceived = cutsReceived + 1		(int)
	load	[r14+-140],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_478) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_479 = _temp_478 + 12
	load	[r14+-104],r1
	add	r1,12,r1
	store	r1,[r14+-100]
!   Data Move: _temp_477 = *_temp_479  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if _temp_477 <= 0 then goto _Label_476		(int)
	load	[r14+-108],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_476
!	jmp	_Label_475
_Label_475:
! THEN...
	mov	243,r13		! source line 243
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_480) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_481 = _temp_480 + 12
	load	[r14+-96],r1
	add	r1,12,r1
	store	r1,[r14+-92]
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_484) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_485 = _temp_484 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-76]
!   Data Move: _temp_483 = *_temp_485  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_482 = _temp_483 - 1		(int)
	load	[r14+-84],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
!   Data Move: *_temp_481 = _temp_482  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_487) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_488 = _temp_487 + 8
	load	[r14+-68],r1
	add	r1,8,r1
	store	r1,[r14+-64]
!   Data Move: _temp_486 = *_temp_488  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_486) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_486 [Customer ] into _temp_489
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: *_temp_489 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_490) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
!   _temp_491 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-52]
!   Send message Unlock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0SE",r10
!   _temp_492 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-48]
!   Send message Up
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0SE",r10
!   _temp_493 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-44]
!   Send message Down
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_494) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message get_haircut
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_495 = &_Global_done
	set	_Global_done,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_496
_Label_476:
! ELSE...
	mov	253,r13		! source line 253
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_497 = &_Global_access_lock
	set	_Global_access_lock,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_496:
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_499) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_500 = _temp_499 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_498 = *_temp_500  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_498) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_498 [Customer ] into _temp_501
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: *_temp_501 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_502) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! END WHILE...
	jmp	_Label_466
_Label_468:
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_5:
	.word	_sourceFileName
	.word	_Label_503
	.word	8		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_504
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_505
	.word	12
	.word	4
	.word	_Label_506
	.word	-12
	.word	4
	.word	_Label_507
	.word	-16
	.word	4
	.word	_Label_508
	.word	-20
	.word	4
	.word	_Label_509
	.word	-24
	.word	4
	.word	_Label_510
	.word	-28
	.word	4
	.word	_Label_511
	.word	-32
	.word	4
	.word	_Label_512
	.word	-36
	.word	4
	.word	_Label_513
	.word	-40
	.word	4
	.word	_Label_514
	.word	-44
	.word	4
	.word	_Label_515
	.word	-48
	.word	4
	.word	_Label_516
	.word	-52
	.word	4
	.word	_Label_517
	.word	-56
	.word	4
	.word	_Label_518
	.word	-60
	.word	4
	.word	_Label_519
	.word	-64
	.word	4
	.word	_Label_520
	.word	-68
	.word	4
	.word	_Label_521
	.word	-72
	.word	4
	.word	_Label_522
	.word	-76
	.word	4
	.word	_Label_523
	.word	-80
	.word	4
	.word	_Label_524
	.word	-84
	.word	4
	.word	_Label_525
	.word	-88
	.word	4
	.word	_Label_526
	.word	-92
	.word	4
	.word	_Label_527
	.word	-96
	.word	4
	.word	_Label_528
	.word	-100
	.word	4
	.word	_Label_529
	.word	-104
	.word	4
	.word	_Label_530
	.word	-108
	.word	4
	.word	_Label_531
	.word	-112
	.word	4
	.word	_Label_532
	.word	-116
	.word	4
	.word	_Label_533
	.word	-120
	.word	4
	.word	_Label_534
	.word	-124
	.word	4
	.word	_Label_535
	.word	-128
	.word	4
	.word	_Label_536
	.word	-132
	.word	4
	.word	_Label_537
	.word	-136
	.word	4
	.word	_Label_538
	.word	-140
	.word	4
	.word	0
_Label_503:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"customer\0"
	.align
_Label_504:
	.ascii	"Pself\0"
	.align
_Label_505:
	.byte	'I'
	.ascii	"Customer\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"numCuts\0"
	.align
_Label_538:
	.byte	'I'
	.ascii	"cutsReceived\0"
	.align
! 
! ===============  METHOD get_haircut  ===============
! 
_Method_P_Main_SleepingBarber_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_6,r1
	push	r1
	mov	14,r1
_Label_657:
	push	r0
	sub	r1,1,r1
	bne	_Label_657
	mov	260,r13		! source line 260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_540) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_541 = _temp_540 + 8
	load	[r14+-52],r1
	add	r1,8,r1
	store	r1,[r14+-48]
!   Data Move: _temp_539 = *_temp_541  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_539) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_539 [Customer ] into _temp_542
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   Data Move: *_temp_542 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_543) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! SEND STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
!   _temp_544 = &_Global_cutting
	set	_Global_cutting,r1
	store	r1,[r14+-36]
!   Send message Up
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_546) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = _temp_546 + 8
	load	[r14+-28],r1
	add	r1,8,r1
	store	r1,[r14+-24]
!   Data Move: _temp_545 = *_temp_547  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_545) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_545 [Customer ] into _temp_548
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_548 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_549) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! SEND STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
!   _temp_550 = &_Global_cutting
	set	_Global_cutting,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_6:
	.word	_sourceFileName
	.word	_Label_551
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_552
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_553
	.word	12
	.word	4
	.word	_Label_554
	.word	-12
	.word	4
	.word	_Label_555
	.word	-16
	.word	4
	.word	_Label_556
	.word	-20
	.word	4
	.word	_Label_557
	.word	-24
	.word	4
	.word	_Label_558
	.word	-28
	.word	4
	.word	_Label_559
	.word	-32
	.word	4
	.word	_Label_560
	.word	-36
	.word	4
	.word	_Label_561
	.word	-40
	.word	4
	.word	_Label_562
	.word	-44
	.word	4
	.word	_Label_563
	.word	-48
	.word	4
	.word	_Label_564
	.word	-52
	.word	4
	.word	_Label_565
	.word	-56
	.word	4
	.word	0
_Label_551:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"get_haircut\0"
	.align
_Label_552:
	.ascii	"Pself\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"Customer\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
! 
! ===============  METHOD printBarberStatus  ===============
! 
_Method_P_Main_SleepingBarber_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_7,r1
	push	r1
	mov	8,r1
_Label_658:
	push	r0
	sub	r1,1,r1
	bne	_Label_658
	mov	271,r13		! source line 271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! SEND STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_566) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
! IF STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_570) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = _temp_570 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_569 = *_temp_571  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_569 != 1 then goto _Label_568		(int)
	load	[r14+-28],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_568
!	jmp	_Label_567
_Label_567:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_572 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_572  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_573
_Label_568:
! ELSE...
	mov	280,r13		! source line 280
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_574 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_573:
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_7:
	.word	_sourceFileName
	.word	_Label_575
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_577
	.word	-12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	_Label_579
	.word	-20
	.word	4
	.word	_Label_580
	.word	-24
	.word	4
	.word	_Label_581
	.word	-28
	.word	4
	.word	_Label_582
	.word	-32
	.word	4
	.word	_Label_583
	.word	-36
	.word	4
	.word	0
_Label_575:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printBarberStatus\0"
	.align
_Label_576:
	.ascii	"Pself\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD printCustomerStatus  ===============
! 
_Method_P_Main_SleepingBarber_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_8,r1
	push	r1
	mov	12,r1
_Label_659:
	push	r0
	sub	r1,1,r1
	bne	_Label_659
	mov	285,r13		! source line 285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
! CALL STATEMENT...
!   _temp_585 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_585  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_590 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_591 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_590  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_586:
!   Perform the FOR-LOOP termination test
!   if i > _temp_591 then goto _Label_589		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_589
_Label_587:
	mov	293,r13		! source line 293
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0IF",r10
!   if i == customer then goto _Label_593		(int)
	load	[r14+-48],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_593
!	jmp	_Label_592
_Label_592:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CE",r10
	call	printChar
	jmp	_Label_594
_Label_593:
! ELSE...
	mov	297,r13		! source line 297
	mov	"\0\0EL",r10
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_597) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _temp_597 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_596 = *_temp_598  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_596) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_596 [i ] into _temp_599
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_595 = *_temp_599  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	printChar
! END IF...
_Label_594:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_588:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_586
! END FOR
_Label_589:
! CALL STATEMENT...
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_8:
	.word	_sourceFileName
	.word	_Label_600
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_601
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_602
	.word	12
	.word	4
	.word	_Label_603
	.word	-16
	.word	4
	.word	_Label_604
	.word	-20
	.word	4
	.word	_Label_605
	.word	-24
	.word	4
	.word	_Label_606
	.word	-28
	.word	4
	.word	_Label_607
	.word	-9
	.word	1
	.word	_Label_608
	.word	-32
	.word	4
	.word	_Label_609
	.word	-36
	.word	4
	.word	_Label_610
	.word	-40
	.word	4
	.word	_Label_611
	.word	-44
	.word	4
	.word	_Label_612
	.word	-48
	.word	4
	.word	_Label_613
	.word	-52
	.word	4
	.word	0
_Label_600:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printCustomerStatus\0"
	.align
_Label_601:
	.ascii	"Pself\0"
	.align
_Label_602:
	.byte	'I'
	.ascii	"customer\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_607:
	.byte	'C'
	.ascii	"_temp_595\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_612:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_613:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD printChairs  ===============
! 
_Method_P_Main_SleepingBarber_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_9,r1
	push	r1
	mov	12,r1
_Label_660:
	push	r0
	sub	r1,1,r1
	bne	_Label_660
	mov	305,r13		! source line 305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! FOR STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_620) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = _temp_620 + 12
	load	[r14+-36],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_619 = *_temp_621  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_618 = _temp_619 + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_622 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_618  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-48]
_Label_614:
!   Perform the FOR-LOOP termination test
!   if i > _temp_622 then goto _Label_617		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_617
_Label_615:
	mov	311,r13		! source line 311
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=88  sizeInBytes=1
	mov	88,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	312,r13		! source line 312
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_616:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_614
! END FOR
_Label_617:
! FOR STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_627 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_629) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = _temp_629 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_628 = *_temp_630  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_627  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-48]
_Label_623:
!   Perform the FOR-LOOP termination test
!   if i > _temp_628 then goto _Label_626		
	load	[r14+-48],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_626
_Label_624:
	mov	314,r13		! source line 314
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=45  sizeInBytes=1
	mov	45,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_625:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_623
! END FOR
_Label_626:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	318,r13		! source line 318
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_9:
	.word	_sourceFileName
	.word	_Label_631
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_633
	.word	-12
	.word	4
	.word	_Label_634
	.word	-16
	.word	4
	.word	_Label_635
	.word	-20
	.word	4
	.word	_Label_636
	.word	-24
	.word	4
	.word	_Label_637
	.word	-28
	.word	4
	.word	_Label_638
	.word	-32
	.word	4
	.word	_Label_639
	.word	-36
	.word	4
	.word	_Label_640
	.word	-40
	.word	4
	.word	_Label_641
	.word	-44
	.word	4
	.word	_Label_642
	.word	-48
	.word	4
	.word	_Label_643
	.word	-52
	.word	4
	.word	0
_Label_631:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printChairs\0"
	.align
_Label_632:
	.ascii	"Pself\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_642:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_643:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
