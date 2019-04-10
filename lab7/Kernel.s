! Name of package being compiled: Kernel
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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1756
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_183:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_182:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_180:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_179:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_178:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_177:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_176:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_175:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_174:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_173:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_172:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_170:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_169:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_168:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_167:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_166:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_165:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_164:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_163:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_162:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_161:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_160:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_159:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_158:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_157:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_156:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_155:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_154:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_153:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_152:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_151:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_150:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_149:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_148:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_147:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_145:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_144:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_143:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_142:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_141:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_140:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_139:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_138:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_137:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_136:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_135:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_134:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_133:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_132:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_131:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_130:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_127:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_124:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_121:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_117:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_116:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_110:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_109:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_108:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_107:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_106:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_105:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_104:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_103:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_102:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_101:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_100:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_99:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_98:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_97:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_96:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_95:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_94:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_93:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_92:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_91:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_90:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_89:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_88:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_87:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_86:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_85:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_83:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_82:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_80:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_79:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_78:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_73:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_71:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_70:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_69:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_68:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_67:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_65:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_64:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_62:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_61:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_60:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_59:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_57:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_55:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_54:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_52:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_51:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_46:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_45:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_44:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_43:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_42:
	.word	11			! length
	.ascii	"Filename = "
	.align
_StringConst_41:
	.word	24			! length
	.ascii	"virt adrr of filename = "
	.align
_StringConst_40:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_39:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_38:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_36:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_35:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_34:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_33:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_26:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_25:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_24:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_23:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_22:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_21:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_20:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_19:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_18:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_17:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_15:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_14:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_13:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_12:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_11:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_10:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_9:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_8:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_7:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_6:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_5:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_4:
	.word	20			! length
	.ascii	"Becoming User Thread"
	.align
_StringConst_3:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_1:
	.word	12			! length
	.ascii	"User Program"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x5aeb5e7d,r4		! myHashVal = 1525374589
	cmp	r3,r4
	be	_Label_193
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
_Label_193:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_194
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_194
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_194
_Label_194:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3801:
	push	r0
	sub	r1,1,r1
	bne	_Label_3801
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0AS",r10
	mov	13,r13		! source line 13
	mov	"\0\0SE",r10
!   _temp_195 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	14,r13		! source line 14
	mov	"\0\0SE",r10
!   _temp_196 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_196  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_197 = _function_192_StartUserProcess
	set	_function_192_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_198 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_197  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_198  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_199
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_200
	.word	-12
	.word	4
	.word	_Label_201
	.word	-16
	.word	4
	.word	_Label_202
	.word	-20
	.word	4
	.word	_Label_203
	.word	-24
	.word	4
	.word	_Label_204
	.word	-28
	.word	4
	.word	0
_Label_199:
	.ascii	"InitFirstProcess\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_204:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_192_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3802:
	push	r0
	sub	r1,1,r1
	bne	_Label_3802
	mov	24,r13		! source line 24
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_205 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message GetANewProcess
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_206 = pcb + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_206 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_207 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_207 = pcb  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_208 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   _temp_209 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_208  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFilePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
	mov	37,r13		! source line 37
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_211 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_210 = _temp_211		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_210  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=entryPoint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0SE",r10
!   _temp_212 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_214 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_215 = _temp_214 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_213 = *_temp_215  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStack = _temp_213 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_216 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_216 [999 ] into _temp_217
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStack = _temp_217		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	41,r13		! source line 41
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_218 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_219 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_219 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_220 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStack  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=entryPoint  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStack  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_221
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_222
	.word	-12
	.word	4
	.word	_Label_223
	.word	-16
	.word	4
	.word	_Label_224
	.word	-20
	.word	4
	.word	_Label_225
	.word	-24
	.word	4
	.word	_Label_226
	.word	-28
	.word	4
	.word	_Label_227
	.word	-32
	.word	4
	.word	_Label_228
	.word	-36
	.word	4
	.word	_Label_229
	.word	-40
	.word	4
	.word	_Label_230
	.word	-44
	.word	4
	.word	_Label_231
	.word	-48
	.word	4
	.word	_Label_232
	.word	-52
	.word	4
	.word	_Label_233
	.word	-56
	.word	4
	.word	_Label_234
	.word	-60
	.word	4
	.word	_Label_235
	.word	-64
	.word	4
	.word	_Label_236
	.word	-68
	.word	4
	.word	_Label_237
	.word	-72
	.word	4
	.word	_Label_238
	.word	-76
	.word	4
	.word	_Label_239
	.word	-80
	.word	4
	.word	_Label_240
	.word	-84
	.word	4
	.word	_Label_241
	.word	-88
	.word	4
	.word	_Label_242
	.word	-92
	.word	4
	.word	_Label_243
	.word	-96
	.word	4
	.word	0
_Label_221:
	.ascii	"StartUserProcess\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_239:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_241:
	.byte	'I'
	.ascii	"initUserStack\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"initSystemStack\0"
	.align
_Label_243:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3803:
	push	r0
	sub	r1,1,r1
	bne	_Label_3803
	mov	52,r13		! source line 52
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_244 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	60,r13		! source line 60
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3804:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3804
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0SE",r10
!   _temp_248 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-44]
!   _temp_249 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_248  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   _temp_250 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_251 = _temp_250 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_251 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3805:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3805
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0SE",r10
!   _temp_253 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-24]
!   _temp_254 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_253  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_255 = _function_191_IdleFunction
	set	_function_191_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_256 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_255  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_257
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_258
	.word	-12
	.word	4
	.word	_Label_259
	.word	-16
	.word	4
	.word	_Label_260
	.word	-20
	.word	4
	.word	_Label_261
	.word	-24
	.word	4
	.word	_Label_262
	.word	-28
	.word	4
	.word	_Label_263
	.word	-32
	.word	4
	.word	_Label_264
	.word	-36
	.word	4
	.word	_Label_265
	.word	-40
	.word	4
	.word	_Label_266
	.word	-44
	.word	4
	.word	_Label_267
	.word	-48
	.word	4
	.word	_Label_268
	.word	-52
	.word	4
	.word	_Label_269
	.word	-56
	.word	4
	.word	_Label_270
	.word	-60
	.word	4
	.word	0
_Label_257:
	.ascii	"InitializeScheduler\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_191_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3806:
	push	r0
	sub	r1,1,r1
	bne	_Label_3806
	mov	77,r13		! source line 77
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0WH",r10
_Label_271:
!	jmp	_Label_272
_Label_272:
	mov	87,r13		! source line 87
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	88,r13		! source line 88
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_276 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_274 else goto _Label_275
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_275
	jmp	_Label_274
_Label_274:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_277
_Label_275:
! ELSE...
	mov	92,r13		! source line 92
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_277:
! END WHILE...
	jmp	_Label_271
_Label_273:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_IdleFunction:
	.word	_sourceFileName
	.word	_Label_278
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_279
	.word	8
	.word	4
	.word	_Label_280
	.word	-12
	.word	4
	.word	_Label_281
	.word	-16
	.word	4
	.word	0
_Label_278:
	.ascii	"IdleFunction\0"
	.align
_Label_279:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_281:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3807:
	push	r0
	sub	r1,1,r1
	bne	_Label_3807
	mov	99,r13		! source line 99
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_284 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_284 ) then goto _Label_283		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_283
!	jmp	_Label_282
_Label_282:
! THEN...
	mov	116,r13		! source line 116
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_286 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_286 [0 ] into _temp_287
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_285 = _temp_287		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_283:
! ASSIGNMENT STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_288 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_288 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0WH",r10
_Label_289:
	mov	129,r13		! source line 129
	mov	"\0\0SE",r10
!   _temp_293 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_292  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_292 then goto _Label_291 else goto _Label_290
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_290
	jmp	_Label_291
_Label_290:
	mov	129,r13		! source line 129
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
	mov	130,r13		! source line 130
	mov	"\0\0SE",r10
!   _temp_294 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   _temp_295 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_289
_Label_291:
! IF STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_298 ) then goto _Label_297		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_297
!	jmp	_Label_296
_Label_296:
! THEN...
	mov	135,r13		! source line 135
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_300 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_300 [0 ] into _temp_301
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_299 = _temp_301		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_302 = *_temp_303  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_302) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_304 = _temp_302 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_297:
! RETURN STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_305
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_306
	.word	8
	.word	4
	.word	_Label_307
	.word	-16
	.word	4
	.word	_Label_308
	.word	-20
	.word	4
	.word	_Label_309
	.word	-24
	.word	4
	.word	_Label_310
	.word	-28
	.word	4
	.word	_Label_311
	.word	-32
	.word	4
	.word	_Label_312
	.word	-36
	.word	4
	.word	_Label_313
	.word	-40
	.word	4
	.word	_Label_314
	.word	-44
	.word	4
	.word	_Label_315
	.word	-48
	.word	4
	.word	_Label_316
	.word	-52
	.word	4
	.word	_Label_317
	.word	-9
	.word	1
	.word	_Label_318
	.word	-56
	.word	4
	.word	_Label_319
	.word	-60
	.word	4
	.word	_Label_320
	.word	-64
	.word	4
	.word	_Label_321
	.word	-68
	.word	4
	.word	_Label_322
	.word	-72
	.word	4
	.word	_Label_323
	.word	-76
	.word	4
	.word	_Label_324
	.word	-80
	.word	4
	.word	0
_Label_305:
	.ascii	"Run\0"
	.align
_Label_306:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_317:
	.byte	'C'
	.ascii	"_temp_292\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_324:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3808:
	push	r0
	sub	r1,1,r1
	bne	_Label_3808
	mov	142,r13		! source line 142
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	149,r13		! source line 149
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_325 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   _temp_326 = _function_190_ThreadPrintShort
	set	_function_190_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_327 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_326  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_328
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_329
	.word	-12
	.word	4
	.word	_Label_330
	.word	-16
	.word	4
	.word	_Label_331
	.word	-20
	.word	4
	.word	_Label_332
	.word	-24
	.word	4
	.word	0
_Label_328:
	.ascii	"PrintReadyList\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_332:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3809:
	push	r0
	sub	r1,1,r1
	bne	_Label_3809
	mov	157,r13		! source line 157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_333 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_333  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_335 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_334 = *_temp_335  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	171,r13		! source line 171
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_336 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	173,r13		! source line 173
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_337
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_338
	.word	-12
	.word	4
	.word	_Label_339
	.word	-16
	.word	4
	.word	_Label_340
	.word	-20
	.word	4
	.word	_Label_341
	.word	-24
	.word	4
	.word	_Label_342
	.word	-28
	.word	4
	.word	_Label_343
	.word	-32
	.word	4
	.word	0
_Label_337:
	.ascii	"ThreadStartMain\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_342:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_343:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3810:
	push	r0
	sub	r1,1,r1
	bne	_Label_3810
	mov	178,r13		! source line 178
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	189,r13		! source line 189
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0SE",r10
!   _temp_344 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	194,r13		! source line 194
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_345 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	196,r13		! source line 196
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_346
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_347
	.word	-12
	.word	4
	.word	_Label_348
	.word	-16
	.word	4
	.word	_Label_349
	.word	-20
	.word	4
	.word	0
_Label_346:
	.ascii	"ThreadFinish\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3811:
	push	r0
	sub	r1,1,r1
	bne	_Label_3811
	mov	201,r13		! source line 201
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_350 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_352		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_352
!	jmp	_Label_351
_Label_351:
! THEN...
	mov	212,r13		! source line 212
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_353 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_355 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_354 = *_temp_355  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_352:
! CALL STATEMENT...
!   _temp_356 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	216,r13		! source line 216
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_357 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_358 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_359
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_360
	.word	8
	.word	4
	.word	_Label_361
	.word	-12
	.word	4
	.word	_Label_362
	.word	-16
	.word	4
	.word	_Label_363
	.word	-20
	.word	4
	.word	_Label_364
	.word	-24
	.word	4
	.word	_Label_365
	.word	-28
	.word	4
	.word	_Label_366
	.word	-32
	.word	4
	.word	_Label_367
	.word	-36
	.word	4
	.word	_Label_368
	.word	-40
	.word	4
	.word	0
_Label_359:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_360:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_368:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3812:
	push	r0
	sub	r1,1,r1
	bne	_Label_3812
	mov	224,r13		! source line 224
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_370		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_370
!	jmp	_Label_369
_Label_369:
! THEN...
	mov	240,r13		! source line 240
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_371
_Label_370:
! ELSE...
	mov	243,r13		! source line 243
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_371:
! RETURN STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_372
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_373
	.word	8
	.word	4
	.word	_Label_374
	.word	-12
	.word	4
	.word	0
_Label_372:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_373:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_374:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_190_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3813:
	push	r0
	sub	r1,1,r1
	bne	_Label_3813
	mov	685,r13		! source line 685
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_378		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_378
!   _temp_377 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_379
_Label_378:
!   _temp_377 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_379:
!   if _temp_377 then goto _Label_376 else goto _Label_375
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_375
	jmp	_Label_376
_Label_375:
! THEN...
	mov	694,r13		! source line 694
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_380 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_376:
! CALL STATEMENT...
!   _temp_381 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_383 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_382 = *_temp_383  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_384 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	700,r13		! source line 700
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_393 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_392 = *_temp_393  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_387
	cmp	r1,2
	be	_Label_388
	cmp	r1,3
	be	_Label_389
	cmp	r1,4
	be	_Label_390
	cmp	r1,5
	be	_Label_391
	jmp	_Label_385
! CASE 1...
_Label_387:
! CALL STATEMENT...
!   _temp_394 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0BR",r10
	jmp	_Label_386
! CASE 2...
_Label_388:
! CALL STATEMENT...
!   _temp_395 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0BR",r10
	jmp	_Label_386
! CASE 3...
_Label_389:
! CALL STATEMENT...
!   _temp_396 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0BR",r10
	jmp	_Label_386
! CASE 4...
_Label_390:
! CALL STATEMENT...
!   _temp_397 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0BR",r10
	jmp	_Label_386
! CASE 5...
_Label_391:
! CALL STATEMENT...
!   _temp_398 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0BR",r10
	jmp	_Label_386
! DEFAULT CASE...
_Label_385:
! CALL STATEMENT...
!   _temp_399 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	717,r13		! source line 717
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_386:
! CALL STATEMENT...
!   _temp_400 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_401 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_402 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_403
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	-16
	.word	4
	.word	_Label_406
	.word	-20
	.word	4
	.word	_Label_407
	.word	-24
	.word	4
	.word	_Label_408
	.word	-28
	.word	4
	.word	_Label_409
	.word	-32
	.word	4
	.word	_Label_410
	.word	-36
	.word	4
	.word	_Label_411
	.word	-40
	.word	4
	.word	_Label_412
	.word	-44
	.word	4
	.word	_Label_413
	.word	-48
	.word	4
	.word	_Label_414
	.word	-52
	.word	4
	.word	_Label_415
	.word	-56
	.word	4
	.word	_Label_416
	.word	-60
	.word	4
	.word	_Label_417
	.word	-64
	.word	4
	.word	_Label_418
	.word	-68
	.word	4
	.word	_Label_419
	.word	-72
	.word	4
	.word	_Label_420
	.word	-76
	.word	4
	.word	_Label_421
	.word	-9
	.word	1
	.word	_Label_422
	.word	-80
	.word	4
	.word	0
_Label_403:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_404:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_421:
	.byte	'C'
	.ascii	"_temp_377\0"
	.align
_Label_422:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_189_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3814:
	push	r0
	sub	r1,1,r1
	bne	_Label_3814
	mov	1050,r13		! source line 1050
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_423 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1054,r13		! source line 1054
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_424
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	-12
	.word	4
	.word	0
_Label_424:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	37,r1
_Label_3815:
	push	r0
	sub	r1,1,r1
	bne	_Label_3815
	mov	1060,r13		! source line 1060
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_427 = *_temp_428  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_427) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_429 = _temp_427 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_429 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-132],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_430 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_430 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-128],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1073,r13		! source line 1073
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! FOR STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_435 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-124]
!   Calculate and save the FOR-LOOP ending value
!   _temp_436 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-120]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_435  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+-148]
_Label_431:
!   Perform the FOR-LOOP termination test
!   if i > _temp_436 then goto _Label_434		
	load	[r14+-148],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_434
_Label_432:
	mov	1075,r13		! source line 1075
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_440 = *_temp_441  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_440) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = _temp_440 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_442 [i ] into _temp_443
!     make sure index expr is >= 0
	load	[r14+-148],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: _temp_439 = *_temp_443  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_439) then goto _Label_438
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_438
!	jmp	_Label_437
_Label_437:
! THEN...
	mov	1077,r13		! source line 1077
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_445 = *_temp_446  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_445) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = _temp_445 + 124
	load	[r14+-92],r1
	add	r1,124,r1
	store	r1,[r14+-84]
!   Move address of _temp_447 [i ] into _temp_448
!     make sure index expr is >= 0
	load	[r14+-148],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: _temp_444 = *_temp_448  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_449 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_444  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_450 = *_temp_451  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_450) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_452 = _temp_450 + 124
	load	[r14+-72],r1
	add	r1,124,r1
	store	r1,[r14+-64]
!   Move address of _temp_452 [i ] into _temp_453
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: *_temp_453 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-60],r2
	store	r1,[r2]
! END IF...
_Label_438:
!   Increment the FOR-LOOP index variable and jump back
_Label_433:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_431
! END FOR
_Label_434:
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_455 = *_temp_456  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_455) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = _temp_455 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_454 = _temp_457		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_458 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_454  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_460 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_459 = *_temp_460  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_461 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_459  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_463 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_462 = *_temp_463  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_462) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_464 = _temp_462 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_464 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_465 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_465 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1086,r13		! source line 1086
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_466
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_467
	.word	8
	.word	4
	.word	_Label_468
	.word	-12
	.word	4
	.word	_Label_469
	.word	-16
	.word	4
	.word	_Label_470
	.word	-20
	.word	4
	.word	_Label_471
	.word	-24
	.word	4
	.word	_Label_472
	.word	-28
	.word	4
	.word	_Label_473
	.word	-32
	.word	4
	.word	_Label_474
	.word	-36
	.word	4
	.word	_Label_475
	.word	-40
	.word	4
	.word	_Label_476
	.word	-44
	.word	4
	.word	_Label_477
	.word	-48
	.word	4
	.word	_Label_478
	.word	-52
	.word	4
	.word	_Label_479
	.word	-56
	.word	4
	.word	_Label_480
	.word	-60
	.word	4
	.word	_Label_481
	.word	-64
	.word	4
	.word	_Label_482
	.word	-68
	.word	4
	.word	_Label_483
	.word	-72
	.word	4
	.word	_Label_484
	.word	-76
	.word	4
	.word	_Label_485
	.word	-80
	.word	4
	.word	_Label_486
	.word	-84
	.word	4
	.word	_Label_487
	.word	-88
	.word	4
	.word	_Label_488
	.word	-92
	.word	4
	.word	_Label_489
	.word	-96
	.word	4
	.word	_Label_490
	.word	-100
	.word	4
	.word	_Label_491
	.word	-104
	.word	4
	.word	_Label_492
	.word	-108
	.word	4
	.word	_Label_493
	.word	-112
	.word	4
	.word	_Label_494
	.word	-116
	.word	4
	.word	_Label_495
	.word	-120
	.word	4
	.word	_Label_496
	.word	-124
	.word	4
	.word	_Label_497
	.word	-128
	.word	4
	.word	_Label_498
	.word	-132
	.word	4
	.word	_Label_499
	.word	-136
	.word	4
	.word	_Label_500
	.word	-140
	.word	4
	.word	_Label_501
	.word	-144
	.word	4
	.word	_Label_502
	.word	-148
	.word	4
	.word	0
_Label_466:
	.ascii	"ProcessFinish\0"
	.align
_Label_467:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_501:
	.byte	'I'
	.ascii	"oldIntStatus\0"
	.align
_Label_502:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3816:
	push	r0
	sub	r1,1,r1
	bne	_Label_3816
	mov	1563,r13		! source line 1563
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_503
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_503:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3817:
	push	r0
	sub	r1,1,r1
	bne	_Label_3817
	mov	1581,r13		! source line 1581
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
!   _temp_507 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_508 = _temp_507 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_506 = *_temp_508  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_506 == 0 then goto _Label_505		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_505
!	jmp	_Label_504
_Label_504:
! THEN...
	mov	1594,r13		! source line 1594
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0SE",r10
!   _temp_510 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_511 = _temp_510 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_509 = *_temp_511  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_509) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_505:
! RETURN STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_512
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_513
	.word	-12
	.word	4
	.word	_Label_514
	.word	-16
	.word	4
	.word	_Label_515
	.word	-20
	.word	4
	.word	_Label_516
	.word	-24
	.word	4
	.word	_Label_517
	.word	-28
	.word	4
	.word	_Label_518
	.word	-32
	.word	4
	.word	0
_Label_512:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1600,r13		! source line 1600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_519
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_519:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3818:
	push	r0
	sub	r1,1,r1
	bne	_Label_3818
	mov	1614,r13		! source line 1614
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_520 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1621,r13		! source line 1621
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_521
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_522
	.word	-12
	.word	4
	.word	0
_Label_521:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3819:
	push	r0
	sub	r1,1,r1
	bne	_Label_3819
	mov	1626,r13		! source line 1626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_523 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1633,r13		! source line 1633
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_524
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_525
	.word	-12
	.word	4
	.word	0
_Label_524:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3820:
	push	r0
	sub	r1,1,r1
	bne	_Label_3820
	mov	1638,r13		! source line 1638
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_526 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1645,r13		! source line 1645
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_527
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_528
	.word	-12
	.word	4
	.word	0
_Label_527:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3821:
	push	r0
	sub	r1,1,r1
	bne	_Label_3821
	mov	1650,r13		! source line 1650
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_529 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1657,r13		! source line 1657
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_530
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_531
	.word	-12
	.word	4
	.word	0
_Label_530:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3822:
	push	r0
	sub	r1,1,r1
	bne	_Label_3822
	mov	1662,r13		! source line 1662
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_532 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1669,r13		! source line 1669
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_533
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_534
	.word	-12
	.word	4
	.word	0
_Label_533:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3823:
	push	r0
	sub	r1,1,r1
	bne	_Label_3823
	mov	1674,r13		! source line 1674
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_535 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1681,r13		! source line 1681
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_536
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_537
	.word	-12
	.word	4
	.word	0
_Label_536:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3824:
	push	r0
	sub	r1,1,r1
	bne	_Label_3824
	mov	1686,r13		! source line 1686
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_538 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_538  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1693,r13		! source line 1693
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_539
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_540
	.word	-12
	.word	4
	.word	0
_Label_539:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_188_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3825:
	push	r0
	sub	r1,1,r1
	bne	_Label_3825
	mov	1698,r13		! source line 1698
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_541 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_542 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_546 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_545 = *_temp_546  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_545 == 0 then goto _Label_544		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_544
!	jmp	_Label_543
_Label_543:
! THEN...
	mov	1709,r13		! source line 1709
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_548 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_547 = *_temp_548  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_547) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_549
_Label_544:
! ELSE...
	mov	1711,r13		! source line 1711
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_550 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_549:
! SEND STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_551
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_552
	.word	8
	.word	4
	.word	_Label_553
	.word	-12
	.word	4
	.word	_Label_554
	.word	-16
	.word	4
	.word	_Label_555
	.word	-20
	.word	4
	.word	_Label_556
	.word	-24
	.word	4
	.word	_Label_557
	.word	-28
	.word	4
	.word	_Label_558
	.word	-32
	.word	4
	.word	_Label_559
	.word	-36
	.word	4
	.word	0
_Label_551:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_552:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3826:
	push	r0
	sub	r1,1,r1
	bne	_Label_3826
	mov	1724,r13		! source line 1724
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1745,r13		! source line 1745
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3827
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_560
_Label_3827:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_560
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_560
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_574,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_574:
	jmp	_Label_566	! 1:	
	jmp	_Label_573	! 2:	
	jmp	_Label_563	! 3:	
	jmp	_Label_562	! 4:	
	jmp	_Label_565	! 5:	
	jmp	_Label_564	! 6:	
	jmp	_Label_567	! 7:	
	jmp	_Label_568	! 8:	
	jmp	_Label_569	! 9:	
	jmp	_Label_570	! 10:	
	jmp	_Label_571	! 11:	
	jmp	_Label_572	! 12:	
! CASE 4...
_Label_562:
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0RE",r10
!   Call the function
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_575  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_575  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_563:
! CALL STATEMENT...
!   Call the function
	mov	1749,r13		! source line 1749
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_564:
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_576  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_576  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_565:
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_577  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_577  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_566:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_567:
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_578  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_578  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_568:
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_579  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_579  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_569:
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1763,r13		! source line 1763
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_580  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_580  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_570:
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_581  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_581  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_571:
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_582  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_582  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_572:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_573:
! CALL STATEMENT...
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_560:
! CALL STATEMENT...
!   _temp_583 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_584 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1778,r13		! source line 1778
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_561:
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_585
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_586
	.word	8
	.word	4
	.word	_Label_587
	.word	12
	.word	4
	.word	_Label_588
	.word	16
	.word	4
	.word	_Label_589
	.word	20
	.word	4
	.word	_Label_590
	.word	24
	.word	4
	.word	_Label_591
	.word	-12
	.word	4
	.word	_Label_592
	.word	-16
	.word	4
	.word	_Label_593
	.word	-20
	.word	4
	.word	_Label_594
	.word	-24
	.word	4
	.word	_Label_595
	.word	-28
	.word	4
	.word	_Label_596
	.word	-32
	.word	4
	.word	_Label_597
	.word	-36
	.word	4
	.word	_Label_598
	.word	-40
	.word	4
	.word	_Label_599
	.word	-44
	.word	4
	.word	_Label_600
	.word	-48
	.word	4
	.word	0
_Label_585:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_588:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_589:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_590:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_3828:
	push	r0
	sub	r1,1,r1
	bne	_Label_3828
	mov	1785,r13		! source line 1785
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_601
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_602
	.word	8
	.word	4
	.word	0
_Label_601:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_602:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3829:
	push	r0
	sub	r1,1,r1
	bne	_Label_3829
	mov	1791,r13		! source line 1791
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_603 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1792,r13		! source line 1792
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_604
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_605
	.word	-12
	.word	4
	.word	0
_Label_604:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_3830:
	push	r0
	sub	r1,1,r1
	bne	_Label_3830
	mov	1797,r13		! source line 1797
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_606
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_606:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	85,r1
_Label_3831:
	push	r0
	sub	r1,1,r1
	bne	_Label_3831
	mov	1803,r13		! source line 1803
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! ASSIGNMENT STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
	mov	1814,r13		! source line 1814
	mov	"\0\0SE",r10
!   _temp_607 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-316]
!   Send message GetANewThread
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-320]
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
	mov	1815,r13		! source line 1815
	mov	"\0\0SE",r10
!   _temp_608 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-312]
!   Send message GetANewProcess
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-324]
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = newPCB + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_609 = newThread  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = newPCB + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_612 = *_temp_613  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_612) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _temp_612 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_611 = *_temp_614  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_610 = _temp_611  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = newThread + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_615 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_616 = newPCB  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = newThread + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_618 [0 ] into _temp_619
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-268]
!   _temp_617 = _temp_619		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_617  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! FOR STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_624 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_625 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_624  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-336]
_Label_620:
!   Perform the FOR-LOOP termination test
!   if i > _temp_625 then goto _Label_623		
	load	[r14+-336],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_623
_Label_621:
	mov	1826,r13		! source line 1826
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_629 = *_temp_630  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_629) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = _temp_629 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_631 [i ] into _temp_632
!     make sure index expr is >= 0
	load	[r14+-336],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   Data Move: _temp_628 = *_temp_632  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_628) then goto _Label_627
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_627
!	jmp	_Label_626
_Label_626:
! THEN...
	mov	1828,r13		! source line 1828
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_634 = *_temp_635  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_634) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _temp_634 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_636 [i ] into _temp_637
!     make sure index expr is >= 0
	load	[r14+-336],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-220]
!   Data Move: _temp_633 = *_temp_637  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_633) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_633 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_642 = *_temp_643  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_642) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_644 = _temp_642 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_644 [i ] into _temp_645
!     make sure index expr is >= 0
	load	[r14+-336],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   Data Move: _temp_641 = *_temp_645  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_641) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _temp_641 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_640 = *_temp_646  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_639 = _temp_640 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_638 = _temp_639  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = newThread + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_647 = *_temp_648  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_647) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = _temp_647 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_649 [i ] into _temp_650
!     make sure index expr is >= 0
	load	[r14+-336],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_652 = *_temp_653  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_652) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = _temp_652 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_654 [i ] into _temp_655
!     make sure index expr is >= 0
	load	[r14+-336],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   Data Move: _temp_651 = *_temp_655  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_650 = _temp_651  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_627:
!   Increment the FOR-LOOP index variable and jump back
_Label_622:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_620
! END FOR
_Label_623:
! ASSIGNMENT STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = newThread + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_658 = newThread + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_658 [999 ] into _temp_659
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_657 = _temp_659		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_656 = _temp_657  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_661 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_660 = _temp_661		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_663 = *_temp_664  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_663) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_665 = _temp_663 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_666 = _temp_665 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_662 = *_temp_666  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_667 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_660  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_662  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_672 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_676 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_675 = *_temp_676  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_675) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = _temp_675 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_678 = _temp_677 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_674 = *_temp_678  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_673 = _temp_674 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_672  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-336]
_Label_668:
!   Perform the FOR-LOOP termination test
!   if i > _temp_673 then goto _Label_671		
	load	[r14+-336],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_671
_Label_669:
	mov	1836,r13		! source line 1836
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_680 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_679  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1837,r13		! source line 1837
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_682 = *_temp_683  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_682) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = _temp_682 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_681  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_679  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_681  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0IF",r10
	mov	1838,r13		! source line 1838
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_689 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_688 = *_temp_689  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_688) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_690 = _temp_688 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_687  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_691 = _temp_687 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_691 then goto _Label_686 else goto _Label_685
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_685
	jmp	_Label_686
_Label_685:
! THEN...
	mov	1839,r13		! source line 1839
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_692 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_693
_Label_686:
! ELSE...
	mov	1841,r13		! source line 1841
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_694 = newPCB + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
! END IF...
_Label_693:
!   Increment the FOR-LOOP index variable and jump back
_Label_670:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_668
! END FOR
_Label_671:
! ASSIGNMENT STATEMENT...
	mov	1845,r13		! source line 1845
	mov	"\0\0AS",r10
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! SEND STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0SE",r10
!   _temp_695 = _function_187_Resume_After_Fork
	set	_function_187_Resume_After_Fork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_695  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldPC  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-320],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_697 = newPCB + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_696 = *_temp_697  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_696  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,344,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_698
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_699
	.word	-16
	.word	4
	.word	_Label_700
	.word	-20
	.word	4
	.word	_Label_701
	.word	-24
	.word	4
	.word	_Label_702
	.word	-28
	.word	4
	.word	_Label_703
	.word	-32
	.word	4
	.word	_Label_704
	.word	-9
	.word	1
	.word	_Label_705
	.word	-36
	.word	4
	.word	_Label_706
	.word	-40
	.word	4
	.word	_Label_707
	.word	-44
	.word	4
	.word	_Label_708
	.word	-10
	.word	1
	.word	_Label_709
	.word	-48
	.word	4
	.word	_Label_710
	.word	-52
	.word	4
	.word	_Label_711
	.word	-56
	.word	4
	.word	_Label_712
	.word	-60
	.word	4
	.word	_Label_713
	.word	-64
	.word	4
	.word	_Label_714
	.word	-68
	.word	4
	.word	_Label_715
	.word	-72
	.word	4
	.word	_Label_716
	.word	-76
	.word	4
	.word	_Label_717
	.word	-80
	.word	4
	.word	_Label_718
	.word	-84
	.word	4
	.word	_Label_719
	.word	-88
	.word	4
	.word	_Label_720
	.word	-92
	.word	4
	.word	_Label_721
	.word	-96
	.word	4
	.word	_Label_722
	.word	-100
	.word	4
	.word	_Label_723
	.word	-104
	.word	4
	.word	_Label_724
	.word	-108
	.word	4
	.word	_Label_725
	.word	-112
	.word	4
	.word	_Label_726
	.word	-116
	.word	4
	.word	_Label_727
	.word	-120
	.word	4
	.word	_Label_728
	.word	-124
	.word	4
	.word	_Label_729
	.word	-128
	.word	4
	.word	_Label_730
	.word	-132
	.word	4
	.word	_Label_731
	.word	-136
	.word	4
	.word	_Label_732
	.word	-140
	.word	4
	.word	_Label_733
	.word	-144
	.word	4
	.word	_Label_734
	.word	-148
	.word	4
	.word	_Label_735
	.word	-152
	.word	4
	.word	_Label_736
	.word	-156
	.word	4
	.word	_Label_737
	.word	-160
	.word	4
	.word	_Label_738
	.word	-164
	.word	4
	.word	_Label_739
	.word	-168
	.word	4
	.word	_Label_740
	.word	-172
	.word	4
	.word	_Label_741
	.word	-176
	.word	4
	.word	_Label_742
	.word	-180
	.word	4
	.word	_Label_743
	.word	-184
	.word	4
	.word	_Label_744
	.word	-188
	.word	4
	.word	_Label_745
	.word	-192
	.word	4
	.word	_Label_746
	.word	-196
	.word	4
	.word	_Label_747
	.word	-200
	.word	4
	.word	_Label_748
	.word	-204
	.word	4
	.word	_Label_749
	.word	-208
	.word	4
	.word	_Label_750
	.word	-212
	.word	4
	.word	_Label_751
	.word	-216
	.word	4
	.word	_Label_752
	.word	-220
	.word	4
	.word	_Label_753
	.word	-224
	.word	4
	.word	_Label_754
	.word	-228
	.word	4
	.word	_Label_755
	.word	-232
	.word	4
	.word	_Label_756
	.word	-236
	.word	4
	.word	_Label_757
	.word	-240
	.word	4
	.word	_Label_758
	.word	-244
	.word	4
	.word	_Label_759
	.word	-248
	.word	4
	.word	_Label_760
	.word	-252
	.word	4
	.word	_Label_761
	.word	-256
	.word	4
	.word	_Label_762
	.word	-260
	.word	4
	.word	_Label_763
	.word	-264
	.word	4
	.word	_Label_764
	.word	-268
	.word	4
	.word	_Label_765
	.word	-272
	.word	4
	.word	_Label_766
	.word	-276
	.word	4
	.word	_Label_767
	.word	-280
	.word	4
	.word	_Label_768
	.word	-284
	.word	4
	.word	_Label_769
	.word	-288
	.word	4
	.word	_Label_770
	.word	-292
	.word	4
	.word	_Label_771
	.word	-296
	.word	4
	.word	_Label_772
	.word	-300
	.word	4
	.word	_Label_773
	.word	-304
	.word	4
	.word	_Label_774
	.word	-308
	.word	4
	.word	_Label_775
	.word	-312
	.word	4
	.word	_Label_776
	.word	-316
	.word	4
	.word	_Label_777
	.word	-320
	.word	4
	.word	_Label_778
	.word	-324
	.word	4
	.word	_Label_779
	.word	-328
	.word	4
	.word	_Label_780
	.word	-332
	.word	4
	.word	_Label_781
	.word	-336
	.word	4
	.word	0
_Label_698:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_704:
	.byte	'C'
	.ascii	"_temp_691\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_708:
	.byte	'C'
	.ascii	"_temp_687\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_777:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_778:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"oldPC\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Resume_After_Fork  ===============
! 
_function_187_Resume_After_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_Resume_After_Fork,r1
	push	r1
	mov	17,r1
_Label_3832:
	push	r0
	sub	r1,1,r1
	bne	_Label_3832
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1857,r13		! source line 1857
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_782 = *_temp_783  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_782) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_784 = _temp_782 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_786 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_786 [0 ] into _temp_787
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_785 = _temp_787		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_785  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_788 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_788 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_789 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_789 [14 ] into _temp_790
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: userStackTop = *_temp_790  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_791 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_791 [999 ] into _temp_792
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   systemStackTop = _temp_792		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=userStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=PC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=systemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_Resume_After_Fork:
	.word	_sourceFileName
	.word	_Label_793
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_794
	.word	8
	.word	4
	.word	_Label_795
	.word	-12
	.word	4
	.word	_Label_796
	.word	-16
	.word	4
	.word	_Label_797
	.word	-20
	.word	4
	.word	_Label_798
	.word	-24
	.word	4
	.word	_Label_799
	.word	-28
	.word	4
	.word	_Label_800
	.word	-32
	.word	4
	.word	_Label_801
	.word	-36
	.word	4
	.word	_Label_802
	.word	-40
	.word	4
	.word	_Label_803
	.word	-44
	.word	4
	.word	_Label_804
	.word	-48
	.word	4
	.word	_Label_805
	.word	-52
	.word	4
	.word	_Label_806
	.word	-56
	.word	4
	.word	_Label_807
	.word	-60
	.word	4
	.word	_Label_808
	.word	-64
	.word	4
	.word	0
_Label_793:
	.ascii	"Resume_After_Fork\0"
	.align
_Label_794:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_806:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_808:
	.byte	'I'
	.ascii	"systemStackTop\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	30,r1
_Label_3833:
	push	r0
	sub	r1,1,r1
	bne	_Label_3833
	mov	1870,r13		! source line 1870
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_813 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_814 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_813  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_809:
!   Perform the FOR-LOOP termination test
!   if i > _temp_814 then goto _Label_812		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_812
_Label_810:
	mov	1875,r13		! source line 1875
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0IF",r10
!   _temp_820 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_821 = _temp_820 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_821 [i ] into _temp_822
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_823 = _temp_822 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_819 = *_temp_823  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_819 != processID then goto _Label_816		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_816
!	jmp	_Label_818
_Label_818:
!   _temp_825 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_826 = _temp_825 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_826 [i ] into _temp_827
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_828 = _temp_827 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_824 = *_temp_828  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_831 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_830 = *_temp_831  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_830) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_832 = _temp_830 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_829 = *_temp_832  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_824 != _temp_829 then goto _Label_816		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_816
!	jmp	_Label_817
_Label_817:
!   _temp_834 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_835 = _temp_834 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_835 [i ] into _temp_836
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_837 = _temp_836 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_833 = *_temp_837  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_833 == 3 then goto _Label_816		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_816
!	jmp	_Label_815
_Label_815:
! THEN...
	mov	1877,r13		! source line 1877
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
	mov	1877,r13		! source line 1877
	mov	"\0\0SE",r10
!   _temp_839 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_840 = _temp_839 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_840 [i ] into _temp_841
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_838 = _temp_841		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_842 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_838  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=childExitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_816:
!   Increment the FOR-LOOP index variable and jump back
_Label_811:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_809
! END FOR
_Label_812:
! RETURN STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_843
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_844
	.word	8
	.word	4
	.word	_Label_845
	.word	-12
	.word	4
	.word	_Label_846
	.word	-16
	.word	4
	.word	_Label_847
	.word	-20
	.word	4
	.word	_Label_848
	.word	-24
	.word	4
	.word	_Label_849
	.word	-28
	.word	4
	.word	_Label_850
	.word	-32
	.word	4
	.word	_Label_851
	.word	-36
	.word	4
	.word	_Label_852
	.word	-40
	.word	4
	.word	_Label_853
	.word	-44
	.word	4
	.word	_Label_854
	.word	-48
	.word	4
	.word	_Label_855
	.word	-52
	.word	4
	.word	_Label_856
	.word	-56
	.word	4
	.word	_Label_857
	.word	-60
	.word	4
	.word	_Label_858
	.word	-64
	.word	4
	.word	_Label_859
	.word	-68
	.word	4
	.word	_Label_860
	.word	-72
	.word	4
	.word	_Label_861
	.word	-76
	.word	4
	.word	_Label_862
	.word	-80
	.word	4
	.word	_Label_863
	.word	-84
	.word	4
	.word	_Label_864
	.word	-88
	.word	4
	.word	_Label_865
	.word	-92
	.word	4
	.word	_Label_866
	.word	-96
	.word	4
	.word	_Label_867
	.word	-100
	.word	4
	.word	_Label_868
	.word	-104
	.word	4
	.word	_Label_869
	.word	-108
	.word	4
	.word	_Label_870
	.word	-112
	.word	4
	.word	_Label_871
	.word	-116
	.word	4
	.word	_Label_872
	.word	-120
	.word	4
	.word	0
_Label_843:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_844:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_871:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_872:
	.byte	'I'
	.ascii	"childExitStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	67,r1
_Label_3834:
	push	r0
	sub	r1,1,r1
	bne	_Label_3834
	mov	1888,r13		! source line 1888
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! addrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	add	r14,-216,r4
	mov	23,r3
_Label_3835:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3835
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0AS",r10
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   _temp_874 = &strBuffer
	add	r14,-240,r1
	store	r1,[r14+-120]
!   _temp_875 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_877 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_876 = *_temp_877  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_876) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_878 = _temp_876 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_874  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_875  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0IF",r10
!   if junk >= 0 then goto _Label_880		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_880
!	jmp	_Label_879
_Label_879:
! THEN...
	mov	1901,r13		! source line 1901
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_880:
! SEND STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0SE",r10
!   _temp_881 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-100]
!   Send message Init
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
	mov	1904,r13		! source line 1904
	mov	"\0\0SE",r10
!   _temp_882 = &strBuffer
	add	r14,-240,r1
	store	r1,[r14+-96]
!   _temp_883 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_882  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_884
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_884
	jmp	_Label_885
_Label_884:
! THEN...
	mov	1906,r13		! source line 1906
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_885:
! ASSIGNMENT STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0AS",r10
	mov	1908,r13		! source line 1908
	mov	"\0\0SE",r10
!   _temp_886 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-88]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_886  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_888		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_888
!	jmp	_Label_887
_Label_887:
! THEN...
	mov	1910,r13		! source line 1910
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_888:
! SEND STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_891 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_890 = *_temp_891  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_890) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = _temp_890 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_889 = _temp_892		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-84]
!   _temp_893 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_889  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_894 = *_temp_895  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_894) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = _temp_894 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_896 = addrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-56],r4
	mov	23,r3
_Label_3836:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3836
! SEND STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0SE",r10
!   _temp_897 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_898 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_898 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
!   _temp_900 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-40]
!   _temp_901 = _temp_900 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_899 = *_temp_901  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_899 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_902 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_902 [999 ] into _temp_903
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   initSystemStackTop = _temp_903		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-256]
! SEND STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0SE",r10
!   _temp_904 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-24]
!   Send message SetToThisPageTable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	BecomeUserThread
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_906 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_905 = *_temp_906  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_905) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_907 = _temp_905 + 32
	load	[r14+-20],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_907 = addrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-12],r4
	mov	23,r3
_Label_3837:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3837
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_908
	.word	4		! total size of parameters
	.word	268		! frame size = 268
	.word	_Label_909
	.word	8
	.word	4
	.word	_Label_910
	.word	-12
	.word	4
	.word	_Label_911
	.word	-16
	.word	4
	.word	_Label_912
	.word	-20
	.word	4
	.word	_Label_913
	.word	-24
	.word	4
	.word	_Label_914
	.word	-28
	.word	4
	.word	_Label_915
	.word	-32
	.word	4
	.word	_Label_916
	.word	-36
	.word	4
	.word	_Label_917
	.word	-40
	.word	4
	.word	_Label_918
	.word	-44
	.word	4
	.word	_Label_919
	.word	-48
	.word	4
	.word	_Label_920
	.word	-52
	.word	4
	.word	_Label_921
	.word	-56
	.word	4
	.word	_Label_922
	.word	-60
	.word	4
	.word	_Label_923
	.word	-64
	.word	4
	.word	_Label_924
	.word	-68
	.word	4
	.word	_Label_925
	.word	-72
	.word	4
	.word	_Label_926
	.word	-76
	.word	4
	.word	_Label_927
	.word	-80
	.word	4
	.word	_Label_928
	.word	-84
	.word	4
	.word	_Label_929
	.word	-88
	.word	4
	.word	_Label_930
	.word	-92
	.word	4
	.word	_Label_931
	.word	-96
	.word	4
	.word	_Label_932
	.word	-100
	.word	4
	.word	_Label_933
	.word	-104
	.word	4
	.word	_Label_934
	.word	-108
	.word	4
	.word	_Label_935
	.word	-112
	.word	4
	.word	_Label_936
	.word	-116
	.word	4
	.word	_Label_937
	.word	-120
	.word	4
	.word	_Label_938
	.word	-124
	.word	4
	.word	_Label_939
	.word	-216
	.word	92
	.word	_Label_940
	.word	-240
	.word	24
	.word	_Label_941
	.word	-244
	.word	4
	.word	_Label_942
	.word	-248
	.word	4
	.word	_Label_943
	.word	-252
	.word	4
	.word	_Label_944
	.word	-256
	.word	4
	.word	_Label_945
	.word	-260
	.word	4
	.word	0
_Label_908:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_909:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_939:
	.byte	'O'
	.ascii	"addrSpace\0"
	.align
_Label_940:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_941:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_942:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_943:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_944:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_945:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	21,r1
_Label_3838:
	push	r0
	sub	r1,1,r1
	bne	_Label_3838
	mov	1928,r13		! source line 1928
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0AS",r10
	mov	1933,r13		! source line 1933
	mov	"\0\0SE",r10
!   _temp_946 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_947 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_949 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_948 = *_temp_949  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_948) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_950 = _temp_948 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_946  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_947  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_951 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_951  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_952 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_953 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_954 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_955 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_956
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_957
	.word	8
	.word	4
	.word	_Label_958
	.word	-12
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-24
	.word	4
	.word	_Label_962
	.word	-28
	.word	4
	.word	_Label_963
	.word	-32
	.word	4
	.word	_Label_964
	.word	-36
	.word	4
	.word	_Label_965
	.word	-40
	.word	4
	.word	_Label_966
	.word	-44
	.word	4
	.word	_Label_967
	.word	-48
	.word	4
	.word	_Label_968
	.word	-52
	.word	4
	.word	_Label_969
	.word	-76
	.word	24
	.word	0
_Label_956:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_957:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_968:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_969:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	32,r1
_Label_3839:
	push	r0
	sub	r1,1,r1
	bne	_Label_3839
	mov	1948,r13		! source line 1948
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0AS",r10
	mov	1956,r13		! source line 1956
	mov	"\0\0SE",r10
!   _temp_970 = &strBuffer
	add	r14,-112,r1
	store	r1,[r14+-80]
!   _temp_971 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_973 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_972 = *_temp_973  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_972) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_974 = _temp_972 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_970  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_971  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
!   fileDescriptorSlot = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_979 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_980 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_979  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-84]
_Label_975:
!   Perform the FOR-LOOP termination test
!   if i > _temp_980 then goto _Label_978		
	load	[r14+-84],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_978
_Label_976:
	mov	1965,r13		! source line 1965
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_984 = *_temp_985  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_984) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _temp_984 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_986 [i ] into _temp_987
!     make sure index expr is >= 0
	load	[r14+-84],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_983 = *_temp_987  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_983) then goto _Label_981
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_981
	jmp	_Label_982
_Label_981:
! THEN...
	mov	1967,r13		! source line 1967
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
!   fileDescriptorSlot = i		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-116]
! BREAK STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0BR",r10
	jmp	_Label_978
! END IF...
_Label_982:
!   Increment the FOR-LOOP index variable and jump back
_Label_977:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_975
! END FOR
_Label_978:
! IF STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0IF",r10
!   if fileDescriptorSlot != -1 then goto _Label_989		(int)
	load	[r14+-116],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_989
!	jmp	_Label_988
_Label_988:
! THEN...
	mov	1974,r13		! source line 1974
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorSlot  (sizeInBytes=4)
	load	[r14+-116],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_989:
! ASSIGNMENT STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0AS",r10
	mov	1978,r13		! source line 1978
	mov	"\0\0SE",r10
!   _temp_990 = &strBuffer
	add	r14,-112,r1
	store	r1,[r14+-32]
!   _temp_991 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_990  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! IF STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_992
	load	[r14+-120],r1
	cmp	r1,r0
	be	_Label_992
	jmp	_Label_993
_Label_992:
! THEN...
	mov	1980,r13		! source line 1980
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_993:
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_995 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_994 = *_temp_995  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_994) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_996 = _temp_994 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_996 [fileDescriptorSlot ] into _temp_997
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_997 = file  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorSlot  (sizeInBytes=4)
	load	[r14+-116],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_998
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_999
	.word	8
	.word	4
	.word	_Label_1000
	.word	-12
	.word	4
	.word	_Label_1001
	.word	-16
	.word	4
	.word	_Label_1002
	.word	-20
	.word	4
	.word	_Label_1003
	.word	-24
	.word	4
	.word	_Label_1004
	.word	-28
	.word	4
	.word	_Label_1005
	.word	-32
	.word	4
	.word	_Label_1006
	.word	-36
	.word	4
	.word	_Label_1007
	.word	-40
	.word	4
	.word	_Label_1008
	.word	-44
	.word	4
	.word	_Label_1009
	.word	-48
	.word	4
	.word	_Label_1010
	.word	-52
	.word	4
	.word	_Label_1011
	.word	-56
	.word	4
	.word	_Label_1012
	.word	-60
	.word	4
	.word	_Label_1013
	.word	-64
	.word	4
	.word	_Label_1014
	.word	-68
	.word	4
	.word	_Label_1015
	.word	-72
	.word	4
	.word	_Label_1016
	.word	-76
	.word	4
	.word	_Label_1017
	.word	-80
	.word	4
	.word	_Label_1018
	.word	-84
	.word	4
	.word	_Label_1019
	.word	-88
	.word	4
	.word	_Label_1020
	.word	-112
	.word	24
	.word	_Label_1021
	.word	-116
	.word	4
	.word	_Label_1022
	.word	-120
	.word	4
	.word	0
_Label_998:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_999:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1018:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1019:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_1020:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"fileDescriptorSlot\0"
	.align
_Label_1022:
	.byte	'P'
	.ascii	"file\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	65,r1
_Label_3840:
	push	r0
	sub	r1,1,r1
	bne	_Label_3840
	mov	1990,r13		! source line 1990
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1027		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1027
	jmp	_Label_1023
_Label_1027:
!   if fileDesc <= 9 then goto _Label_1026		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1026
	jmp	_Label_1023
_Label_1026:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1029 = *_temp_1030  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_1029) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _temp_1029 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-200]
!   Move address of _temp_1031 [fileDesc ] into _temp_1032
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-200],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-196]
!   Data Move: _temp_1028 = *_temp_1032  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1028) then goto _Label_1023
	load	[r14+-212],r1
	cmp	r1,r0
	be	_Label_1023
!	jmp	_Label_1025
_Label_1025:
!   if sizeInBytes >= 0 then goto _Label_1024		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1024
!	jmp	_Label_1023
_Label_1023:
! THEN...
	mov	1998,r13		! source line 1998
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1024:
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-220],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-220],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1034 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1033 = *_temp_1034  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1033) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1035 = _temp_1033 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-184]
!   Move address of _temp_1035 [fileDesc ] into _temp_1036
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: file = *_temp_1036  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = file + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-176]
!   Data Move: nextPosInFile = *_temp_1037  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1039 = file + 20
	load	[r14+-216],r1
	add	r1,20,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1038 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1038) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = _temp_1038 + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-164]
!   Data Move: fileSize = *_temp_1040  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-232]
! WHILE STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0WH",r10
_Label_1041:
!	jmp	_Label_1042
_Label_1042:
	mov	2011,r13		! source line 2011
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-228],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0IF",r10
!   _temp_1046 = nextPosInFile + chunkSize		(int)
	load	[r14+-236],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if _temp_1046 <= fileSize then goto _Label_1045		(int)
	load	[r14+-160],r1
	load	[r14+-244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1045
!	jmp	_Label_1044
_Label_1044:
! THEN...
	mov	2014,r13		! source line 2014
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-244],r1
	load	[r14+-236],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END IF...
_Label_1045:
! IF STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0IF",r10
!   _temp_1049 = copiedSoFar + chunkSize		(int)
	load	[r14+-232],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if _temp_1049 <= sizeInBytes then goto _Label_1048		(int)
	load	[r14+-156],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1048
!	jmp	_Label_1047
_Label_1047:
! THEN...
	mov	2017,r13		! source line 2017
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-232],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END IF...
_Label_1048:
! IF STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1051		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1051
!	jmp	_Label_1050
_Label_1050:
! THEN...
	mov	2020,r13		! source line 2020
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0BR",r10
	jmp	_Label_1043
! END IF...
_Label_1051:
! IF STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1056		(int)
	load	[r14+-224],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1056
	jmp	_Label_1052
_Label_1056:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1060 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1059 = *_temp_1060  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1059) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1061 = _temp_1059 + 32
	load	[r14+-144],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   _temp_1062 = _temp_1061 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1058 = *_temp_1062  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   _temp_1057 = _temp_1058 - 1		(int)
	load	[r14+-148],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if virtPage <= _temp_1057 then goto _Label_1055		(int)
	load	[r14+-224],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1055
	jmp	_Label_1052
_Label_1055:
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1064 = *_temp_1065  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1064) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _temp_1064 + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1063  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1067 = _temp_1063 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1067 then goto _Label_1054 else goto _Label_1052
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1052
	jmp	_Label_1054
_Label_1054:
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1069 = *_temp_1070  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1069) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1071 = _temp_1069 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1068  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1072 = _temp_1068 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1072 then goto _Label_1053 else goto _Label_1052
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1052
	jmp	_Label_1053
_Label_1052:
! THEN...
	mov	2024,r13		! source line 2024
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1053:
! ASSIGNMENT STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-236],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-232],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1074		(int)
	load	[r14+-232],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1074
!	jmp	_Label_1073
_Label_1073:
! THEN...
	mov	2033,r13		! source line 2033
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0BR",r10
	jmp	_Label_1043
! END IF...
_Label_1074:
! END WHILE...
	jmp	_Label_1041
_Label_1043:
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-220],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-220],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1075 = *_temp_1076  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1075) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1077 = _temp_1075 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1077 [fileDesc ] into _temp_1078
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: file = *_temp_1078  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1079 = file + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: nextPosInFile = *_temp_1079  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1081 = file + 20
	load	[r14+-216],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1080 = *_temp_1081  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1080) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1082 = _temp_1080 + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-76]
!   Data Move: fileSize = *_temp_1082  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-232]
! WHILE STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0WH",r10
_Label_1083:
!	jmp	_Label_1084
_Label_1084:
	mov	2048,r13		! source line 2048
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-228],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0IF",r10
!   _temp_1088 = nextPosInFile + chunkSize		(int)
	load	[r14+-236],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   if _temp_1088 <= fileSize then goto _Label_1087		(int)
	load	[r14+-72],r1
	load	[r14+-244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1087
!	jmp	_Label_1086
_Label_1086:
! THEN...
	mov	2051,r13		! source line 2051
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-244],r1
	load	[r14+-236],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END IF...
_Label_1087:
! IF STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0IF",r10
!   _temp_1091 = copiedSoFar + chunkSize		(int)
	load	[r14+-232],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   if _temp_1091 <= sizeInBytes then goto _Label_1090		(int)
	load	[r14+-68],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1090
!	jmp	_Label_1089
_Label_1089:
! THEN...
	mov	2054,r13		! source line 2054
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-232],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END IF...
_Label_1090:
! IF STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1093		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1093
!	jmp	_Label_1092
_Label_1092:
! THEN...
	mov	2057,r13		! source line 2057
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0BR",r10
	jmp	_Label_1085
! END IF...
_Label_1093:
! SEND STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1095 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1094 = *_temp_1095  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1094) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1096 = _temp_1094 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1097 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1097) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _temp_1097 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
	mov	2063,r13		! source line 2063
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1102 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1101 = *_temp_1102  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1101) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1103 = _temp_1101 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1100  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1100 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
	mov	2064,r13		! source line 2064
	mov	"\0\0SE",r10
!   _temp_1104 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-236],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-232],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1106		(int)
	load	[r14+-232],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1106
!	jmp	_Label_1105
_Label_1105:
! THEN...
	mov	2072,r13		! source line 2072
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0BR",r10
	jmp	_Label_1085
! END IF...
_Label_1106:
! END WHILE...
	jmp	_Label_1083
_Label_1085:
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1107 = file + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1107 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-232],r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1108
	.word	12		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_1109
	.word	8
	.word	4
	.word	_Label_1110
	.word	12
	.word	4
	.word	_Label_1111
	.word	16
	.word	4
	.word	_Label_1112
	.word	-20
	.word	4
	.word	_Label_1113
	.word	-24
	.word	4
	.word	_Label_1114
	.word	-28
	.word	4
	.word	_Label_1115
	.word	-32
	.word	4
	.word	_Label_1116
	.word	-36
	.word	4
	.word	_Label_1117
	.word	-40
	.word	4
	.word	_Label_1118
	.word	-44
	.word	4
	.word	_Label_1119
	.word	-48
	.word	4
	.word	_Label_1120
	.word	-52
	.word	4
	.word	_Label_1121
	.word	-56
	.word	4
	.word	_Label_1122
	.word	-60
	.word	4
	.word	_Label_1123
	.word	-64
	.word	4
	.word	_Label_1124
	.word	-68
	.word	4
	.word	_Label_1125
	.word	-72
	.word	4
	.word	_Label_1126
	.word	-76
	.word	4
	.word	_Label_1127
	.word	-80
	.word	4
	.word	_Label_1128
	.word	-84
	.word	4
	.word	_Label_1129
	.word	-88
	.word	4
	.word	_Label_1130
	.word	-92
	.word	4
	.word	_Label_1131
	.word	-96
	.word	4
	.word	_Label_1132
	.word	-100
	.word	4
	.word	_Label_1133
	.word	-104
	.word	4
	.word	_Label_1134
	.word	-9
	.word	1
	.word	_Label_1135
	.word	-108
	.word	4
	.word	_Label_1136
	.word	-112
	.word	4
	.word	_Label_1137
	.word	-116
	.word	4
	.word	_Label_1138
	.word	-10
	.word	1
	.word	_Label_1139
	.word	-11
	.word	1
	.word	_Label_1140
	.word	-120
	.word	4
	.word	_Label_1141
	.word	-124
	.word	4
	.word	_Label_1142
	.word	-128
	.word	4
	.word	_Label_1143
	.word	-12
	.word	1
	.word	_Label_1144
	.word	-132
	.word	4
	.word	_Label_1145
	.word	-136
	.word	4
	.word	_Label_1146
	.word	-140
	.word	4
	.word	_Label_1147
	.word	-144
	.word	4
	.word	_Label_1148
	.word	-148
	.word	4
	.word	_Label_1149
	.word	-152
	.word	4
	.word	_Label_1150
	.word	-156
	.word	4
	.word	_Label_1151
	.word	-160
	.word	4
	.word	_Label_1152
	.word	-164
	.word	4
	.word	_Label_1153
	.word	-168
	.word	4
	.word	_Label_1154
	.word	-172
	.word	4
	.word	_Label_1155
	.word	-176
	.word	4
	.word	_Label_1156
	.word	-180
	.word	4
	.word	_Label_1157
	.word	-184
	.word	4
	.word	_Label_1158
	.word	-188
	.word	4
	.word	_Label_1159
	.word	-192
	.word	4
	.word	_Label_1160
	.word	-196
	.word	4
	.word	_Label_1161
	.word	-200
	.word	4
	.word	_Label_1162
	.word	-204
	.word	4
	.word	_Label_1163
	.word	-208
	.word	4
	.word	_Label_1164
	.word	-212
	.word	4
	.word	_Label_1165
	.word	-216
	.word	4
	.word	_Label_1166
	.word	-220
	.word	4
	.word	_Label_1167
	.word	-224
	.word	4
	.word	_Label_1168
	.word	-228
	.word	4
	.word	_Label_1169
	.word	-232
	.word	4
	.word	_Label_1170
	.word	-236
	.word	4
	.word	_Label_1171
	.word	-240
	.word	4
	.word	_Label_1172
	.word	-244
	.word	4
	.word	_Label_1173
	.word	-248
	.word	4
	.word	_Label_1174
	.word	-13
	.word	1
	.word	0
_Label_1108:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1109:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1110:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1111:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1134:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1138:
	.byte	'C'
	.ascii	"_temp_1068\0"
	.align
_Label_1139:
	.byte	'C'
	.ascii	"_temp_1067\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1143:
	.byte	'C'
	.ascii	"_temp_1063\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1165:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_1166:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1167:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1168:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1169:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1170:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1171:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1172:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1173:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1174:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	62,r1
_Label_3841:
	push	r0
	sub	r1,1,r1
	bne	_Label_3841
	mov	2083,r13		! source line 2083
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1179		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1179
	jmp	_Label_1175
_Label_1179:
!   if fileDesc <= 9 then goto _Label_1178		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1178
	jmp	_Label_1175
_Label_1178:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1182 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1181 = *_temp_1182  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1181) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1183 = _temp_1181 + 124
	load	[r14+-196],r1
	add	r1,124,r1
	store	r1,[r14+-188]
!   Move address of _temp_1183 [fileDesc ] into _temp_1184
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-184]
!   Data Move: _temp_1180 = *_temp_1184  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1180) then goto _Label_1175
	load	[r14+-200],r1
	cmp	r1,r0
	be	_Label_1175
!	jmp	_Label_1177
_Label_1177:
!   if sizeInBytes >= 0 then goto _Label_1176		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1176
!	jmp	_Label_1175
_Label_1175:
! THEN...
	mov	2091,r13		! source line 2091
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1176:
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-208],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-208],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1186 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1185 = *_temp_1186  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1185) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1187 = _temp_1185 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_1187 [fileDesc ] into _temp_1188
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Data Move: file = *_temp_1188  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = file + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-164]
!   Data Move: nextPosInFile = *_temp_1189  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1191 = file + 20
	load	[r14+-204],r1
	add	r1,20,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1190 = *_temp_1191  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1190) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1192 = _temp_1190 + 24
	load	[r14+-160],r1
	add	r1,24,r1
	store	r1,[r14+-152]
!   Data Move: fileSize = *_temp_1192  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-220]
! WHILE STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0WH",r10
_Label_1193:
!	jmp	_Label_1194
_Label_1194:
	mov	2104,r13		! source line 2104
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-216],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0IF",r10
!   _temp_1198 = nextPosInFile + chunkSize		(int)
	load	[r14+-224],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if _temp_1198 <= fileSize then goto _Label_1197		(int)
	load	[r14+-148],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1197
!	jmp	_Label_1196
_Label_1196:
! THEN...
	mov	2107,r13		! source line 2107
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-232],r1
	load	[r14+-224],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END IF...
_Label_1197:
! IF STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0IF",r10
!   _temp_1201 = copiedSoFar + chunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if _temp_1201 <= sizeInBytes then goto _Label_1200		(int)
	load	[r14+-144],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1200
!	jmp	_Label_1199
_Label_1199:
! THEN...
	mov	2110,r13		! source line 2110
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-220],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END IF...
_Label_1200:
! IF STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1203		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1203
!	jmp	_Label_1202
_Label_1202:
! THEN...
	mov	2113,r13		! source line 2113
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0BR",r10
	jmp	_Label_1195
! END IF...
_Label_1203:
! IF STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1208		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1208
	jmp	_Label_1204
_Label_1208:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1212 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1211 = *_temp_1212  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1211) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1213 = _temp_1211 + 32
	load	[r14+-132],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_1214 = _temp_1213 + 4
	load	[r14+-124],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1210 = *_temp_1214  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   _temp_1209 = _temp_1210 - 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   if virtPage <= _temp_1209 then goto _Label_1207		(int)
	load	[r14+-212],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1207
	jmp	_Label_1204
_Label_1207:
	mov	2116,r13		! source line 2116
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1217 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1216 = *_temp_1217  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1216) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1218 = _temp_1216 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1215  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1219 = _temp_1215 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1219 then goto _Label_1206 else goto _Label_1204
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1204
	jmp	_Label_1206
_Label_1206:
	mov	2116,r13		! source line 2116
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1222 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1221 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1221) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1223 = _temp_1221 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1220  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1224 = _temp_1220 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1224 then goto _Label_1205 else goto _Label_1204
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1204
	jmp	_Label_1205
_Label_1204:
! THEN...
	mov	2117,r13		! source line 2117
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1205:
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-224],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-212],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1226		(int)
	load	[r14+-220],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1226
!	jmp	_Label_1225
_Label_1225:
! THEN...
	mov	2126,r13		! source line 2126
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0BR",r10
	jmp	_Label_1195
! END IF...
_Label_1226:
! END WHILE...
	jmp	_Label_1193
_Label_1195:
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-208],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-208],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1228 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1227 = *_temp_1228  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1227) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1229 = _temp_1227 + 124
	load	[r14+-92],r1
	add	r1,124,r1
	store	r1,[r14+-84]
!   Move address of _temp_1229 [fileDesc ] into _temp_1230
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: file = *_temp_1230  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1231 = file + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   Data Move: nextPosInFile = *_temp_1231  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1233 = file + 20
	load	[r14+-204],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1232 = *_temp_1233  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1232) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1234 = _temp_1232 + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: fileSize = *_temp_1234  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-220]
! WHILE STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0WH",r10
_Label_1235:
!	jmp	_Label_1236
_Label_1236:
	mov	2141,r13		! source line 2141
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-216],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0IF",r10
!   _temp_1240 = nextPosInFile + chunkSize		(int)
	load	[r14+-224],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if _temp_1240 <= fileSize then goto _Label_1239		(int)
	load	[r14+-60],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1239
!	jmp	_Label_1238
_Label_1238:
! THEN...
	mov	2144,r13		! source line 2144
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-232],r1
	load	[r14+-224],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END IF...
_Label_1239:
! IF STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0IF",r10
!   _temp_1243 = copiedSoFar + chunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if _temp_1243 <= sizeInBytes then goto _Label_1242		(int)
	load	[r14+-56],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1242
!	jmp	_Label_1241
_Label_1241:
! THEN...
	mov	2147,r13		! source line 2147
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-220],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END IF...
_Label_1242:
! IF STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1245		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1245
!	jmp	_Label_1244
_Label_1244:
! THEN...
	mov	2150,r13		! source line 2150
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0BR",r10
	jmp	_Label_1237
! END IF...
_Label_1245:
! SEND STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1247 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1246 = *_temp_1247  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1246) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1248 = _temp_1246 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
	mov	2155,r13		! source line 2155
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1251 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1250 = *_temp_1251  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1250) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1252 = _temp_1250 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1249  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1249 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-216],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_1253 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-224],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-212],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1255		(int)
	load	[r14+-220],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1255
!	jmp	_Label_1254
_Label_1254:
! THEN...
	mov	2164,r13		! source line 2164
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0BR",r10
	jmp	_Label_1237
! END IF...
_Label_1255:
! END WHILE...
	jmp	_Label_1235
_Label_1237:
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1256 = file + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1256 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-220],r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1257
	.word	12		! total size of parameters
	.word	248		! frame size = 248
	.word	_Label_1258
	.word	8
	.word	4
	.word	_Label_1259
	.word	12
	.word	4
	.word	_Label_1260
	.word	16
	.word	4
	.word	_Label_1261
	.word	-20
	.word	4
	.word	_Label_1262
	.word	-24
	.word	4
	.word	_Label_1263
	.word	-28
	.word	4
	.word	_Label_1264
	.word	-32
	.word	4
	.word	_Label_1265
	.word	-36
	.word	4
	.word	_Label_1266
	.word	-40
	.word	4
	.word	_Label_1267
	.word	-44
	.word	4
	.word	_Label_1268
	.word	-48
	.word	4
	.word	_Label_1269
	.word	-52
	.word	4
	.word	_Label_1270
	.word	-56
	.word	4
	.word	_Label_1271
	.word	-60
	.word	4
	.word	_Label_1272
	.word	-64
	.word	4
	.word	_Label_1273
	.word	-68
	.word	4
	.word	_Label_1274
	.word	-72
	.word	4
	.word	_Label_1275
	.word	-76
	.word	4
	.word	_Label_1276
	.word	-80
	.word	4
	.word	_Label_1277
	.word	-84
	.word	4
	.word	_Label_1278
	.word	-88
	.word	4
	.word	_Label_1279
	.word	-92
	.word	4
	.word	_Label_1280
	.word	-9
	.word	1
	.word	_Label_1281
	.word	-96
	.word	4
	.word	_Label_1282
	.word	-100
	.word	4
	.word	_Label_1283
	.word	-104
	.word	4
	.word	_Label_1284
	.word	-10
	.word	1
	.word	_Label_1285
	.word	-11
	.word	1
	.word	_Label_1286
	.word	-108
	.word	4
	.word	_Label_1287
	.word	-112
	.word	4
	.word	_Label_1288
	.word	-116
	.word	4
	.word	_Label_1289
	.word	-12
	.word	1
	.word	_Label_1290
	.word	-120
	.word	4
	.word	_Label_1291
	.word	-124
	.word	4
	.word	_Label_1292
	.word	-128
	.word	4
	.word	_Label_1293
	.word	-132
	.word	4
	.word	_Label_1294
	.word	-136
	.word	4
	.word	_Label_1295
	.word	-140
	.word	4
	.word	_Label_1296
	.word	-144
	.word	4
	.word	_Label_1297
	.word	-148
	.word	4
	.word	_Label_1298
	.word	-152
	.word	4
	.word	_Label_1299
	.word	-156
	.word	4
	.word	_Label_1300
	.word	-160
	.word	4
	.word	_Label_1301
	.word	-164
	.word	4
	.word	_Label_1302
	.word	-168
	.word	4
	.word	_Label_1303
	.word	-172
	.word	4
	.word	_Label_1304
	.word	-176
	.word	4
	.word	_Label_1305
	.word	-180
	.word	4
	.word	_Label_1306
	.word	-184
	.word	4
	.word	_Label_1307
	.word	-188
	.word	4
	.word	_Label_1308
	.word	-192
	.word	4
	.word	_Label_1309
	.word	-196
	.word	4
	.word	_Label_1310
	.word	-200
	.word	4
	.word	_Label_1311
	.word	-204
	.word	4
	.word	_Label_1312
	.word	-208
	.word	4
	.word	_Label_1313
	.word	-212
	.word	4
	.word	_Label_1314
	.word	-216
	.word	4
	.word	_Label_1315
	.word	-220
	.word	4
	.word	_Label_1316
	.word	-224
	.word	4
	.word	_Label_1317
	.word	-228
	.word	4
	.word	_Label_1318
	.word	-232
	.word	4
	.word	_Label_1319
	.word	-236
	.word	4
	.word	_Label_1320
	.word	-13
	.word	1
	.word	0
_Label_1257:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1258:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1259:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1260:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1280:
	.byte	'C'
	.ascii	"_temp_1224\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1284:
	.byte	'C'
	.ascii	"_temp_1220\0"
	.align
_Label_1285:
	.byte	'C'
	.ascii	"_temp_1219\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1289:
	.byte	'C'
	.ascii	"_temp_1215\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1311:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_1312:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1313:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1314:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1315:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1316:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1317:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1318:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1319:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1320:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	38,r1
_Label_3842:
	push	r0
	sub	r1,1,r1
	bne	_Label_3842
	mov	2175,r13		! source line 2175
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0SE",r10
!   _temp_1321 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1322 = _temp_1321 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Send message Lock
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1328		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1328
	jmp	_Label_1323
_Label_1328:
!   if fileDesc <= 9 then goto _Label_1327		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1327
	jmp	_Label_1323
_Label_1327:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1331 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1330 = *_temp_1331  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1330) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = _temp_1330 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1332 [fileDesc ] into _temp_1333
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Data Move: _temp_1329 = *_temp_1333  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1329) then goto _Label_1323
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1323
!	jmp	_Label_1326
_Label_1326:
!   if newCurrentPos >= -1 then goto _Label_1325		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1325
	jmp	_Label_1323
_Label_1325:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1338 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1337 = *_temp_1338  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1337) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = _temp_1337 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1339 [fileDesc ] into _temp_1340
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: _temp_1336 = *_temp_1340  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1336) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1341 = _temp_1336 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1335 = *_temp_1341  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1335) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1342 = _temp_1335 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1334 = *_temp_1342  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1334 then goto _Label_1324		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1324
!	jmp	_Label_1323
_Label_1323:
! THEN...
	mov	2181,r13		! source line 2181
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0SE",r10
!   _temp_1343 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1344 = _temp_1343 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Send message Unlock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1324:
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1346 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1345 = *_temp_1346  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1345) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1347 = _temp_1345 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1347 [fileDesc ] into _temp_1348
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: file = *_temp_1348  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1350		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1350
!	jmp	_Label_1349
_Label_1349:
! THEN...
	mov	2188,r13		! source line 2188
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1351 = file + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1354 = file + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1353 = *_temp_1354  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1353) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1355 = _temp_1353 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1352 = *_temp_1355  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1351 = _temp_1352  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0SE",r10
!   _temp_1356 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1357 = _temp_1356 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0RE",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1360 = file + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1359 = *_temp_1360  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1359) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1361 = _temp_1359 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1358 = *_temp_1361  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1358  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1350:
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1362 = file + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1362 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_1363 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1364 = _temp_1363 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1365
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1366
	.word	8
	.word	4
	.word	_Label_1367
	.word	12
	.word	4
	.word	_Label_1368
	.word	-12
	.word	4
	.word	_Label_1369
	.word	-16
	.word	4
	.word	_Label_1370
	.word	-20
	.word	4
	.word	_Label_1371
	.word	-24
	.word	4
	.word	_Label_1372
	.word	-28
	.word	4
	.word	_Label_1373
	.word	-32
	.word	4
	.word	_Label_1374
	.word	-36
	.word	4
	.word	_Label_1375
	.word	-40
	.word	4
	.word	_Label_1376
	.word	-44
	.word	4
	.word	_Label_1377
	.word	-48
	.word	4
	.word	_Label_1378
	.word	-52
	.word	4
	.word	_Label_1379
	.word	-56
	.word	4
	.word	_Label_1380
	.word	-60
	.word	4
	.word	_Label_1381
	.word	-64
	.word	4
	.word	_Label_1382
	.word	-68
	.word	4
	.word	_Label_1383
	.word	-72
	.word	4
	.word	_Label_1384
	.word	-76
	.word	4
	.word	_Label_1385
	.word	-80
	.word	4
	.word	_Label_1386
	.word	-84
	.word	4
	.word	_Label_1387
	.word	-88
	.word	4
	.word	_Label_1388
	.word	-92
	.word	4
	.word	_Label_1389
	.word	-96
	.word	4
	.word	_Label_1390
	.word	-100
	.word	4
	.word	_Label_1391
	.word	-104
	.word	4
	.word	_Label_1392
	.word	-108
	.word	4
	.word	_Label_1393
	.word	-112
	.word	4
	.word	_Label_1394
	.word	-116
	.word	4
	.word	_Label_1395
	.word	-120
	.word	4
	.word	_Label_1396
	.word	-124
	.word	4
	.word	_Label_1397
	.word	-128
	.word	4
	.word	_Label_1398
	.word	-132
	.word	4
	.word	_Label_1399
	.word	-136
	.word	4
	.word	_Label_1400
	.word	-140
	.word	4
	.word	_Label_1401
	.word	-144
	.word	4
	.word	_Label_1402
	.word	-148
	.word	4
	.word	_Label_1403
	.word	-152
	.word	4
	.word	_Label_1404
	.word	-156
	.word	4
	.word	0
_Label_1365:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1366:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1367:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1404:
	.byte	'P'
	.ascii	"file\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	17,r1
_Label_3843:
	push	r0
	sub	r1,1,r1
	bne	_Label_3843
	mov	2200,r13		! source line 2200
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1408		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1408
	jmp	_Label_1405
_Label_1408:
!   if fileDesc <= 9 then goto _Label_1407		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1407
	jmp	_Label_1405
_Label_1407:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1411 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1410 = *_temp_1411  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1410) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1412 = _temp_1410 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1412 [fileDesc ] into _temp_1413
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_1409 = *_temp_1413  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1409) then goto _Label_1405
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1405
	jmp	_Label_1406
_Label_1405:
	jmp	_Label_1414
_Label_1406:
! ELSE...
	mov	2204,r13		! source line 2204
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1417 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1416 = *_temp_1417  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1416) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = _temp_1416 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1418 [fileDesc ] into _temp_1419
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1415 = *_temp_1419  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1420 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1415  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1421 = *_temp_1422  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1421) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1423 = _temp_1421 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1423 [fileDesc ] into _temp_1424
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_1424 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1414:
! RETURN STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1425
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1426
	.word	8
	.word	4
	.word	_Label_1427
	.word	-12
	.word	4
	.word	_Label_1428
	.word	-16
	.word	4
	.word	_Label_1429
	.word	-20
	.word	4
	.word	_Label_1430
	.word	-24
	.word	4
	.word	_Label_1431
	.word	-28
	.word	4
	.word	_Label_1432
	.word	-32
	.word	4
	.word	_Label_1433
	.word	-36
	.word	4
	.word	_Label_1434
	.word	-40
	.word	4
	.word	_Label_1435
	.word	-44
	.word	4
	.word	_Label_1436
	.word	-48
	.word	4
	.word	_Label_1437
	.word	-52
	.word	4
	.word	_Label_1438
	.word	-56
	.word	4
	.word	_Label_1439
	.word	-60
	.word	4
	.word	_Label_1440
	.word	-64
	.word	4
	.word	_Label_1441
	.word	-68
	.word	4
	.word	0
_Label_1425:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1426:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_186_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3844:
	push	r0
	sub	r1,1,r1
	bne	_Label_3844
	mov	2797,r13		! source line 2797
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1442 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1442  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
!   _temp_1443 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1443) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1445 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1445) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1444 = *_temp_1445  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1443 = _temp_1444  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0AS",r10
!   _temp_1446 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1446) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1448) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1447 = *_temp_1448  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1446 = _temp_1447  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0AS",r10
!   _temp_1449 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1449) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1451 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1451) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1450 = *_temp_1451  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1449 = _temp_1450  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1452
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1453
	.word	8
	.word	4
	.word	_Label_1454
	.word	12
	.word	4
	.word	_Label_1455
	.word	-16
	.word	4
	.word	_Label_1456
	.word	-9
	.word	1
	.word	_Label_1457
	.word	-20
	.word	4
	.word	_Label_1458
	.word	-24
	.word	4
	.word	_Label_1459
	.word	-10
	.word	1
	.word	_Label_1460
	.word	-28
	.word	4
	.word	_Label_1461
	.word	-32
	.word	4
	.word	_Label_1462
	.word	-11
	.word	1
	.word	_Label_1463
	.word	-36
	.word	4
	.word	_Label_1464
	.word	-12
	.word	1
	.word	_Label_1465
	.word	-40
	.word	4
	.word	_Label_1466
	.word	-44
	.word	4
	.word	0
_Label_1452:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1453:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1454:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1456:
	.byte	'C'
	.ascii	"_temp_1450\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1459:
	.byte	'C'
	.ascii	"_temp_1447\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1462:
	.byte	'C'
	.ascii	"_temp_1444\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1464:
	.byte	'C'
	.ascii	"_temp_1442\0"
	.align
_Label_1465:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1466:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_185_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_printFCB,r1
	push	r1
	mov	3,r1
_Label_3845:
	push	r0
	sub	r1,1,r1
	bne	_Label_3845
	mov	2807,r13		! source line 2807
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1468 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1467 = *_temp_1468  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1467  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_printFCB:
	.word	_sourceFileName
	.word	_Label_1469
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1470
	.word	8
	.word	4
	.word	_Label_1471
	.word	-12
	.word	4
	.word	_Label_1472
	.word	-16
	.word	4
	.word	0
_Label_1469:
	.ascii	"printFCB\0"
	.align
_Label_1470:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_184_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_printOpen,r1
	push	r1
	mov	4,r1
_Label_3846:
	push	r0
	sub	r1,1,r1
	bne	_Label_3846
	mov	2812,r13		! source line 2812
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1473 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1474 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1474  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1475 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2815,r13		! source line 2815
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_printOpen:
	.word	_sourceFileName
	.word	_Label_1476
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1477
	.word	8
	.word	4
	.word	_Label_1478
	.word	-12
	.word	4
	.word	_Label_1479
	.word	-16
	.word	4
	.word	_Label_1480
	.word	-20
	.word	4
	.word	0
_Label_1476:
	.ascii	"printOpen\0"
	.align
_Label_1477:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1481
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1481:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1482
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1482:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3847:
	push	r0
	sub	r1,1,r1
	bne	_Label_3847
	mov	275,r13		! source line 275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1484		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1484
!	jmp	_Label_1483
_Label_1483:
! THEN...
	mov	277,r13		! source line 277
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1485 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	277,r13		! source line 277
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1484:
! ASSIGNMENT STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	280,r13		! source line 280
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
	mov	280,r13		! source line 280
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_1487
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1488
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1489
	.word	12
	.word	4
	.word	_Label_1490
	.word	-12
	.word	4
	.word	_Label_1491
	.word	-16
	.word	4
	.word	0
_Label_1487:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1488:
	.ascii	"Pself\0"
	.align
_Label_1489:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3848:
	push	r0
	sub	r1,1,r1
	bne	_Label_3848
	mov	285,r13		! source line 285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	289,r13		! source line 289
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1493		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1493
!	jmp	_Label_1492
_Label_1492:
! THEN...
	mov	291,r13		! source line 291
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1494 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	291,r13		! source line 291
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1493:
! ASSIGNMENT STATEMENT...
	mov	293,r13		! source line 293
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
	mov	294,r13		! source line 294
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1496		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1496
!	jmp	_Label_1495
_Label_1495:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
	mov	295,r13		! source line 295
	mov	"\0\0SE",r10
!   _temp_1497 = &waitingThreads
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
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1498 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1498 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0SE",r10
!   _temp_1499 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_1496:
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_1500
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1502
	.word	-12
	.word	4
	.word	_Label_1503
	.word	-16
	.word	4
	.word	_Label_1504
	.word	-20
	.word	4
	.word	_Label_1505
	.word	-24
	.word	4
	.word	_Label_1506
	.word	-28
	.word	4
	.word	_Label_1507
	.word	-32
	.word	4
	.word	0
_Label_1500:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1501:
	.ascii	"Pself\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1506:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1507:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3849:
	push	r0
	sub	r1,1,r1
	bne	_Label_3849
	mov	304,r13		! source line 304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1509		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1509
!	jmp	_Label_1508
_Label_1508:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	309,r13		! source line 309
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1509:
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
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
	mov	312,r13		! source line 312
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1512		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1512
!	jmp	_Label_1511
_Label_1511:
! THEN...
	mov	313,r13		! source line 313
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   _temp_1513 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1512:
! ASSIGNMENT STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_1514
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1516
	.word	-12
	.word	4
	.word	_Label_1517
	.word	-16
	.word	4
	.word	_Label_1518
	.word	-20
	.word	4
	.word	0
_Label_1514:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1515:
	.ascii	"Pself\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1518:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1519
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1519:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1520
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1520:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3850:
	push	r0
	sub	r1,1,r1
	bne	_Label_3850
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	340,r13		! source line 340
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
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_1522
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1524
	.word	-12
	.word	4
	.word	0
_Label_1522:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1523:
	.ascii	"Pself\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3851:
	push	r0
	sub	r1,1,r1
	bne	_Label_3851
	mov	345,r13		! source line 345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1526		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1526
!	jmp	_Label_1525
_Label_1525:
! THEN...
	mov	349,r13		! source line 349
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1527 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1527  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	349,r13		! source line 349
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1526:
! ASSIGNMENT STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1531		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1531
!   _temp_1530 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1532
_Label_1531:
!   _temp_1530 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1532:
!   if _temp_1530 then goto _Label_1529 else goto _Label_1528
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1528
	jmp	_Label_1529
_Label_1528:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1533
_Label_1529:
! ELSE...
	mov	355,r13		! source line 355
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0SE",r10
!   _temp_1534 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	356,r13		! source line 356
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1533:
! ASSIGNMENT STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_1535
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1536
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1537
	.word	-16
	.word	4
	.word	_Label_1538
	.word	-9
	.word	1
	.word	_Label_1539
	.word	-20
	.word	4
	.word	_Label_1540
	.word	-24
	.word	4
	.word	0
_Label_1535:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1536:
	.ascii	"Pself\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1538:
	.byte	'C'
	.ascii	"_temp_1530\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1540:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3852:
	push	r0
	sub	r1,1,r1
	bne	_Label_3852
	mov	363,r13		! source line 363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1542		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1542
!	jmp	_Label_1541
_Label_1541:
! THEN...
	mov	368,r13		! source line 368
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1543 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1543  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	368,r13		! source line 368
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1542:
! ASSIGNMENT STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	370,r13		! source line 370
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
	mov	371,r13		! source line 371
	mov	"\0\0SE",r10
!   _temp_1544 = &waitingThreads
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
! IF STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1546		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1546
!	jmp	_Label_1545
_Label_1545:
! THEN...
	mov	373,r13		! source line 373
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1547 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1547 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0SE",r10
!   _temp_1548 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
! ASSIGNMENT STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1549
_Label_1546:
! ELSE...
	mov	377,r13		! source line 377
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1549:
! ASSIGNMENT STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	379,r13		! source line 379
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_1550
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1552
	.word	-12
	.word	4
	.word	_Label_1553
	.word	-16
	.word	4
	.word	_Label_1554
	.word	-20
	.word	4
	.word	_Label_1555
	.word	-24
	.word	4
	.word	_Label_1556
	.word	-28
	.word	4
	.word	_Label_1557
	.word	-32
	.word	4
	.word	0
_Label_1550:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1551:
	.ascii	"Pself\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1556:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1557:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3853:
	push	r0
	sub	r1,1,r1
	bne	_Label_3853
	mov	384,r13		! source line 384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1560		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1560
!	jmp	_Label_1559
_Label_1559:
!   _temp_1558 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1561
_Label_1560:
!   _temp_1558 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1561:
!   ReturnResult: _temp_1558  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_1562
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1563
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1564
	.word	-9
	.word	1
	.word	0
_Label_1562:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1563:
	.ascii	"Pself\0"
	.align
_Label_1564:
	.byte	'C'
	.ascii	"_temp_1558\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1565
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1565:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1566
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1566:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3854:
	push	r0
	sub	r1,1,r1
	bne	_Label_3854
	mov	425,r13		! source line 425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	426,r13		! source line 426
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
	mov	426,r13		! source line 426
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_1568
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1570
	.word	-12
	.word	4
	.word	0
_Label_1568:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1569:
	.ascii	"Pself\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3855:
	push	r0
	sub	r1,1,r1
	bne	_Label_3855
	mov	431,r13		! source line 431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0IF",r10
	mov	434,r13		! source line 434
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
!   Retrieve Result: targetName=_temp_1573  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1573 then goto _Label_1572 else goto _Label_1571
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1571
	jmp	_Label_1572
_Label_1571:
! THEN...
	mov	435,r13		! source line 435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1574 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1574  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	435,r13		! source line 435
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1572:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	438,r13		! source line 438
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
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   _temp_1575 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	441,r13		! source line 441
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
	mov	442,r13		! source line 442
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_1576
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1578
	.word	12
	.word	4
	.word	_Label_1579
	.word	-16
	.word	4
	.word	_Label_1580
	.word	-20
	.word	4
	.word	_Label_1581
	.word	-9
	.word	1
	.word	_Label_1582
	.word	-24
	.word	4
	.word	0
_Label_1576:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1577:
	.ascii	"Pself\0"
	.align
_Label_1578:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1581:
	.byte	'C'
	.ascii	"_temp_1573\0"
	.align
_Label_1582:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3856:
	push	r0
	sub	r1,1,r1
	bne	_Label_3856
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0IF",r10
	mov	451,r13		! source line 451
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
!   Retrieve Result: targetName=_temp_1585  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1585 then goto _Label_1584 else goto _Label_1583
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1583
	jmp	_Label_1584
_Label_1583:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1586 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1586  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	452,r13		! source line 452
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1584:
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
	mov	455,r13		! source line 455
	mov	"\0\0SE",r10
!   _temp_1587 = &waitingThreads
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
	mov	456,r13		! source line 456
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1589		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1589
!	jmp	_Label_1588
_Label_1588:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1590 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1590 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0SE",r10
!   _temp_1591 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_1589:
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	460,r13		! source line 460
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_1592
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1594
	.word	12
	.word	4
	.word	_Label_1595
	.word	-16
	.word	4
	.word	_Label_1596
	.word	-20
	.word	4
	.word	_Label_1597
	.word	-24
	.word	4
	.word	_Label_1598
	.word	-28
	.word	4
	.word	_Label_1599
	.word	-9
	.word	1
	.word	_Label_1600
	.word	-32
	.word	4
	.word	_Label_1601
	.word	-36
	.word	4
	.word	0
_Label_1592:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1593:
	.ascii	"Pself\0"
	.align
_Label_1594:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1599:
	.byte	'C'
	.ascii	"_temp_1585\0"
	.align
_Label_1600:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1601:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3857:
	push	r0
	sub	r1,1,r1
	bne	_Label_3857
	mov	465,r13		! source line 465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0IF",r10
	mov	469,r13		! source line 469
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
!   Retrieve Result: targetName=_temp_1604  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1604 then goto _Label_1603 else goto _Label_1602
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1602
	jmp	_Label_1603
_Label_1602:
! THEN...
	mov	470,r13		! source line 470
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1605 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	470,r13		! source line 470
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1603:
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	472,r13		! source line 472
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0WH",r10
_Label_1606:
!	jmp	_Label_1607
_Label_1607:
	mov	473,r13		! source line 473
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   _temp_1609 = &waitingThreads
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
	mov	475,r13		! source line 475
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1610
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1610
	jmp	_Label_1611
_Label_1610:
! THEN...
	mov	476,r13		! source line 476
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0BR",r10
	jmp	_Label_1608
! END IF...
_Label_1611:
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1612 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1612 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0SE",r10
!   _temp_1613 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	jmp	_Label_1606
_Label_1608:
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_1614
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1616
	.word	12
	.word	4
	.word	_Label_1617
	.word	-16
	.word	4
	.word	_Label_1618
	.word	-20
	.word	4
	.word	_Label_1619
	.word	-24
	.word	4
	.word	_Label_1620
	.word	-28
	.word	4
	.word	_Label_1621
	.word	-9
	.word	1
	.word	_Label_1622
	.word	-32
	.word	4
	.word	_Label_1623
	.word	-36
	.word	4
	.word	0
_Label_1614:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1615:
	.ascii	"Pself\0"
	.align
_Label_1616:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1621:
	.byte	'C'
	.ascii	"_temp_1604\0"
	.align
_Label_1622:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1623:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1624
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1624:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1625
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1625:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3858:
	push	r0
	sub	r1,1,r1
	bne	_Label_3858
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_1626 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1626) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1626 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   _temp_1627 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1627 [0 ] into _temp_1628
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1628 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   _temp_1629 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1629 [999 ] into _temp_1630
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1630 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   _temp_1631 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1631 [999 ] into _temp_1632
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_1632		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   _temp_1633 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1635 = &_temp_1634
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1635 = _temp_1635 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1637:
!   Data Move: *_temp_1635 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1635 = _temp_1635 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1636 = _temp_1636 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1636) then goto _Label_1637
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1637
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1638 = &_temp_1634
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3859
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3859:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1633 = *_temp_1638  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3860:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3860
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_1639 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1641 = &_temp_1640
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1641 = _temp_1641 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1643:
!   Data Move: *_temp_1641 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1641 = _temp_1641 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1642 = _temp_1642 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1642) then goto _Label_1643
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1643
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1644 = &_temp_1640
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3861
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3861:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1639 = *_temp_1644  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3862:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3862
! RETURN STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1645
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1647
	.word	12
	.word	4
	.word	_Label_1648
	.word	-12
	.word	4
	.word	_Label_1649
	.word	-16
	.word	4
	.word	_Label_1650
	.word	-20
	.word	4
	.word	_Label_1651
	.word	-84
	.word	64
	.word	_Label_1652
	.word	-88
	.word	4
	.word	_Label_1653
	.word	-92
	.word	4
	.word	_Label_1654
	.word	-96
	.word	4
	.word	_Label_1655
	.word	-100
	.word	4
	.word	_Label_1656
	.word	-156
	.word	56
	.word	_Label_1657
	.word	-160
	.word	4
	.word	_Label_1658
	.word	-164
	.word	4
	.word	_Label_1659
	.word	-168
	.word	4
	.word	_Label_1660
	.word	-172
	.word	4
	.word	_Label_1661
	.word	-176
	.word	4
	.word	_Label_1662
	.word	-180
	.word	4
	.word	_Label_1663
	.word	-184
	.word	4
	.word	_Label_1664
	.word	-188
	.word	4
	.word	0
_Label_1645:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1646:
	.ascii	"Pself\0"
	.align
_Label_1647:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3863:
	push	r0
	sub	r1,1,r1
	bne	_Label_3863
	mov	511,r13		! source line 511
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	522,r13		! source line 522
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1665 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1665  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1667 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1666  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	530,r13		! source line 530
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1668
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1669
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1670
	.word	12
	.word	4
	.word	_Label_1671
	.word	16
	.word	4
	.word	_Label_1672
	.word	-12
	.word	4
	.word	_Label_1673
	.word	-16
	.word	4
	.word	_Label_1674
	.word	-20
	.word	4
	.word	_Label_1675
	.word	-24
	.word	4
	.word	_Label_1676
	.word	-28
	.word	4
	.word	0
_Label_1668:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1669:
	.ascii	"Pself\0"
	.align
_Label_1670:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1671:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1675:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1676:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3864:
	push	r0
	sub	r1,1,r1
	bne	_Label_3864
	mov	535,r13		! source line 535
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1679 == _P_Kernel_currentThread then goto _Label_1678		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1678
!	jmp	_Label_1677
_Label_1677:
! THEN...
	mov	552,r13		! source line 552
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1680 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	552,r13		! source line 552
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1678:
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	554,r13		! source line 554
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0AS",r10
	mov	558,r13		! source line 558
	mov	"\0\0SE",r10
!   _temp_1681 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1683		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1683
!	jmp	_Label_1682
_Label_1682:
! THEN...
	mov	563,r13		! source line 563
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1685		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1685
!	jmp	_Label_1684
_Label_1684:
! THEN...
	mov	564,r13		! source line 564
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1686 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	564,r13		! source line 564
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1685:
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1688 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1687  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	568,r13		! source line 568
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1683:
! ASSIGNMENT STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	570,r13		! source line 570
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1689
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1690
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1691
	.word	-12
	.word	4
	.word	_Label_1692
	.word	-16
	.word	4
	.word	_Label_1693
	.word	-20
	.word	4
	.word	_Label_1694
	.word	-24
	.word	4
	.word	_Label_1695
	.word	-28
	.word	4
	.word	_Label_1696
	.word	-32
	.word	4
	.word	_Label_1697
	.word	-36
	.word	4
	.word	_Label_1698
	.word	-40
	.word	4
	.word	_Label_1699
	.word	-44
	.word	4
	.word	0
_Label_1689:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1690:
	.ascii	"Pself\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1697:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1698:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1699:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3865:
	push	r0
	sub	r1,1,r1
	bne	_Label_3865
	mov	575,r13		! source line 575
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1701		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1701
!	jmp	_Label_1700
_Label_1700:
! THEN...
	mov	588,r13		! source line 588
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1702 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	588,r13		! source line 588
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1701:
! IF STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1705 == _P_Kernel_currentThread then goto _Label_1704		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1704
!	jmp	_Label_1703
_Label_1703:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1706 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1706  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	592,r13		! source line 592
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1704:
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0AS",r10
	mov	598,r13		! source line 598
	mov	"\0\0SE",r10
!   _temp_1707 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1708
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1708
	jmp	_Label_1709
_Label_1708:
! THEN...
	mov	600,r13		! source line 600
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1710 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1710  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	600,r13		! source line 600
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1709:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1711
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1712
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1713
	.word	-12
	.word	4
	.word	_Label_1714
	.word	-16
	.word	4
	.word	_Label_1715
	.word	-20
	.word	4
	.word	_Label_1716
	.word	-24
	.word	4
	.word	_Label_1717
	.word	-28
	.word	4
	.word	_Label_1718
	.word	-32
	.word	4
	.word	0
_Label_1711:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1712:
	.ascii	"Pself\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1718:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3866:
	push	r0
	sub	r1,1,r1
	bne	_Label_3866
	mov	607,r13		! source line 607
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0IF",r10
!   _temp_1722 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1722 [0 ] into _temp_1723
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1721 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1721 == 606348324 then goto _Label_1720		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1720
!	jmp	_Label_1719
_Label_1719:
! THEN...
	mov	614,r13		! source line 614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1724 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1724  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	614,r13		! source line 614
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1725
_Label_1720:
! ELSE...
	mov	615,r13		! source line 615
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0IF",r10
!   _temp_1729 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1729 [999 ] into _temp_1730
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1728 = *_temp_1730  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1728 == 606348324 then goto _Label_1727		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1727
!	jmp	_Label_1726
_Label_1726:
! THEN...
	mov	616,r13		! source line 616
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1731 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	616,r13		! source line 616
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1727:
! END IF...
_Label_1725:
! RETURN STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1732
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1734
	.word	-12
	.word	4
	.word	_Label_1735
	.word	-16
	.word	4
	.word	_Label_1736
	.word	-20
	.word	4
	.word	_Label_1737
	.word	-24
	.word	4
	.word	_Label_1738
	.word	-28
	.word	4
	.word	_Label_1739
	.word	-32
	.word	4
	.word	_Label_1740
	.word	-36
	.word	4
	.word	_Label_1741
	.word	-40
	.word	4
	.word	0
_Label_1732:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1733:
	.ascii	"Pself\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3867:
	push	r0
	sub	r1,1,r1
	bne	_Label_3867
	mov	622,r13		! source line 622
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	628,r13		! source line 628
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1742 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1742  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1743 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1743  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1744  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1745 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1745  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1746 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1746  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1751 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1752 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1751  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1747:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1752 then goto _Label_1750		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1750
_Label_1748:
	mov	635,r13		! source line 635
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1753 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1754 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1755 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1755  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1757 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1757 [i ] into _temp_1758
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1756 = *_temp_1758  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1756  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1759 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1759  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1761 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1761 [i ] into _temp_1762
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1760 = *_temp_1762  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1760  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1763 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1763  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1749:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1747
! END FOR
_Label_1750:
! CALL STATEMENT...
!   _temp_1764 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_1765 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1764  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1765  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1766 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_1768 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1768 [0 ] into _temp_1769
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1767 = _temp_1769		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1766  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1767  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	646,r13		! source line 646
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1772
	cmp	r1,2
	be	_Label_1773
	cmp	r1,3
	be	_Label_1774
	cmp	r1,4
	be	_Label_1775
	cmp	r1,5
	be	_Label_1776
	jmp	_Label_1770
! CASE 1...
_Label_1772:
! CALL STATEMENT...
!   _temp_1777 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1777  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0BR",r10
	jmp	_Label_1771
! CASE 2...
_Label_1773:
! CALL STATEMENT...
!   _temp_1778 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0BR",r10
	jmp	_Label_1771
! CASE 3...
_Label_1774:
! CALL STATEMENT...
!   _temp_1779 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1779  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0BR",r10
	jmp	_Label_1771
! CASE 4...
_Label_1775:
! CALL STATEMENT...
!   _temp_1780 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1780  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_1771
! CASE 5...
_Label_1776:
! CALL STATEMENT...
!   _temp_1781 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1781  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_1771
! DEFAULT CASE...
_Label_1770:
! CALL STATEMENT...
!   _temp_1782 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1782  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	663,r13		! source line 663
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1771:
! CALL STATEMENT...
!   _temp_1783 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1783  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1784 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1784  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1789 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1790 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1789  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1785:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1790 then goto _Label_1788		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1788
_Label_1786:
	mov	669,r13		! source line 669
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1791 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1792 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1792  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1793 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1795 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1795 [i ] into _temp_1796
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1794 = *_temp_1796  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1797 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1797  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1799 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1799 [i ] into _temp_1800
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1798 = *_temp_1800  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1801 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1801  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1787:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1785
! END FOR
_Label_1788:
! ASSIGNMENT STATEMENT...
	mov	678,r13		! source line 678
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	678,r13		! source line 678
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1802
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1803
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1804
	.word	-12
	.word	4
	.word	_Label_1805
	.word	-16
	.word	4
	.word	_Label_1806
	.word	-20
	.word	4
	.word	_Label_1807
	.word	-24
	.word	4
	.word	_Label_1808
	.word	-28
	.word	4
	.word	_Label_1809
	.word	-32
	.word	4
	.word	_Label_1810
	.word	-36
	.word	4
	.word	_Label_1811
	.word	-40
	.word	4
	.word	_Label_1812
	.word	-44
	.word	4
	.word	_Label_1813
	.word	-48
	.word	4
	.word	_Label_1814
	.word	-52
	.word	4
	.word	_Label_1815
	.word	-56
	.word	4
	.word	_Label_1816
	.word	-60
	.word	4
	.word	_Label_1817
	.word	-64
	.word	4
	.word	_Label_1818
	.word	-68
	.word	4
	.word	_Label_1819
	.word	-72
	.word	4
	.word	_Label_1820
	.word	-76
	.word	4
	.word	_Label_1821
	.word	-80
	.word	4
	.word	_Label_1822
	.word	-84
	.word	4
	.word	_Label_1823
	.word	-88
	.word	4
	.word	_Label_1824
	.word	-92
	.word	4
	.word	_Label_1825
	.word	-96
	.word	4
	.word	_Label_1826
	.word	-100
	.word	4
	.word	_Label_1827
	.word	-104
	.word	4
	.word	_Label_1828
	.word	-108
	.word	4
	.word	_Label_1829
	.word	-112
	.word	4
	.word	_Label_1830
	.word	-116
	.word	4
	.word	_Label_1831
	.word	-120
	.word	4
	.word	_Label_1832
	.word	-124
	.word	4
	.word	_Label_1833
	.word	-128
	.word	4
	.word	_Label_1834
	.word	-132
	.word	4
	.word	_Label_1835
	.word	-136
	.word	4
	.word	_Label_1836
	.word	-140
	.word	4
	.word	_Label_1837
	.word	-144
	.word	4
	.word	_Label_1838
	.word	-148
	.word	4
	.word	_Label_1839
	.word	-152
	.word	4
	.word	_Label_1840
	.word	-156
	.word	4
	.word	_Label_1841
	.word	-160
	.word	4
	.word	_Label_1842
	.word	-164
	.word	4
	.word	_Label_1843
	.word	-168
	.word	4
	.word	_Label_1844
	.word	-172
	.word	4
	.word	_Label_1845
	.word	-176
	.word	4
	.word	_Label_1846
	.word	-180
	.word	4
	.word	_Label_1847
	.word	-184
	.word	4
	.word	_Label_1848
	.word	-188
	.word	4
	.word	_Label_1849
	.word	-192
	.word	4
	.word	_Label_1850
	.word	-196
	.word	4
	.word	0
_Label_1802:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1803:
	.ascii	"Pself\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1849:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1851
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1851:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1852
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1852:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11477,r1
_Label_3868:
	push	r0
	sub	r1,1,r1
	bne	_Label_3868
	mov	733,r13		! source line 733
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   _temp_1853 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1855 = &_temp_1854
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1855 = _temp_1855 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1857 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3869:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3869
!   _temp_1857 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1859:
!   Data Move: *_temp_1855 = _temp_1857  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3870:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3870
!   _temp_1855 = _temp_1855 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1856 = _temp_1856 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1856) then goto _Label_1859
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1859
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1860 = &_temp_1854
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3871
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3871:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1853 = *_temp_1860  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3872:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3872
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_1864 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
!   _temp_1865 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1870 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1871 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1870  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_1866:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1871 then goto _Label_1869		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1869
_Label_1867:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0SE",r10
!   _temp_1872 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-48]
!   _temp_1873 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1873 [i ] into _temp_1874
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1872  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0AS",r10
!   _temp_1875 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1875 [i ] into _temp_1876
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1877 = _temp_1876 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1877 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1879 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1879 [i ] into _temp_1880
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1878 = _temp_1880		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1881 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1878  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1868:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_1866
! END FOR
_Label_1869:
! RETURN STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0RE",r10
	set	45912,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1882
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_1883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1884
	.word	-12
	.word	4
	.word	_Label_1885
	.word	-16
	.word	4
	.word	_Label_1886
	.word	-20
	.word	4
	.word	_Label_1887
	.word	-24
	.word	4
	.word	_Label_1888
	.word	-28
	.word	4
	.word	_Label_1889
	.word	-32
	.word	4
	.word	_Label_1890
	.word	-36
	.word	4
	.word	_Label_1891
	.word	-40
	.word	4
	.word	_Label_1892
	.word	-44
	.word	4
	.word	_Label_1893
	.word	-48
	.word	4
	.word	_Label_1894
	.word	-52
	.word	4
	.word	_Label_1895
	.word	-56
	.word	4
	.word	_Label_1896
	.word	-60
	.word	4
	.word	_Label_1897
	.word	-64
	.word	4
	.word	_Label_1898
	.word	-68
	.word	4
	.word	_Label_1899
	.word	-72
	.word	4
	.word	_Label_1900
	.word	-76
	.word	4
	.word	_Label_1901
	.word	-80
	.word	4
	.word	_Label_1902
	.word	-84
	.word	4
	.word	_Label_1903
	.word	-4248
	.word	4164
	.word	_Label_1904
	.word	-4252
	.word	4
	.word	_Label_1905
	.word	-4256
	.word	4
	.word	_Label_1906
	.word	-45900
	.word	41644
	.word	_Label_1907
	.word	-45904
	.word	4
	.word	_Label_1908
	.word	-45908
	.word	4
	.word	0
_Label_1882:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1883:
	.ascii	"Pself\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1908:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3873:
	push	r0
	sub	r1,1,r1
	bne	_Label_3873
	mov	756,r13		! source line 756
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1909 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1909  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1914 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1915 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1914  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1910:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1915 then goto _Label_1913		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1913
_Label_1911:
	mov	765,r13		! source line 765
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1916 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1916  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1917 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1917  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1919 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1919 [i ] into _temp_1920
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1918 = _temp_1920		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1918  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CA",r10
	call	_function_190_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1912:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1910
! END FOR
_Label_1913:
! CALL STATEMENT...
!   _temp_1921 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1921  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1922 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1923 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1922  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1924
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1926
	.word	-12
	.word	4
	.word	_Label_1927
	.word	-16
	.word	4
	.word	_Label_1928
	.word	-20
	.word	4
	.word	_Label_1929
	.word	-24
	.word	4
	.word	_Label_1930
	.word	-28
	.word	4
	.word	_Label_1931
	.word	-32
	.word	4
	.word	_Label_1932
	.word	-36
	.word	4
	.word	_Label_1933
	.word	-40
	.word	4
	.word	_Label_1934
	.word	-44
	.word	4
	.word	_Label_1935
	.word	-48
	.word	4
	.word	_Label_1936
	.word	-52
	.word	4
	.word	_Label_1937
	.word	-56
	.word	4
	.word	_Label_1938
	.word	-60
	.word	4
	.word	0
_Label_1924:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1925:
	.ascii	"Pself\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1937:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1938:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3874:
	push	r0
	sub	r1,1,r1
	bne	_Label_3874
	mov	779,r13		! source line 779
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_1939 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0WH",r10
_Label_1940:
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1943 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1941 else goto _Label_1942
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1942
	jmp	_Label_1941
_Label_1941:
	mov	787,r13		! source line 787
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1944 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1945 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1944  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1940
_Label_1942:
! ASSIGNMENT STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0AS",r10
	mov	790,r13		! source line 790
	mov	"\0\0SE",r10
!   _temp_1946 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1947 = threadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1947 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
!   _temp_1948 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0RE",r10
!   ReturnResult: threadPtr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1949
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1951
	.word	-12
	.word	4
	.word	_Label_1952
	.word	-16
	.word	4
	.word	_Label_1953
	.word	-20
	.word	4
	.word	_Label_1954
	.word	-24
	.word	4
	.word	_Label_1955
	.word	-28
	.word	4
	.word	_Label_1956
	.word	-32
	.word	4
	.word	_Label_1957
	.word	-36
	.word	4
	.word	_Label_1958
	.word	-40
	.word	4
	.word	0
_Label_1949:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1950:
	.ascii	"Pself\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1958:
	.byte	'P'
	.ascii	"threadPtr\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3875:
	push	r0
	sub	r1,1,r1
	bne	_Label_3875
	mov	798,r13		! source line 798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_1959 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1960 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1960 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1961 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_1962 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1963 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1962  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_1964 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1965
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1967
	.word	12
	.word	4
	.word	_Label_1968
	.word	-12
	.word	4
	.word	_Label_1969
	.word	-16
	.word	4
	.word	_Label_1970
	.word	-20
	.word	4
	.word	_Label_1971
	.word	-24
	.word	4
	.word	_Label_1972
	.word	-28
	.word	4
	.word	_Label_1973
	.word	-32
	.word	4
	.word	0
_Label_1965:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1966:
	.ascii	"Pself\0"
	.align
_Label_1967:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1974
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1974:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1975
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1975:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	18,r1
_Label_3876:
	push	r0
	sub	r1,1,r1
	bne	_Label_3876
	mov	820,r13		! source line 820
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3877:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3877
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_1977 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0AS",r10
!   _temp_1978 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1980 = &_temp_1979
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1980 = _temp_1980 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1982:
!   Data Move: *_temp_1980 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1980 = _temp_1980 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1981 = _temp_1981 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1981) then goto _Label_1982
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1982
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1983 = &_temp_1979
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3878
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3878:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1978 = *_temp_1983  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3879:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3879
! RETURN STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1984
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1986
	.word	-12
	.word	4
	.word	_Label_1987
	.word	-16
	.word	4
	.word	_Label_1988
	.word	-20
	.word	4
	.word	_Label_1989
	.word	-64
	.word	44
	.word	_Label_1990
	.word	-68
	.word	4
	.word	_Label_1991
	.word	-72
	.word	4
	.word	_Label_1992
	.word	-76
	.word	4
	.word	0
_Label_1984:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1985:
	.ascii	"Pself\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3880:
	push	r0
	sub	r1,1,r1
	bne	_Label_3880
	mov	832,r13		! source line 832
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	837,r13		! source line 837
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1993) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0SE",r10
!   _temp_1994 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1995 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CA",r10
	call	_function_190_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1996
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1998
	.word	-12
	.word	4
	.word	_Label_1999
	.word	-16
	.word	4
	.word	_Label_2000
	.word	-20
	.word	4
	.word	0
_Label_1996:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1997:
	.ascii	"Pself\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3881:
	push	r0
	sub	r1,1,r1
	bne	_Label_3881
	mov	855,r13		! source line 855
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2001 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2001  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2002  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2003 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2004 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2006		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2006
!	jmp	_Label_2005
_Label_2005:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2007 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2007  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2008
_Label_2006:
! ELSE...
	mov	866,r13		! source line 866
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2010		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2010
!	jmp	_Label_2009
_Label_2009:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2011 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2011  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2012
_Label_2010:
! ELSE...
	mov	868,r13		! source line 868
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2014		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2014
!	jmp	_Label_2013
_Label_2013:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2015 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2016
_Label_2014:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2017 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	871,r13		! source line 871
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2016:
! END IF...
_Label_2012:
! END IF...
_Label_2008:
! CALL STATEMENT...
!   _temp_2018 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2018  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2019 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2019  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_2020
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2022
	.word	-12
	.word	4
	.word	_Label_2023
	.word	-16
	.word	4
	.word	_Label_2024
	.word	-20
	.word	4
	.word	_Label_2025
	.word	-24
	.word	4
	.word	_Label_2026
	.word	-28
	.word	4
	.word	_Label_2027
	.word	-32
	.word	4
	.word	_Label_2028
	.word	-36
	.word	4
	.word	_Label_2029
	.word	-40
	.word	4
	.word	_Label_2030
	.word	-44
	.word	4
	.word	_Label_2031
	.word	-48
	.word	4
	.word	0
_Label_2020:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2021:
	.ascii	"Pself\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2032
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2032:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2033
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2033:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	489,r1
_Label_3882:
	push	r0
	sub	r1,1,r1
	bne	_Label_3882
	mov	888,r13		! source line 888
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1688,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1688]
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1708,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1708]
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1736,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1736]
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   _temp_2037 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1940]
!   NEW ARRAY Constructor...
!   _temp_2039 = &_temp_2038
	add	r14,-1936,r1
	store	r1,[r14+-252]
!   _temp_2039 = _temp_2039 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2041 = zeros  (sizeInBytes=168)
	add	r14,-244,r4
	mov	42,r3
_Label_3883:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3883
!   _temp_2041 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-244]
	mov	10,r1
	store	r1,[r14+-248]
_Label_2043:
!   Data Move: *_temp_2039 = _temp_2041  (sizeInBytes=168)
	add	r14,-244,r5
	load	[r14+-252],r4
	mov	42,r3
_Label_3884:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3884
!   _temp_2039 = _temp_2039 + 168
	load	[r14+-252],r1
	add	r1,168,r1
	store	r1,[r14+-252]
!   _temp_2040 = _temp_2040 + -1
	load	[r14+-248],r1
	add	r1,-1,r1
	store	r1,[r14+-248]
!   if intNotZero (_temp_2040) then goto _Label_2043
	load	[r14+-248],r1
	cmp	r1,r0
	bne	_Label_2043
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1936]
!   _temp_2044 = &_temp_2038
	add	r14,-1936,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1940],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3885
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3885:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2037 = *_temp_2044  (sizeInBytes=1684)
	load	[r14+-72],r5
	load	[r14+-1940],r4
	mov	421,r3
_Label_3886:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3886
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1724,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1724]
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_2046 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2047 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_2048 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2053 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2054 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2053  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1956]
_Label_2049:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2054 then goto _Label_2052		
	load	[r14+-1956],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2052
_Label_2050:
	mov	902,r13		! source line 902
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_2055 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2055 [i ] into _temp_2056
!     make sure index expr is >= 0
	load	[r14+-1956],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   _temp_2057 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2057 [i ] into _temp_2058
!     make sure index expr is >= 0
	load	[r14+-1956],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2059 = _temp_2058 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2059 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_2061 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2061 [i ] into _temp_2062
!     make sure index expr is >= 0
	load	[r14+-1956],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2060 = _temp_2062		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2063 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2060  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2051:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2049
! END FOR
_Label_2052:
! ASSIGNMENT STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1752]
! RETURN STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0RE",r10
	add	r15,1960,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2064
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2066
	.word	-12
	.word	4
	.word	_Label_2067
	.word	-16
	.word	4
	.word	_Label_2068
	.word	-20
	.word	4
	.word	_Label_2069
	.word	-24
	.word	4
	.word	_Label_2070
	.word	-28
	.word	4
	.word	_Label_2071
	.word	-32
	.word	4
	.word	_Label_2072
	.word	-36
	.word	4
	.word	_Label_2073
	.word	-40
	.word	4
	.word	_Label_2074
	.word	-44
	.word	4
	.word	_Label_2075
	.word	-48
	.word	4
	.word	_Label_2076
	.word	-52
	.word	4
	.word	_Label_2077
	.word	-56
	.word	4
	.word	_Label_2078
	.word	-60
	.word	4
	.word	_Label_2079
	.word	-64
	.word	4
	.word	_Label_2080
	.word	-68
	.word	4
	.word	_Label_2081
	.word	-72
	.word	4
	.word	_Label_2082
	.word	-76
	.word	4
	.word	_Label_2083
	.word	-244
	.word	168
	.word	_Label_2084
	.word	-248
	.word	4
	.word	_Label_2085
	.word	-252
	.word	4
	.word	_Label_2086
	.word	-1936
	.word	1684
	.word	_Label_2087
	.word	-1940
	.word	4
	.word	_Label_2088
	.word	-1944
	.word	4
	.word	_Label_2089
	.word	-1948
	.word	4
	.word	_Label_2090
	.word	-1952
	.word	4
	.word	_Label_2091
	.word	-1956
	.word	4
	.word	0
_Label_2064:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2065:
	.ascii	"Pself\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2091:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3887:
	push	r0
	sub	r1,1,r1
	bne	_Label_3887
	mov	912,r13		! source line 912
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2092 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2097 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2098 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2097  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2093:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2098 then goto _Label_2096		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2096
_Label_2094:
	mov	921,r13		! source line 921
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2099 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2100 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2100  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0SE",r10
!   _temp_2101 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2101 [i ] into _temp_2102
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2095:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2093
! END FOR
_Label_2096:
! CALL STATEMENT...
!   _temp_2103 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2104 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2105 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2104  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_2106
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2107
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2108
	.word	-12
	.word	4
	.word	_Label_2109
	.word	-16
	.word	4
	.word	_Label_2110
	.word	-20
	.word	4
	.word	_Label_2111
	.word	-24
	.word	4
	.word	_Label_2112
	.word	-28
	.word	4
	.word	_Label_2113
	.word	-32
	.word	4
	.word	_Label_2114
	.word	-36
	.word	4
	.word	_Label_2115
	.word	-40
	.word	4
	.word	_Label_2116
	.word	-44
	.word	4
	.word	_Label_2117
	.word	-48
	.word	4
	.word	_Label_2118
	.word	-52
	.word	4
	.word	_Label_2119
	.word	-56
	.word	4
	.word	0
_Label_2106:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2107:
	.ascii	"Pself\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2118:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2119:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3888:
	push	r0
	sub	r1,1,r1
	bne	_Label_3888
	mov	935,r13		! source line 935
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2120 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2120  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2125 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2126 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2125  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2121:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2126 then goto _Label_2124		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2124
_Label_2122:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2127 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2127  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0SE",r10
!   _temp_2128 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2128 [i ] into _temp_2129
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2123:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2121
! END FOR
_Label_2124:
! CALL STATEMENT...
!   _temp_2130 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2130  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_2131 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2132 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2131  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_2133
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2134
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2135
	.word	-12
	.word	4
	.word	_Label_2136
	.word	-16
	.word	4
	.word	_Label_2137
	.word	-20
	.word	4
	.word	_Label_2138
	.word	-24
	.word	4
	.word	_Label_2139
	.word	-28
	.word	4
	.word	_Label_2140
	.word	-32
	.word	4
	.word	_Label_2141
	.word	-36
	.word	4
	.word	_Label_2142
	.word	-40
	.word	4
	.word	_Label_2143
	.word	-44
	.word	4
	.word	_Label_2144
	.word	-48
	.word	4
	.word	_Label_2145
	.word	-52
	.word	4
	.word	0
_Label_2133:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2134:
	.ascii	"Pself\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2144:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3889:
	push	r0
	sub	r1,1,r1
	bne	_Label_3889
	mov	957,r13		! source line 957
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_2146 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0WH",r10
_Label_2147:
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2150 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2148 else goto _Label_2149
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2149
	jmp	_Label_2148
_Label_2148:
	mov	965,r13		! source line 965
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_2151 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2152 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2151  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2147
_Label_2149:
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2153 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2154 = processPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2154 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1752],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1752]
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2155 = processPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2155 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2156 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0RE",r10
!   ReturnResult: processPtr  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_2157
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2158
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2159
	.word	-12
	.word	4
	.word	_Label_2160
	.word	-16
	.word	4
	.word	_Label_2161
	.word	-20
	.word	4
	.word	_Label_2162
	.word	-24
	.word	4
	.word	_Label_2163
	.word	-28
	.word	4
	.word	_Label_2164
	.word	-32
	.word	4
	.word	_Label_2165
	.word	-36
	.word	4
	.word	_Label_2166
	.word	-40
	.word	4
	.word	_Label_2167
	.word	-44
	.word	4
	.word	0
_Label_2157:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2158:
	.ascii	"Pself\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2167:
	.byte	'P'
	.ascii	"processPtr\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	9,r1
_Label_3890:
	push	r0
	sub	r1,1,r1
	bne	_Label_3890
	mov	978,r13		! source line 978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2168 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2168  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	983,r13		! source line 983
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_2169 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2170 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2170 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_2171 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_2172 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2173 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2172  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_2174 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_2175
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2177
	.word	12
	.word	4
	.word	_Label_2178
	.word	-12
	.word	4
	.word	_Label_2179
	.word	-16
	.word	4
	.word	_Label_2180
	.word	-20
	.word	4
	.word	_Label_2181
	.word	-24
	.word	4
	.word	_Label_2182
	.word	-28
	.word	4
	.word	_Label_2183
	.word	-32
	.word	4
	.word	_Label_2184
	.word	-36
	.word	4
	.word	0
_Label_2175:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2176:
	.ascii	"Pself\0"
	.align
_Label_2177:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	46,r1
_Label_3891:
	push	r0
	sub	r1,1,r1
	bne	_Label_3891
	mov	993,r13		! source line 993
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_2185 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-180]
!   Send message Lock
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2190 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-176]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2191 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-172]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2190  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+-184]
_Label_2186:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2191 then goto _Label_2189		
	load	[r14+-184],r1
	load	[r14+-172],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2189
_Label_2187:
	mov	999,r13		! source line 999
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0IF",r10
!   _temp_2196 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Move address of _temp_2196 [i ] into _temp_2197
!     make sure index expr is >= 0
	load	[r14+-184],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   _temp_2198 = _temp_2197 + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2195 = *_temp_2198  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2200 = PCB + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_2199 = *_temp_2200  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if _temp_2195 != _temp_2199 then goto _Label_2193		(int)
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bne	_Label_2193
!	jmp	_Label_2194
_Label_2194:
!   _temp_2202 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Move address of _temp_2202 [i ] into _temp_2203
!     make sure index expr is >= 0
	load	[r14+-184],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_2204 = _temp_2203 + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_2201 = *_temp_2204  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if _temp_2201 != 2 then goto _Label_2193		(int)
	load	[r14+-144],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2193
!	jmp	_Label_2192
_Label_2192:
! THEN...
	mov	1001,r13		! source line 1001
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0AS",r10
!   _temp_2205 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Move address of _temp_2205 [i ] into _temp_2206
!     make sure index expr is >= 0
	load	[r14+-184],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   _temp_2207 = _temp_2206 + 20
	load	[r14+-124],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_2207 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-120],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2209 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_2209 [i ] into _temp_2210
!     make sure index expr is >= 0
	load	[r14+-184],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2208 = _temp_2210		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-116]
!   _temp_2211 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2208  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_2212 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-100]
!   _temp_2213 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_2212  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2193:
!   Increment the FOR-LOOP index variable and jump back
_Label_2188:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_2186
! END FOR
_Label_2189:
! FOR STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2218 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2219 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2218  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-184]
_Label_2214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2219 then goto _Label_2217		
	load	[r14+-184],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2217
_Label_2215:
	mov	1007,r13		! source line 1007
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0IF",r10
!   _temp_2224 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_2224 [i ] into _temp_2225
!     make sure index expr is >= 0
	load	[r14+-184],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   _temp_2226 = _temp_2225 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2223 = *_temp_2226  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2228 = PCB + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2227 = *_temp_2228  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2223 != _temp_2227 then goto _Label_2221		(int)
	load	[r14+-84],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bne	_Label_2221
!	jmp	_Label_2222
_Label_2222:
!   _temp_2230 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2230 [i ] into _temp_2231
!     make sure index expr is >= 0
	load	[r14+-184],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2232 = _temp_2231 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2229 = *_temp_2232  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_2229 != 1 then goto _Label_2221		(int)
	load	[r14+-60],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2221
!	jmp	_Label_2220
_Label_2220:
! THEN...
	mov	1009,r13		! source line 1009
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2233 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2233 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_2234 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2235 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2234  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_2236 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0RE",r10
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2221:
!   Increment the FOR-LOOP index variable and jump back
_Label_2216:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_2214
! END FOR
_Label_2217:
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2237 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2237 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0SE",r10
!   _temp_2238 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=PCB  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0SE",r10
!   _temp_2239 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2240 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2239  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_2241 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0RE",r10
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_2242
	.word	8		! total size of parameters
	.word	184		! frame size = 184
	.word	_Label_2243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2244
	.word	12
	.word	4
	.word	_Label_2245
	.word	-12
	.word	4
	.word	_Label_2246
	.word	-16
	.word	4
	.word	_Label_2247
	.word	-20
	.word	4
	.word	_Label_2248
	.word	-24
	.word	4
	.word	_Label_2249
	.word	-28
	.word	4
	.word	_Label_2250
	.word	-32
	.word	4
	.word	_Label_2251
	.word	-36
	.word	4
	.word	_Label_2252
	.word	-40
	.word	4
	.word	_Label_2253
	.word	-44
	.word	4
	.word	_Label_2254
	.word	-48
	.word	4
	.word	_Label_2255
	.word	-52
	.word	4
	.word	_Label_2256
	.word	-56
	.word	4
	.word	_Label_2257
	.word	-60
	.word	4
	.word	_Label_2258
	.word	-64
	.word	4
	.word	_Label_2259
	.word	-68
	.word	4
	.word	_Label_2260
	.word	-72
	.word	4
	.word	_Label_2261
	.word	-76
	.word	4
	.word	_Label_2262
	.word	-80
	.word	4
	.word	_Label_2263
	.word	-84
	.word	4
	.word	_Label_2264
	.word	-88
	.word	4
	.word	_Label_2265
	.word	-92
	.word	4
	.word	_Label_2266
	.word	-96
	.word	4
	.word	_Label_2267
	.word	-100
	.word	4
	.word	_Label_2268
	.word	-104
	.word	4
	.word	_Label_2269
	.word	-108
	.word	4
	.word	_Label_2270
	.word	-112
	.word	4
	.word	_Label_2271
	.word	-116
	.word	4
	.word	_Label_2272
	.word	-120
	.word	4
	.word	_Label_2273
	.word	-124
	.word	4
	.word	_Label_2274
	.word	-128
	.word	4
	.word	_Label_2275
	.word	-132
	.word	4
	.word	_Label_2276
	.word	-136
	.word	4
	.word	_Label_2277
	.word	-140
	.word	4
	.word	_Label_2278
	.word	-144
	.word	4
	.word	_Label_2279
	.word	-148
	.word	4
	.word	_Label_2280
	.word	-152
	.word	4
	.word	_Label_2281
	.word	-156
	.word	4
	.word	_Label_2282
	.word	-160
	.word	4
	.word	_Label_2283
	.word	-164
	.word	4
	.word	_Label_2284
	.word	-168
	.word	4
	.word	_Label_2285
	.word	-172
	.word	4
	.word	_Label_2286
	.word	-176
	.word	4
	.word	_Label_2287
	.word	-180
	.word	4
	.word	_Label_2288
	.word	-184
	.word	4
	.word	0
_Label_2242:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2243:
	.ascii	"Pself\0"
	.align
_Label_2244:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2288:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	14,r1
_Label_3892:
	push	r0
	sub	r1,1,r1
	bne	_Label_3892
	mov	1027,r13		! source line 1027
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_2289 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0WH",r10
_Label_2290:
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2294 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2293 = *_temp_2294  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2293 == 2 then goto _Label_2292		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2292
!	jmp	_Label_2291
_Label_2291:
	mov	1033,r13		! source line 1033
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0SE",r10
!   _temp_2295 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2296 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2295  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2290
_Label_2292:
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2297 = PCB + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exit_status = *_temp_2297  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2298 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2298 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_2299 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=PCB  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2300 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2301 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2300  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_2302 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0RE",r10
!   ReturnResult: exit_status  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_2303
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2305
	.word	12
	.word	4
	.word	_Label_2306
	.word	-12
	.word	4
	.word	_Label_2307
	.word	-16
	.word	4
	.word	_Label_2308
	.word	-20
	.word	4
	.word	_Label_2309
	.word	-24
	.word	4
	.word	_Label_2310
	.word	-28
	.word	4
	.word	_Label_2311
	.word	-32
	.word	4
	.word	_Label_2312
	.word	-36
	.word	4
	.word	_Label_2313
	.word	-40
	.word	4
	.word	_Label_2314
	.word	-44
	.word	4
	.word	_Label_2315
	.word	-48
	.word	4
	.word	_Label_2316
	.word	-52
	.word	4
	.word	_Label_2317
	.word	-56
	.word	4
	.word	0
_Label_2303:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2304:
	.ascii	"Pself\0"
	.align
_Label_2305:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2317:
	.byte	'I'
	.ascii	"exit_status\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2318
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2318:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2319
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2319:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3893:
	push	r0
	sub	r1,1,r1
	bne	_Label_3893
	mov	1096,r13		! source line 1096
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2320 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2320  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1102,r13		! source line 1102
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_2322 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_2324 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_2326 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2331 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2332 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2331  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2327:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2332 then goto _Label_2330		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2330
_Label_2328:
	mov	1115,r13		! source line 1115
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2335 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2335) then goto _Label_2334
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2334
!	jmp	_Label_2333
_Label_2333:
! THEN...
	mov	1119,r13		! source line 1119
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2336 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1119,r13		! source line 1119
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2334:
!   Increment the FOR-LOOP index variable and jump back
_Label_2329:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2327
! END FOR
_Label_2330:
! RETURN STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_2337
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2338
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2339
	.word	-12
	.word	4
	.word	_Label_2340
	.word	-16
	.word	4
	.word	_Label_2341
	.word	-20
	.word	4
	.word	_Label_2342
	.word	-24
	.word	4
	.word	_Label_2343
	.word	-28
	.word	4
	.word	_Label_2344
	.word	-32
	.word	4
	.word	_Label_2345
	.word	-36
	.word	4
	.word	_Label_2346
	.word	-40
	.word	4
	.word	_Label_2347
	.word	-44
	.word	4
	.word	_Label_2348
	.word	-48
	.word	4
	.word	_Label_2349
	.word	-52
	.word	4
	.word	_Label_2350
	.word	-56
	.word	4
	.word	0
_Label_2337:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2338:
	.ascii	"Pself\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2350:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3894:
	push	r0
	sub	r1,1,r1
	bne	_Label_3894
	mov	1126,r13		! source line 1126
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0SE",r10
!   _temp_2351 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2352 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2352  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2353 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2353  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1132,r13		! source line 1132
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2354 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2354  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_2355 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_2356 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_2357
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2358
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2359
	.word	-12
	.word	4
	.word	_Label_2360
	.word	-16
	.word	4
	.word	_Label_2361
	.word	-20
	.word	4
	.word	_Label_2362
	.word	-24
	.word	4
	.word	_Label_2363
	.word	-28
	.word	4
	.word	_Label_2364
	.word	-32
	.word	4
	.word	0
_Label_2357:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2358:
	.ascii	"Pself\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3895:
	push	r0
	sub	r1,1,r1
	bne	_Label_3895
	mov	1140,r13		! source line 1140
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_2365 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0WH",r10
_Label_2366:
!   if numberFreeFrames >= 1 then goto _Label_2368		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2368
!	jmp	_Label_2367
_Label_2367:
	mov	1151,r13		! source line 1151
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_2369 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2370 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2369  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2366
_Label_2368:
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
	mov	1156,r13		! source line 1156
	mov	"\0\0SE",r10
!   _temp_2371 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_2372 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
!   _temp_2373 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2373		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_2374
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2375
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2376
	.word	-12
	.word	4
	.word	_Label_2377
	.word	-16
	.word	4
	.word	_Label_2378
	.word	-20
	.word	4
	.word	_Label_2379
	.word	-24
	.word	4
	.word	_Label_2380
	.word	-28
	.word	4
	.word	_Label_2381
	.word	-32
	.word	4
	.word	_Label_2382
	.word	-36
	.word	4
	.word	_Label_2383
	.word	-40
	.word	4
	.word	0
_Label_2374:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2375:
	.ascii	"Pself\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2382:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2383:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_3896:
	push	r0
	sub	r1,1,r1
	bne	_Label_3896
	mov	1170,r13		! source line 1170
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_2384 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0WH",r10
_Label_2385:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2387		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2387
!	jmp	_Label_2386
_Label_2386:
	mov	1173,r13		! source line 1173
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0SE",r10
!   _temp_2388 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2389 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2388  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2385
_Label_2387:
! FOR STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2394 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2395 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2394  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2390:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2395 then goto _Label_2393		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2393
_Label_2391:
	mov	1176,r13		! source line 1176
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   _temp_2396 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0AS",r10
!   _temp_2397 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2397		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2392:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2390
! END FOR
_Label_2393:
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2398 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2398 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
!   _temp_2399 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_2400
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2401
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2402
	.word	12
	.word	4
	.word	_Label_2403
	.word	16
	.word	4
	.word	_Label_2404
	.word	-12
	.word	4
	.word	_Label_2405
	.word	-16
	.word	4
	.word	_Label_2406
	.word	-20
	.word	4
	.word	_Label_2407
	.word	-24
	.word	4
	.word	_Label_2408
	.word	-28
	.word	4
	.word	_Label_2409
	.word	-32
	.word	4
	.word	_Label_2410
	.word	-36
	.word	4
	.word	_Label_2411
	.word	-40
	.word	4
	.word	_Label_2412
	.word	-44
	.word	4
	.word	_Label_2413
	.word	-48
	.word	4
	.word	_Label_2414
	.word	-52
	.word	4
	.word	_Label_2415
	.word	-56
	.word	4
	.word	0
_Label_2400:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2401:
	.ascii	"Pself\0"
	.align
_Label_2402:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2403:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2414:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2415:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_3897:
	push	r0
	sub	r1,1,r1
	bne	_Label_3897
	mov	1188,r13		! source line 1188
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_2416 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2421 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2424 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2423 = *_temp_2424  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2422 = _temp_2423 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2421  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2417:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2422 then goto _Label_2420		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2420
_Label_2418:
	mov	1194,r13		! source line 1194
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
!   _temp_2425 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_2425 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0SE",r10
!   _temp_2426 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitIndex  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2419:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2417
! END FOR
_Label_2420:
! ASSIGNMENT STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2428 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2427 = *_temp_2428  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2427		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0SE",r10
!   _temp_2429 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2430 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2429  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   _temp_2431 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_2432
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2433
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2434
	.word	12
	.word	4
	.word	_Label_2435
	.word	-12
	.word	4
	.word	_Label_2436
	.word	-16
	.word	4
	.word	_Label_2437
	.word	-20
	.word	4
	.word	_Label_2438
	.word	-24
	.word	4
	.word	_Label_2439
	.word	-28
	.word	4
	.word	_Label_2440
	.word	-32
	.word	4
	.word	_Label_2441
	.word	-36
	.word	4
	.word	_Label_2442
	.word	-40
	.word	4
	.word	_Label_2443
	.word	-44
	.word	4
	.word	_Label_2444
	.word	-48
	.word	4
	.word	_Label_2445
	.word	-52
	.word	4
	.word	_Label_2446
	.word	-56
	.word	4
	.word	_Label_2447
	.word	-60
	.word	4
	.word	_Label_2448
	.word	-64
	.word	4
	.word	_Label_2449
	.word	-68
	.word	4
	.word	0
_Label_2432:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2433:
	.ascii	"Pself\0"
	.align
_Label_2434:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2447:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2448:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_2449:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2450
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_2450:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2451
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2451:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3898:
	push	r0
	sub	r1,1,r1
	bne	_Label_3898
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0AS",r10
!   _temp_2452 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2454 = &_temp_2453
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2454 = _temp_2454 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2456:
!   Data Move: *_temp_2454 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2454 = _temp_2454 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2455 = _temp_2455 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2455) then goto _Label_2456
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2456
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2457 = &_temp_2453
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3899
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3899:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2452 = *_temp_2457  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3900:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3900
! RETURN STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_2458
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2460
	.word	-12
	.word	4
	.word	_Label_2461
	.word	-16
	.word	4
	.word	_Label_2462
	.word	-20
	.word	4
	.word	_Label_2463
	.word	-104
	.word	84
	.word	_Label_2464
	.word	-108
	.word	4
	.word	0
_Label_2458:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2459:
	.ascii	"Pself\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3901:
	push	r0
	sub	r1,1,r1
	bne	_Label_3901
	mov	1221,r13		! source line 1221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2465 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2465  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2466 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2466  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2471 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2472 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2471  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2467:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2472 then goto _Label_2470		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2470
_Label_2468:
	mov	1228,r13		! source line 1228
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2473 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2473  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2475 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2475 [i ] into _temp_2476
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_2474 = _temp_2476		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2474  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2477 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2477  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2479 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2479 [i ] into _temp_2480
!     make sure index expr is >= 0
	load	[r14+-168],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_2478 = *_temp_2480  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2478  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2481 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2482 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2482  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2483 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2483  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2485) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2484  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2484  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2486 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2486  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0IF",r10
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2490) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2489  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2489) then goto _Label_2488
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2488
!	jmp	_Label_2487
_Label_2487:
! THEN...
	mov	1239,r13		! source line 1239
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2492) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2491  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2491  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2493
_Label_2488:
! ELSE...
	mov	1241,r13		! source line 1241
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2494 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2494  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2493:
! CALL STATEMENT...
!   _temp_2495 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2495  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0IF",r10
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2498) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_2496 else goto _Label_2497
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2497
	jmp	_Label_2496
_Label_2496:
! THEN...
	mov	1245,r13		! source line 1245
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2499 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2499  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2500
_Label_2497:
! ELSE...
	mov	1247,r13		! source line 1247
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2501 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2501  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2500:
! CALL STATEMENT...
!   _temp_2502 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2502  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0IF",r10
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2505) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_2503 else goto _Label_2504
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2504
	jmp	_Label_2503
_Label_2503:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2506 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2507
_Label_2504:
! ELSE...
	mov	1253,r13		! source line 1253
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2508 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2508  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2507:
! CALL STATEMENT...
!   _temp_2509 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2509  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0IF",r10
	mov	1256,r13		! source line 1256
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2512) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_2510 else goto _Label_2511
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2511
	jmp	_Label_2510
_Label_2510:
! THEN...
	mov	1257,r13		! source line 1257
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2513 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2513  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2514
_Label_2511:
! ELSE...
	mov	1259,r13		! source line 1259
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2515 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2515  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2514:
! CALL STATEMENT...
!   _temp_2516 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0IF",r10
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2519) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_2517 else goto _Label_2518
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2518
	jmp	_Label_2517
_Label_2517:
! THEN...
	mov	1263,r13		! source line 1263
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2520 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2520  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2521
_Label_2518:
! ELSE...
	mov	1265,r13		! source line 1265
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2522 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2521:
! CALL STATEMENT...
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2469:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2467
! END FOR
_Label_2470:
! RETURN STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_2523
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2525
	.word	-12
	.word	4
	.word	_Label_2526
	.word	-16
	.word	4
	.word	_Label_2527
	.word	-20
	.word	4
	.word	_Label_2528
	.word	-24
	.word	4
	.word	_Label_2529
	.word	-28
	.word	4
	.word	_Label_2530
	.word	-32
	.word	4
	.word	_Label_2531
	.word	-36
	.word	4
	.word	_Label_2532
	.word	-40
	.word	4
	.word	_Label_2533
	.word	-44
	.word	4
	.word	_Label_2534
	.word	-48
	.word	4
	.word	_Label_2535
	.word	-52
	.word	4
	.word	_Label_2536
	.word	-56
	.word	4
	.word	_Label_2537
	.word	-60
	.word	4
	.word	_Label_2538
	.word	-64
	.word	4
	.word	_Label_2539
	.word	-68
	.word	4
	.word	_Label_2540
	.word	-72
	.word	4
	.word	_Label_2541
	.word	-76
	.word	4
	.word	_Label_2542
	.word	-80
	.word	4
	.word	_Label_2543
	.word	-84
	.word	4
	.word	_Label_2544
	.word	-88
	.word	4
	.word	_Label_2545
	.word	-92
	.word	4
	.word	_Label_2546
	.word	-96
	.word	4
	.word	_Label_2547
	.word	-100
	.word	4
	.word	_Label_2548
	.word	-104
	.word	4
	.word	_Label_2549
	.word	-108
	.word	4
	.word	_Label_2550
	.word	-112
	.word	4
	.word	_Label_2551
	.word	-116
	.word	4
	.word	_Label_2552
	.word	-120
	.word	4
	.word	_Label_2553
	.word	-124
	.word	4
	.word	_Label_2554
	.word	-128
	.word	4
	.word	_Label_2555
	.word	-132
	.word	4
	.word	_Label_2556
	.word	-136
	.word	4
	.word	_Label_2557
	.word	-140
	.word	4
	.word	_Label_2558
	.word	-144
	.word	4
	.word	_Label_2559
	.word	-148
	.word	4
	.word	_Label_2560
	.word	-152
	.word	4
	.word	_Label_2561
	.word	-156
	.word	4
	.word	_Label_2562
	.word	-160
	.word	4
	.word	_Label_2563
	.word	-164
	.word	4
	.word	_Label_2564
	.word	-168
	.word	4
	.word	0
_Label_2523:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2524:
	.ascii	"Pself\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2564:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3902:
	push	r0
	sub	r1,1,r1
	bne	_Label_3902
	mov	1273,r13		! source line 1273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0RE",r10
!   _temp_2567 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2567 [entry ] into _temp_2568
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2566 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2565 = _temp_2566 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2565  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_2569
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2570
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2571
	.word	12
	.word	4
	.word	_Label_2572
	.word	-12
	.word	4
	.word	_Label_2573
	.word	-16
	.word	4
	.word	_Label_2574
	.word	-20
	.word	4
	.word	_Label_2575
	.word	-24
	.word	4
	.word	0
_Label_2569:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2570:
	.ascii	"Pself\0"
	.align
_Label_2571:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3903:
	push	r0
	sub	r1,1,r1
	bne	_Label_3903
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0RE",r10
!   _temp_2578 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2578 [entry ] into _temp_2579
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2577 = *_temp_2579  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2576 = _temp_2577 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2576  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_2580
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2581
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2582
	.word	12
	.word	4
	.word	_Label_2583
	.word	-12
	.word	4
	.word	_Label_2584
	.word	-16
	.word	4
	.word	_Label_2585
	.word	-20
	.word	4
	.word	_Label_2586
	.word	-24
	.word	4
	.word	0
_Label_2580:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2581:
	.ascii	"Pself\0"
	.align
_Label_2582:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3904:
	push	r0
	sub	r1,1,r1
	bne	_Label_3904
	mov	1292,r13		! source line 1292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   _temp_2587 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2587 [entry ] into _temp_2588
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2592 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2592 [entry ] into _temp_2593
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2591 = *_temp_2593  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2590 = _temp_2591 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2589 = _temp_2590 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2588 = _temp_2589  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_2594
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2596
	.word	12
	.word	4
	.word	_Label_2597
	.word	16
	.word	4
	.word	_Label_2598
	.word	-12
	.word	4
	.word	_Label_2599
	.word	-16
	.word	4
	.word	_Label_2600
	.word	-20
	.word	4
	.word	_Label_2601
	.word	-24
	.word	4
	.word	_Label_2602
	.word	-28
	.word	4
	.word	_Label_2603
	.word	-32
	.word	4
	.word	_Label_2604
	.word	-36
	.word	4
	.word	0
_Label_2594:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2595:
	.ascii	"Pself\0"
	.align
_Label_2596:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2597:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3905:
	push	r0
	sub	r1,1,r1
	bne	_Label_3905
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0RE",r10
!   _temp_2608 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2608 [entry ] into _temp_2609
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2607 = *_temp_2609  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2606 = _temp_2607 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2606) then goto _Label_2610
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2610
!   _temp_2605 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2611
_Label_2610:
!   _temp_2605 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2611:
!   ReturnResult: _temp_2605  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2612
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2613
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2614
	.word	12
	.word	4
	.word	_Label_2615
	.word	-16
	.word	4
	.word	_Label_2616
	.word	-20
	.word	4
	.word	_Label_2617
	.word	-24
	.word	4
	.word	_Label_2618
	.word	-28
	.word	4
	.word	_Label_2619
	.word	-9
	.word	1
	.word	0
_Label_2612:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2613:
	.ascii	"Pself\0"
	.align
_Label_2614:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2619:
	.byte	'C'
	.ascii	"_temp_2605\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3906:
	push	r0
	sub	r1,1,r1
	bne	_Label_3906
	mov	1311,r13		! source line 1311
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0RE",r10
!   _temp_2623 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2623 [entry ] into _temp_2624
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2622 = *_temp_2624  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2621 = _temp_2622 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2621) then goto _Label_2625
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2625
!   _temp_2620 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2626
_Label_2625:
!   _temp_2620 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2626:
!   ReturnResult: _temp_2620  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2627
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2629
	.word	12
	.word	4
	.word	_Label_2630
	.word	-16
	.word	4
	.word	_Label_2631
	.word	-20
	.word	4
	.word	_Label_2632
	.word	-24
	.word	4
	.word	_Label_2633
	.word	-28
	.word	4
	.word	_Label_2634
	.word	-9
	.word	1
	.word	0
_Label_2627:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2628:
	.ascii	"Pself\0"
	.align
_Label_2629:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2634:
	.byte	'C'
	.ascii	"_temp_2620\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3907:
	push	r0
	sub	r1,1,r1
	bne	_Label_3907
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0RE",r10
!   _temp_2638 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2638 [entry ] into _temp_2639
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2637 = *_temp_2639  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2636 = _temp_2637 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2636) then goto _Label_2640
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2640
!   _temp_2635 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2641
_Label_2640:
!   _temp_2635 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2641:
!   ReturnResult: _temp_2635  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2642
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2644
	.word	12
	.word	4
	.word	_Label_2645
	.word	-16
	.word	4
	.word	_Label_2646
	.word	-20
	.word	4
	.word	_Label_2647
	.word	-24
	.word	4
	.word	_Label_2648
	.word	-28
	.word	4
	.word	_Label_2649
	.word	-9
	.word	1
	.word	0
_Label_2642:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2643:
	.ascii	"Pself\0"
	.align
_Label_2644:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2649:
	.byte	'C'
	.ascii	"_temp_2635\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3908:
	push	r0
	sub	r1,1,r1
	bne	_Label_3908
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0RE",r10
!   _temp_2653 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2653 [entry ] into _temp_2654
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2652 = *_temp_2654  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2651 = _temp_2652 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2651) then goto _Label_2655
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2655
!   _temp_2650 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2656
_Label_2655:
!   _temp_2650 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2656:
!   ReturnResult: _temp_2650  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2657
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2659
	.word	12
	.word	4
	.word	_Label_2660
	.word	-16
	.word	4
	.word	_Label_2661
	.word	-20
	.word	4
	.word	_Label_2662
	.word	-24
	.word	4
	.word	_Label_2663
	.word	-28
	.word	4
	.word	_Label_2664
	.word	-9
	.word	1
	.word	0
_Label_2657:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2658:
	.ascii	"Pself\0"
	.align
_Label_2659:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2664:
	.byte	'C'
	.ascii	"_temp_2650\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3909:
	push	r0
	sub	r1,1,r1
	bne	_Label_3909
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0AS",r10
!   _temp_2665 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2665 [entry ] into _temp_2666
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2669 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2669 [entry ] into _temp_2670
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2668 = *_temp_2670  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2667 = _temp_2668 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2666 = _temp_2667  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2671
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2673
	.word	12
	.word	4
	.word	_Label_2674
	.word	-12
	.word	4
	.word	_Label_2675
	.word	-16
	.word	4
	.word	_Label_2676
	.word	-20
	.word	4
	.word	_Label_2677
	.word	-24
	.word	4
	.word	_Label_2678
	.word	-28
	.word	4
	.word	_Label_2679
	.word	-32
	.word	4
	.word	0
_Label_2671:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2672:
	.ascii	"Pself\0"
	.align
_Label_2673:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3910:
	push	r0
	sub	r1,1,r1
	bne	_Label_3910
	mov	1347,r13		! source line 1347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0AS",r10
!   _temp_2680 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2680 [entry ] into _temp_2681
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2684 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2684 [entry ] into _temp_2685
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2683 = *_temp_2685  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2682 = _temp_2683 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2681 = _temp_2682  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2686
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2687
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2688
	.word	12
	.word	4
	.word	_Label_2689
	.word	-12
	.word	4
	.word	_Label_2690
	.word	-16
	.word	4
	.word	_Label_2691
	.word	-20
	.word	4
	.word	_Label_2692
	.word	-24
	.word	4
	.word	_Label_2693
	.word	-28
	.word	4
	.word	_Label_2694
	.word	-32
	.word	4
	.word	0
_Label_2686:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2687:
	.ascii	"Pself\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3911:
	push	r0
	sub	r1,1,r1
	bne	_Label_3911
	mov	1356,r13		! source line 1356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0AS",r10
!   _temp_2695 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2695 [entry ] into _temp_2696
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2699 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2699 [entry ] into _temp_2700
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2698 = *_temp_2700  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2697 = _temp_2698 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2696 = _temp_2697  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2701
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2703
	.word	12
	.word	4
	.word	_Label_2704
	.word	-12
	.word	4
	.word	_Label_2705
	.word	-16
	.word	4
	.word	_Label_2706
	.word	-20
	.word	4
	.word	_Label_2707
	.word	-24
	.word	4
	.word	_Label_2708
	.word	-28
	.word	4
	.word	_Label_2709
	.word	-32
	.word	4
	.word	0
_Label_2701:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2702:
	.ascii	"Pself\0"
	.align
_Label_2703:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3912:
	push	r0
	sub	r1,1,r1
	bne	_Label_3912
	mov	1365,r13		! source line 1365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0AS",r10
!   _temp_2710 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2710 [entry ] into _temp_2711
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2714 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2714 [entry ] into _temp_2715
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2713 = *_temp_2715  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2712 = _temp_2713 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2711 = _temp_2712  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2716
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2717
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2718
	.word	12
	.word	4
	.word	_Label_2719
	.word	-12
	.word	4
	.word	_Label_2720
	.word	-16
	.word	4
	.word	_Label_2721
	.word	-20
	.word	4
	.word	_Label_2722
	.word	-24
	.word	4
	.word	_Label_2723
	.word	-28
	.word	4
	.word	_Label_2724
	.word	-32
	.word	4
	.word	0
_Label_2716:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2717:
	.ascii	"Pself\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3913:
	push	r0
	sub	r1,1,r1
	bne	_Label_3913
	mov	1374,r13		! source line 1374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0AS",r10
!   _temp_2725 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2725 [entry ] into _temp_2726
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2729 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2729 [entry ] into _temp_2730
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2728 = *_temp_2730  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2727 = _temp_2728 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2726 = _temp_2727  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2731
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2732
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2733
	.word	12
	.word	4
	.word	_Label_2734
	.word	-12
	.word	4
	.word	_Label_2735
	.word	-16
	.word	4
	.word	_Label_2736
	.word	-20
	.word	4
	.word	_Label_2737
	.word	-24
	.word	4
	.word	_Label_2738
	.word	-28
	.word	4
	.word	_Label_2739
	.word	-32
	.word	4
	.word	0
_Label_2731:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2732:
	.ascii	"Pself\0"
	.align
_Label_2733:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3914:
	push	r0
	sub	r1,1,r1
	bne	_Label_3914
	mov	1383,r13		! source line 1383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   _temp_2740 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2740 [entry ] into _temp_2741
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2744 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2744 [entry ] into _temp_2745
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2743 = *_temp_2745  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2742 = _temp_2743 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2741 = _temp_2742  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2746
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2747
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2748
	.word	12
	.word	4
	.word	_Label_2749
	.word	-12
	.word	4
	.word	_Label_2750
	.word	-16
	.word	4
	.word	_Label_2751
	.word	-20
	.word	4
	.word	_Label_2752
	.word	-24
	.word	4
	.word	_Label_2753
	.word	-28
	.word	4
	.word	_Label_2754
	.word	-32
	.word	4
	.word	0
_Label_2746:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2747:
	.ascii	"Pself\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3915:
	push	r0
	sub	r1,1,r1
	bne	_Label_3915
	mov	1392,r13		! source line 1392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   _temp_2755 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2755 [entry ] into _temp_2756
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2759 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2759 [entry ] into _temp_2760
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2758 = *_temp_2760  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2757 = _temp_2758 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2756 = _temp_2757  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2761
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2762
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2763
	.word	12
	.word	4
	.word	_Label_2764
	.word	-12
	.word	4
	.word	_Label_2765
	.word	-16
	.word	4
	.word	_Label_2766
	.word	-20
	.word	4
	.word	_Label_2767
	.word	-24
	.word	4
	.word	_Label_2768
	.word	-28
	.word	4
	.word	_Label_2769
	.word	-32
	.word	4
	.word	0
_Label_2761:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2762:
	.ascii	"Pself\0"
	.align
_Label_2763:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3916:
	push	r0
	sub	r1,1,r1
	bne	_Label_3916
	mov	1401,r13		! source line 1401
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0AS",r10
!   _temp_2770 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2770 [entry ] into _temp_2771
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2774 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2774 [entry ] into _temp_2775
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2773 = *_temp_2775  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2772 = _temp_2773 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2771 = _temp_2772  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2776
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2777
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2778
	.word	12
	.word	4
	.word	_Label_2779
	.word	-12
	.word	4
	.word	_Label_2780
	.word	-16
	.word	4
	.word	_Label_2781
	.word	-20
	.word	4
	.word	_Label_2782
	.word	-24
	.word	4
	.word	_Label_2783
	.word	-28
	.word	4
	.word	_Label_2784
	.word	-32
	.word	4
	.word	0
_Label_2776:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2777:
	.ascii	"Pself\0"
	.align
_Label_2778:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3917:
	push	r0
	sub	r1,1,r1
	bne	_Label_3917
	mov	1410,r13		! source line 1410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2786 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2786 [0 ] into _temp_2787
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2785 = _temp_2787		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2788 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2785  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2788  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2789
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2791
	.word	-12
	.word	4
	.word	_Label_2792
	.word	-16
	.word	4
	.word	_Label_2793
	.word	-20
	.word	4
	.word	_Label_2794
	.word	-24
	.word	4
	.word	0
_Label_2789:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2790:
	.ascii	"Pself\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3918:
	push	r0
	sub	r1,1,r1
	bne	_Label_3918
	mov	1421,r13		! source line 1421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2795
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2795
	jmp	_Label_2796
_Label_2795:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2797
_Label_2796:
! ELSE...
	mov	1438,r13		! source line 1438
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2799		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2799
!	jmp	_Label_2798
_Label_2798:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2799:
! END IF...
_Label_2797:
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0WH",r10
_Label_2800:
!	jmp	_Label_2801
_Label_2801:
	mov	1445,r13		! source line 1445
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2804		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2804
!	jmp	_Label_2803
_Label_2803:
! THEN...
	mov	1447,r13		! source line 1447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2805 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2804:
! IF STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0IF",r10
	mov	1450,r13		! source line 1450
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2809) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2808  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2808 then goto _Label_2807 else goto _Label_2806
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2806
	jmp	_Label_2807
_Label_2806:
! THEN...
	mov	1451,r13		! source line 1451
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2810 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2810  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2807:
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
	mov	1454,r13		! source line 1454
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2812) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2811  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2811 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0WH",r10
_Label_2813:
!   if offset >= 8192 then goto _Label_2815		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2815
!	jmp	_Label_2814
_Label_2814:
	mov	1456,r13		! source line 1456
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2816 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2816  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2818		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2818
!	jmp	_Label_2817
_Label_2817:
! THEN...
	mov	1465,r13		! source line 1465
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2818:
! END WHILE...
	jmp	_Label_2813
_Label_2815:
! ASSIGNMENT STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2800
_Label_2802:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2819
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2820
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2821
	.word	12
	.word	4
	.word	_Label_2822
	.word	16
	.word	4
	.word	_Label_2823
	.word	20
	.word	4
	.word	_Label_2824
	.word	-9
	.word	1
	.word	_Label_2825
	.word	-16
	.word	4
	.word	_Label_2826
	.word	-20
	.word	4
	.word	_Label_2827
	.word	-24
	.word	4
	.word	_Label_2828
	.word	-28
	.word	4
	.word	_Label_2829
	.word	-10
	.word	1
	.word	_Label_2830
	.word	-32
	.word	4
	.word	_Label_2831
	.word	-36
	.word	4
	.word	_Label_2832
	.word	-40
	.word	4
	.word	_Label_2833
	.word	-44
	.word	4
	.word	_Label_2834
	.word	-48
	.word	4
	.word	0
_Label_2819:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2820:
	.ascii	"Pself\0"
	.align
_Label_2821:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2822:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2823:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2824:
	.byte	'C'
	.ascii	"_temp_2816\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2829:
	.byte	'C'
	.ascii	"_temp_2808\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2831:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2832:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2833:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2834:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3919:
	push	r0
	sub	r1,1,r1
	bne	_Label_3919
	mov	1475,r13		! source line 1475
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2835
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2835
	jmp	_Label_2836
_Label_2835:
! THEN...
	mov	1487,r13		! source line 1487
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2837
_Label_2836:
! ELSE...
	mov	1488,r13		! source line 1488
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2839		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2839
!	jmp	_Label_2838
_Label_2838:
! THEN...
	mov	1489,r13		! source line 1489
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2839:
! END IF...
_Label_2837:
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0WH",r10
_Label_2840:
!	jmp	_Label_2841
_Label_2841:
	mov	1493,r13		! source line 1493
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2846		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2846
	jmp	_Label_2843
_Label_2846:
	mov	1495,r13		! source line 1495
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2848) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2847  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2847 then goto _Label_2845 else goto _Label_2843
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2843
	jmp	_Label_2845
_Label_2845:
	mov	1496,r13		! source line 1496
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2850) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2849  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2849 then goto _Label_2844 else goto _Label_2843
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2843
	jmp	_Label_2844
_Label_2843:
! THEN...
	mov	1497,r13		! source line 1497
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2844:
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
	mov	1499,r13		! source line 1499
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2852) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2851  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2851 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0WH",r10
_Label_2853:
!   if offset >= 8192 then goto _Label_2855		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2855
!	jmp	_Label_2854
_Label_2854:
	mov	1500,r13		! source line 1500
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2856 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2856  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2858		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2858
!	jmp	_Label_2857
_Label_2857:
! THEN...
	mov	1507,r13		! source line 1507
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2858:
! END WHILE...
	jmp	_Label_2853
_Label_2855:
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2840
_Label_2842:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2859
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2861
	.word	12
	.word	4
	.word	_Label_2862
	.word	16
	.word	4
	.word	_Label_2863
	.word	20
	.word	4
	.word	_Label_2864
	.word	-9
	.word	1
	.word	_Label_2865
	.word	-16
	.word	4
	.word	_Label_2866
	.word	-20
	.word	4
	.word	_Label_2867
	.word	-24
	.word	4
	.word	_Label_2868
	.word	-10
	.word	1
	.word	_Label_2869
	.word	-28
	.word	4
	.word	_Label_2870
	.word	-11
	.word	1
	.word	_Label_2871
	.word	-32
	.word	4
	.word	_Label_2872
	.word	-36
	.word	4
	.word	_Label_2873
	.word	-40
	.word	4
	.word	_Label_2874
	.word	-44
	.word	4
	.word	0
_Label_2859:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2860:
	.ascii	"Pself\0"
	.align
_Label_2861:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2862:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2863:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2864:
	.byte	'C'
	.ascii	"_temp_2856\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2868:
	.byte	'C'
	.ascii	"_temp_2849\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2870:
	.byte	'C'
	.ascii	"_temp_2847\0"
	.align
_Label_2871:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2872:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2873:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2874:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3920:
	push	r0
	sub	r1,1,r1
	bne	_Label_3920
	mov	1517,r13		! source line 1517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0IF",r10
	mov	1541,r13		! source line 1541
	mov	"\0\0SE",r10
!   _temp_2878 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2879) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2878  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2877  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2877 >= 4 then goto _Label_2876		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2876
!	jmp	_Label_2875
_Label_2875:
! THEN...
	mov	1544,r13		! source line 1544
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2876:
! IF STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2881		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2881
!	jmp	_Label_2880
_Label_2880:
! THEN...
	mov	1549,r13		! source line 1549
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2881:
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0RE",r10
	mov	1554,r13		! source line 1554
	mov	"\0\0SE",r10
!   _temp_2884 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2883 = _temp_2884 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2885 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2886) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2883  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2885  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2882  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2882  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2887
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2888
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2889
	.word	12
	.word	4
	.word	_Label_2890
	.word	16
	.word	4
	.word	_Label_2891
	.word	20
	.word	4
	.word	_Label_2892
	.word	-12
	.word	4
	.word	_Label_2893
	.word	-16
	.word	4
	.word	_Label_2894
	.word	-20
	.word	4
	.word	_Label_2895
	.word	-24
	.word	4
	.word	_Label_2896
	.word	-28
	.word	4
	.word	_Label_2897
	.word	-32
	.word	4
	.word	_Label_2898
	.word	-36
	.word	4
	.word	_Label_2899
	.word	-40
	.word	4
	.word	_Label_2900
	.word	-44
	.word	4
	.word	0
_Label_2887:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2888:
	.ascii	"Pself\0"
	.align
_Label_2889:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2890:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2891:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2900:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2901
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2901:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2902
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2902:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3921:
	push	r0
	sub	r1,1,r1
	bne	_Label_3921
	mov	2233,r13		! source line 2233
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2903 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2903  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2234,r13		! source line 2234
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0SE",r10
!   _temp_2905 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0SE",r10
!   _temp_2907 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2908
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2910
	.word	-12
	.word	4
	.word	_Label_2911
	.word	-16
	.word	4
	.word	_Label_2912
	.word	-20
	.word	4
	.word	_Label_2913
	.word	-24
	.word	4
	.word	_Label_2914
	.word	-28
	.word	4
	.word	0
_Label_2908:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2909:
	.ascii	"Pself\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3922:
	push	r0
	sub	r1,1,r1
	bne	_Label_3922
	mov	2249,r13		! source line 2249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_2915 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0WH",r10
_Label_2916:
!	jmp	_Label_2917
_Label_2917:
	mov	2263,r13		! source line 2263
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0SE",r10
!   _temp_2919 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2920) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2919  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0SE",r10
!   _temp_2921 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2270,r13		! source line 2270
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2930 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2924
	cmp	r1,2
	be	_Label_2925
	cmp	r1,3
	be	_Label_2926
	cmp	r1,4
	be	_Label_2927
	cmp	r1,5
	be	_Label_2928
	cmp	r1,6
	be	_Label_2929
	jmp	_Label_2922
! CASE 1...
_Label_2924:
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_2931 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2925:
! CALL STATEMENT...
!   _temp_2932 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2932  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2275,r13		! source line 2275
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2926:
! CALL STATEMENT...
!   _temp_2933 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2933  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2277,r13		! source line 2277
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2927:
! CALL STATEMENT...
!   _temp_2934 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2934  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2279,r13		! source line 2279
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2928:
! BREAK STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0BR",r10
	jmp	_Label_2923
! CASE 6...
_Label_2929:
! CALL STATEMENT...
!   _temp_2935 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2935  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2285,r13		! source line 2285
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2922:
! CALL STATEMENT...
!   _temp_2936 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2936  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2287,r13		! source line 2287
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2923:
! END WHILE...
	jmp	_Label_2916
_Label_2918:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2937
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2938
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2939
	.word	12
	.word	4
	.word	_Label_2940
	.word	16
	.word	4
	.word	_Label_2941
	.word	20
	.word	4
	.word	_Label_2942
	.word	-12
	.word	4
	.word	_Label_2943
	.word	-16
	.word	4
	.word	_Label_2944
	.word	-20
	.word	4
	.word	_Label_2945
	.word	-24
	.word	4
	.word	_Label_2946
	.word	-28
	.word	4
	.word	_Label_2947
	.word	-32
	.word	4
	.word	_Label_2948
	.word	-36
	.word	4
	.word	_Label_2949
	.word	-40
	.word	4
	.word	_Label_2950
	.word	-44
	.word	4
	.word	_Label_2951
	.word	-48
	.word	4
	.word	_Label_2952
	.word	-52
	.word	4
	.word	0
_Label_2937:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2938:
	.ascii	"Pself\0"
	.align
_Label_2939:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2940:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2941:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2296,r13		! source line 2296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2953
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2955
	.word	12
	.word	4
	.word	_Label_2956
	.word	16
	.word	4
	.word	_Label_2957
	.word	20
	.word	4
	.word	_Label_2958
	.word	24
	.word	4
	.word	0
_Label_2953:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2954:
	.ascii	"Pself\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2956:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2958:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3923:
	push	r0
	sub	r1,1,r1
	bne	_Label_3923
	mov	2322,r13		! source line 2322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2959 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0WH",r10
_Label_2960:
!	jmp	_Label_2961
_Label_2961:
	mov	2335,r13		! source line 2335
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0SE",r10
!   _temp_2963 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2964) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2963  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0SE",r10
!   _temp_2965 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2341,r13		! source line 2341
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2974 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2968
	cmp	r1,2
	be	_Label_2969
	cmp	r1,3
	be	_Label_2970
	cmp	r1,4
	be	_Label_2971
	cmp	r1,5
	be	_Label_2972
	cmp	r1,6
	be	_Label_2973
	jmp	_Label_2966
! CASE 1...
_Label_2968:
! SEND STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0SE",r10
!   _temp_2975 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2969:
! CALL STATEMENT...
!   _temp_2976 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2976  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2346,r13		! source line 2346
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2970:
! CALL STATEMENT...
!   _temp_2977 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2348,r13		! source line 2348
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2971:
! CALL STATEMENT...
!   _temp_2978 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2978  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2350,r13		! source line 2350
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2972:
! BREAK STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0BR",r10
	jmp	_Label_2967
! CASE 6...
_Label_2973:
! CALL STATEMENT...
!   _temp_2979 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2979  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2356,r13		! source line 2356
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2966:
! CALL STATEMENT...
!   _temp_2980 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2358,r13		! source line 2358
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2967:
! END WHILE...
	jmp	_Label_2960
_Label_2962:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2981
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2983
	.word	12
	.word	4
	.word	_Label_2984
	.word	16
	.word	4
	.word	_Label_2985
	.word	20
	.word	4
	.word	_Label_2986
	.word	-12
	.word	4
	.word	_Label_2987
	.word	-16
	.word	4
	.word	_Label_2988
	.word	-20
	.word	4
	.word	_Label_2989
	.word	-24
	.word	4
	.word	_Label_2990
	.word	-28
	.word	4
	.word	_Label_2991
	.word	-32
	.word	4
	.word	_Label_2992
	.word	-36
	.word	4
	.word	_Label_2993
	.word	-40
	.word	4
	.word	_Label_2994
	.word	-44
	.word	4
	.word	_Label_2995
	.word	-48
	.word	4
	.word	_Label_2996
	.word	-52
	.word	4
	.word	0
_Label_2981:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2982:
	.ascii	"Pself\0"
	.align
_Label_2983:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2985:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2367,r13		! source line 2367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2997
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2999
	.word	12
	.word	4
	.word	_Label_3000
	.word	16
	.word	4
	.word	_Label_3001
	.word	20
	.word	4
	.word	_Label_3002
	.word	24
	.word	4
	.word	0
_Label_2997:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2998:
	.ascii	"Pself\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3001:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3002:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3003
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_3003:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3004
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3004:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3924:
	push	r0
	sub	r1,1,r1
	bne	_Label_3924
	mov	2398,r13		! source line 2398
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3005 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3005  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2405,r13		! source line 2405
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_3007 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_3010 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   _temp_3011 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3013 = &_temp_3012
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3013 = _temp_3013 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3015 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3925:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3925
!   _temp_3015 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3017:
!   Data Move: *_temp_3013 = _temp_3015  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3926:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3926
!   _temp_3013 = _temp_3013 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3014 = _temp_3014 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3014) then goto _Label_3017
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3017
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3018 = &_temp_3012
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3927
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3927:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3011 = *_temp_3018  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3928:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3928
! FOR STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3023 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3024 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3023  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3019:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3024 then goto _Label_3022		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3022
_Label_3020:
	mov	2415,r13		! source line 2415
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   _temp_3025 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3025 [i ] into _temp_3026
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_3027 = _temp_3026 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3027 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0SE",r10
!   _temp_3028 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3028 [i ] into _temp_3029
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_3031 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3031 [i ] into _temp_3032
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_3030 = _temp_3032		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3033 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3030  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3021:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3019
! END FOR
_Label_3022:
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_3036 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   _temp_3037 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3039 = &_temp_3038
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3039 = _temp_3039 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3041 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3929:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3929
!   _temp_3041 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3043:
!   Data Move: *_temp_3039 = _temp_3041  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3930:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3930
!   _temp_3039 = _temp_3039 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3040 = _temp_3040 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3040) then goto _Label_3043
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3043
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3044 = &_temp_3038
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3931
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3931:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3037 = *_temp_3044  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3932:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3932
! FOR STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3049 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3050 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3049  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3045:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3050 then goto _Label_3048		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3048
_Label_3046:
	mov	2427,r13		! source line 2427
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   _temp_3051 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3051 [i ] into _temp_3052
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_3053 = _temp_3052 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3053 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_3055 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3055 [i ] into _temp_3056
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_3054 = _temp_3056		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3057 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3054  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3047:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3045
! END FOR
_Label_3048:
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3933:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3933
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
!   _temp_3059 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3060 = _temp_3059 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3060 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
	mov	2439,r13		! source line 2439
	mov	"\0\0SE",r10
!   _temp_3061 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_3062 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_3063
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3065
	.word	-12
	.word	4
	.word	_Label_3066
	.word	-16
	.word	4
	.word	_Label_3067
	.word	-20
	.word	4
	.word	_Label_3068
	.word	-24
	.word	4
	.word	_Label_3069
	.word	-28
	.word	4
	.word	_Label_3070
	.word	-32
	.word	4
	.word	_Label_3071
	.word	-36
	.word	4
	.word	_Label_3072
	.word	-40
	.word	4
	.word	_Label_3073
	.word	-44
	.word	4
	.word	_Label_3074
	.word	-48
	.word	4
	.word	_Label_3075
	.word	-52
	.word	4
	.word	_Label_3076
	.word	-56
	.word	4
	.word	_Label_3077
	.word	-60
	.word	4
	.word	_Label_3078
	.word	-64
	.word	4
	.word	_Label_3079
	.word	-68
	.word	4
	.word	_Label_3080
	.word	-72
	.word	4
	.word	_Label_3081
	.word	-100
	.word	28
	.word	_Label_3082
	.word	-104
	.word	4
	.word	_Label_3083
	.word	-108
	.word	4
	.word	_Label_3084
	.word	-392
	.word	284
	.word	_Label_3085
	.word	-396
	.word	4
	.word	_Label_3086
	.word	-400
	.word	4
	.word	_Label_3087
	.word	-404
	.word	4
	.word	_Label_3088
	.word	-408
	.word	4
	.word	_Label_3089
	.word	-412
	.word	4
	.word	_Label_3090
	.word	-416
	.word	4
	.word	_Label_3091
	.word	-420
	.word	4
	.word	_Label_3092
	.word	-424
	.word	4
	.word	_Label_3093
	.word	-428
	.word	4
	.word	_Label_3094
	.word	-432
	.word	4
	.word	_Label_3095
	.word	-436
	.word	4
	.word	_Label_3096
	.word	-440
	.word	4
	.word	_Label_3097
	.word	-444
	.word	4
	.word	_Label_3098
	.word	-448
	.word	4
	.word	_Label_3099
	.word	-452
	.word	4
	.word	_Label_3100
	.word	-456
	.word	4
	.word	_Label_3101
	.word	-460
	.word	4
	.word	_Label_3102
	.word	-500
	.word	40
	.word	_Label_3103
	.word	-504
	.word	4
	.word	_Label_3104
	.word	-508
	.word	4
	.word	_Label_3105
	.word	-912
	.word	404
	.word	_Label_3106
	.word	-916
	.word	4
	.word	_Label_3107
	.word	-920
	.word	4
	.word	_Label_3108
	.word	-924
	.word	4
	.word	_Label_3109
	.word	-928
	.word	4
	.word	_Label_3110
	.word	-932
	.word	4
	.word	_Label_3111
	.word	-936
	.word	4
	.word	_Label_3112
	.word	-940
	.word	4
	.word	_Label_3113
	.word	-944
	.word	4
	.word	0
_Label_3063:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3064:
	.ascii	"Pself\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3934:
	push	r0
	sub	r1,1,r1
	bne	_Label_3934
	mov	2447,r13		! source line 2447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0SE",r10
!   _temp_3114 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3115 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3115  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2450,r13		! source line 2450
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3120 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3121 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3120  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3116:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3121 then goto _Label_3119		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3119
_Label_3117:
	mov	2451,r13		! source line 2451
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3122 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3122  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2452,r13		! source line 2452
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2453,r13		! source line 2453
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3123 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3123  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2454,r13		! source line 2454
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   _temp_3124 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3124 [i ] into _temp_3125
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3118:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3116
! END FOR
_Label_3119:
! CALL STATEMENT...
!   _temp_3126 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3126  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2457,r13		! source line 2457
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_3127 = _function_185_printFCB
	set	_function_185_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3128 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3127  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2459,r13		! source line 2459
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3129 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3129  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2460,r13		! source line 2460
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3134 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3135 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3134  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3130:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3135 then goto _Label_3133		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3133
_Label_3131:
	mov	2461,r13		! source line 2461
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3136 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3136  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2462,r13		! source line 2462
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2463,r13		! source line 2463
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3137 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3137  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2464,r13		! source line 2464
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3139 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3139 [i ] into _temp_3140
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_3138 = _temp_3140		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3138  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2465,r13		! source line 2465
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3141 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3141  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2466,r13		! source line 2466
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0SE",r10
!   _temp_3142 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3142 [i ] into _temp_3143
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3132:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3130
! END FOR
_Label_3133:
! CALL STATEMENT...
!   _temp_3144 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2469,r13		! source line 2469
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0SE",r10
!   _temp_3145 = _function_184_printOpen
	set	_function_184_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3146 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3145  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0SE",r10
!   _temp_3147 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_3148
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3149
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3150
	.word	-12
	.word	4
	.word	_Label_3151
	.word	-16
	.word	4
	.word	_Label_3152
	.word	-20
	.word	4
	.word	_Label_3153
	.word	-24
	.word	4
	.word	_Label_3154
	.word	-28
	.word	4
	.word	_Label_3155
	.word	-32
	.word	4
	.word	_Label_3156
	.word	-36
	.word	4
	.word	_Label_3157
	.word	-40
	.word	4
	.word	_Label_3158
	.word	-44
	.word	4
	.word	_Label_3159
	.word	-48
	.word	4
	.word	_Label_3160
	.word	-52
	.word	4
	.word	_Label_3161
	.word	-56
	.word	4
	.word	_Label_3162
	.word	-60
	.word	4
	.word	_Label_3163
	.word	-64
	.word	4
	.word	_Label_3164
	.word	-68
	.word	4
	.word	_Label_3165
	.word	-72
	.word	4
	.word	_Label_3166
	.word	-76
	.word	4
	.word	_Label_3167
	.word	-80
	.word	4
	.word	_Label_3168
	.word	-84
	.word	4
	.word	_Label_3169
	.word	-88
	.word	4
	.word	_Label_3170
	.word	-92
	.word	4
	.word	_Label_3171
	.word	-96
	.word	4
	.word	_Label_3172
	.word	-100
	.word	4
	.word	_Label_3173
	.word	-104
	.word	4
	.word	_Label_3174
	.word	-108
	.word	4
	.word	_Label_3175
	.word	-112
	.word	4
	.word	_Label_3176
	.word	-116
	.word	4
	.word	0
_Label_3148:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3149:
	.ascii	"Pself\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3176:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3935:
	push	r0
	sub	r1,1,r1
	bne	_Label_3935
	mov	2476,r13		! source line 2476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
	mov	2492,r13		! source line 2492
	mov	"\0\0SE",r10
!   _temp_3177 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3178
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3178
	jmp	_Label_3179
_Label_3178:
! THEN...
	mov	2494,r13		! source line 2494
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3179:
! SEND STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0SE",r10
!   _temp_3180 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0WH",r10
_Label_3181:
	mov	2499,r13		! source line 2499
	mov	"\0\0SE",r10
!   _temp_3184 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3182 else goto _Label_3183
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3183
	jmp	_Label_3182
_Label_3182:
	mov	2499,r13		! source line 2499
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
!   _temp_3185 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3186 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3185  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3181
_Label_3183:
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
!   _temp_3187 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3188 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3188 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3189 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3189 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3190 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3190 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0SE",r10
!   _temp_3191 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_3192
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3194
	.word	12
	.word	4
	.word	_Label_3195
	.word	-12
	.word	4
	.word	_Label_3196
	.word	-16
	.word	4
	.word	_Label_3197
	.word	-20
	.word	4
	.word	_Label_3198
	.word	-24
	.word	4
	.word	_Label_3199
	.word	-28
	.word	4
	.word	_Label_3200
	.word	-32
	.word	4
	.word	_Label_3201
	.word	-36
	.word	4
	.word	_Label_3202
	.word	-40
	.word	4
	.word	_Label_3203
	.word	-44
	.word	4
	.word	_Label_3204
	.word	-48
	.word	4
	.word	_Label_3205
	.word	-52
	.word	4
	.word	_Label_3206
	.word	-56
	.word	4
	.word	0
_Label_3192:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3193:
	.ascii	"Pself\0"
	.align
_Label_3194:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3205:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3206:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3936:
	push	r0
	sub	r1,1,r1
	bne	_Label_3936
	mov	2517,r13		! source line 2517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3208		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3208
!	jmp	_Label_3207
_Label_3207:
! THEN...
	mov	2548,r13		! source line 2548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3209 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3209  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2548,r13		! source line 2548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3208:
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0WH",r10
_Label_3210:
!   if numFiles <= 0 then goto _Label_3212		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3212
!	jmp	_Label_3211
_Label_3211:
	mov	2558,r13		! source line 2558
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3213 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3213  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2559,r13		! source line 2559
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3214 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3214  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2561,r13		! source line 2561
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3215 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3215  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2563,r13		! source line 2563
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3219 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3219 then goto _Label_3217		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3217
!	jmp	_Label_3218
_Label_3218:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3221
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
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
	store	r2,[r14+-108]
!   _temp_3220 = _temp_3221		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3220  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2566,r13		! source line 2566
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3216 else goto _Label_3217
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3217
	jmp	_Label_3216
_Label_3216:
! THEN...
	mov	2567,r13		! source line 2567
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0BR",r10
	jmp	_Label_3212
! END IF...
_Label_3217:
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3210
_Label_3212:
! IF STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3223		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3223
!	jmp	_Label_3222
_Label_3222:
! THEN...
	mov	2575,r13		! source line 2575
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3223:
! SEND STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
!   _temp_3224 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3229 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3230 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3229  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3225:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3230 then goto _Label_3228		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3228
_Label_3226:
	mov	2580,r13		! source line 2580
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   _temp_3231 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3231 [i ] into _temp_3232
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_3232		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3236 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3235 = *_temp_3236  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3235 != start then goto _Label_3234		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3234
!	jmp	_Label_3233
_Label_3233:
! THEN...
	mov	2583,r13		! source line 2583
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3237 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3240 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3239 = *_temp_3240  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3238 = _temp_3239 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3237 = _temp_3238  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0SE",r10
!   _temp_3241 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3234:
!   Increment the FOR-LOOP index variable and jump back
_Label_3227:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3225
! END FOR
_Label_3228:
! WHILE STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0WH",r10
_Label_3242:
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
!   _temp_3245 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3243 else goto _Label_3244
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3244
	jmp	_Label_3243
_Label_3243:
	mov	2590,r13		! source line 2590
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_3246 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3247 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3246  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3242
_Label_3244:
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
	mov	2593,r13		! source line 2593
	mov	"\0\0SE",r10
!   _temp_3248 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_3249 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3250 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3250 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3251 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3251 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3252 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3252 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3257 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3256 = *_temp_3257  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3256 < 0 then goto _Label_3255		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3255
	jmp	_Label_3253
_Label_3255:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3258 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3258 ) then goto _Label_3254		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3254
!	jmp	_Label_3253
_Label_3253:
! THEN...
	mov	2603,r13		! source line 2603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3259 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3259  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2603,r13		! source line 2603
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3254:
! RETURN STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_3260
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3262
	.word	12
	.word	4
	.word	_Label_3263
	.word	-12
	.word	4
	.word	_Label_3264
	.word	-16
	.word	4
	.word	_Label_3265
	.word	-20
	.word	4
	.word	_Label_3266
	.word	-24
	.word	4
	.word	_Label_3267
	.word	-28
	.word	4
	.word	_Label_3268
	.word	-32
	.word	4
	.word	_Label_3269
	.word	-36
	.word	4
	.word	_Label_3270
	.word	-40
	.word	4
	.word	_Label_3271
	.word	-44
	.word	4
	.word	_Label_3272
	.word	-48
	.word	4
	.word	_Label_3273
	.word	-52
	.word	4
	.word	_Label_3274
	.word	-56
	.word	4
	.word	_Label_3275
	.word	-60
	.word	4
	.word	_Label_3276
	.word	-64
	.word	4
	.word	_Label_3277
	.word	-68
	.word	4
	.word	_Label_3278
	.word	-72
	.word	4
	.word	_Label_3279
	.word	-76
	.word	4
	.word	_Label_3280
	.word	-80
	.word	4
	.word	_Label_3281
	.word	-84
	.word	4
	.word	_Label_3282
	.word	-88
	.word	4
	.word	_Label_3283
	.word	-92
	.word	4
	.word	_Label_3284
	.word	-96
	.word	4
	.word	_Label_3285
	.word	-100
	.word	4
	.word	_Label_3286
	.word	-104
	.word	4
	.word	_Label_3287
	.word	-108
	.word	4
	.word	_Label_3288
	.word	-112
	.word	4
	.word	_Label_3289
	.word	-116
	.word	4
	.word	_Label_3290
	.word	-120
	.word	4
	.word	_Label_3291
	.word	-124
	.word	4
	.word	_Label_3292
	.word	-128
	.word	4
	.word	_Label_3293
	.word	-132
	.word	4
	.word	_Label_3294
	.word	-136
	.word	4
	.word	_Label_3295
	.word	-140
	.word	4
	.word	_Label_3296
	.word	-144
	.word	4
	.word	_Label_3297
	.word	-148
	.word	4
	.word	_Label_3298
	.word	-152
	.word	4
	.word	_Label_3299
	.word	-156
	.word	4
	.word	_Label_3300
	.word	-160
	.word	4
	.word	0
_Label_3260:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3261:
	.ascii	"Pself\0"
	.align
_Label_3262:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3294:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3295:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3296:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3297:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3298:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3299:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3300:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3937:
	push	r0
	sub	r1,1,r1
	bne	_Label_3937
	mov	2618,r13		! source line 2618
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0IF",r10
!   _temp_3303 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3303 then goto _Label_3302		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3302
!	jmp	_Label_3301
_Label_3301:
! THEN...
	mov	2621,r13		! source line 2621
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3302:
! SEND STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   _temp_3304 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_3305 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3306 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3306  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3307 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3310 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3309 = *_temp_3310  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3308 = _temp_3309 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3307 = _temp_3308  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3314 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3313 = *_temp_3314  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3313 > 0 then goto _Label_3312		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3312
!	jmp	_Label_3311
_Label_3311:
! THEN...
	mov	2628,r13		! source line 2628
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0SE",r10
!   _temp_3315 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0SE",r10
!   _temp_3316 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3317 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3316  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3318 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3321 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3320 = *_temp_3321  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3319 = _temp_3320 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3318 = _temp_3319  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3325 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3324 = *_temp_3325  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3324 > 0 then goto _Label_3323		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3323
!	jmp	_Label_3322
_Label_3322:
! THEN...
	mov	2632,r13		! source line 2632
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0SE",r10
!   _temp_3326 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0SE",r10
!   _temp_3327 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3328 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3327  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3323:
! END IF...
_Label_3312:
! SEND STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0SE",r10
!   _temp_3329 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_3330
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3332
	.word	12
	.word	4
	.word	_Label_3333
	.word	-12
	.word	4
	.word	_Label_3334
	.word	-16
	.word	4
	.word	_Label_3335
	.word	-20
	.word	4
	.word	_Label_3336
	.word	-24
	.word	4
	.word	_Label_3337
	.word	-28
	.word	4
	.word	_Label_3338
	.word	-32
	.word	4
	.word	_Label_3339
	.word	-36
	.word	4
	.word	_Label_3340
	.word	-40
	.word	4
	.word	_Label_3341
	.word	-44
	.word	4
	.word	_Label_3342
	.word	-48
	.word	4
	.word	_Label_3343
	.word	-52
	.word	4
	.word	_Label_3344
	.word	-56
	.word	4
	.word	_Label_3345
	.word	-60
	.word	4
	.word	_Label_3346
	.word	-64
	.word	4
	.word	_Label_3347
	.word	-68
	.word	4
	.word	_Label_3348
	.word	-72
	.word	4
	.word	_Label_3349
	.word	-76
	.word	4
	.word	_Label_3350
	.word	-80
	.word	4
	.word	_Label_3351
	.word	-84
	.word	4
	.word	_Label_3352
	.word	-88
	.word	4
	.word	_Label_3353
	.word	-92
	.word	4
	.word	_Label_3354
	.word	-96
	.word	4
	.word	_Label_3355
	.word	-100
	.word	4
	.word	_Label_3356
	.word	-104
	.word	4
	.word	0
_Label_3330:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3331:
	.ascii	"Pself\0"
	.align
_Label_3332:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3328\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3324\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3320\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3317\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3310\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3356:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3938:
	push	r0
	sub	r1,1,r1
	bne	_Label_3938
	mov	2641,r13		! source line 2641
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3360 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3359 = *_temp_3360  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3359) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3361 = _temp_3359 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3361 ) then goto _Label_3358		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3358
!	jmp	_Label_3357
_Label_3357:
! THEN...
	mov	2647,r13		! source line 2647
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3366 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3365 = *_temp_3366  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3365) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3367 = _temp_3365 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3364 = *_temp_3367  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3364 >= 0 then goto _Label_3363		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3363
!	jmp	_Label_3362
_Label_3362:
! THEN...
	mov	2648,r13		! source line 2648
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3368 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3368  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2648,r13		! source line 2648
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3363:
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3370 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3369 = *_temp_3370  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3369) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3371 = _temp_3369 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3371 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3375 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3374 = *_temp_3375  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3374) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3376 = _temp_3374 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3373 = *_temp_3376  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3379 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3378 = *_temp_3379  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3378) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3380 = _temp_3378 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3377 = *_temp_3380  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3372 = _temp_3373 + _temp_3377		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3383 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3382 = *_temp_3383  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3382) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3384 = _temp_3382 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3381 = *_temp_3384  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3385 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3372  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3381  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_3358:
! RETURN STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_3386
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3387
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3388
	.word	12
	.word	4
	.word	_Label_3389
	.word	-12
	.word	4
	.word	_Label_3390
	.word	-16
	.word	4
	.word	_Label_3391
	.word	-20
	.word	4
	.word	_Label_3392
	.word	-24
	.word	4
	.word	_Label_3393
	.word	-28
	.word	4
	.word	_Label_3394
	.word	-32
	.word	4
	.word	_Label_3395
	.word	-36
	.word	4
	.word	_Label_3396
	.word	-40
	.word	4
	.word	_Label_3397
	.word	-44
	.word	4
	.word	_Label_3398
	.word	-48
	.word	4
	.word	_Label_3399
	.word	-52
	.word	4
	.word	_Label_3400
	.word	-56
	.word	4
	.word	_Label_3401
	.word	-60
	.word	4
	.word	_Label_3402
	.word	-64
	.word	4
	.word	_Label_3403
	.word	-68
	.word	4
	.word	_Label_3404
	.word	-72
	.word	4
	.word	_Label_3405
	.word	-76
	.word	4
	.word	_Label_3406
	.word	-80
	.word	4
	.word	_Label_3407
	.word	-84
	.word	4
	.word	_Label_3408
	.word	-88
	.word	4
	.word	_Label_3409
	.word	-92
	.word	4
	.word	_Label_3410
	.word	-96
	.word	4
	.word	_Label_3411
	.word	-100
	.word	4
	.word	_Label_3412
	.word	-104
	.word	4
	.word	_Label_3413
	.word	-108
	.word	4
	.word	0
_Label_3386:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3387:
	.ascii	"Pself\0"
	.align
_Label_3388:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3367\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3366\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3939:
	push	r0
	sub	r1,1,r1
	bne	_Label_3939
	mov	2660,r13		! source line 2660
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0SE",r10
!   _temp_3414 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3420		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3420
!   _temp_3419 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3421
_Label_3420:
!   _temp_3419 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3421:
!   if _temp_3419 then goto _Label_3418 else goto _Label_3415
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3415
	jmp	_Label_3418
_Label_3418:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3424 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3423 = *_temp_3424  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3423 == 0 then goto _Label_3425		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3425
!   _temp_3422 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3426
_Label_3425:
!   _temp_3422 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3426:
!   if _temp_3422 then goto _Label_3417 else goto _Label_3415
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3415
	jmp	_Label_3417
_Label_3417:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3429 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3428 = *_temp_3429  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3428) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3430 = _temp_3428 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3427 = *_temp_3430  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3427 >= 0 then goto _Label_3416		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3416
!	jmp	_Label_3415
_Label_3415:
! THEN...
	mov	2677,r13		! source line 2677
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3431 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3431  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2677,r13		! source line 2677
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3416:
! ASSIGNMENT STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3432 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3432  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0WH",r10
_Label_3433:
!   if numBytes <= 0 then goto _Label_3435		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3435
!	jmp	_Label_3434
_Label_3434:
	mov	2680,r13		! source line 2680
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3439 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3438 = *_temp_3439  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3438 == sector then goto _Label_3437		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3437
!	jmp	_Label_3436
_Label_3436:
! THEN...
	mov	2695,r13		! source line 2695
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3440) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3443 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3442 = *_temp_3443  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3441 = sector + _temp_3442		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3445 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3444 = *_temp_3445  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3446 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3441  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3444  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3447 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3447 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3448 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3448 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3437:
! ASSIGNMENT STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3450 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3449 = *_temp_3450  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3449 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0AS",r10
!   _temp_3451 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3451  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2704,r13		! source line 2704
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2708,r13		! source line 2708
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3433
_Label_3435:
! SEND STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
!   _temp_3452 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3453
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3454
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3455
	.word	12
	.word	4
	.word	_Label_3456
	.word	16
	.word	4
	.word	_Label_3457
	.word	20
	.word	4
	.word	_Label_3458
	.word	24
	.word	4
	.word	_Label_3459
	.word	-16
	.word	4
	.word	_Label_3460
	.word	-20
	.word	4
	.word	_Label_3461
	.word	-24
	.word	4
	.word	_Label_3462
	.word	-28
	.word	4
	.word	_Label_3463
	.word	-32
	.word	4
	.word	_Label_3464
	.word	-36
	.word	4
	.word	_Label_3465
	.word	-40
	.word	4
	.word	_Label_3466
	.word	-44
	.word	4
	.word	_Label_3467
	.word	-48
	.word	4
	.word	_Label_3468
	.word	-52
	.word	4
	.word	_Label_3469
	.word	-56
	.word	4
	.word	_Label_3470
	.word	-60
	.word	4
	.word	_Label_3471
	.word	-64
	.word	4
	.word	_Label_3472
	.word	-68
	.word	4
	.word	_Label_3473
	.word	-72
	.word	4
	.word	_Label_3474
	.word	-76
	.word	4
	.word	_Label_3475
	.word	-80
	.word	4
	.word	_Label_3476
	.word	-84
	.word	4
	.word	_Label_3477
	.word	-88
	.word	4
	.word	_Label_3478
	.word	-92
	.word	4
	.word	_Label_3479
	.word	-96
	.word	4
	.word	_Label_3480
	.word	-100
	.word	4
	.word	_Label_3481
	.word	-104
	.word	4
	.word	_Label_3482
	.word	-9
	.word	1
	.word	_Label_3483
	.word	-10
	.word	1
	.word	_Label_3484
	.word	-108
	.word	4
	.word	_Label_3485
	.word	-112
	.word	4
	.word	_Label_3486
	.word	-116
	.word	4
	.word	_Label_3487
	.word	-120
	.word	4
	.word	_Label_3488
	.word	-124
	.word	4
	.word	_Label_3489
	.word	-128
	.word	4
	.word	0
_Label_3453:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3454:
	.ascii	"Pself\0"
	.align
_Label_3455:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3456:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3457:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3458:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3452\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3451\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3450\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3449\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3447\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3446\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3470:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3482:
	.byte	'C'
	.ascii	"_temp_3422\0"
	.align
_Label_3483:
	.byte	'C'
	.ascii	"_temp_3419\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3485:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3486:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3487:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3488:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3489:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3940:
	push	r0
	sub	r1,1,r1
	bne	_Label_3940
	mov	2724,r13		! source line 2724
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0SE",r10
!   _temp_3490 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3496		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3496
!   _temp_3495 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3497
_Label_3496:
!   _temp_3495 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3497:
!   if _temp_3495 then goto _Label_3494 else goto _Label_3491
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3491
	jmp	_Label_3494
_Label_3494:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3500 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3499 = *_temp_3500  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3499 == 0 then goto _Label_3501		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3501
!   _temp_3498 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3502
_Label_3501:
!   _temp_3498 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3502:
!   if _temp_3498 then goto _Label_3493 else goto _Label_3491
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3491
	jmp	_Label_3493
_Label_3493:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3505 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3504 = *_temp_3505  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3504) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3506 = _temp_3504 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3503 = *_temp_3506  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3503 >= 0 then goto _Label_3492		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3492
!	jmp	_Label_3491
_Label_3491:
! THEN...
	mov	2742,r13		! source line 2742
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3507 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3507  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2742,r13		! source line 2742
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3492:
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3508 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3508  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0WH",r10
_Label_3509:
!   if numBytes <= 0 then goto _Label_3511		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3511
!	jmp	_Label_3510
_Label_3510:
	mov	2745,r13		! source line 2745
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3515 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3514 = *_temp_3515  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3514 == sector then goto _Label_3513		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3513
!	jmp	_Label_3512
_Label_3512:
! THEN...
	mov	2761,r13		! source line 2761
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3516) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3513:
! ASSIGNMENT STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3518 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3517 = *_temp_3518  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3517 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   _temp_3519 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3519  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2764,r13		! source line 2764
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3523 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3522 = *_temp_3523  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3522 != sector then goto _Label_3521		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3521
!	jmp	_Label_3520
_Label_3520:
	jmp	_Label_3524
_Label_3521:
! ELSE...
	mov	2767,r13		! source line 2767
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3527
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3527
	jmp	_Label_3526
_Label_3527:
!   if bytesToMove != 8192 then goto _Label_3526		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3526
!	jmp	_Label_3525
_Label_3525:
	jmp	_Label_3528
_Label_3526:
! ELSE...
	mov	2771,r13		! source line 2771
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3531 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3530 = *_temp_3531  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3529 = sector + _temp_3530		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3533 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3532 = *_temp_3533  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3534 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3529  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3532  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3528:
! END IF...
_Label_3524:
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3535 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3535 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3536 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3536 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2780,r13		! source line 2780
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3509
_Label_3511:
! SEND STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0SE",r10
!   _temp_3537 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3538
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3540
	.word	12
	.word	4
	.word	_Label_3541
	.word	16
	.word	4
	.word	_Label_3542
	.word	20
	.word	4
	.word	_Label_3543
	.word	24
	.word	4
	.word	_Label_3544
	.word	-16
	.word	4
	.word	_Label_3545
	.word	-20
	.word	4
	.word	_Label_3546
	.word	-24
	.word	4
	.word	_Label_3547
	.word	-28
	.word	4
	.word	_Label_3548
	.word	-32
	.word	4
	.word	_Label_3549
	.word	-36
	.word	4
	.word	_Label_3550
	.word	-40
	.word	4
	.word	_Label_3551
	.word	-44
	.word	4
	.word	_Label_3552
	.word	-48
	.word	4
	.word	_Label_3553
	.word	-52
	.word	4
	.word	_Label_3554
	.word	-56
	.word	4
	.word	_Label_3555
	.word	-60
	.word	4
	.word	_Label_3556
	.word	-64
	.word	4
	.word	_Label_3557
	.word	-68
	.word	4
	.word	_Label_3558
	.word	-72
	.word	4
	.word	_Label_3559
	.word	-76
	.word	4
	.word	_Label_3560
	.word	-80
	.word	4
	.word	_Label_3561
	.word	-84
	.word	4
	.word	_Label_3562
	.word	-88
	.word	4
	.word	_Label_3563
	.word	-92
	.word	4
	.word	_Label_3564
	.word	-96
	.word	4
	.word	_Label_3565
	.word	-100
	.word	4
	.word	_Label_3566
	.word	-104
	.word	4
	.word	_Label_3567
	.word	-108
	.word	4
	.word	_Label_3568
	.word	-112
	.word	4
	.word	_Label_3569
	.word	-9
	.word	1
	.word	_Label_3570
	.word	-10
	.word	1
	.word	_Label_3571
	.word	-116
	.word	4
	.word	_Label_3572
	.word	-120
	.word	4
	.word	_Label_3573
	.word	-124
	.word	4
	.word	_Label_3574
	.word	-128
	.word	4
	.word	_Label_3575
	.word	-132
	.word	4
	.word	_Label_3576
	.word	-136
	.word	4
	.word	0
_Label_3538:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3539:
	.ascii	"Pself\0"
	.align
_Label_3540:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3541:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3542:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3543:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3569:
	.byte	'C'
	.ascii	"_temp_3498\0"
	.align
_Label_3570:
	.byte	'C'
	.ascii	"_temp_3495\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3572:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3573:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3574:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3575:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3576:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3577
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3577:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3578
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3578:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3941:
	push	r0
	sub	r1,1,r1
	bne	_Label_3941
	mov	2828,r13		! source line 2828
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
!   _temp_3579 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3580
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3581
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3582
	.word	-12
	.word	4
	.word	0
_Label_3580:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3581:
	.ascii	"Pself\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3942:
	push	r0
	sub	r1,1,r1
	bne	_Label_3942
	mov	2838,r13		! source line 2838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3583 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3583  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2839,r13		! source line 2839
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2840,r13		! source line 2840
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3584 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3584  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2841,r13		! source line 2841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2842,r13		! source line 2842
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3585 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3585  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2843,r13		! source line 2843
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3586 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3586  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3587 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3587  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2848,r13		! source line 2848
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3588 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3588  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2849,r13		! source line 2849
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2850,r13		! source line 2850
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2851,r13		! source line 2851
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3589
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3590
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3591
	.word	-12
	.word	4
	.word	_Label_3592
	.word	-16
	.word	4
	.word	_Label_3593
	.word	-20
	.word	4
	.word	_Label_3594
	.word	-24
	.word	4
	.word	_Label_3595
	.word	-28
	.word	4
	.word	_Label_3596
	.word	-32
	.word	4
	.word	0
_Label_3589:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3590:
	.ascii	"Pself\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3597
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3597:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3598
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3598:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3943:
	push	r0
	sub	r1,1,r1
	bne	_Label_3943
	mov	2862,r13		! source line 2862
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3599 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3599  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2863,r13		! source line 2863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2864,r13		! source line 2864
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3600 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3600  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2865,r13		! source line 2865
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3602		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3602
!	jmp	_Label_3601
_Label_3601:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3603
_Label_3602:
! ELSE...
	mov	2869,r13		! source line 2869
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3604 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3604  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3603:
! RETURN STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3605
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3607
	.word	-12
	.word	4
	.word	_Label_3608
	.word	-16
	.word	4
	.word	_Label_3609
	.word	-20
	.word	4
	.word	0
_Label_3605:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3606:
	.ascii	"Pself\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3944:
	push	r0
	sub	r1,1,r1
	bne	_Label_3944
	mov	2875,r13		! source line 2875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0SE",r10
!   _temp_3610 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3611 = _temp_3610 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0SE",r10
!   _temp_3612 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3613 = _temp_3612 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0RE",r10
	mov	2889,r13		! source line 2889
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3616 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3615  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3614  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3614  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3617
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3618
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3619
	.word	12
	.word	4
	.word	_Label_3620
	.word	16
	.word	4
	.word	_Label_3621
	.word	-16
	.word	4
	.word	_Label_3622
	.word	-20
	.word	4
	.word	_Label_3623
	.word	-9
	.word	1
	.word	_Label_3624
	.word	-24
	.word	4
	.word	_Label_3625
	.word	-28
	.word	4
	.word	_Label_3626
	.word	-32
	.word	4
	.word	_Label_3627
	.word	-36
	.word	4
	.word	_Label_3628
	.word	-40
	.word	4
	.word	0
_Label_3617:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3618:
	.ascii	"Pself\0"
	.align
_Label_3619:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3620:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3623:
	.byte	'C'
	.ascii	"_temp_3614\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3612\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3628:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3945:
	push	r0
	sub	r1,1,r1
	bne	_Label_3945
	mov	2894,r13		! source line 2894
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0IF",r10
	mov	2899,r13		! source line 2899
	mov	"\0\0SE",r10
!   _temp_3632 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3633) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3632  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3631  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3631 then goto _Label_3630 else goto _Label_3629
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3629
	jmp	_Label_3630
_Label_3629:
! THEN...
	mov	2900,r13		! source line 2900
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3634 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3634  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2900,r13		! source line 2900
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3630:
! RETURN STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3635
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3637
	.word	-16
	.word	4
	.word	_Label_3638
	.word	-20
	.word	4
	.word	_Label_3639
	.word	-24
	.word	4
	.word	_Label_3640
	.word	-9
	.word	1
	.word	_Label_3641
	.word	-28
	.word	4
	.word	0
_Label_3635:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3636:
	.ascii	"Pself\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3634\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3633\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3640:
	.byte	'C'
	.ascii	"_temp_3631\0"
	.align
_Label_3641:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3946:
	push	r0
	sub	r1,1,r1
	bne	_Label_3946
	mov	2907,r13		! source line 2907
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3645 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3644 = *_temp_3645  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3644) then goto _Label_3643
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3643
!	jmp	_Label_3642
_Label_3642:
! THEN...
	mov	2934,r13		! source line 2934
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3646 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3646  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2934,r13		! source line 2934
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3643:
! IF STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0IF",r10
	mov	2938,r13		! source line 2938
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3650) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3649  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3649 == 1112300152 then goto _Label_3648		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3648
!	jmp	_Label_3647
_Label_3647:
! THEN...
	mov	2939,r13		! source line 2939
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3651 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3651  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2939,r13		! source line 2939
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3648:
! ASSIGNMENT STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0AS",r10
	mov	2944,r13		! source line 2944
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3652) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0AS",r10
	mov	2945,r13		! source line 2945
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3653) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0AS",r10
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3654) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2947,r13		! source line 2947
	mov	"\0\0AS",r10
	mov	2947,r13		! source line 2947
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3655) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0AS",r10
	mov	2948,r13		! source line 2948
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3656) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0AS",r10
	mov	2949,r13		! source line 2949
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3657) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0IF",r10
!   _temp_3660 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3660) then goto _Label_3659
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3659
!	jmp	_Label_3658
_Label_3658:
! THEN...
	mov	2953,r13		! source line 2953
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3661 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3661  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3659:
! ASSIGNMENT STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3663
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3663
!	jmp	_Label_3662
_Label_3662:
! THEN...
	mov	2961,r13		! source line 2961
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3664 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3664  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2961,r13		! source line 2961
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3663:
! IF STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0IF",r10
!   _temp_3667 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3667) then goto _Label_3666
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3666
!	jmp	_Label_3665
_Label_3665:
! THEN...
	mov	2967,r13		! source line 2967
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3668 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3668  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2967,r13		! source line 2967
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3666:
! IF STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0IF",r10
!   _temp_3671 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3671 then goto _Label_3670		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3670
!	jmp	_Label_3669
_Label_3669:
! THEN...
	mov	2971,r13		! source line 2971
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3672 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3672  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2971,r13		! source line 2971
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3670:
! ASSIGNMENT STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0IF",r10
!   _temp_3675 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3675) then goto _Label_3674
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3674
!	jmp	_Label_3673
_Label_3673:
! THEN...
	mov	2978,r13		! source line 2978
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3676 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3676  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2978,r13		! source line 2978
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2979,r13		! source line 2979
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3674:
! IF STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0IF",r10
!   _temp_3679 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3679 then goto _Label_3678		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3678
!	jmp	_Label_3677
_Label_3677:
! THEN...
	mov	2982,r13		! source line 2982
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3680 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3680  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3678:
! ASSIGNMENT STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0AS",r10
!   _temp_3683 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3682 = _temp_3683 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3681 = _temp_3682 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3681 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3685		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3685
!	jmp	_Label_3684
_Label_3684:
! THEN...
	mov	3004,r13		! source line 3004
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3686 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3686  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3687 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3687  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3005,r13		! source line 3005
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3688 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3688  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3006,r13		! source line 3006
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3685:
! SEND STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0SE",r10
!   _temp_3689 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0IF",r10
	mov	3015,r13		! source line 3015
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3693) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3692  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3692 == 707406378 then goto _Label_3691		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3691
!	jmp	_Label_3690
_Label_3690:
! THEN...
	mov	3016,r13		! source line 3016
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3694 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3694  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3016,r13		! source line 3016
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3017,r13		! source line 3017
	mov	"\0\0SE",r10
!   _temp_3695 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3018,r13		! source line 3018
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3691:
! ASSIGNMENT STATEMENT...
	mov	3022,r13		! source line 3022
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3700 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3701 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3700  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3696:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3701 then goto _Label_3699		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3699
_Label_3697:
	mov	3023,r13		! source line 3023
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0AS",r10
	mov	3024,r13		! source line 3024
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0IF",r10
	mov	3027,r13		! source line 3027
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3705) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3704  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3704 then goto _Label_3703 else goto _Label_3702
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3702
	jmp	_Label_3703
_Label_3702:
! THEN...
	mov	3028,r13		! source line 3028
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3706 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3706  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3028,r13		! source line 3028
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0SE",r10
!   _temp_3707 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3703:
! SEND STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3033,r13		! source line 3033
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3698:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3696
! END FOR
_Label_3699:
! IF STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0IF",r10
	mov	3037,r13		! source line 3037
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3711) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3710  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3710 == 707406378 then goto _Label_3709		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3709
!	jmp	_Label_3708
_Label_3708:
! THEN...
	mov	3038,r13		! source line 3038
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3712 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3712  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3038,r13		! source line 3038
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0SE",r10
!   _temp_3713 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3709:
! FOR STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3718 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3719 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3718  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3714:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3719 then goto _Label_3717		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3717
_Label_3715:
	mov	3044,r13		! source line 3044
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3045,r13		! source line 3045
	mov	"\0\0AS",r10
	mov	3045,r13		! source line 3045
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0IF",r10
	mov	3048,r13		! source line 3048
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3723) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3722  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3722 then goto _Label_3721 else goto _Label_3720
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3720
	jmp	_Label_3721
_Label_3720:
! THEN...
	mov	3049,r13		! source line 3049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3724 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3724  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3049,r13		! source line 3049
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0SE",r10
!   _temp_3725 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3051,r13		! source line 3051
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3721:
! ASSIGNMENT STATEMENT...
	mov	3053,r13		! source line 3053
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3716:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3714
! END FOR
_Label_3717:
! IF STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0IF",r10
	mov	3057,r13		! source line 3057
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3729) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3728  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3728 == 707406378 then goto _Label_3727		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3727
!	jmp	_Label_3726
_Label_3726:
! THEN...
	mov	3058,r13		! source line 3058
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3730 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3730  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3058,r13		! source line 3058
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0SE",r10
!   _temp_3731 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3727:
! ASSIGNMENT STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0AS",r10
	mov	3064,r13		! source line 3064
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3068,r13		! source line 3068
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3071,r13		! source line 3071
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3732
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3734
	.word	12
	.word	4
	.word	_Label_3735
	.word	-16
	.word	4
	.word	_Label_3736
	.word	-20
	.word	4
	.word	_Label_3737
	.word	-24
	.word	4
	.word	_Label_3738
	.word	-28
	.word	4
	.word	_Label_3739
	.word	-32
	.word	4
	.word	_Label_3740
	.word	-36
	.word	4
	.word	_Label_3741
	.word	-40
	.word	4
	.word	_Label_3742
	.word	-9
	.word	1
	.word	_Label_3743
	.word	-44
	.word	4
	.word	_Label_3744
	.word	-48
	.word	4
	.word	_Label_3745
	.word	-52
	.word	4
	.word	_Label_3746
	.word	-56
	.word	4
	.word	_Label_3747
	.word	-60
	.word	4
	.word	_Label_3748
	.word	-64
	.word	4
	.word	_Label_3749
	.word	-68
	.word	4
	.word	_Label_3750
	.word	-72
	.word	4
	.word	_Label_3751
	.word	-76
	.word	4
	.word	_Label_3752
	.word	-10
	.word	1
	.word	_Label_3753
	.word	-80
	.word	4
	.word	_Label_3754
	.word	-84
	.word	4
	.word	_Label_3755
	.word	-88
	.word	4
	.word	_Label_3756
	.word	-92
	.word	4
	.word	_Label_3757
	.word	-96
	.word	4
	.word	_Label_3758
	.word	-100
	.word	4
	.word	_Label_3759
	.word	-104
	.word	4
	.word	_Label_3760
	.word	-108
	.word	4
	.word	_Label_3761
	.word	-112
	.word	4
	.word	_Label_3762
	.word	-116
	.word	4
	.word	_Label_3763
	.word	-120
	.word	4
	.word	_Label_3764
	.word	-124
	.word	4
	.word	_Label_3765
	.word	-128
	.word	4
	.word	_Label_3766
	.word	-132
	.word	4
	.word	_Label_3767
	.word	-136
	.word	4
	.word	_Label_3768
	.word	-140
	.word	4
	.word	_Label_3769
	.word	-144
	.word	4
	.word	_Label_3770
	.word	-148
	.word	4
	.word	_Label_3771
	.word	-152
	.word	4
	.word	_Label_3772
	.word	-156
	.word	4
	.word	_Label_3773
	.word	-160
	.word	4
	.word	_Label_3774
	.word	-164
	.word	4
	.word	_Label_3775
	.word	-168
	.word	4
	.word	_Label_3776
	.word	-172
	.word	4
	.word	_Label_3777
	.word	-176
	.word	4
	.word	_Label_3778
	.word	-180
	.word	4
	.word	_Label_3779
	.word	-184
	.word	4
	.word	_Label_3780
	.word	-188
	.word	4
	.word	_Label_3781
	.word	-192
	.word	4
	.word	_Label_3782
	.word	-196
	.word	4
	.word	_Label_3783
	.word	-200
	.word	4
	.word	_Label_3784
	.word	-204
	.word	4
	.word	_Label_3785
	.word	-208
	.word	4
	.word	_Label_3786
	.word	-212
	.word	4
	.word	_Label_3787
	.word	-216
	.word	4
	.word	_Label_3788
	.word	-220
	.word	4
	.word	_Label_3789
	.word	-224
	.word	4
	.word	_Label_3790
	.word	-228
	.word	4
	.word	_Label_3791
	.word	-232
	.word	4
	.word	_Label_3792
	.word	-236
	.word	4
	.word	_Label_3793
	.word	-240
	.word	4
	.word	_Label_3794
	.word	-244
	.word	4
	.word	_Label_3795
	.word	-248
	.word	4
	.word	_Label_3796
	.word	-252
	.word	4
	.word	_Label_3797
	.word	-256
	.word	4
	.word	_Label_3798
	.word	-260
	.word	4
	.word	_Label_3799
	.word	-264
	.word	4
	.word	_Label_3800
	.word	-268
	.word	4
	.word	0
_Label_3732:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3733:
	.ascii	"Pself\0"
	.align
_Label_3734:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3731\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3724\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3742:
	.byte	'C'
	.ascii	"_temp_3722\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3719\0"
	.align
_Label_3744:
	.byte	'?'
	.ascii	"_temp_3718\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3713\0"
	.align
_Label_3746:
	.byte	'?'
	.ascii	"_temp_3712\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3752:
	.byte	'C'
	.ascii	"_temp_3704\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3776:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3777:
	.byte	'?'
	.ascii	"_temp_3657\0"
	.align
_Label_3778:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3779:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3780:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3781:
	.byte	'?'
	.ascii	"_temp_3653\0"
	.align
_Label_3782:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3783:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3649\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3787:
	.byte	'?'
	.ascii	"_temp_3645\0"
	.align
_Label_3788:
	.byte	'?'
	.ascii	"_temp_3644\0"
	.align
_Label_3789:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3790:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3791:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3792:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3793:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3794:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3795:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3796:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3797:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3798:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3799:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3800:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
