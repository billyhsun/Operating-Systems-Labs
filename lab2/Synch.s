! Name of package being compiled: Synch
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
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from this package
	.export	_P_Synch_Semaphore
	.export	_Method_P_Synch_Semaphore_1
	.export	_Method_P_Synch_Semaphore_2
	.export	_Method_P_Synch_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Synch_Mutex
	.export	_Method_P_Synch_Mutex_1
	.export	_Method_P_Synch_Mutex_2
	.export	_Method_P_Synch_Mutex_3
	.export	_Method_P_Synch_Mutex_4
! The following class and its methods are from this package
	.export	_P_Synch_Condition
	.export	_Method_P_Synch_Condition_1
	.export	_Method_P_Synch_Condition_2
	.export	_Method_P_Synch_Condition_3
	.export	_Method_P_Synch_Condition_4
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
	.align
! String constants
_StringConst_7:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_6:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_5:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_4:
	.word	46			! length
	.ascii	"Thread that does not hold lock called Unlock()"
	.align
_StringConst_3:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_2:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_1:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Synch.c\0"
_packageName:
	.ascii	"Synch\0"
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
_CheckVersion_P_Synch_:
	.export	_CheckVersion_P_Synch_
	set	0xad7eed45,r4		! myHashVal = -1384190651
	cmp	r3,r4
	be	_Label_8
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
_Label_8:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_9
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_9
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_9
_Label_9:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Synch_Semaphore:
	.word	_Label_10
	jmp	_Method_P_Synch_Semaphore_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_10:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_11
	.word	_sourceFileName
	.word	5		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Semaphore
	.word	_P_System_Object
	.word	0
_Label_11:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_145:
	push	r0
	sub	r1,1,r1
	bne	_Label_145
	mov	34,r13		! source line 34
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_13		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_13
!	jmp	_Label_12
_Label_12:
! THEN...
	mov	36,r13		! source line 36
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_14 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_14  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	36,r13		! source line 36
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_13:
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_16
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_17
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_18
	.word	12
	.word	4
	.word	_Label_19
	.word	-12
	.word	4
	.word	_Label_20
	.word	-16
	.word	4
	.word	0
_Label_16:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_17:
	.ascii	"Pself\0"
	.align
_Label_18:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_19:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_20:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Synch_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_146:
	push	r0
	sub	r1,1,r1
	bne	_Label_146
	mov	44,r13		! source line 44
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_22		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_22
!	jmp	_Label_21
_Label_21:
! THEN...
	mov	50,r13		! source line 50
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_23 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_23  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	50,r13		! source line 50
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_22:
! ASSIGNMENT STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_25		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_25
!	jmp	_Label_24
_Label_24:
! THEN...
	mov	54,r13		! source line 54
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   _temp_26 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_27 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_27 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_28 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_25:
! ASSIGNMENT STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	58,r13		! source line 58
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_29
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_30
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_31
	.word	-12
	.word	4
	.word	_Label_32
	.word	-16
	.word	4
	.word	_Label_33
	.word	-20
	.word	4
	.word	_Label_34
	.word	-24
	.word	4
	.word	_Label_35
	.word	-28
	.word	4
	.word	_Label_36
	.word	-32
	.word	4
	.word	0
_Label_29:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_30:
	.ascii	"Pself\0"
	.align
_Label_31:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_32:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_35:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_36:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Synch_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_147:
	push	r0
	sub	r1,1,r1
	bne	_Label_147
	mov	63,r13		! source line 63
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_38		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_38
!	jmp	_Label_37
_Label_37:
! THEN...
	mov	68,r13		! source line 68
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_39 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_39  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_38:
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_41		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_41
!	jmp	_Label_40
_Label_40:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_42 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_41:
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_43
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_44
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_45
	.word	-12
	.word	4
	.word	_Label_46
	.word	-16
	.word	4
	.word	_Label_47
	.word	-20
	.word	4
	.word	0
_Label_43:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_44:
	.ascii	"Pself\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_47:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex:
	.word	_Label_48
	jmp	_Method_P_Synch_Mutex_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex_2	! 8:	Lock
	jmp	_Method_P_Synch_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_48:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_49
	.word	_sourceFileName
	.word	16		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Mutex
	.word	_P_System_Object
	.word	0
_Label_49:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_148:
	push	r0
	sub	r1,1,r1
	bne	_Label_148
	mov	98,r13		! source line 98
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_1:
	.word	_sourceFileName
	.word	_Label_51
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_52
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_53
	.word	-12
	.word	4
	.word	0
_Label_51:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_52:
	.ascii	"Pself\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Synch_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_2,r1
	push	r1
	mov	4,r1
_Label_149:
	push	r0
	sub	r1,1,r1
	bne	_Label_149
	mov	105,r13		! source line 105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=prev_interrupt_stat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! WHILE STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0WH",r10
_Label_54:
!   if heldBy == _P_Thread_currentThread then goto _Label_56		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_56
!	jmp	_Label_55
_Label_55:
	mov	109,r13		! source line 109
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0IF",r10
!   if intIsZero (heldBy) then goto _Label_57
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_Label_57
	jmp	_Label_58
_Label_57:
! THEN...
	mov	111,r13		! source line 111
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0AS",r10
!   heldBy = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_59
_Label_58:
! ELSE...
	mov	113,r13		! source line 113
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_60 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_59:
! END WHILE...
	jmp	_Label_54
_Label_56:
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=prev_interrupt_stat  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=prev_interrupt_stat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! RETURN STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_2:
	.word	_sourceFileName
	.word	_Label_61
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_62
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_63
	.word	-12
	.word	4
	.word	_Label_64
	.word	-16
	.word	4
	.word	0
_Label_61:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_62:
	.ascii	"Pself\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_64:
	.byte	'I'
	.ascii	"prev_interrupt_stat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Synch_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_150:
	push	r0
	sub	r1,1,r1
	bne	_Label_150
	mov	122,r13		! source line 122
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=prev_interrupt_state  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0IF",r10
!   if heldBy == _P_Thread_currentThread then goto _Label_66		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_66
!	jmp	_Label_65
_Label_65:
! THEN...
	mov	128,r13		! source line 128
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_67 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_67  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_66:
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0AS",r10
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   _temp_68 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0IF",r10
!   if intIsZero (nextThread) then goto _Label_70
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_70
!	jmp	_Label_69
_Label_69:
! THEN...
	mov	133,r13		! source line 133
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_71 = nextThread + 76
	load	[r14+-28],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_71 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_72 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_70:
! ASSIGNMENT STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=prev_interrupt_state  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	136,r13		! source line 136
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=prev_interrupt_state  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_3:
	.word	_sourceFileName
	.word	_Label_73
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_74
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_75
	.word	-12
	.word	4
	.word	_Label_76
	.word	-16
	.word	4
	.word	_Label_77
	.word	-20
	.word	4
	.word	_Label_78
	.word	-24
	.word	4
	.word	_Label_79
	.word	-28
	.word	4
	.word	_Label_80
	.word	-32
	.word	4
	.word	0
_Label_73:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_74:
	.ascii	"Pself\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_79:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_80:
	.byte	'I'
	.ascii	"prev_interrupt_state\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Synch_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_4,r1
	push	r1
	mov	141,r13		! source line 141
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread != heldBy then goto _Label_82		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bne	_Label_82
!	jmp	_Label_81
_Label_81:
! THEN...
	mov	143,r13		! source line 143
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_83
_Label_82:
! ELSE...
	mov	145,r13		! source line 145
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_83:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_4:
	.word	_sourceFileName
	.word	_Label_84
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_85
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_84:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_85:
	.ascii	"Pself\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Synch_Condition:
	.word	_Label_86
	jmp	_Method_P_Synch_Condition_1	! 4:	Init
	jmp	_Method_P_Synch_Condition_2	! 8:	Wait
	jmp	_Method_P_Synch_Condition_3	! 12:	Signal
	jmp	_Method_P_Synch_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_86:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_87
	.word	_sourceFileName
	.word	28		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Synch_Condition
	.word	_P_System_Object
	.word	0
_Label_87:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_1,r1
	push	r1
	mov	1,r1
_Label_151:
	push	r0
	sub	r1,1,r1
	bne	_Label_151
	mov	186,r13		! source line 186
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_1:
	.word	_sourceFileName
	.word	_Label_89
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_90
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_91
	.word	-12
	.word	4
	.word	0
_Label_89:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_90:
	.ascii	"Pself\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Synch_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_2,r1
	push	r1
	mov	6,r1
_Label_152:
	push	r0
	sub	r1,1,r1
	bne	_Label_152
	mov	192,r13		! source line 192
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0IF",r10
	mov	195,r13		! source line 195
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_94  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_94 then goto _Label_93 else goto _Label_92
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_92
	jmp	_Label_93
_Label_92:
! THEN...
	mov	196,r13		! source line 196
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_95 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_95  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_93:
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0SE",r10
!   _temp_96 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_2:
	.word	_sourceFileName
	.word	_Label_97
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_98
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_99
	.word	12
	.word	4
	.word	_Label_100
	.word	-16
	.word	4
	.word	_Label_101
	.word	-20
	.word	4
	.word	_Label_102
	.word	-9
	.word	1
	.word	_Label_103
	.word	-24
	.word	4
	.word	0
_Label_97:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_98:
	.ascii	"Pself\0"
	.align
_Label_99:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_102:
	.byte	'C'
	.ascii	"_temp_94\0"
	.align
_Label_103:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Synch_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_3,r1
	push	r1
	mov	9,r1
_Label_153:
	push	r0
	sub	r1,1,r1
	bne	_Label_153
	mov	208,r13		! source line 208
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0IF",r10
	mov	212,r13		! source line 212
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_106  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_106 then goto _Label_105 else goto _Label_104
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_104
	jmp	_Label_105
_Label_104:
! THEN...
	mov	213,r13		! source line 213
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_107 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_107  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_105:
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_108 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_110		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_110
!	jmp	_Label_109
_Label_109:
! THEN...
	mov	218,r13		! source line 218
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_111 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_111 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0SE",r10
!   _temp_112 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_110:
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_3:
	.word	_sourceFileName
	.word	_Label_113
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_115
	.word	12
	.word	4
	.word	_Label_116
	.word	-16
	.word	4
	.word	_Label_117
	.word	-20
	.word	4
	.word	_Label_118
	.word	-24
	.word	4
	.word	_Label_119
	.word	-28
	.word	4
	.word	_Label_120
	.word	-9
	.word	1
	.word	_Label_121
	.word	-32
	.word	4
	.word	_Label_122
	.word	-36
	.word	4
	.word	0
_Label_113:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_114:
	.ascii	"Pself\0"
	.align
_Label_115:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_120:
	.byte	'C'
	.ascii	"_temp_106\0"
	.align
_Label_121:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_122:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Synch_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_4,r1
	push	r1
	mov	9,r1
_Label_154:
	push	r0
	sub	r1,1,r1
	bne	_Label_154
	mov	226,r13		! source line 226
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0IF",r10
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_125  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_125 then goto _Label_124 else goto _Label_123
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_123
	jmp	_Label_124
_Label_123:
! THEN...
	mov	231,r13		! source line 231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_126 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_126  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_124:
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0WH",r10
_Label_127:
!	jmp	_Label_128
_Label_128:
	mov	234,r13		! source line 234
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
	mov	235,r13		! source line 235
	mov	"\0\0SE",r10
!   _temp_130 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_131
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_131
	jmp	_Label_132
_Label_131:
! THEN...
	mov	237,r13		! source line 237
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0BR",r10
	jmp	_Label_129
! END IF...
_Label_132:
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_133 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_133 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0SE",r10
!   _temp_134 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_127
_Label_129:
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_4:
	.word	_sourceFileName
	.word	_Label_135
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_137
	.word	12
	.word	4
	.word	_Label_138
	.word	-16
	.word	4
	.word	_Label_139
	.word	-20
	.word	4
	.word	_Label_140
	.word	-24
	.word	4
	.word	_Label_141
	.word	-28
	.word	4
	.word	_Label_142
	.word	-9
	.word	1
	.word	_Label_143
	.word	-32
	.word	4
	.word	_Label_144
	.word	-36
	.word	4
	.word	0
_Label_135:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_136:
	.ascii	"Pself\0"
	.align
_Label_137:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_142:
	.byte	'C'
	.ascii	"_temp_125\0"
	.align
_Label_143:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_144:
	.byte	'P'
	.ascii	"t\0"
	.align
