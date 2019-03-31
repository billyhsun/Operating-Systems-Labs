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
	.ascii	"TestProgram3"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram3"
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
_Label_3687:
	push	r0
	sub	r1,1,r1
	bne	_Label_3687
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
	mov	16,r13		! source line 16
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
	mov	16,r13		! source line 16
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
_Label_3688:
	push	r0
	sub	r1,1,r1
	bne	_Label_3688
	mov	23,r13		! source line 23
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
	mov	32,r13		! source line 32
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
	mov	33,r13		! source line 33
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
	mov	34,r13		! source line 34
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
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
	mov	35,r13		! source line 35
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
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
	mov	36,r13		! source line 36
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
	mov	37,r13		! source line 37
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
	mov	38,r13		! source line 38
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
	mov	39,r13		! source line 39
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
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	40,r13		! source line 40
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	41,r13		! source line 41
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
	mov	42,r13		! source line 42
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
	mov	43,r13		! source line 43
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
	mov	44,r13		! source line 44
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	44,r13		! source line 44
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
_Label_3689:
	push	r0
	sub	r1,1,r1
	bne	_Label_3689
	mov	51,r13		! source line 51
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	58,r13		! source line 58
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
	mov	59,r13		! source line 59
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	60,r13		! source line 60
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
	mov	61,r13		! source line 61
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
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3690:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3690
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	63,r13		! source line 63
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
	mov	64,r13		! source line 64
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
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3691:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3691
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	66,r13		! source line 66
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
	mov	67,r13		! source line 67
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
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	71,r13		! source line 71
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
_Label_3692:
	push	r0
	sub	r1,1,r1
	bne	_Label_3692
	mov	76,r13		! source line 76
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0WH",r10
_Label_271:
!	jmp	_Label_272
_Label_272:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0IF",r10
	mov	88,r13		! source line 88
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
	mov	89,r13		! source line 89
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_277
_Label_275:
! ELSE...
	mov	91,r13		! source line 91
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	91,r13		! source line 91
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
_Label_3693:
	push	r0
	sub	r1,1,r1
	bne	_Label_3693
	mov	98,r13		! source line 98
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	112,r13		! source line 112
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
	mov	114,r13		! source line 114
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
	mov	115,r13		! source line 115
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
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_283:
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	118,r13		! source line 118
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
	mov	124,r13		! source line 124
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0WH",r10
_Label_289:
	mov	128,r13		! source line 128
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
	mov	128,r13		! source line 128
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0AS",r10
	mov	129,r13		! source line 129
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
	mov	130,r13		! source line 130
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
	mov	133,r13		! source line 133
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
	mov	134,r13		! source line 134
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
	mov	134,r13		! source line 134
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	135,r13		! source line 135
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
	mov	133,r13		! source line 133
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
_Label_3694:
	push	r0
	sub	r1,1,r1
	bne	_Label_3694
	mov	141,r13		! source line 141
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
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
	mov	149,r13		! source line 149
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	150,r13		! source line 150
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
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	151,r13		! source line 151
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
_Label_3695:
	push	r0
	sub	r1,1,r1
	bne	_Label_3695
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	169,r13		! source line 169
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
	mov	170,r13		! source line 170
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	171,r13		! source line 171
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
	mov	172,r13		! source line 172
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	172,r13		! source line 172
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
_Label_3696:
	push	r0
	sub	r1,1,r1
	bne	_Label_3696
	mov	177,r13		! source line 177
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	188,r13		! source line 188
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	192,r13		! source line 192
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
	mov	193,r13		! source line 193
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
	mov	195,r13		! source line 195
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	195,r13		! source line 195
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
_Label_3697:
	push	r0
	sub	r1,1,r1
	bne	_Label_3697
	mov	200,r13		! source line 200
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
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
	mov	209,r13		! source line 209
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	210,r13		! source line 210
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
	mov	211,r13		! source line 211
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_353 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
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
	mov	212,r13		! source line 212
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
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
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
	mov	216,r13		! source line 216
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
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	218,r13		! source line 218
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
_Label_3698:
	push	r0
	sub	r1,1,r1
	bne	_Label_3698
	mov	223,r13		! source line 223
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	236,r13		! source line 236
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_370		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_370
!	jmp	_Label_369
_Label_369:
! THEN...
	mov	239,r13		! source line 239
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_371
_Label_370:
! ELSE...
	mov	242,r13		! source line 242
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_371:
! RETURN STATEMENT...
	mov	245,r13		! source line 245
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
_Label_3699:
	push	r0
	sub	r1,1,r1
	bne	_Label_3699
	mov	684,r13		! source line 684
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	692,r13		! source line 692
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
	mov	693,r13		! source line 693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_380 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	694,r13		! source line 694
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
	mov	696,r13		! source line 696
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
	mov	697,r13		! source line 697
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
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	699,r13		! source line 699
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
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
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
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	705,r13		! source line 705
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
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	708,r13		! source line 708
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
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	711,r13		! source line 711
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
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	714,r13		! source line 714
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
	mov	716,r13		! source line 716
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
	mov	718,r13		! source line 718
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
	mov	719,r13		! source line 719
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
	mov	720,r13		! source line 720
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	723,r13		! source line 723
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
_Label_3700:
	push	r0
	sub	r1,1,r1
	bne	_Label_3700
	mov	1051,r13		! source line 1051
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
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1056,r13		! source line 1056
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
	mov	19,r1
_Label_3701:
	push	r0
	sub	r1,1,r1
	bne	_Label_3701
	mov	1061,r13		! source line 1061
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
	store	r1,[r14+-68]
!   Data Move: _temp_427 = *_temp_428  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_427) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_429 = _temp_427 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_429 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
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
	store	r1,[r14+-76]
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
	store	r1,[r14+-60]
!   Data Move: *_temp_430 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStatus  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1073,r13		! source line 1073
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_432 = *_temp_433  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_432) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _temp_432 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_431 = _temp_434		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_435 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_431  sizeInBytes=4
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
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_437 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_436 = *_temp_437  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_438 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_436  sizeInBytes=4
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
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_439 = *_temp_440  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_439) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = _temp_439 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_441 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_442 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1078,r13		! source line 1078
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_443
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_444
	.word	8
	.word	4
	.word	_Label_445
	.word	-12
	.word	4
	.word	_Label_446
	.word	-16
	.word	4
	.word	_Label_447
	.word	-20
	.word	4
	.word	_Label_448
	.word	-24
	.word	4
	.word	_Label_449
	.word	-28
	.word	4
	.word	_Label_450
	.word	-32
	.word	4
	.word	_Label_451
	.word	-36
	.word	4
	.word	_Label_452
	.word	-40
	.word	4
	.word	_Label_453
	.word	-44
	.word	4
	.word	_Label_454
	.word	-48
	.word	4
	.word	_Label_455
	.word	-52
	.word	4
	.word	_Label_456
	.word	-56
	.word	4
	.word	_Label_457
	.word	-60
	.word	4
	.word	_Label_458
	.word	-64
	.word	4
	.word	_Label_459
	.word	-68
	.word	4
	.word	_Label_460
	.word	-72
	.word	4
	.word	_Label_461
	.word	-76
	.word	4
	.word	0
_Label_443:
	.ascii	"ProcessFinish\0"
	.align
_Label_444:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"oldIntStatus\0"
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
_Label_3702:
	push	r0
	sub	r1,1,r1
	bne	_Label_3702
	mov	1555,r13		! source line 1555
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1567,r13		! source line 1567
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
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1568,r13		! source line 1568
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
	.word	_Label_462
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_462:
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
_Label_3703:
	push	r0
	sub	r1,1,r1
	bne	_Label_3703
	mov	1573,r13		! source line 1573
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0IF",r10
!   _temp_466 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_467 = _temp_466 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_465 = *_temp_467  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_465 == 0 then goto _Label_464		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_464
!	jmp	_Label_463
_Label_463:
! THEN...
	mov	1586,r13		! source line 1586
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0SE",r10
!   _temp_469 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_470 = _temp_469 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_468 = *_temp_470  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_468) then goto _runtimeErrorNullPointer
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
_Label_464:
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
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
	.word	_Label_471
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_472
	.word	-12
	.word	4
	.word	_Label_473
	.word	-16
	.word	4
	.word	_Label_474
	.word	-20
	.word	4
	.word	_Label_475
	.word	-24
	.word	4
	.word	_Label_476
	.word	-28
	.word	4
	.word	_Label_477
	.word	-32
	.word	4
	.word	0
_Label_471:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_465\0"
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
	mov	1592,r13		! source line 1592
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
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
	.word	_Label_478
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_478:
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
_Label_3704:
	push	r0
	sub	r1,1,r1
	bne	_Label_3704
	mov	1606,r13		! source line 1606
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_479 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_479  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1613,r13		! source line 1613
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
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
	.word	_Label_480
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_481
	.word	-12
	.word	4
	.word	0
_Label_480:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_479\0"
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
_Label_3705:
	push	r0
	sub	r1,1,r1
	bne	_Label_3705
	mov	1618,r13		! source line 1618
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_482 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_482  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1625,r13		! source line 1625
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1625,r13		! source line 1625
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
	.word	_Label_483
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_483:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_482\0"
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
_Label_3706:
	push	r0
	sub	r1,1,r1
	bne	_Label_3706
	mov	1630,r13		! source line 1630
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_485 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1637,r13		! source line 1637
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_487
	.word	-12
	.word	4
	.word	0
_Label_486:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_485\0"
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
_Label_3707:
	push	r0
	sub	r1,1,r1
	bne	_Label_3707
	mov	1642,r13		! source line 1642
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_488 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_488  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1649,r13		! source line 1649
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
	.word	_Label_489
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_490
	.word	-12
	.word	4
	.word	0
_Label_489:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_488\0"
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
_Label_3708:
	push	r0
	sub	r1,1,r1
	bne	_Label_3708
	mov	1654,r13		! source line 1654
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_491 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1661,r13		! source line 1661
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
	.word	_Label_492
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_493
	.word	-12
	.word	4
	.word	0
_Label_492:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_491\0"
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
_Label_3709:
	push	r0
	sub	r1,1,r1
	bne	_Label_3709
	mov	1666,r13		! source line 1666
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_494 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1673,r13		! source line 1673
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
	.word	_Label_495
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_496
	.word	-12
	.word	4
	.word	0
_Label_495:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_494\0"
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
_Label_3710:
	push	r0
	sub	r1,1,r1
	bne	_Label_3710
	mov	1678,r13		! source line 1678
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_497 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
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
	.word	_Label_498
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_499
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
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
_Label_3711:
	push	r0
	sub	r1,1,r1
	bne	_Label_3711
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_500 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_501 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_505 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_504 = *_temp_505  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_504 == 0 then goto _Label_503		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_503
!	jmp	_Label_502
_Label_502:
! THEN...
	mov	1701,r13		! source line 1701
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_507 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_506 = *_temp_507  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_506) then goto _runtimeErrorNullPointer
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
	jmp	_Label_508
_Label_503:
! ELSE...
	mov	1703,r13		! source line 1703
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_509 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_508:
! SEND STATEMENT...
	mov	1705,r13		! source line 1705
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
	mov	1711,r13		! source line 1711
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1711,r13		! source line 1711
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
	.word	_Label_510
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_511
	.word	8
	.word	4
	.word	_Label_512
	.word	-12
	.word	4
	.word	_Label_513
	.word	-16
	.word	4
	.word	_Label_514
	.word	-20
	.word	4
	.word	_Label_515
	.word	-24
	.word	4
	.word	_Label_516
	.word	-28
	.word	4
	.word	_Label_517
	.word	-32
	.word	4
	.word	_Label_518
	.word	-36
	.word	4
	.word	0
_Label_510:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_511:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_500\0"
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
_Label_3712:
	push	r0
	sub	r1,1,r1
	bne	_Label_3712
	mov	1716,r13		! source line 1716
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1737,r13		! source line 1737
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3713
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_519
_Label_3713:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_519
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_519
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_533,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_533:
	jmp	_Label_525	! 1:	
	jmp	_Label_532	! 2:	
	jmp	_Label_522	! 3:	
	jmp	_Label_521	! 4:	
	jmp	_Label_524	! 5:	
	jmp	_Label_523	! 6:	
	jmp	_Label_526	! 7:	
	jmp	_Label_527	! 8:	
	jmp	_Label_528	! 9:	
	jmp	_Label_529	! 10:	
	jmp	_Label_530	! 11:	
	jmp	_Label_531	! 12:	
! CASE 4...
_Label_521:
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_534  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_534  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_522:
! CALL STATEMENT...
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_523:
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_535  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_535  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_524:
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_536  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_536  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_525:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_526:
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_537  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_537  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_527:
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_538  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_538  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_528:
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
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
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_539  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_539  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_529:
! RETURN STATEMENT...
	mov	1757,r13		! source line 1757
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
	mov	1757,r13		! source line 1757
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_540  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_540  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_530:
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_541  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_541  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_531:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_532:
! CALL STATEMENT...
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_519:
! CALL STATEMENT...
!   _temp_542 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_543 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1770,r13		! source line 1770
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_520:
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
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
	.word	_Label_544
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_545
	.word	8
	.word	4
	.word	_Label_546
	.word	12
	.word	4
	.word	_Label_547
	.word	16
	.word	4
	.word	_Label_548
	.word	20
	.word	4
	.word	_Label_549
	.word	24
	.word	4
	.word	_Label_550
	.word	-12
	.word	4
	.word	_Label_551
	.word	-16
	.word	4
	.word	_Label_552
	.word	-20
	.word	4
	.word	_Label_553
	.word	-24
	.word	4
	.word	_Label_554
	.word	-28
	.word	4
	.word	_Label_555
	.word	-32
	.word	4
	.word	_Label_556
	.word	-36
	.word	4
	.word	_Label_557
	.word	-40
	.word	4
	.word	_Label_558
	.word	-44
	.word	4
	.word	_Label_559
	.word	-48
	.word	4
	.word	0
_Label_544:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_545:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_546:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_547:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_548:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_549:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_534\0"
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
_Label_3714:
	push	r0
	sub	r1,1,r1
	bne	_Label_3714
	mov	1777,r13		! source line 1777
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1778,r13		! source line 1778
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
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
	.word	_Label_560
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_561
	.word	8
	.word	4
	.word	0
_Label_560:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_561:
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
_Label_3715:
	push	r0
	sub	r1,1,r1
	bne	_Label_3715
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_562 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1784,r13		! source line 1784
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1784,r13		! source line 1784
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
	.word	_Label_563
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_564
	.word	-12
	.word	4
	.word	0
_Label_563:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_562\0"
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
_Label_3716:
	push	r0
	sub	r1,1,r1
	bne	_Label_3716
	mov	1789,r13		! source line 1789
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1790,r13		! source line 1790
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
	mov	1790,r13		! source line 1790
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
	.word	_Label_565
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_565:
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
	mov	55,r1
_Label_3717:
	push	r0
	sub	r1,1,r1
	bne	_Label_3717
	mov	1795,r13		! source line 1795
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0AS",r10
	mov	1806,r13		! source line 1806
	mov	"\0\0SE",r10
!   _temp_566 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-196]
!   Send message GetANewThread
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
	mov	1807,r13		! source line 1807
	mov	"\0\0SE",r10
!   _temp_567 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   Send message GetANewProcess
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_568 = newPCB + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_568 = newThread  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = newPCB + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_571 = *_temp_572  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_571) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = _temp_571 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_570 = *_temp_573  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_569 = _temp_570  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_574 = newThread + 76
	load	[r14+-200],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_574 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_575 = newThread + 4160
	load	[r14+-200],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_575 = newPCB  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = newThread + 4096
	load	[r14+-200],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_577 [0 ] into _temp_578
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_576 = _temp_578		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1813,r13		! source line 1813
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = newThread + 68
	load	[r14+-200],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = newThread + 88
	load	[r14+-200],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_581 [999 ] into _temp_582
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
!   _temp_580 = _temp_582		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_579 = _temp_580  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_583 = _temp_584		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_586 = *_temp_587  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_586) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _temp_586 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_589 = _temp_588 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_585 = *_temp_589  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_590 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_583  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_585  sizeInBytes=4
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
	mov	1820,r13		! source line 1820
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_595 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_598 = *_temp_599  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_598) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _temp_598 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_601 = _temp_600 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_597 = *_temp_601  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_596 = _temp_597 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_595  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-216]
_Label_591:
!   Perform the FOR-LOOP termination test
!   if i > _temp_596 then goto _Label_594		
	load	[r14+-216],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_594
_Label_592:
	mov	1820,r13		! source line 1820
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_602  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_605) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _temp_605 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_604  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_604  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0IF",r10
	mov	1822,r13		! source line 1822
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_611 = *_temp_612  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_611) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = _temp_611 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_610  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_614 = _temp_610 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_614 then goto _Label_609 else goto _Label_608
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_608
	jmp	_Label_609
_Label_608:
! THEN...
	mov	1823,r13		! source line 1823
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_616
_Label_609:
! ELSE...
	mov	1825,r13		! source line 1825
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
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
_Label_616:
!   Increment the FOR-LOOP index variable and jump back
_Label_593:
!   i = i + 1
	load	[r14+-216],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
	jmp	_Label_591
! END FOR
_Label_594:
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! SEND STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   _temp_618 = _function_187_Resume_After_Fork
	set	_function_187_Resume_After_Fork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_618  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldPC  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = newPCB + 12
	load	[r14+-204],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_619 = *_temp_620  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_619  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,224,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_621
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_622
	.word	-16
	.word	4
	.word	_Label_623
	.word	-20
	.word	4
	.word	_Label_624
	.word	-24
	.word	4
	.word	_Label_625
	.word	-28
	.word	4
	.word	_Label_626
	.word	-32
	.word	4
	.word	_Label_627
	.word	-9
	.word	1
	.word	_Label_628
	.word	-36
	.word	4
	.word	_Label_629
	.word	-40
	.word	4
	.word	_Label_630
	.word	-44
	.word	4
	.word	_Label_631
	.word	-10
	.word	1
	.word	_Label_632
	.word	-48
	.word	4
	.word	_Label_633
	.word	-52
	.word	4
	.word	_Label_634
	.word	-56
	.word	4
	.word	_Label_635
	.word	-60
	.word	4
	.word	_Label_636
	.word	-64
	.word	4
	.word	_Label_637
	.word	-68
	.word	4
	.word	_Label_638
	.word	-72
	.word	4
	.word	_Label_639
	.word	-76
	.word	4
	.word	_Label_640
	.word	-80
	.word	4
	.word	_Label_641
	.word	-84
	.word	4
	.word	_Label_642
	.word	-88
	.word	4
	.word	_Label_643
	.word	-92
	.word	4
	.word	_Label_644
	.word	-96
	.word	4
	.word	_Label_645
	.word	-100
	.word	4
	.word	_Label_646
	.word	-104
	.word	4
	.word	_Label_647
	.word	-108
	.word	4
	.word	_Label_648
	.word	-112
	.word	4
	.word	_Label_649
	.word	-116
	.word	4
	.word	_Label_650
	.word	-120
	.word	4
	.word	_Label_651
	.word	-124
	.word	4
	.word	_Label_652
	.word	-128
	.word	4
	.word	_Label_653
	.word	-132
	.word	4
	.word	_Label_654
	.word	-136
	.word	4
	.word	_Label_655
	.word	-140
	.word	4
	.word	_Label_656
	.word	-144
	.word	4
	.word	_Label_657
	.word	-148
	.word	4
	.word	_Label_658
	.word	-152
	.word	4
	.word	_Label_659
	.word	-156
	.word	4
	.word	_Label_660
	.word	-160
	.word	4
	.word	_Label_661
	.word	-164
	.word	4
	.word	_Label_662
	.word	-168
	.word	4
	.word	_Label_663
	.word	-172
	.word	4
	.word	_Label_664
	.word	-176
	.word	4
	.word	_Label_665
	.word	-180
	.word	4
	.word	_Label_666
	.word	-184
	.word	4
	.word	_Label_667
	.word	-188
	.word	4
	.word	_Label_668
	.word	-192
	.word	4
	.word	_Label_669
	.word	-196
	.word	4
	.word	_Label_670
	.word	-200
	.word	4
	.word	_Label_671
	.word	-204
	.word	4
	.word	_Label_672
	.word	-208
	.word	4
	.word	_Label_673
	.word	-212
	.word	4
	.word	_Label_674
	.word	-216
	.word	4
	.word	0
_Label_621:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_627:
	.byte	'C'
	.ascii	"_temp_614\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_631:
	.byte	'C'
	.ascii	"_temp_610\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_670:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_671:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_672:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_673:
	.byte	'I'
	.ascii	"oldPC\0"
	.align
_Label_674:
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
_Label_3718:
	push	r0
	sub	r1,1,r1
	bne	_Label_3718
	mov	1835,r13		! source line 1835
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_676 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_675 = *_temp_676  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_675) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = _temp_675 + 32
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
!   _temp_679 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_679 [0 ] into _temp_680
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
!   _temp_678 = _temp_680		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1845,r13		! source line 1845
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_681 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_681 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_682 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_682 [14 ] into _temp_683
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
!   Data Move: userStackTop = *_temp_683  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_684 [999 ] into _temp_685
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
!   systemStackTop = _temp_685		(4 bytes)
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
	mov	1848,r13		! source line 1848
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1848,r13		! source line 1848
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
	.word	_Label_686
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_687
	.word	8
	.word	4
	.word	_Label_688
	.word	-12
	.word	4
	.word	_Label_689
	.word	-16
	.word	4
	.word	_Label_690
	.word	-20
	.word	4
	.word	_Label_691
	.word	-24
	.word	4
	.word	_Label_692
	.word	-28
	.word	4
	.word	_Label_693
	.word	-32
	.word	4
	.word	_Label_694
	.word	-36
	.word	4
	.word	_Label_695
	.word	-40
	.word	4
	.word	_Label_696
	.word	-44
	.word	4
	.word	_Label_697
	.word	-48
	.word	4
	.word	_Label_698
	.word	-52
	.word	4
	.word	_Label_699
	.word	-56
	.word	4
	.word	_Label_700
	.word	-60
	.word	4
	.word	_Label_701
	.word	-64
	.word	4
	.word	0
_Label_686:
	.ascii	"Resume_After_Fork\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_699:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_700:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_701:
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
_Label_3719:
	push	r0
	sub	r1,1,r1
	bne	_Label_3719
	mov	1854,r13		! source line 1854
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_706 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_707 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_706  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_702:
!   Perform the FOR-LOOP termination test
!   if i > _temp_707 then goto _Label_705		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_705
_Label_703:
	mov	1859,r13		! source line 1859
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0IF",r10
!   _temp_713 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_714 = _temp_713 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_714 [i ] into _temp_715
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
!   _temp_716 = _temp_715 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_712 = *_temp_716  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_712 != processID then goto _Label_709		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_709
!	jmp	_Label_711
_Label_711:
!   _temp_718 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_719 = _temp_718 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_719 [i ] into _temp_720
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
!   _temp_721 = _temp_720 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_717 = *_temp_721  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_724 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_723 = *_temp_724  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_723) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_725 = _temp_723 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_722 = *_temp_725  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_717 != _temp_722 then goto _Label_709		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_709
!	jmp	_Label_710
_Label_710:
!   _temp_727 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_728 = _temp_727 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_728 [i ] into _temp_729
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
!   _temp_730 = _temp_729 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_726 = *_temp_730  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_726 == 3 then goto _Label_709		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_709
!	jmp	_Label_708
_Label_708:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
	mov	1861,r13		! source line 1861
	mov	"\0\0SE",r10
!   _temp_732 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_733 = _temp_732 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_733 [i ] into _temp_734
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
!   _temp_731 = _temp_734		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_735 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_731  sizeInBytes=4
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
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_709:
!   Increment the FOR-LOOP index variable and jump back
_Label_704:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_702
! END FOR
_Label_705:
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
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
	.word	_Label_736
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_737
	.word	8
	.word	4
	.word	_Label_738
	.word	-12
	.word	4
	.word	_Label_739
	.word	-16
	.word	4
	.word	_Label_740
	.word	-20
	.word	4
	.word	_Label_741
	.word	-24
	.word	4
	.word	_Label_742
	.word	-28
	.word	4
	.word	_Label_743
	.word	-32
	.word	4
	.word	_Label_744
	.word	-36
	.word	4
	.word	_Label_745
	.word	-40
	.word	4
	.word	_Label_746
	.word	-44
	.word	4
	.word	_Label_747
	.word	-48
	.word	4
	.word	_Label_748
	.word	-52
	.word	4
	.word	_Label_749
	.word	-56
	.word	4
	.word	_Label_750
	.word	-60
	.word	4
	.word	_Label_751
	.word	-64
	.word	4
	.word	_Label_752
	.word	-68
	.word	4
	.word	_Label_753
	.word	-72
	.word	4
	.word	_Label_754
	.word	-76
	.word	4
	.word	_Label_755
	.word	-80
	.word	4
	.word	_Label_756
	.word	-84
	.word	4
	.word	_Label_757
	.word	-88
	.word	4
	.word	_Label_758
	.word	-92
	.word	4
	.word	_Label_759
	.word	-96
	.word	4
	.word	_Label_760
	.word	-100
	.word	4
	.word	_Label_761
	.word	-104
	.word	4
	.word	_Label_762
	.word	-108
	.word	4
	.word	_Label_763
	.word	-112
	.word	4
	.word	_Label_764
	.word	-116
	.word	4
	.word	_Label_765
	.word	-120
	.word	4
	.word	0
_Label_736:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_737:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_764:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_765:
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
_Label_3720:
	push	r0
	sub	r1,1,r1
	bne	_Label_3720
	mov	1872,r13		! source line 1872
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! addrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	add	r14,-216,r4
	mov	23,r3
_Label_3721:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3721
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
	mov	1883,r13		! source line 1883
	mov	"\0\0SE",r10
!   _temp_767 = &strBuffer
	add	r14,-240,r1
	store	r1,[r14+-120]
!   _temp_768 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_770 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_769 = *_temp_770  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_769) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_771 = _temp_769 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_767  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_768  sizeInBytes=4
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
	mov	1884,r13		! source line 1884
	mov	"\0\0IF",r10
!   if junk >= 0 then goto _Label_773		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_773
!	jmp	_Label_772
_Label_772:
! THEN...
	mov	1885,r13		! source line 1885
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_773:
! SEND STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_774 = &addrSpace
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
	mov	1888,r13		! source line 1888
	mov	"\0\0AS",r10
	mov	1888,r13		! source line 1888
	mov	"\0\0SE",r10
!   _temp_775 = &strBuffer
	add	r14,-240,r1
	store	r1,[r14+-96]
!   _temp_776 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_775  sizeInBytes=4
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
	mov	1889,r13		! source line 1889
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_777
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_777
	jmp	_Label_778
_Label_777:
! THEN...
	mov	1890,r13		! source line 1890
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_778:
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
	mov	1892,r13		! source line 1892
	mov	"\0\0SE",r10
!   _temp_779 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-88]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_779  sizeInBytes=4
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
	mov	1893,r13		! source line 1893
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_781		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_781
!	jmp	_Label_780
_Label_780:
! THEN...
	mov	1894,r13		! source line 1894
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_781:
! SEND STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_784 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_783 = *_temp_784  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_783) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = _temp_783 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_782 = _temp_785		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-84]
!   _temp_786 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_782  sizeInBytes=4
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
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_788 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_787 = *_temp_788  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_787) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_789 = _temp_787 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_789 = addrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-56],r4
	mov	23,r3
_Label_3722:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3722
! SEND STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   _temp_790 = &_P_Kernel_fileManager
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
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_791 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_791 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0AS",r10
!   _temp_793 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-40]
!   _temp_794 = _temp_793 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_792 = *_temp_794  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_792 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_795 [999 ] into _temp_796
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
!   initSystemStackTop = _temp_796		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-256]
! SEND STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0SE",r10
!   _temp_797 = &addrSpace
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
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	BecomeUserThread
! ASSIGNMENT STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_798) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _temp_798 + 32
	load	[r14+-20],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_800 = addrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-12],r4
	mov	23,r3
_Label_3723:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3723
! RETURN STATEMENT...
	mov	1907,r13		! source line 1907
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
	.word	_Label_801
	.word	4		! total size of parameters
	.word	268		! frame size = 268
	.word	_Label_802
	.word	8
	.word	4
	.word	_Label_803
	.word	-12
	.word	4
	.word	_Label_804
	.word	-16
	.word	4
	.word	_Label_805
	.word	-20
	.word	4
	.word	_Label_806
	.word	-24
	.word	4
	.word	_Label_807
	.word	-28
	.word	4
	.word	_Label_808
	.word	-32
	.word	4
	.word	_Label_809
	.word	-36
	.word	4
	.word	_Label_810
	.word	-40
	.word	4
	.word	_Label_811
	.word	-44
	.word	4
	.word	_Label_812
	.word	-48
	.word	4
	.word	_Label_813
	.word	-52
	.word	4
	.word	_Label_814
	.word	-56
	.word	4
	.word	_Label_815
	.word	-60
	.word	4
	.word	_Label_816
	.word	-64
	.word	4
	.word	_Label_817
	.word	-68
	.word	4
	.word	_Label_818
	.word	-72
	.word	4
	.word	_Label_819
	.word	-76
	.word	4
	.word	_Label_820
	.word	-80
	.word	4
	.word	_Label_821
	.word	-84
	.word	4
	.word	_Label_822
	.word	-88
	.word	4
	.word	_Label_823
	.word	-92
	.word	4
	.word	_Label_824
	.word	-96
	.word	4
	.word	_Label_825
	.word	-100
	.word	4
	.word	_Label_826
	.word	-104
	.word	4
	.word	_Label_827
	.word	-108
	.word	4
	.word	_Label_828
	.word	-112
	.word	4
	.word	_Label_829
	.word	-116
	.word	4
	.word	_Label_830
	.word	-120
	.word	4
	.word	_Label_831
	.word	-124
	.word	4
	.word	_Label_832
	.word	-216
	.word	92
	.word	_Label_833
	.word	-240
	.word	24
	.word	_Label_834
	.word	-244
	.word	4
	.word	_Label_835
	.word	-248
	.word	4
	.word	_Label_836
	.word	-252
	.word	4
	.word	_Label_837
	.word	-256
	.word	4
	.word	_Label_838
	.word	-260
	.word	4
	.word	0
_Label_801:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_802:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_832:
	.byte	'O'
	.ascii	"addrSpace\0"
	.align
_Label_833:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_834:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_835:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_836:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_837:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_838:
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
_Label_3724:
	push	r0
	sub	r1,1,r1
	bne	_Label_3724
	mov	1912,r13		! source line 1912
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_839 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_840 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_842 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_841 = *_temp_842  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_841) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_843 = _temp_841 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_839  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_840  sizeInBytes=4
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
!   _temp_844 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_844  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_845 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_845  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_846 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_847 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_848 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1927,r13		! source line 1927
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
	.word	_Label_849
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_850
	.word	8
	.word	4
	.word	_Label_851
	.word	-12
	.word	4
	.word	_Label_852
	.word	-16
	.word	4
	.word	_Label_853
	.word	-20
	.word	4
	.word	_Label_854
	.word	-24
	.word	4
	.word	_Label_855
	.word	-28
	.word	4
	.word	_Label_856
	.word	-32
	.word	4
	.word	_Label_857
	.word	-36
	.word	4
	.word	_Label_858
	.word	-40
	.word	4
	.word	_Label_859
	.word	-44
	.word	4
	.word	_Label_860
	.word	-48
	.word	4
	.word	_Label_861
	.word	-52
	.word	4
	.word	_Label_862
	.word	-76
	.word	24
	.word	0
_Label_849:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_850:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_861:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_862:
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
	mov	33,r1
_Label_3725:
	push	r0
	sub	r1,1,r1
	bne	_Label_3725
	mov	1932,r13		! source line 1932
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
	mov	1940,r13		! source line 1940
	mov	"\0\0SE",r10
!   _temp_863 = &strBuffer
	add	r14,-116,r1
	store	r1,[r14+-84]
!   _temp_864 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_866 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_865 = *_temp_866  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_865) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_867 = _temp_865 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_863  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_864  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_870 = *filename  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_870 <= 20 then goto _Label_869		(int)
	load	[r14+-64],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_869
!	jmp	_Label_868
_Label_868:
! THEN...
	mov	1944,r13		! source line 1944
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_869:
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
!   fileDescriptorSlot = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-120]
! FOR STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_875 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_876 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_875  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-88]
_Label_871:
!   Perform the FOR-LOOP termination test
!   if i > _temp_876 then goto _Label_874		
	load	[r14+-88],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_874
_Label_872:
	mov	1949,r13		! source line 1949
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_881 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_880 = *_temp_881  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_880) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_882 = _temp_880 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_882 [i ] into _temp_883
!     make sure index expr is >= 0
	load	[r14+-88],r2
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
!   Data Move: _temp_879 = *_temp_883  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_879) then goto _Label_877
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_877
	jmp	_Label_878
_Label_877:
! THEN...
	mov	1951,r13		! source line 1951
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
!   fileDescriptorSlot = i		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-120]
! BREAK STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0BR",r10
	jmp	_Label_874
! END IF...
_Label_878:
!   Increment the FOR-LOOP index variable and jump back
_Label_873:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_871
! END FOR
_Label_874:
! IF STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0IF",r10
!   if fileDescriptorSlot != -1 then goto _Label_885		(int)
	load	[r14+-120],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_885
!	jmp	_Label_884
_Label_884:
! THEN...
	mov	1958,r13		! source line 1958
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorSlot  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_885:
! ASSIGNMENT STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0AS",r10
	mov	1962,r13		! source line 1962
	mov	"\0\0SE",r10
!   _temp_886 = &strBuffer
	add	r14,-116,r1
	store	r1,[r14+-32]
!   _temp_887 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_886  sizeInBytes=4
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
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_888
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_888
	jmp	_Label_889
_Label_888:
! THEN...
	mov	1964,r13		! source line 1964
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_889:
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_891 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_890 = *_temp_891  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_890) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = _temp_890 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_892 [fileDescriptorSlot ] into _temp_893
!     make sure index expr is >= 0
	load	[r14+-120],r2
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
!   Data Move: *_temp_893 = file  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorSlot  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_894
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_895
	.word	8
	.word	4
	.word	_Label_896
	.word	-12
	.word	4
	.word	_Label_897
	.word	-16
	.word	4
	.word	_Label_898
	.word	-20
	.word	4
	.word	_Label_899
	.word	-24
	.word	4
	.word	_Label_900
	.word	-28
	.word	4
	.word	_Label_901
	.word	-32
	.word	4
	.word	_Label_902
	.word	-36
	.word	4
	.word	_Label_903
	.word	-40
	.word	4
	.word	_Label_904
	.word	-44
	.word	4
	.word	_Label_905
	.word	-48
	.word	4
	.word	_Label_906
	.word	-52
	.word	4
	.word	_Label_907
	.word	-56
	.word	4
	.word	_Label_908
	.word	-60
	.word	4
	.word	_Label_909
	.word	-64
	.word	4
	.word	_Label_910
	.word	-68
	.word	4
	.word	_Label_911
	.word	-72
	.word	4
	.word	_Label_912
	.word	-76
	.word	4
	.word	_Label_913
	.word	-80
	.word	4
	.word	_Label_914
	.word	-84
	.word	4
	.word	_Label_915
	.word	-88
	.word	4
	.word	_Label_916
	.word	-92
	.word	4
	.word	_Label_917
	.word	-116
	.word	24
	.word	_Label_918
	.word	-120
	.word	4
	.word	_Label_919
	.word	-124
	.word	4
	.word	0
_Label_894:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_895:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_915:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_916:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_917:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_918:
	.byte	'I'
	.ascii	"fileDescriptorSlot\0"
	.align
_Label_919:
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
_Label_3726:
	push	r0
	sub	r1,1,r1
	bne	_Label_3726
	mov	1974,r13		! source line 1974
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_924		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_924
	jmp	_Label_920
_Label_924:
!   if fileDesc <= 9 then goto _Label_923		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_923
	jmp	_Label_920
_Label_923:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_927 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-204]
!   Data Move: _temp_926 = *_temp_927  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_926) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = _temp_926 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-200]
!   Move address of _temp_928 [fileDesc ] into _temp_929
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
!   Data Move: _temp_925 = *_temp_929  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_925) then goto _Label_920
	load	[r14+-212],r1
	cmp	r1,r0
	be	_Label_920
!	jmp	_Label_922
_Label_922:
!   if sizeInBytes >= 0 then goto _Label_921		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_921
!	jmp	_Label_920
_Label_920:
! THEN...
	mov	1982,r13		! source line 1982
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_921:
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
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
	mov	1988,r13		! source line 1988
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
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_931 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_930 = *_temp_931  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_930) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_932 = _temp_930 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-184]
!   Move address of _temp_932 [fileDesc ] into _temp_933
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
!   Data Move: file = *_temp_933  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = file + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-176]
!   Data Move: nextPosInFile = *_temp_934  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_936 = file + 20
	load	[r14+-216],r1
	add	r1,20,r1
	store	r1,[r14+-168]
!   Data Move: _temp_935 = *_temp_936  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_935) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = _temp_935 + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-164]
!   Data Move: fileSize = *_temp_937  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-232]
! WHILE STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0WH",r10
_Label_938:
!	jmp	_Label_939
_Label_939:
	mov	1995,r13		! source line 1995
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-228],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0IF",r10
!   _temp_943 = nextPosInFile + chunkSize		(int)
	load	[r14+-236],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if _temp_943 <= fileSize then goto _Label_942		(int)
	load	[r14+-160],r1
	load	[r14+-244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_942
!	jmp	_Label_941
_Label_941:
! THEN...
	mov	1998,r13		! source line 1998
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-244],r1
	load	[r14+-236],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END IF...
_Label_942:
! IF STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0IF",r10
!   _temp_946 = copiedSoFar + chunkSize		(int)
	load	[r14+-232],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   if _temp_946 <= sizeInBytes then goto _Label_945		(int)
	load	[r14+-156],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_945
!	jmp	_Label_944
_Label_944:
! THEN...
	mov	2001,r13		! source line 2001
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-232],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END IF...
_Label_945:
! IF STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_948		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_948
!	jmp	_Label_947
_Label_947:
! THEN...
	mov	2004,r13		! source line 2004
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0BR",r10
	jmp	_Label_940
! END IF...
_Label_948:
! IF STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_953		(int)
	load	[r14+-224],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_953
	jmp	_Label_949
_Label_953:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_957 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_956 = *_temp_957  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_956) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = _temp_956 + 32
	load	[r14+-144],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   _temp_959 = _temp_958 + 4
	load	[r14+-136],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Data Move: _temp_955 = *_temp_959  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   _temp_954 = _temp_955 - 1		(int)
	load	[r14+-148],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if virtPage <= _temp_954 then goto _Label_952		(int)
	load	[r14+-224],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_952
	jmp	_Label_949
_Label_952:
	mov	2007,r13		! source line 2007
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_962 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_961 = *_temp_962  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_961) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_963 = _temp_961 + 32
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
!   Retrieve Result: targetName=_temp_960  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_964 = _temp_960 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_964 then goto _Label_951 else goto _Label_949
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_949
	jmp	_Label_951
_Label_951:
	mov	2007,r13		! source line 2007
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_967 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_966 = *_temp_967  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_966) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_968 = _temp_966 + 32
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
!   Retrieve Result: targetName=_temp_965  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_969 = _temp_965 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_969 then goto _Label_950 else goto _Label_949
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_949
	jmp	_Label_950
_Label_949:
! THEN...
	mov	2008,r13		! source line 2008
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_950:
! ASSIGNMENT STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-236],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-232],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_971		(int)
	load	[r14+-232],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_971
!	jmp	_Label_970
_Label_970:
! THEN...
	mov	2017,r13		! source line 2017
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0BR",r10
	jmp	_Label_940
! END IF...
_Label_971:
! END WHILE...
	jmp	_Label_938
_Label_940:
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
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
	mov	2025,r13		! source line 2025
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
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_973 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_972 = *_temp_973  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_972) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_974 = _temp_972 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_974 [fileDesc ] into _temp_975
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
!   Data Move: file = *_temp_975  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = file + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-88]
!   Data Move: nextPosInFile = *_temp_976  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_978 = file + 20
	load	[r14+-216],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_977 = *_temp_978  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_977) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_979 = _temp_977 + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-76]
!   Data Move: fileSize = *_temp_979  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-232]
! WHILE STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0WH",r10
_Label_980:
!	jmp	_Label_981
_Label_981:
	mov	2032,r13		! source line 2032
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-228],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0IF",r10
!   _temp_985 = nextPosInFile + chunkSize		(int)
	load	[r14+-236],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   if _temp_985 <= fileSize then goto _Label_984		(int)
	load	[r14+-72],r1
	load	[r14+-244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_984
!	jmp	_Label_983
_Label_983:
! THEN...
	mov	2035,r13		! source line 2035
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-244],r1
	load	[r14+-236],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END IF...
_Label_984:
! IF STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0IF",r10
!   _temp_988 = copiedSoFar + chunkSize		(int)
	load	[r14+-232],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   if _temp_988 <= sizeInBytes then goto _Label_987		(int)
	load	[r14+-68],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_987
!	jmp	_Label_986
_Label_986:
! THEN...
	mov	2038,r13		! source line 2038
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-232],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END IF...
_Label_987:
! IF STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_990		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_990
!	jmp	_Label_989
_Label_989:
! THEN...
	mov	2041,r13		! source line 2041
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0BR",r10
	jmp	_Label_982
! END IF...
_Label_990:
! SEND STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_992 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_991 = *_temp_992  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_991) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_993 = _temp_991 + 32
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
	mov	2046,r13		! source line 2046
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_995 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_994 = *_temp_995  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_994) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_996 = _temp_994 + 32
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
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_999 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_998 = *_temp_999  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_998) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1000 = _temp_998 + 32
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
!   Retrieve Result: targetName=_temp_997  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_997 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
	mov	2048,r13		! source line 2048
	mov	"\0\0SE",r10
!   _temp_1001 = &_P_Kernel_fileManager
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
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-236],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-232],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1003		(int)
	load	[r14+-232],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	2056,r13		! source line 2056
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0BR",r10
	jmp	_Label_982
! END IF...
_Label_1003:
! END WHILE...
	jmp	_Label_980
_Label_982:
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1004 = file + 16
	load	[r14+-216],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1004 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
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
	.word	_Label_1005
	.word	12		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_1006
	.word	8
	.word	4
	.word	_Label_1007
	.word	12
	.word	4
	.word	_Label_1008
	.word	16
	.word	4
	.word	_Label_1009
	.word	-20
	.word	4
	.word	_Label_1010
	.word	-24
	.word	4
	.word	_Label_1011
	.word	-28
	.word	4
	.word	_Label_1012
	.word	-32
	.word	4
	.word	_Label_1013
	.word	-36
	.word	4
	.word	_Label_1014
	.word	-40
	.word	4
	.word	_Label_1015
	.word	-44
	.word	4
	.word	_Label_1016
	.word	-48
	.word	4
	.word	_Label_1017
	.word	-52
	.word	4
	.word	_Label_1018
	.word	-56
	.word	4
	.word	_Label_1019
	.word	-60
	.word	4
	.word	_Label_1020
	.word	-64
	.word	4
	.word	_Label_1021
	.word	-68
	.word	4
	.word	_Label_1022
	.word	-72
	.word	4
	.word	_Label_1023
	.word	-76
	.word	4
	.word	_Label_1024
	.word	-80
	.word	4
	.word	_Label_1025
	.word	-84
	.word	4
	.word	_Label_1026
	.word	-88
	.word	4
	.word	_Label_1027
	.word	-92
	.word	4
	.word	_Label_1028
	.word	-96
	.word	4
	.word	_Label_1029
	.word	-100
	.word	4
	.word	_Label_1030
	.word	-104
	.word	4
	.word	_Label_1031
	.word	-9
	.word	1
	.word	_Label_1032
	.word	-108
	.word	4
	.word	_Label_1033
	.word	-112
	.word	4
	.word	_Label_1034
	.word	-116
	.word	4
	.word	_Label_1035
	.word	-10
	.word	1
	.word	_Label_1036
	.word	-11
	.word	1
	.word	_Label_1037
	.word	-120
	.word	4
	.word	_Label_1038
	.word	-124
	.word	4
	.word	_Label_1039
	.word	-128
	.word	4
	.word	_Label_1040
	.word	-12
	.word	1
	.word	_Label_1041
	.word	-132
	.word	4
	.word	_Label_1042
	.word	-136
	.word	4
	.word	_Label_1043
	.word	-140
	.word	4
	.word	_Label_1044
	.word	-144
	.word	4
	.word	_Label_1045
	.word	-148
	.word	4
	.word	_Label_1046
	.word	-152
	.word	4
	.word	_Label_1047
	.word	-156
	.word	4
	.word	_Label_1048
	.word	-160
	.word	4
	.word	_Label_1049
	.word	-164
	.word	4
	.word	_Label_1050
	.word	-168
	.word	4
	.word	_Label_1051
	.word	-172
	.word	4
	.word	_Label_1052
	.word	-176
	.word	4
	.word	_Label_1053
	.word	-180
	.word	4
	.word	_Label_1054
	.word	-184
	.word	4
	.word	_Label_1055
	.word	-188
	.word	4
	.word	_Label_1056
	.word	-192
	.word	4
	.word	_Label_1057
	.word	-196
	.word	4
	.word	_Label_1058
	.word	-200
	.word	4
	.word	_Label_1059
	.word	-204
	.word	4
	.word	_Label_1060
	.word	-208
	.word	4
	.word	_Label_1061
	.word	-212
	.word	4
	.word	_Label_1062
	.word	-216
	.word	4
	.word	_Label_1063
	.word	-220
	.word	4
	.word	_Label_1064
	.word	-224
	.word	4
	.word	_Label_1065
	.word	-228
	.word	4
	.word	_Label_1066
	.word	-232
	.word	4
	.word	_Label_1067
	.word	-236
	.word	4
	.word	_Label_1068
	.word	-240
	.word	4
	.word	_Label_1069
	.word	-244
	.word	4
	.word	_Label_1070
	.word	-248
	.word	4
	.word	_Label_1071
	.word	-13
	.word	1
	.word	0
_Label_1005:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1006:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1007:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1008:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1031:
	.byte	'C'
	.ascii	"_temp_969\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1035:
	.byte	'C'
	.ascii	"_temp_965\0"
	.align
_Label_1036:
	.byte	'C'
	.ascii	"_temp_964\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1040:
	.byte	'C'
	.ascii	"_temp_960\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_1062:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_1063:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1064:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1065:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1066:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1067:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1068:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1069:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1070:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1071:
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
_Label_3727:
	push	r0
	sub	r1,1,r1
	bne	_Label_3727
	mov	2067,r13		! source line 2067
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1076		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1076
	jmp	_Label_1072
_Label_1076:
!   if fileDesc <= 9 then goto _Label_1075		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1075
	jmp	_Label_1072
_Label_1075:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1079 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1078 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1078) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1080 = _temp_1078 + 124
	load	[r14+-196],r1
	add	r1,124,r1
	store	r1,[r14+-188]
!   Move address of _temp_1080 [fileDesc ] into _temp_1081
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
!   Data Move: _temp_1077 = *_temp_1081  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1077) then goto _Label_1072
	load	[r14+-200],r1
	cmp	r1,r0
	be	_Label_1072
!	jmp	_Label_1074
_Label_1074:
!   if sizeInBytes >= 0 then goto _Label_1073		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1073
!	jmp	_Label_1072
_Label_1072:
! THEN...
	mov	2075,r13		! source line 2075
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1073:
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
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
	mov	2081,r13		! source line 2081
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
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1082 = *_temp_1083  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1082) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1084 = _temp_1082 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_1084 [fileDesc ] into _temp_1085
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
!   Data Move: file = *_temp_1085  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1086 = file + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-164]
!   Data Move: nextPosInFile = *_temp_1086  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1088 = file + 20
	load	[r14+-204],r1
	add	r1,20,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1087 = *_temp_1088  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1087) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1089 = _temp_1087 + 24
	load	[r14+-160],r1
	add	r1,24,r1
	store	r1,[r14+-152]
!   Data Move: fileSize = *_temp_1089  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-220]
! WHILE STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0WH",r10
_Label_1090:
!	jmp	_Label_1091
_Label_1091:
	mov	2088,r13		! source line 2088
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-216],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0IF",r10
!   _temp_1095 = nextPosInFile + chunkSize		(int)
	load	[r14+-224],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if _temp_1095 <= fileSize then goto _Label_1094		(int)
	load	[r14+-148],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1094
!	jmp	_Label_1093
_Label_1093:
! THEN...
	mov	2091,r13		! source line 2091
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-232],r1
	load	[r14+-224],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END IF...
_Label_1094:
! IF STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0IF",r10
!   _temp_1098 = copiedSoFar + chunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if _temp_1098 <= sizeInBytes then goto _Label_1097		(int)
	load	[r14+-144],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1097
!	jmp	_Label_1096
_Label_1096:
! THEN...
	mov	2094,r13		! source line 2094
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-220],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END IF...
_Label_1097:
! IF STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1100		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1100
!	jmp	_Label_1099
_Label_1099:
! THEN...
	mov	2097,r13		! source line 2097
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0BR",r10
	jmp	_Label_1092
! END IF...
_Label_1100:
! IF STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1105		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1105
	jmp	_Label_1101
_Label_1105:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1109 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1108 = *_temp_1109  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1108) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1110 = _temp_1108 + 32
	load	[r14+-132],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_1111 = _temp_1110 + 4
	load	[r14+-124],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1107 = *_temp_1111  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   _temp_1106 = _temp_1107 - 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   if virtPage <= _temp_1106 then goto _Label_1104		(int)
	load	[r14+-212],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1104
	jmp	_Label_1101
_Label_1104:
	mov	2100,r13		! source line 2100
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1114 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1113 = *_temp_1114  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1113) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1115 = _temp_1113 + 32
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
!   Retrieve Result: targetName=_temp_1112  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1116 = _temp_1112 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1116 then goto _Label_1103 else goto _Label_1101
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1101
	jmp	_Label_1103
_Label_1103:
	mov	2100,r13		! source line 2100
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1119 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1118 = *_temp_1119  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1118) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1120 = _temp_1118 + 32
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
!   Retrieve Result: targetName=_temp_1117  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1121 = _temp_1117 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1121 then goto _Label_1102 else goto _Label_1101
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1101
	jmp	_Label_1102
_Label_1101:
! THEN...
	mov	2101,r13		! source line 2101
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,252,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1102:
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-224],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-212],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1123		(int)
	load	[r14+-220],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1123
!	jmp	_Label_1122
_Label_1122:
! THEN...
	mov	2110,r13		! source line 2110
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0BR",r10
	jmp	_Label_1092
! END IF...
_Label_1123:
! END WHILE...
	jmp	_Label_1090
_Label_1092:
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
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
	mov	2118,r13		! source line 2118
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
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1125 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1124 = *_temp_1125  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1124) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = _temp_1124 + 124
	load	[r14+-92],r1
	add	r1,124,r1
	store	r1,[r14+-84]
!   Move address of _temp_1126 [fileDesc ] into _temp_1127
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
!   Data Move: file = *_temp_1127  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1128 = file + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   Data Move: nextPosInFile = *_temp_1128  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = file + 20
	load	[r14+-204],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1129 = *_temp_1130  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1129) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1131 = _temp_1129 + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: fileSize = *_temp_1131  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-220]
! WHILE STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0WH",r10
_Label_1132:
!	jmp	_Label_1133
_Label_1133:
	mov	2125,r13		! source line 2125
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-216],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0IF",r10
!   _temp_1137 = nextPosInFile + chunkSize		(int)
	load	[r14+-224],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if _temp_1137 <= fileSize then goto _Label_1136		(int)
	load	[r14+-60],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1136
!	jmp	_Label_1135
_Label_1135:
! THEN...
	mov	2128,r13		! source line 2128
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-232],r1
	load	[r14+-224],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END IF...
_Label_1136:
! IF STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0IF",r10
!   _temp_1140 = copiedSoFar + chunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if _temp_1140 <= sizeInBytes then goto _Label_1139		(int)
	load	[r14+-56],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1139
!	jmp	_Label_1138
_Label_1138:
! THEN...
	mov	2131,r13		! source line 2131
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-220],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
! END IF...
_Label_1139:
! IF STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1142		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1142
!	jmp	_Label_1141
_Label_1141:
! THEN...
	mov	2134,r13		! source line 2134
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0BR",r10
	jmp	_Label_1134
! END IF...
_Label_1142:
! SEND STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1144 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1143 = *_temp_1144  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1143) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1145 = _temp_1143 + 32
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
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
	mov	2139,r13		! source line 2139
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1148 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1147 = *_temp_1148  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1147) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1149 = _temp_1147 + 32
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
!   Retrieve Result: targetName=_temp_1146  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1146 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-216],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_1150 = &_P_Kernel_fileManager
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
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-224],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-220],r1
	load	[r14+-228],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-212],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1152		(int)
	load	[r14+-220],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1152
!	jmp	_Label_1151
_Label_1151:
! THEN...
	mov	2148,r13		! source line 2148
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0BR",r10
	jmp	_Label_1134
! END IF...
_Label_1152:
! END WHILE...
	jmp	_Label_1132
_Label_1134:
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1153 = file + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1153 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2154,r13		! source line 2154
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
	.word	_Label_1154
	.word	12		! total size of parameters
	.word	248		! frame size = 248
	.word	_Label_1155
	.word	8
	.word	4
	.word	_Label_1156
	.word	12
	.word	4
	.word	_Label_1157
	.word	16
	.word	4
	.word	_Label_1158
	.word	-20
	.word	4
	.word	_Label_1159
	.word	-24
	.word	4
	.word	_Label_1160
	.word	-28
	.word	4
	.word	_Label_1161
	.word	-32
	.word	4
	.word	_Label_1162
	.word	-36
	.word	4
	.word	_Label_1163
	.word	-40
	.word	4
	.word	_Label_1164
	.word	-44
	.word	4
	.word	_Label_1165
	.word	-48
	.word	4
	.word	_Label_1166
	.word	-52
	.word	4
	.word	_Label_1167
	.word	-56
	.word	4
	.word	_Label_1168
	.word	-60
	.word	4
	.word	_Label_1169
	.word	-64
	.word	4
	.word	_Label_1170
	.word	-68
	.word	4
	.word	_Label_1171
	.word	-72
	.word	4
	.word	_Label_1172
	.word	-76
	.word	4
	.word	_Label_1173
	.word	-80
	.word	4
	.word	_Label_1174
	.word	-84
	.word	4
	.word	_Label_1175
	.word	-88
	.word	4
	.word	_Label_1176
	.word	-92
	.word	4
	.word	_Label_1177
	.word	-9
	.word	1
	.word	_Label_1178
	.word	-96
	.word	4
	.word	_Label_1179
	.word	-100
	.word	4
	.word	_Label_1180
	.word	-104
	.word	4
	.word	_Label_1181
	.word	-10
	.word	1
	.word	_Label_1182
	.word	-11
	.word	1
	.word	_Label_1183
	.word	-108
	.word	4
	.word	_Label_1184
	.word	-112
	.word	4
	.word	_Label_1185
	.word	-116
	.word	4
	.word	_Label_1186
	.word	-12
	.word	1
	.word	_Label_1187
	.word	-120
	.word	4
	.word	_Label_1188
	.word	-124
	.word	4
	.word	_Label_1189
	.word	-128
	.word	4
	.word	_Label_1190
	.word	-132
	.word	4
	.word	_Label_1191
	.word	-136
	.word	4
	.word	_Label_1192
	.word	-140
	.word	4
	.word	_Label_1193
	.word	-144
	.word	4
	.word	_Label_1194
	.word	-148
	.word	4
	.word	_Label_1195
	.word	-152
	.word	4
	.word	_Label_1196
	.word	-156
	.word	4
	.word	_Label_1197
	.word	-160
	.word	4
	.word	_Label_1198
	.word	-164
	.word	4
	.word	_Label_1199
	.word	-168
	.word	4
	.word	_Label_1200
	.word	-172
	.word	4
	.word	_Label_1201
	.word	-176
	.word	4
	.word	_Label_1202
	.word	-180
	.word	4
	.word	_Label_1203
	.word	-184
	.word	4
	.word	_Label_1204
	.word	-188
	.word	4
	.word	_Label_1205
	.word	-192
	.word	4
	.word	_Label_1206
	.word	-196
	.word	4
	.word	_Label_1207
	.word	-200
	.word	4
	.word	_Label_1208
	.word	-204
	.word	4
	.word	_Label_1209
	.word	-208
	.word	4
	.word	_Label_1210
	.word	-212
	.word	4
	.word	_Label_1211
	.word	-216
	.word	4
	.word	_Label_1212
	.word	-220
	.word	4
	.word	_Label_1213
	.word	-224
	.word	4
	.word	_Label_1214
	.word	-228
	.word	4
	.word	_Label_1215
	.word	-232
	.word	4
	.word	_Label_1216
	.word	-236
	.word	4
	.word	_Label_1217
	.word	-13
	.word	1
	.word	0
_Label_1154:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1155:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1156:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1157:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1177:
	.byte	'C'
	.ascii	"_temp_1121\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1181:
	.byte	'C'
	.ascii	"_temp_1117\0"
	.align
_Label_1182:
	.byte	'C'
	.ascii	"_temp_1116\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1186:
	.byte	'C'
	.ascii	"_temp_1112\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1208:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_1209:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1210:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1211:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1212:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1213:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1214:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1215:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1216:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1217:
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
_Label_3728:
	push	r0
	sub	r1,1,r1
	bne	_Label_3728
	mov	2159,r13		! source line 2159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0SE",r10
!   _temp_1218 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1219 = _temp_1218 + 4
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
	mov	2164,r13		! source line 2164
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1225		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1225
	jmp	_Label_1220
_Label_1225:
!   if fileDesc <= 9 then goto _Label_1224		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1224
	jmp	_Label_1220
_Label_1224:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1228 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1227 = *_temp_1228  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1227) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1229 = _temp_1227 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1229 [fileDesc ] into _temp_1230
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
!   Data Move: _temp_1226 = *_temp_1230  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1226) then goto _Label_1220
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1220
!	jmp	_Label_1223
_Label_1223:
!   if newCurrentPos >= -1 then goto _Label_1222		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1222
	jmp	_Label_1220
_Label_1222:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1235 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1234 = *_temp_1235  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1234) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1236 = _temp_1234 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1236 [fileDesc ] into _temp_1237
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
!   Data Move: _temp_1233 = *_temp_1237  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1233) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = _temp_1233 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1232 = *_temp_1238  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1232) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1239 = _temp_1232 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1231 = *_temp_1239  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1231 then goto _Label_1221		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1221
!	jmp	_Label_1220
_Label_1220:
! THEN...
	mov	2165,r13		! source line 2165
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0SE",r10
!   _temp_1240 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1241 = _temp_1240 + 4
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
	mov	2166,r13		! source line 2166
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1221:
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1242 = *_temp_1243  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1242) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1244 = _temp_1242 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1244 [fileDesc ] into _temp_1245
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
!   Data Move: file = *_temp_1245  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1247		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1247
!	jmp	_Label_1246
_Label_1246:
! THEN...
	mov	2172,r13		! source line 2172
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1248 = file + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1251 = file + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1250 = *_temp_1251  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1250) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1252 = _temp_1250 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1249 = *_temp_1252  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1248 = _temp_1249  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0SE",r10
!   _temp_1253 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1254 = _temp_1253 + 4
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
	mov	2174,r13		! source line 2174
	mov	"\0\0RE",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1257 = file + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1256 = *_temp_1257  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1256) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1258 = _temp_1256 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1255 = *_temp_1258  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1255  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1247:
! ASSIGNMENT STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1259 = file + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1259 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0SE",r10
!   _temp_1260 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1261 = _temp_1260 + 4
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
	mov	2179,r13		! source line 2179
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
	.word	_Label_1262
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1263
	.word	8
	.word	4
	.word	_Label_1264
	.word	12
	.word	4
	.word	_Label_1265
	.word	-12
	.word	4
	.word	_Label_1266
	.word	-16
	.word	4
	.word	_Label_1267
	.word	-20
	.word	4
	.word	_Label_1268
	.word	-24
	.word	4
	.word	_Label_1269
	.word	-28
	.word	4
	.word	_Label_1270
	.word	-32
	.word	4
	.word	_Label_1271
	.word	-36
	.word	4
	.word	_Label_1272
	.word	-40
	.word	4
	.word	_Label_1273
	.word	-44
	.word	4
	.word	_Label_1274
	.word	-48
	.word	4
	.word	_Label_1275
	.word	-52
	.word	4
	.word	_Label_1276
	.word	-56
	.word	4
	.word	_Label_1277
	.word	-60
	.word	4
	.word	_Label_1278
	.word	-64
	.word	4
	.word	_Label_1279
	.word	-68
	.word	4
	.word	_Label_1280
	.word	-72
	.word	4
	.word	_Label_1281
	.word	-76
	.word	4
	.word	_Label_1282
	.word	-80
	.word	4
	.word	_Label_1283
	.word	-84
	.word	4
	.word	_Label_1284
	.word	-88
	.word	4
	.word	_Label_1285
	.word	-92
	.word	4
	.word	_Label_1286
	.word	-96
	.word	4
	.word	_Label_1287
	.word	-100
	.word	4
	.word	_Label_1288
	.word	-104
	.word	4
	.word	_Label_1289
	.word	-108
	.word	4
	.word	_Label_1290
	.word	-112
	.word	4
	.word	_Label_1291
	.word	-116
	.word	4
	.word	_Label_1292
	.word	-120
	.word	4
	.word	_Label_1293
	.word	-124
	.word	4
	.word	_Label_1294
	.word	-128
	.word	4
	.word	_Label_1295
	.word	-132
	.word	4
	.word	_Label_1296
	.word	-136
	.word	4
	.word	_Label_1297
	.word	-140
	.word	4
	.word	_Label_1298
	.word	-144
	.word	4
	.word	_Label_1299
	.word	-148
	.word	4
	.word	_Label_1300
	.word	-152
	.word	4
	.word	_Label_1301
	.word	-156
	.word	4
	.word	0
_Label_1262:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1263:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1264:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1301:
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
_Label_3729:
	push	r0
	sub	r1,1,r1
	bne	_Label_3729
	mov	2184,r13		! source line 2184
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1305		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1305
	jmp	_Label_1302
_Label_1305:
!   if fileDesc <= 9 then goto _Label_1304		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1304
	jmp	_Label_1302
_Label_1304:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1308 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1307 = *_temp_1308  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1307) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1309 = _temp_1307 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1309 [fileDesc ] into _temp_1310
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
!   Data Move: _temp_1306 = *_temp_1310  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1306) then goto _Label_1302
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1302
	jmp	_Label_1303
_Label_1302:
	jmp	_Label_1311
_Label_1303:
! ELSE...
	mov	2188,r13		! source line 2188
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1314 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1313 = *_temp_1314  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1313) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1315 = _temp_1313 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1315 [fileDesc ] into _temp_1316
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
!   Data Move: _temp_1312 = *_temp_1316  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1317 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1312  sizeInBytes=4
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
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1319 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1318 = *_temp_1319  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1318) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1320 = _temp_1318 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1320 [fileDesc ] into _temp_1321
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
!   Data Move: *_temp_1321 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1311:
! RETURN STATEMENT...
	mov	2185,r13		! source line 2185
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
	.word	_Label_1322
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1323
	.word	8
	.word	4
	.word	_Label_1324
	.word	-12
	.word	4
	.word	_Label_1325
	.word	-16
	.word	4
	.word	_Label_1326
	.word	-20
	.word	4
	.word	_Label_1327
	.word	-24
	.word	4
	.word	_Label_1328
	.word	-28
	.word	4
	.word	_Label_1329
	.word	-32
	.word	4
	.word	_Label_1330
	.word	-36
	.word	4
	.word	_Label_1331
	.word	-40
	.word	4
	.word	_Label_1332
	.word	-44
	.word	4
	.word	_Label_1333
	.word	-48
	.word	4
	.word	_Label_1334
	.word	-52
	.word	4
	.word	_Label_1335
	.word	-56
	.word	4
	.word	_Label_1336
	.word	-60
	.word	4
	.word	_Label_1337
	.word	-64
	.word	4
	.word	_Label_1338
	.word	-68
	.word	4
	.word	0
_Label_1322:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1323:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1306\0"
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
_Label_3730:
	push	r0
	sub	r1,1,r1
	bne	_Label_3730
	mov	2781,r13		! source line 2781
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1339 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1339  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   _temp_1340 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1340) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1342 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1342) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1341 = *_temp_1342  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1340 = _temp_1341  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   _temp_1343 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1343) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1345 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1345) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1344 = *_temp_1345  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1343 = _temp_1344  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0AS",r10
!   _temp_1346 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1346) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1348 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1348) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1347 = *_temp_1348  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1346 = _temp_1347  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2788,r13		! source line 2788
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
	.word	_Label_1349
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1350
	.word	8
	.word	4
	.word	_Label_1351
	.word	12
	.word	4
	.word	_Label_1352
	.word	-16
	.word	4
	.word	_Label_1353
	.word	-9
	.word	1
	.word	_Label_1354
	.word	-20
	.word	4
	.word	_Label_1355
	.word	-24
	.word	4
	.word	_Label_1356
	.word	-10
	.word	1
	.word	_Label_1357
	.word	-28
	.word	4
	.word	_Label_1358
	.word	-32
	.word	4
	.word	_Label_1359
	.word	-11
	.word	1
	.word	_Label_1360
	.word	-36
	.word	4
	.word	_Label_1361
	.word	-12
	.word	1
	.word	_Label_1362
	.word	-40
	.word	4
	.word	_Label_1363
	.word	-44
	.word	4
	.word	0
_Label_1349:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1350:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1351:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1353:
	.byte	'C'
	.ascii	"_temp_1347\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1356:
	.byte	'C'
	.ascii	"_temp_1344\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1359:
	.byte	'C'
	.ascii	"_temp_1341\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1361:
	.byte	'C'
	.ascii	"_temp_1339\0"
	.align
_Label_1362:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1363:
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
_Label_3731:
	push	r0
	sub	r1,1,r1
	bne	_Label_3731
	mov	2791,r13		! source line 2791
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1365 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1364 = *_temp_1365  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1364  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2793,r13		! source line 2793
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2793,r13		! source line 2793
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
	.word	_Label_1366
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1367
	.word	8
	.word	4
	.word	_Label_1368
	.word	-12
	.word	4
	.word	_Label_1369
	.word	-16
	.word	4
	.word	0
_Label_1366:
	.ascii	"printFCB\0"
	.align
_Label_1367:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1364\0"
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
_Label_3732:
	push	r0
	sub	r1,1,r1
	bne	_Label_3732
	mov	2796,r13		! source line 2796
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1370 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1370  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1371 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1371  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2798,r13		! source line 2798
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1372 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1372  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2799,r13		! source line 2799
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2800,r13		! source line 2800
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
	mov	2800,r13		! source line 2800
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
	.word	_Label_1373
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1374
	.word	8
	.word	4
	.word	_Label_1375
	.word	-12
	.word	4
	.word	_Label_1376
	.word	-16
	.word	4
	.word	_Label_1377
	.word	-20
	.word	4
	.word	0
_Label_1373:
	.ascii	"printOpen\0"
	.align
_Label_1374:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1378
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1378:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1379
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1379:
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
_Label_3733:
	push	r0
	sub	r1,1,r1
	bne	_Label_3733
	mov	274,r13		! source line 274
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1381		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1381
!	jmp	_Label_1380
_Label_1380:
! THEN...
	mov	276,r13		! source line 276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1382 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1382  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	276,r13		! source line 276
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1381:
! ASSIGNMENT STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	279,r13		! source line 279
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
	mov	279,r13		! source line 279
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
	.word	_Label_1384
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1386
	.word	12
	.word	4
	.word	_Label_1387
	.word	-12
	.word	4
	.word	_Label_1388
	.word	-16
	.word	4
	.word	0
_Label_1384:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1385:
	.ascii	"Pself\0"
	.align
_Label_1386:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1382\0"
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
_Label_3734:
	push	r0
	sub	r1,1,r1
	bne	_Label_3734
	mov	284,r13		! source line 284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1390		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1390
!	jmp	_Label_1389
_Label_1389:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1391 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	290,r13		! source line 290
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1390:
! ASSIGNMENT STATEMENT...
	mov	292,r13		! source line 292
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
	mov	293,r13		! source line 293
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1393		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1393
!	jmp	_Label_1392
_Label_1392:
! THEN...
	mov	294,r13		! source line 294
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
	mov	294,r13		! source line 294
	mov	"\0\0SE",r10
!   _temp_1394 = &waitingThreads
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
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1395 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1395 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0SE",r10
!   _temp_1396 = &_P_Kernel_readyList
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
_Label_1393:
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	298,r13		! source line 298
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
	.word	_Label_1397
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1398
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1399
	.word	-12
	.word	4
	.word	_Label_1400
	.word	-16
	.word	4
	.word	_Label_1401
	.word	-20
	.word	4
	.word	_Label_1402
	.word	-24
	.word	4
	.word	_Label_1403
	.word	-28
	.word	4
	.word	_Label_1404
	.word	-32
	.word	4
	.word	0
_Label_1397:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1398:
	.ascii	"Pself\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1403:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1404:
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
_Label_3735:
	push	r0
	sub	r1,1,r1
	bne	_Label_3735
	mov	303,r13		! source line 303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1406		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1406
!	jmp	_Label_1405
_Label_1405:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1407 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1407  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	308,r13		! source line 308
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1406:
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
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
	mov	311,r13		! source line 311
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1409		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1409
!	jmp	_Label_1408
_Label_1408:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_1410 = &waitingThreads
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
	mov	313,r13		! source line 313
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
_Label_1409:
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	315,r13		! source line 315
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
	.word	_Label_1411
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1412
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1413
	.word	-12
	.word	4
	.word	_Label_1414
	.word	-16
	.word	4
	.word	_Label_1415
	.word	-20
	.word	4
	.word	0
_Label_1411:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1412:
	.ascii	"Pself\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1415:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1416
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1416:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1417
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1417:
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
_Label_3736:
	push	r0
	sub	r1,1,r1
	bne	_Label_3736
	mov	338,r13		! source line 338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	339,r13		! source line 339
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
	mov	339,r13		! source line 339
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
	.word	_Label_1419
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1421
	.word	-12
	.word	4
	.word	0
_Label_1419:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1420:
	.ascii	"Pself\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1418\0"
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
_Label_3737:
	push	r0
	sub	r1,1,r1
	bne	_Label_3737
	mov	344,r13		! source line 344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1423		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1423
!	jmp	_Label_1422
_Label_1422:
! THEN...
	mov	348,r13		! source line 348
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1424 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1424  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	348,r13		! source line 348
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1423:
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1428		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1428
!   _temp_1427 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1429
_Label_1428:
!   _temp_1427 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1429:
!   if _temp_1427 then goto _Label_1426 else goto _Label_1425
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1425
	jmp	_Label_1426
_Label_1425:
! THEN...
	mov	352,r13		! source line 352
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1430
_Label_1426:
! ELSE...
	mov	354,r13		! source line 354
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0SE",r10
!   _temp_1431 = &waitingThreads
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
	mov	355,r13		! source line 355
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
_Label_1430:
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	357,r13		! source line 357
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
	.word	_Label_1432
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1433
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1434
	.word	-16
	.word	4
	.word	_Label_1435
	.word	-9
	.word	1
	.word	_Label_1436
	.word	-20
	.word	4
	.word	_Label_1437
	.word	-24
	.word	4
	.word	0
_Label_1432:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1433:
	.ascii	"Pself\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1435:
	.byte	'C'
	.ascii	"_temp_1427\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1437:
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
_Label_3738:
	push	r0
	sub	r1,1,r1
	bne	_Label_3738
	mov	362,r13		! source line 362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1439		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1439
!	jmp	_Label_1438
_Label_1438:
! THEN...
	mov	367,r13		! source line 367
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1440 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1440  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	367,r13		! source line 367
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1439:
! ASSIGNMENT STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	369,r13		! source line 369
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0AS",r10
	mov	370,r13		! source line 370
	mov	"\0\0SE",r10
!   _temp_1441 = &waitingThreads
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
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1443		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1443
!	jmp	_Label_1442
_Label_1442:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1444 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1444 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0SE",r10
!   _temp_1445 = &_P_Kernel_readyList
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
	mov	374,r13		! source line 374
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1446
_Label_1443:
! ELSE...
	mov	376,r13		! source line 376
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1446:
! ASSIGNMENT STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	378,r13		! source line 378
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	378,r13		! source line 378
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
	.word	_Label_1447
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1449
	.word	-12
	.word	4
	.word	_Label_1450
	.word	-16
	.word	4
	.word	_Label_1451
	.word	-20
	.word	4
	.word	_Label_1452
	.word	-24
	.word	4
	.word	_Label_1453
	.word	-28
	.word	4
	.word	_Label_1454
	.word	-32
	.word	4
	.word	0
_Label_1447:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1448:
	.ascii	"Pself\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1453:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1454:
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
_Label_3739:
	push	r0
	sub	r1,1,r1
	bne	_Label_3739
	mov	383,r13		! source line 383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1457		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1457
!	jmp	_Label_1456
_Label_1456:
!   _temp_1455 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1458
_Label_1457:
!   _temp_1455 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1458:
!   ReturnResult: _temp_1455  (sizeInBytes=1)
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
	.word	_Label_1459
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1460
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1461
	.word	-9
	.word	1
	.word	0
_Label_1459:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1460:
	.ascii	"Pself\0"
	.align
_Label_1461:
	.byte	'C'
	.ascii	"_temp_1455\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1462
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1462:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1463
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1463:
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
_Label_3740:
	push	r0
	sub	r1,1,r1
	bne	_Label_3740
	mov	424,r13		! source line 424
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
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
	mov	425,r13		! source line 425
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
	.word	_Label_1465
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1466
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1467
	.word	-12
	.word	4
	.word	0
_Label_1465:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1466:
	.ascii	"Pself\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1464\0"
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
_Label_3741:
	push	r0
	sub	r1,1,r1
	bne	_Label_3741
	mov	430,r13		! source line 430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0IF",r10
	mov	433,r13		! source line 433
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
!   Retrieve Result: targetName=_temp_1470  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1470 then goto _Label_1469 else goto _Label_1468
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1468
	jmp	_Label_1469
_Label_1468:
! THEN...
	mov	434,r13		! source line 434
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1471 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	434,r13		! source line 434
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1469:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	437,r13		! source line 437
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
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   _temp_1472 = &waitingThreads
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
	mov	439,r13		! source line 439
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
	mov	440,r13		! source line 440
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
	mov	441,r13		! source line 441
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	441,r13		! source line 441
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
	.word	_Label_1473
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1474
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1475
	.word	12
	.word	4
	.word	_Label_1476
	.word	-16
	.word	4
	.word	_Label_1477
	.word	-20
	.word	4
	.word	_Label_1478
	.word	-9
	.word	1
	.word	_Label_1479
	.word	-24
	.word	4
	.word	0
_Label_1473:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1474:
	.ascii	"Pself\0"
	.align
_Label_1475:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1478:
	.byte	'C'
	.ascii	"_temp_1470\0"
	.align
_Label_1479:
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
_Label_3742:
	push	r0
	sub	r1,1,r1
	bne	_Label_3742
	mov	446,r13		! source line 446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0IF",r10
	mov	450,r13		! source line 450
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
!   Retrieve Result: targetName=_temp_1482  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1482 then goto _Label_1481 else goto _Label_1480
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1480
	jmp	_Label_1481
_Label_1480:
! THEN...
	mov	451,r13		! source line 451
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1483 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	451,r13		! source line 451
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1481:
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_1484 = &waitingThreads
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
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1486		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1486
!	jmp	_Label_1485
_Label_1485:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1487 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1487 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0SE",r10
!   _temp_1488 = &_P_Kernel_readyList
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
_Label_1486:
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	459,r13		! source line 459
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
	.word	_Label_1489
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1491
	.word	12
	.word	4
	.word	_Label_1492
	.word	-16
	.word	4
	.word	_Label_1493
	.word	-20
	.word	4
	.word	_Label_1494
	.word	-24
	.word	4
	.word	_Label_1495
	.word	-28
	.word	4
	.word	_Label_1496
	.word	-9
	.word	1
	.word	_Label_1497
	.word	-32
	.word	4
	.word	_Label_1498
	.word	-36
	.word	4
	.word	0
_Label_1489:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1490:
	.ascii	"Pself\0"
	.align
_Label_1491:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1496:
	.byte	'C'
	.ascii	"_temp_1482\0"
	.align
_Label_1497:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1498:
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
_Label_3743:
	push	r0
	sub	r1,1,r1
	bne	_Label_3743
	mov	464,r13		! source line 464
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0IF",r10
	mov	468,r13		! source line 468
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
!   Retrieve Result: targetName=_temp_1501  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1501 then goto _Label_1500 else goto _Label_1499
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1499
	jmp	_Label_1500
_Label_1499:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1502 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	469,r13		! source line 469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1500:
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0WH",r10
_Label_1503:
!	jmp	_Label_1504
_Label_1504:
	mov	472,r13		! source line 472
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
	mov	473,r13		! source line 473
	mov	"\0\0SE",r10
!   _temp_1506 = &waitingThreads
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
	mov	474,r13		! source line 474
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1507
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1507
	jmp	_Label_1508
_Label_1507:
! THEN...
	mov	475,r13		! source line 475
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0BR",r10
	jmp	_Label_1505
! END IF...
_Label_1508:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1509 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1509 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_1510 = &_P_Kernel_readyList
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
	jmp	_Label_1503
_Label_1505:
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	480,r13		! source line 480
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
	.word	_Label_1511
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1513
	.word	12
	.word	4
	.word	_Label_1514
	.word	-16
	.word	4
	.word	_Label_1515
	.word	-20
	.word	4
	.word	_Label_1516
	.word	-24
	.word	4
	.word	_Label_1517
	.word	-28
	.word	4
	.word	_Label_1518
	.word	-9
	.word	1
	.word	_Label_1519
	.word	-32
	.word	4
	.word	_Label_1520
	.word	-36
	.word	4
	.word	0
_Label_1511:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1512:
	.ascii	"Pself\0"
	.align
_Label_1513:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1518:
	.byte	'C'
	.ascii	"_temp_1501\0"
	.align
_Label_1519:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1520:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1521
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
_Label_1521:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1522
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1522:
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
_Label_3744:
	push	r0
	sub	r1,1,r1
	bne	_Label_3744
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_1523 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1523) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1523 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_1524 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1524 [0 ] into _temp_1525
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
!   Data Move: *_temp_1525 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   _temp_1526 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1526 [999 ] into _temp_1527
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
!   Data Move: *_temp_1527 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   _temp_1528 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1528 [999 ] into _temp_1529
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
!   stackTop = _temp_1529		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   _temp_1530 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1532 = &_temp_1531
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1532 = _temp_1532 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1534:
!   Data Move: *_temp_1532 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1532 = _temp_1532 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1533 = _temp_1533 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1533) then goto _Label_1534
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1534
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1535 = &_temp_1531
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3745
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3745:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1530 = *_temp_1535  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3746:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3746
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_1536 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1538 = &_temp_1537
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1538 = _temp_1538 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1540:
!   Data Move: *_temp_1538 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1538 = _temp_1538 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1539 = _temp_1539 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1539) then goto _Label_1540
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1540
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1541 = &_temp_1537
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3747
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3747:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1536 = *_temp_1541  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3748:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3748
! RETURN STATEMENT...
	mov	505,r13		! source line 505
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
	.word	_Label_1542
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1544
	.word	12
	.word	4
	.word	_Label_1545
	.word	-12
	.word	4
	.word	_Label_1546
	.word	-16
	.word	4
	.word	_Label_1547
	.word	-20
	.word	4
	.word	_Label_1548
	.word	-84
	.word	64
	.word	_Label_1549
	.word	-88
	.word	4
	.word	_Label_1550
	.word	-92
	.word	4
	.word	_Label_1551
	.word	-96
	.word	4
	.word	_Label_1552
	.word	-100
	.word	4
	.word	_Label_1553
	.word	-156
	.word	56
	.word	_Label_1554
	.word	-160
	.word	4
	.word	_Label_1555
	.word	-164
	.word	4
	.word	_Label_1556
	.word	-168
	.word	4
	.word	_Label_1557
	.word	-172
	.word	4
	.word	_Label_1558
	.word	-176
	.word	4
	.word	_Label_1559
	.word	-180
	.word	4
	.word	_Label_1560
	.word	-184
	.word	4
	.word	_Label_1561
	.word	-188
	.word	4
	.word	0
_Label_1542:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1543:
	.ascii	"Pself\0"
	.align
_Label_1544:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1523\0"
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
_Label_3749:
	push	r0
	sub	r1,1,r1
	bne	_Label_3749
	mov	510,r13		! source line 510
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	521,r13		! source line 521
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
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
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1562 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1562  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1564 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1563  sizeInBytes=4
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
	mov	529,r13		! source line 529
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	529,r13		! source line 529
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	529,r13		! source line 529
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
	.word	_Label_1565
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1566
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1567
	.word	12
	.word	4
	.word	_Label_1568
	.word	16
	.word	4
	.word	_Label_1569
	.word	-12
	.word	4
	.word	_Label_1570
	.word	-16
	.word	4
	.word	_Label_1571
	.word	-20
	.word	4
	.word	_Label_1572
	.word	-24
	.word	4
	.word	_Label_1573
	.word	-28
	.word	4
	.word	0
_Label_1565:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1566:
	.ascii	"Pself\0"
	.align
_Label_1567:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1568:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1573:
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
_Label_3750:
	push	r0
	sub	r1,1,r1
	bne	_Label_3750
	mov	534,r13		! source line 534
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1576 == _P_Kernel_currentThread then goto _Label_1575		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1575
!	jmp	_Label_1574
_Label_1574:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1577 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1577  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	551,r13		! source line 551
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1575:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	553,r13		! source line 553
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0AS",r10
	mov	557,r13		! source line 557
	mov	"\0\0SE",r10
!   _temp_1578 = &_P_Kernel_readyList
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
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1580		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1580
!	jmp	_Label_1579
_Label_1579:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1582		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1582
!	jmp	_Label_1581
_Label_1581:
! THEN...
	mov	563,r13		! source line 563
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1583 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1583  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	563,r13		! source line 563
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1582:
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1585 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1584  sizeInBytes=4
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
	mov	567,r13		! source line 567
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1580:
! ASSIGNMENT STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	569,r13		! source line 569
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	569,r13		! source line 569
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
	.word	_Label_1586
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1587
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1588
	.word	-12
	.word	4
	.word	_Label_1589
	.word	-16
	.word	4
	.word	_Label_1590
	.word	-20
	.word	4
	.word	_Label_1591
	.word	-24
	.word	4
	.word	_Label_1592
	.word	-28
	.word	4
	.word	_Label_1593
	.word	-32
	.word	4
	.word	_Label_1594
	.word	-36
	.word	4
	.word	_Label_1595
	.word	-40
	.word	4
	.word	_Label_1596
	.word	-44
	.word	4
	.word	0
_Label_1586:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1587:
	.ascii	"Pself\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1594:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1595:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1596:
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
_Label_3751:
	push	r0
	sub	r1,1,r1
	bne	_Label_3751
	mov	574,r13		! source line 574
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1598		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1598
!	jmp	_Label_1597
_Label_1597:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1599 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1599  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	587,r13		! source line 587
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1598:
! IF STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1602 == _P_Kernel_currentThread then goto _Label_1601		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1601
!	jmp	_Label_1600
_Label_1600:
! THEN...
	mov	591,r13		! source line 591
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1603 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1603  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	591,r13		! source line 591
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1601:
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
	mov	597,r13		! source line 597
	mov	"\0\0SE",r10
!   _temp_1604 = &_P_Kernel_readyList
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
	mov	598,r13		! source line 598
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1605
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1605
	jmp	_Label_1606
_Label_1605:
! THEN...
	mov	599,r13		! source line 599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1607 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1607  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	599,r13		! source line 599
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1606:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	601,r13		! source line 601
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
	.word	_Label_1608
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1610
	.word	-12
	.word	4
	.word	_Label_1611
	.word	-16
	.word	4
	.word	_Label_1612
	.word	-20
	.word	4
	.word	_Label_1613
	.word	-24
	.word	4
	.word	_Label_1614
	.word	-28
	.word	4
	.word	_Label_1615
	.word	-32
	.word	4
	.word	0
_Label_1608:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1609:
	.ascii	"Pself\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1615:
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
_Label_3752:
	push	r0
	sub	r1,1,r1
	bne	_Label_3752
	mov	606,r13		! source line 606
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0IF",r10
!   _temp_1619 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1619 [0 ] into _temp_1620
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
!   Data Move: _temp_1618 = *_temp_1620  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1618 == 606348324 then goto _Label_1617		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1617
!	jmp	_Label_1616
_Label_1616:
! THEN...
	mov	613,r13		! source line 613
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1621 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1621  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	613,r13		! source line 613
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1622
_Label_1617:
! ELSE...
	mov	614,r13		! source line 614
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0IF",r10
!   _temp_1626 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1626 [999 ] into _temp_1627
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
!   Data Move: _temp_1625 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1625 == 606348324 then goto _Label_1624		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1624
!	jmp	_Label_1623
_Label_1623:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1628 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1628  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	615,r13		! source line 615
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1624:
! END IF...
_Label_1622:
! RETURN STATEMENT...
	mov	612,r13		! source line 612
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
	.word	_Label_1629
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1630
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1631
	.word	-12
	.word	4
	.word	_Label_1632
	.word	-16
	.word	4
	.word	_Label_1633
	.word	-20
	.word	4
	.word	_Label_1634
	.word	-24
	.word	4
	.word	_Label_1635
	.word	-28
	.word	4
	.word	_Label_1636
	.word	-32
	.word	4
	.word	_Label_1637
	.word	-36
	.word	4
	.word	_Label_1638
	.word	-40
	.word	4
	.word	0
_Label_1629:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1630:
	.ascii	"Pself\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1618\0"
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
_Label_3753:
	push	r0
	sub	r1,1,r1
	bne	_Label_3753
	mov	621,r13		! source line 621
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	627,r13		! source line 627
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1639 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1640 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1640  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1642 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1643 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1648 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1649 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1648  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1644:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1649 then goto _Label_1647		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1647
_Label_1645:
	mov	634,r13		! source line 634
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1650 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1651 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1651  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1652 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1652  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1654 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1654 [i ] into _temp_1655
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
!   Data Move: _temp_1653 = *_temp_1655  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1653  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1656 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1656  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1658 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1658 [i ] into _temp_1659
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
!   Data Move: _temp_1657 = *_temp_1659  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1657  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1660 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1646:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1644
! END FOR
_Label_1647:
! CALL STATEMENT...
!   _temp_1661 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_1662 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1661  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1662  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1663 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_1665 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1665 [0 ] into _temp_1666
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
!   _temp_1664 = _temp_1666		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1664  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	645,r13		! source line 645
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1669
	cmp	r1,2
	be	_Label_1670
	cmp	r1,3
	be	_Label_1671
	cmp	r1,4
	be	_Label_1672
	cmp	r1,5
	be	_Label_1673
	jmp	_Label_1667
! CASE 1...
_Label_1669:
! CALL STATEMENT...
!   _temp_1674 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1674  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_1668
! CASE 2...
_Label_1670:
! CALL STATEMENT...
!   _temp_1675 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1675  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0BR",r10
	jmp	_Label_1668
! CASE 3...
_Label_1671:
! CALL STATEMENT...
!   _temp_1676 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0BR",r10
	jmp	_Label_1668
! CASE 4...
_Label_1672:
! CALL STATEMENT...
!   _temp_1677 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1677  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0BR",r10
	jmp	_Label_1668
! CASE 5...
_Label_1673:
! CALL STATEMENT...
!   _temp_1678 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_1668
! DEFAULT CASE...
_Label_1667:
! CALL STATEMENT...
!   _temp_1679 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	662,r13		! source line 662
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1668:
! CALL STATEMENT...
!   _temp_1680 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1681 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1686 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1687 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1686  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1682:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1687 then goto _Label_1685		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1685
_Label_1683:
	mov	668,r13		! source line 668
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1688 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1689 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1690 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1692 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1692 [i ] into _temp_1693
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
!   Data Move: _temp_1691 = *_temp_1693  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1691  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1694 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1696 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1696 [i ] into _temp_1697
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
!   Data Move: _temp_1695 = *_temp_1697  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1695  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1698 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1684:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1682
! END FOR
_Label_1685:
! ASSIGNMENT STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	677,r13		! source line 677
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
	.word	_Label_1699
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1700
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1701
	.word	-12
	.word	4
	.word	_Label_1702
	.word	-16
	.word	4
	.word	_Label_1703
	.word	-20
	.word	4
	.word	_Label_1704
	.word	-24
	.word	4
	.word	_Label_1705
	.word	-28
	.word	4
	.word	_Label_1706
	.word	-32
	.word	4
	.word	_Label_1707
	.word	-36
	.word	4
	.word	_Label_1708
	.word	-40
	.word	4
	.word	_Label_1709
	.word	-44
	.word	4
	.word	_Label_1710
	.word	-48
	.word	4
	.word	_Label_1711
	.word	-52
	.word	4
	.word	_Label_1712
	.word	-56
	.word	4
	.word	_Label_1713
	.word	-60
	.word	4
	.word	_Label_1714
	.word	-64
	.word	4
	.word	_Label_1715
	.word	-68
	.word	4
	.word	_Label_1716
	.word	-72
	.word	4
	.word	_Label_1717
	.word	-76
	.word	4
	.word	_Label_1718
	.word	-80
	.word	4
	.word	_Label_1719
	.word	-84
	.word	4
	.word	_Label_1720
	.word	-88
	.word	4
	.word	_Label_1721
	.word	-92
	.word	4
	.word	_Label_1722
	.word	-96
	.word	4
	.word	_Label_1723
	.word	-100
	.word	4
	.word	_Label_1724
	.word	-104
	.word	4
	.word	_Label_1725
	.word	-108
	.word	4
	.word	_Label_1726
	.word	-112
	.word	4
	.word	_Label_1727
	.word	-116
	.word	4
	.word	_Label_1728
	.word	-120
	.word	4
	.word	_Label_1729
	.word	-124
	.word	4
	.word	_Label_1730
	.word	-128
	.word	4
	.word	_Label_1731
	.word	-132
	.word	4
	.word	_Label_1732
	.word	-136
	.word	4
	.word	_Label_1733
	.word	-140
	.word	4
	.word	_Label_1734
	.word	-144
	.word	4
	.word	_Label_1735
	.word	-148
	.word	4
	.word	_Label_1736
	.word	-152
	.word	4
	.word	_Label_1737
	.word	-156
	.word	4
	.word	_Label_1738
	.word	-160
	.word	4
	.word	_Label_1739
	.word	-164
	.word	4
	.word	_Label_1740
	.word	-168
	.word	4
	.word	_Label_1741
	.word	-172
	.word	4
	.word	_Label_1742
	.word	-176
	.word	4
	.word	_Label_1743
	.word	-180
	.word	4
	.word	_Label_1744
	.word	-184
	.word	4
	.word	_Label_1745
	.word	-188
	.word	4
	.word	_Label_1746
	.word	-192
	.word	4
	.word	_Label_1747
	.word	-196
	.word	4
	.word	0
_Label_1699:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1700:
	.ascii	"Pself\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1746:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1747:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1748
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1748:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1749
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1749:
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
_Label_3754:
	push	r0
	sub	r1,1,r1
	bne	_Label_3754
	mov	732,r13		! source line 732
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0AS",r10
!   _temp_1750 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1752 = &_temp_1751
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1752 = _temp_1752 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1754 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3755:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3755
!   _temp_1754 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1756:
!   Data Move: *_temp_1752 = _temp_1754  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3756:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3756
!   _temp_1752 = _temp_1752 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1753 = _temp_1753 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1753) then goto _Label_1756
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1756
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1757 = &_temp_1751
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3757
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3757:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1750 = *_temp_1757  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3758:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3758
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
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
	mov	742,r13		! source line 742
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
	mov	743,r13		! source line 743
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
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1761 = &threadManagerLock
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
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_1762 = &aThreadBecameFree
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
	mov	746,r13		! source line 746
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1767 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1768 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1767  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_1763:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1768 then goto _Label_1766		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1766
_Label_1764:
	mov	746,r13		! source line 746
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1769 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-48]
!   _temp_1770 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1770 [i ] into _temp_1771
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
!   Prepare Argument: offset=12  value=_temp_1769  sizeInBytes=4
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
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   _temp_1772 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1772 [i ] into _temp_1773
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
!   _temp_1774 = _temp_1773 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1774 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1776 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1776 [i ] into _temp_1777
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
!   _temp_1775 = _temp_1777		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1778 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1775  sizeInBytes=4
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
_Label_1765:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_1763
! END FOR
_Label_1766:
! RETURN STATEMENT...
	mov	746,r13		! source line 746
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
	.word	_Label_1779
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_1780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1781
	.word	-12
	.word	4
	.word	_Label_1782
	.word	-16
	.word	4
	.word	_Label_1783
	.word	-20
	.word	4
	.word	_Label_1784
	.word	-24
	.word	4
	.word	_Label_1785
	.word	-28
	.word	4
	.word	_Label_1786
	.word	-32
	.word	4
	.word	_Label_1787
	.word	-36
	.word	4
	.word	_Label_1788
	.word	-40
	.word	4
	.word	_Label_1789
	.word	-44
	.word	4
	.word	_Label_1790
	.word	-48
	.word	4
	.word	_Label_1791
	.word	-52
	.word	4
	.word	_Label_1792
	.word	-56
	.word	4
	.word	_Label_1793
	.word	-60
	.word	4
	.word	_Label_1794
	.word	-64
	.word	4
	.word	_Label_1795
	.word	-68
	.word	4
	.word	_Label_1796
	.word	-72
	.word	4
	.word	_Label_1797
	.word	-76
	.word	4
	.word	_Label_1798
	.word	-80
	.word	4
	.word	_Label_1799
	.word	-84
	.word	4
	.word	_Label_1800
	.word	-4248
	.word	4164
	.word	_Label_1801
	.word	-4252
	.word	4
	.word	_Label_1802
	.word	-4256
	.word	4
	.word	_Label_1803
	.word	-45900
	.word	41644
	.word	_Label_1804
	.word	-45904
	.word	4
	.word	_Label_1805
	.word	-45908
	.word	4
	.word	0
_Label_1779:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1780:
	.ascii	"Pself\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1805:
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
_Label_3759:
	push	r0
	sub	r1,1,r1
	bne	_Label_3759
	mov	755,r13		! source line 755
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1806 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1811 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1812 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1811  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1807:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1812 then goto _Label_1810		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1810
_Label_1808:
	mov	764,r13		! source line 764
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1813 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1814 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1814  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1816 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1816 [i ] into _temp_1817
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
!   _temp_1815 = _temp_1817		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1815  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CA",r10
	call	_function_190_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1809:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1807
! END FOR
_Label_1810:
! CALL STATEMENT...
!   _temp_1818 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1818  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_1819 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1820 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1819  sizeInBytes=4
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
	mov	772,r13		! source line 772
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	773,r13		! source line 773
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
	.word	_Label_1821
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1823
	.word	-12
	.word	4
	.word	_Label_1824
	.word	-16
	.word	4
	.word	_Label_1825
	.word	-20
	.word	4
	.word	_Label_1826
	.word	-24
	.word	4
	.word	_Label_1827
	.word	-28
	.word	4
	.word	_Label_1828
	.word	-32
	.word	4
	.word	_Label_1829
	.word	-36
	.word	4
	.word	_Label_1830
	.word	-40
	.word	4
	.word	_Label_1831
	.word	-44
	.word	4
	.word	_Label_1832
	.word	-48
	.word	4
	.word	_Label_1833
	.word	-52
	.word	4
	.word	_Label_1834
	.word	-56
	.word	4
	.word	_Label_1835
	.word	-60
	.word	4
	.word	0
_Label_1821:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1822:
	.ascii	"Pself\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1834:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1835:
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
_Label_3760:
	push	r0
	sub	r1,1,r1
	bne	_Label_3760
	mov	778,r13		! source line 778
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1836 = &threadManagerLock
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
	mov	786,r13		! source line 786
	mov	"\0\0WH",r10
_Label_1837:
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_1840 = &freeList
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
!   if result==true then goto _Label_1838 else goto _Label_1839
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1839
	jmp	_Label_1838
_Label_1838:
	mov	786,r13		! source line 786
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1841 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1842 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1841  sizeInBytes=4
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
	jmp	_Label_1837
_Label_1839:
! ASSIGNMENT STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0AS",r10
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1843 = &freeList
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
	mov	790,r13		! source line 790
	mov	"\0\0AS",r10
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1844 = threadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1844 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1845 = &threadManagerLock
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
	mov	792,r13		! source line 792
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
	.word	_Label_1846
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1848
	.word	-12
	.word	4
	.word	_Label_1849
	.word	-16
	.word	4
	.word	_Label_1850
	.word	-20
	.word	4
	.word	_Label_1851
	.word	-24
	.word	4
	.word	_Label_1852
	.word	-28
	.word	4
	.word	_Label_1853
	.word	-32
	.word	4
	.word	_Label_1854
	.word	-36
	.word	4
	.word	_Label_1855
	.word	-40
	.word	4
	.word	0
_Label_1846:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1847:
	.ascii	"Pself\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1855:
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
_Label_3761:
	push	r0
	sub	r1,1,r1
	bne	_Label_3761
	mov	797,r13		! source line 797
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_1856 = &threadManagerLock
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
	mov	803,r13		! source line 803
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1857 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1857 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_1858 = &freeList
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
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1859 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1860 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1859  sizeInBytes=4
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
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_1861 = &threadManagerLock
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
	mov	806,r13		! source line 806
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
	.word	_Label_1862
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1864
	.word	12
	.word	4
	.word	_Label_1865
	.word	-12
	.word	4
	.word	_Label_1866
	.word	-16
	.word	4
	.word	_Label_1867
	.word	-20
	.word	4
	.word	_Label_1868
	.word	-24
	.word	4
	.word	_Label_1869
	.word	-28
	.word	4
	.word	_Label_1870
	.word	-32
	.word	4
	.word	0
_Label_1862:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1863:
	.ascii	"Pself\0"
	.align
_Label_1864:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1871
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1871:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1872
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1872:
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
	mov	3,r1
_Label_3762:
	push	r0
	sub	r1,1,r1
	bne	_Label_3762
	mov	819,r13		! source line 819
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3763:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3763
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_1874 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
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
	mov	823,r13		! source line 823
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1875
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1877
	.word	-12
	.word	4
	.word	_Label_1878
	.word	-16
	.word	4
	.word	0
_Label_1875:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1876:
	.ascii	"Pself\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1873\0"
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
_Label_3764:
	push	r0
	sub	r1,1,r1
	bne	_Label_3764
	mov	833,r13		! source line 833
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1879) then goto _runtimeErrorNullPointer
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
	mov	839,r13		! source line 839
	mov	"\0\0SE",r10
!   _temp_1880 = &addrSpace
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
!   _temp_1881 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1881  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_function_190_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	851,r13		! source line 851
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
	.word	_Label_1882
	.word	4		! total size of parameters
	.word	16		! frame size = 16
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
	.word	0
_Label_1882:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
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
_Label_3765:
	push	r0
	sub	r1,1,r1
	bne	_Label_3765
	mov	856,r13		! source line 856
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1887 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1887  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1888  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1889 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1889  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1890 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1892		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1892
!	jmp	_Label_1891
_Label_1891:
! THEN...
	mov	866,r13		! source line 866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1893 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1893  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1894
_Label_1892:
! ELSE...
	mov	867,r13		! source line 867
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1896		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1896
!	jmp	_Label_1895
_Label_1895:
! THEN...
	mov	868,r13		! source line 868
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1897 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1897  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1898
_Label_1896:
! ELSE...
	mov	869,r13		! source line 869
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1900		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1900
!	jmp	_Label_1899
_Label_1899:
! THEN...
	mov	870,r13		! source line 870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1901 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1901  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1902
_Label_1900:
! ELSE...
	mov	872,r13		! source line 872
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1903 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1903  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	872,r13		! source line 872
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1902:
! END IF...
_Label_1898:
! END IF...
_Label_1894:
! CALL STATEMENT...
!   _temp_1904 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1904  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1905 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1905  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	878,r13		! source line 878
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
	.word	_Label_1906
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1908
	.word	-12
	.word	4
	.word	_Label_1909
	.word	-16
	.word	4
	.word	_Label_1910
	.word	-20
	.word	4
	.word	_Label_1911
	.word	-24
	.word	4
	.word	_Label_1912
	.word	-28
	.word	4
	.word	_Label_1913
	.word	-32
	.word	4
	.word	_Label_1914
	.word	-36
	.word	4
	.word	_Label_1915
	.word	-40
	.word	4
	.word	_Label_1916
	.word	-44
	.word	4
	.word	_Label_1917
	.word	-48
	.word	4
	.word	0
_Label_1906:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1907:
	.ascii	"Pself\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1918
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
_Label_1918:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1919
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1919:
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
_Label_3766:
	push	r0
	sub	r1,1,r1
	bne	_Label_3766
	mov	889,r13		! source line 889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
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
	mov	896,r13		! source line 896
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
	mov	897,r13		! source line 897
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
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1923 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1940]
!   NEW ARRAY Constructor...
!   _temp_1925 = &_temp_1924
	add	r14,-1936,r1
	store	r1,[r14+-252]
!   _temp_1925 = _temp_1925 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1927 = zeros  (sizeInBytes=168)
	add	r14,-244,r4
	mov	42,r3
_Label_3767:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3767
!   _temp_1927 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-244]
	mov	10,r1
	store	r1,[r14+-248]
_Label_1929:
!   Data Move: *_temp_1925 = _temp_1927  (sizeInBytes=168)
	add	r14,-244,r5
	load	[r14+-252],r4
	mov	42,r3
_Label_3768:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3768
!   _temp_1925 = _temp_1925 + 168
	load	[r14+-252],r1
	add	r1,168,r1
	store	r1,[r14+-252]
!   _temp_1926 = _temp_1926 + -1
	load	[r14+-248],r1
	add	r1,-1,r1
	store	r1,[r14+-248]
!   if intNotZero (_temp_1926) then goto _Label_1929
	load	[r14+-248],r1
	cmp	r1,r0
	bne	_Label_1929
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1936]
!   _temp_1930 = &_temp_1924
	add	r14,-1936,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1940],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3769
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3769:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1923 = *_temp_1930  (sizeInBytes=1684)
	load	[r14+-72],r5
	load	[r14+-1940],r4
	mov	421,r3
_Label_3770:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3770
! ASSIGNMENT STATEMENT...
	mov	899,r13		! source line 899
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
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1932 = &processManagerLock
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
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1933 = &aProcessBecameFree
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
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_1934 = &aProcessDied
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
	mov	903,r13		! source line 903
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1939 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1940 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1939  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1956]
_Label_1935:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1940 then goto _Label_1938		
	load	[r14+-1956],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1938
_Label_1936:
	mov	903,r13		! source line 903
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1941 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1941 [i ] into _temp_1942
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
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   _temp_1943 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1943 [i ] into _temp_1944
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
!   _temp_1945 = _temp_1944 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1945 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1947 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1947 [i ] into _temp_1948
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
!   _temp_1946 = _temp_1948		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1949 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1946  sizeInBytes=4
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
_Label_1937:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_1935
! END FOR
_Label_1938:
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1752]
! RETURN STATEMENT...
	mov	908,r13		! source line 908
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
	.word	_Label_1950
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_1951
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1952
	.word	-12
	.word	4
	.word	_Label_1953
	.word	-16
	.word	4
	.word	_Label_1954
	.word	-20
	.word	4
	.word	_Label_1955
	.word	-24
	.word	4
	.word	_Label_1956
	.word	-28
	.word	4
	.word	_Label_1957
	.word	-32
	.word	4
	.word	_Label_1958
	.word	-36
	.word	4
	.word	_Label_1959
	.word	-40
	.word	4
	.word	_Label_1960
	.word	-44
	.word	4
	.word	_Label_1961
	.word	-48
	.word	4
	.word	_Label_1962
	.word	-52
	.word	4
	.word	_Label_1963
	.word	-56
	.word	4
	.word	_Label_1964
	.word	-60
	.word	4
	.word	_Label_1965
	.word	-64
	.word	4
	.word	_Label_1966
	.word	-68
	.word	4
	.word	_Label_1967
	.word	-72
	.word	4
	.word	_Label_1968
	.word	-76
	.word	4
	.word	_Label_1969
	.word	-244
	.word	168
	.word	_Label_1970
	.word	-248
	.word	4
	.word	_Label_1971
	.word	-252
	.word	4
	.word	_Label_1972
	.word	-1936
	.word	1684
	.word	_Label_1973
	.word	-1940
	.word	4
	.word	_Label_1974
	.word	-1944
	.word	4
	.word	_Label_1975
	.word	-1948
	.word	4
	.word	_Label_1976
	.word	-1952
	.word	4
	.word	_Label_1977
	.word	-1956
	.word	4
	.word	0
_Label_1950:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1951:
	.ascii	"Pself\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1977:
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
_Label_3771:
	push	r0
	sub	r1,1,r1
	bne	_Label_3771
	mov	913,r13		! source line 913
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1978 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1983 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1984 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1983  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1979:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1984 then goto _Label_1982		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1982
_Label_1980:
	mov	922,r13		! source line 922
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1985 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1985  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1986 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0SE",r10
!   _temp_1987 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1987 [i ] into _temp_1988
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
_Label_1981:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1979
! END FOR
_Label_1982:
! CALL STATEMENT...
!   _temp_1989 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1989  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1990 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1991 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1990  sizeInBytes=4
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
	mov	930,r13		! source line 930
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	931,r13		! source line 931
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
	.word	_Label_1992
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1994
	.word	-12
	.word	4
	.word	_Label_1995
	.word	-16
	.word	4
	.word	_Label_1996
	.word	-20
	.word	4
	.word	_Label_1997
	.word	-24
	.word	4
	.word	_Label_1998
	.word	-28
	.word	4
	.word	_Label_1999
	.word	-32
	.word	4
	.word	_Label_2000
	.word	-36
	.word	4
	.word	_Label_2001
	.word	-40
	.word	4
	.word	_Label_2002
	.word	-44
	.word	4
	.word	_Label_2003
	.word	-48
	.word	4
	.word	_Label_2004
	.word	-52
	.word	4
	.word	_Label_2005
	.word	-56
	.word	4
	.word	0
_Label_1992:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1993:
	.ascii	"Pself\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2004:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2005:
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
_Label_3772:
	push	r0
	sub	r1,1,r1
	bne	_Label_3772
	mov	936,r13		! source line 936
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2006 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2011 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2012 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2011  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2007:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2012 then goto _Label_2010		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2010
_Label_2008:
	mov	945,r13		! source line 945
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2013 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0SE",r10
!   _temp_2014 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2014 [i ] into _temp_2015
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
_Label_2009:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2007
! END FOR
_Label_2010:
! CALL STATEMENT...
!   _temp_2016 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_2017 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2018 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2017  sizeInBytes=4
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
	mov	952,r13		! source line 952
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	953,r13		! source line 953
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
	.word	_Label_2019
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2020
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2021
	.word	-12
	.word	4
	.word	_Label_2022
	.word	-16
	.word	4
	.word	_Label_2023
	.word	-20
	.word	4
	.word	_Label_2024
	.word	-24
	.word	4
	.word	_Label_2025
	.word	-28
	.word	4
	.word	_Label_2026
	.word	-32
	.word	4
	.word	_Label_2027
	.word	-36
	.word	4
	.word	_Label_2028
	.word	-40
	.word	4
	.word	_Label_2029
	.word	-44
	.word	4
	.word	_Label_2030
	.word	-48
	.word	4
	.word	_Label_2031
	.word	-52
	.word	4
	.word	0
_Label_2019:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2020:
	.ascii	"Pself\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2030:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2031:
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
_Label_3773:
	push	r0
	sub	r1,1,r1
	bne	_Label_3773
	mov	958,r13		! source line 958
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2032 = &processManagerLock
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
	mov	966,r13		! source line 966
	mov	"\0\0WH",r10
_Label_2033:
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_2036 = &freeList
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
!   if result==true then goto _Label_2034 else goto _Label_2035
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2035
	jmp	_Label_2034
_Label_2034:
	mov	966,r13		! source line 966
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_2037 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2038 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2037  sizeInBytes=4
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
	jmp	_Label_2033
_Label_2035:
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_2039 = &freeList
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
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2040 = processPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2040 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
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
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2041 = processPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2041 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_2042 = &processManagerLock
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
	mov	974,r13		! source line 974
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
	.word	_Label_2043
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2045
	.word	-12
	.word	4
	.word	_Label_2046
	.word	-16
	.word	4
	.word	_Label_2047
	.word	-20
	.word	4
	.word	_Label_2048
	.word	-24
	.word	4
	.word	_Label_2049
	.word	-28
	.word	4
	.word	_Label_2050
	.word	-32
	.word	4
	.word	_Label_2051
	.word	-36
	.word	4
	.word	_Label_2052
	.word	-40
	.word	4
	.word	_Label_2053
	.word	-44
	.word	4
	.word	0
_Label_2043:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2044:
	.ascii	"Pself\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2053:
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
_Label_3774:
	push	r0
	sub	r1,1,r1
	bne	_Label_3774
	mov	979,r13		! source line 979
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2054 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	984,r13		! source line 984
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_2055 = &processManagerLock
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
	mov	986,r13		! source line 986
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2056 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2056 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_2057 = &freeList
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
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_2058 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2059 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2058  sizeInBytes=4
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
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_2060 = &processManagerLock
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
	mov	989,r13		! source line 989
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
	.word	_Label_2061
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2063
	.word	12
	.word	4
	.word	_Label_2064
	.word	-12
	.word	4
	.word	_Label_2065
	.word	-16
	.word	4
	.word	_Label_2066
	.word	-20
	.word	4
	.word	_Label_2067
	.word	-24
	.word	4
	.word	_Label_2068
	.word	-28
	.word	4
	.word	_Label_2069
	.word	-32
	.word	4
	.word	_Label_2070
	.word	-36
	.word	4
	.word	0
_Label_2061:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2062:
	.ascii	"Pself\0"
	.align
_Label_2063:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2054\0"
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
_Label_3775:
	push	r0
	sub	r1,1,r1
	bne	_Label_3775
	mov	994,r13		! source line 994
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_2071 = &processManagerLock
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
	mov	1000,r13		! source line 1000
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2076 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-176]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2077 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-172]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2076  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+-184]
_Label_2072:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2077 then goto _Label_2075		
	load	[r14+-184],r1
	load	[r14+-172],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2075
_Label_2073:
	mov	1000,r13		! source line 1000
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0IF",r10
!   _temp_2082 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Move address of _temp_2082 [i ] into _temp_2083
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
!   _temp_2084 = _temp_2083 + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2081 = *_temp_2084  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2086 = PCB + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_2085 = *_temp_2086  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if _temp_2081 != _temp_2085 then goto _Label_2079		(int)
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bne	_Label_2079
!	jmp	_Label_2080
_Label_2080:
!   _temp_2088 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Move address of _temp_2088 [i ] into _temp_2089
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
!   _temp_2090 = _temp_2089 + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_2087 = *_temp_2090  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if _temp_2087 != 2 then goto _Label_2079		(int)
	load	[r14+-144],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2079
!	jmp	_Label_2078
_Label_2078:
! THEN...
	mov	1002,r13		! source line 1002
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0AS",r10
!   _temp_2091 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Move address of _temp_2091 [i ] into _temp_2092
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
!   _temp_2093 = _temp_2092 + 20
	load	[r14+-124],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_2093 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-120],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_2095 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_2095 [i ] into _temp_2096
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
!   _temp_2094 = _temp_2096		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-116]
!   _temp_2097 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2094  sizeInBytes=4
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
	mov	1004,r13		! source line 1004
	mov	"\0\0SE",r10
!   _temp_2098 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-100]
!   _temp_2099 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_2098  sizeInBytes=4
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
_Label_2079:
!   Increment the FOR-LOOP index variable and jump back
_Label_2074:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_2072
! END FOR
_Label_2075:
! FOR STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2104 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2105 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2104  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-184]
_Label_2100:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2105 then goto _Label_2103		
	load	[r14+-184],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2103
_Label_2101:
	mov	1008,r13		! source line 1008
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0IF",r10
!   _temp_2110 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_2110 [i ] into _temp_2111
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
!   _temp_2112 = _temp_2111 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2109 = *_temp_2112  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2114 = PCB + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2113 = *_temp_2114  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2109 != _temp_2113 then goto _Label_2107		(int)
	load	[r14+-84],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bne	_Label_2107
!	jmp	_Label_2108
_Label_2108:
!   _temp_2116 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2116 [i ] into _temp_2117
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
!   _temp_2118 = _temp_2117 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2115 = *_temp_2118  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_2115 != 1 then goto _Label_2107		(int)
	load	[r14+-60],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2107
!	jmp	_Label_2106
_Label_2106:
! THEN...
	mov	1010,r13		! source line 1010
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2119 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2119 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_2120 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2121 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2120  sizeInBytes=4
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
	mov	1012,r13		! source line 1012
	mov	"\0\0SE",r10
!   _temp_2122 = &processManagerLock
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
	mov	1013,r13		! source line 1013
	mov	"\0\0RE",r10
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2107:
!   Increment the FOR-LOOP index variable and jump back
_Label_2102:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_2100
! END FOR
_Label_2103:
! ASSIGNMENT STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2123 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2123 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0SE",r10
!   _temp_2124 = &freeList
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
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_2125 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2126 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2125  sizeInBytes=4
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
	mov	1021,r13		! source line 1021
	mov	"\0\0SE",r10
!   _temp_2127 = &processManagerLock
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
	mov	1021,r13		! source line 1021
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
	.word	_Label_2128
	.word	8		! total size of parameters
	.word	184		! frame size = 184
	.word	_Label_2129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2130
	.word	12
	.word	4
	.word	_Label_2131
	.word	-12
	.word	4
	.word	_Label_2132
	.word	-16
	.word	4
	.word	_Label_2133
	.word	-20
	.word	4
	.word	_Label_2134
	.word	-24
	.word	4
	.word	_Label_2135
	.word	-28
	.word	4
	.word	_Label_2136
	.word	-32
	.word	4
	.word	_Label_2137
	.word	-36
	.word	4
	.word	_Label_2138
	.word	-40
	.word	4
	.word	_Label_2139
	.word	-44
	.word	4
	.word	_Label_2140
	.word	-48
	.word	4
	.word	_Label_2141
	.word	-52
	.word	4
	.word	_Label_2142
	.word	-56
	.word	4
	.word	_Label_2143
	.word	-60
	.word	4
	.word	_Label_2144
	.word	-64
	.word	4
	.word	_Label_2145
	.word	-68
	.word	4
	.word	_Label_2146
	.word	-72
	.word	4
	.word	_Label_2147
	.word	-76
	.word	4
	.word	_Label_2148
	.word	-80
	.word	4
	.word	_Label_2149
	.word	-84
	.word	4
	.word	_Label_2150
	.word	-88
	.word	4
	.word	_Label_2151
	.word	-92
	.word	4
	.word	_Label_2152
	.word	-96
	.word	4
	.word	_Label_2153
	.word	-100
	.word	4
	.word	_Label_2154
	.word	-104
	.word	4
	.word	_Label_2155
	.word	-108
	.word	4
	.word	_Label_2156
	.word	-112
	.word	4
	.word	_Label_2157
	.word	-116
	.word	4
	.word	_Label_2158
	.word	-120
	.word	4
	.word	_Label_2159
	.word	-124
	.word	4
	.word	_Label_2160
	.word	-128
	.word	4
	.word	_Label_2161
	.word	-132
	.word	4
	.word	_Label_2162
	.word	-136
	.word	4
	.word	_Label_2163
	.word	-140
	.word	4
	.word	_Label_2164
	.word	-144
	.word	4
	.word	_Label_2165
	.word	-148
	.word	4
	.word	_Label_2166
	.word	-152
	.word	4
	.word	_Label_2167
	.word	-156
	.word	4
	.word	_Label_2168
	.word	-160
	.word	4
	.word	_Label_2169
	.word	-164
	.word	4
	.word	_Label_2170
	.word	-168
	.word	4
	.word	_Label_2171
	.word	-172
	.word	4
	.word	_Label_2172
	.word	-176
	.word	4
	.word	_Label_2173
	.word	-180
	.word	4
	.word	_Label_2174
	.word	-184
	.word	4
	.word	0
_Label_2128:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2129:
	.ascii	"Pself\0"
	.align
_Label_2130:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2174:
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
_Label_3776:
	push	r0
	sub	r1,1,r1
	bne	_Label_3776
	mov	1028,r13		! source line 1028
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_2175 = &processManagerLock
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
	mov	1034,r13		! source line 1034
	mov	"\0\0WH",r10
_Label_2176:
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2180 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2179 = *_temp_2180  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2179 == 2 then goto _Label_2178		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2178
!	jmp	_Label_2177
_Label_2177:
	mov	1034,r13		! source line 1034
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_2181 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2182 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2181  sizeInBytes=4
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
	jmp	_Label_2176
_Label_2178:
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2183 = PCB + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exit_status = *_temp_2183  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2184 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2184 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2185 = &freeList
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
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_2186 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2187 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2186  sizeInBytes=4
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
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_2188 = &processManagerLock
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
	mov	1044,r13		! source line 1044
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
	.word	_Label_2189
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2191
	.word	12
	.word	4
	.word	_Label_2192
	.word	-12
	.word	4
	.word	_Label_2193
	.word	-16
	.word	4
	.word	_Label_2194
	.word	-20
	.word	4
	.word	_Label_2195
	.word	-24
	.word	4
	.word	_Label_2196
	.word	-28
	.word	4
	.word	_Label_2197
	.word	-32
	.word	4
	.word	_Label_2198
	.word	-36
	.word	4
	.word	_Label_2199
	.word	-40
	.word	4
	.word	_Label_2200
	.word	-44
	.word	4
	.word	_Label_2201
	.word	-48
	.word	4
	.word	_Label_2202
	.word	-52
	.word	4
	.word	_Label_2203
	.word	-56
	.word	4
	.word	0
_Label_2189:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2190:
	.ascii	"Pself\0"
	.align
_Label_2191:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2203:
	.byte	'I'
	.ascii	"exit_status\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2204
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2204:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2205
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2205:
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
_Label_3777:
	push	r0
	sub	r1,1,r1
	bne	_Label_3777
	mov	1088,r13		! source line 1088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2206 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2206  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1094,r13		! source line 1094
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
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
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_2208 = &framesInUse
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
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
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
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_2210 = &frameManagerLock
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
	mov	1100,r13		! source line 1100
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
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_2212 = &newFramesAvailable
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
	mov	1107,r13		! source line 1107
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2217 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2218 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2217  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2213:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2218 then goto _Label_2216		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2216
_Label_2214:
	mov	1107,r13		! source line 1107
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2221 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2221) then goto _Label_2220
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2220
!	jmp	_Label_2219
_Label_2219:
! THEN...
	mov	1111,r13		! source line 1111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2222 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1111,r13		! source line 1111
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2220:
!   Increment the FOR-LOOP index variable and jump back
_Label_2215:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2213
! END FOR
_Label_2216:
! RETURN STATEMENT...
	mov	1107,r13		! source line 1107
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
	.word	_Label_2223
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2225
	.word	-12
	.word	4
	.word	_Label_2226
	.word	-16
	.word	4
	.word	_Label_2227
	.word	-20
	.word	4
	.word	_Label_2228
	.word	-24
	.word	4
	.word	_Label_2229
	.word	-28
	.word	4
	.word	_Label_2230
	.word	-32
	.word	4
	.word	_Label_2231
	.word	-36
	.word	4
	.word	_Label_2232
	.word	-40
	.word	4
	.word	_Label_2233
	.word	-44
	.word	4
	.word	_Label_2234
	.word	-48
	.word	4
	.word	_Label_2235
	.word	-52
	.word	4
	.word	_Label_2236
	.word	-56
	.word	4
	.word	0
_Label_2223:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2224:
	.ascii	"Pself\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2236:
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
_Label_3778:
	push	r0
	sub	r1,1,r1
	bne	_Label_3778
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_2237 = &frameManagerLock
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
!   _temp_2238 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2238  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2239 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2239  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1124,r13		! source line 1124
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2240 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2240  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_2241 = &framesInUse
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
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_2242 = &frameManagerLock
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
	mov	1127,r13		! source line 1127
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
	.word	_Label_2243
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2244
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_2243:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2244:
	.ascii	"Pself\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2237\0"
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
_Label_3779:
	push	r0
	sub	r1,1,r1
	bne	_Label_3779
	mov	1132,r13		! source line 1132
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_2251 = &frameManagerLock
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
	mov	1143,r13		! source line 1143
	mov	"\0\0WH",r10
_Label_2252:
!   if numberFreeFrames >= 1 then goto _Label_2254		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2254
!	jmp	_Label_2253
_Label_2253:
	mov	1143,r13		! source line 1143
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_2255 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2256 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2255  sizeInBytes=4
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
	jmp	_Label_2252
_Label_2254:
! ASSIGNMENT STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0AS",r10
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_2257 = &framesInUse
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
	mov	1149,r13		! source line 1149
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
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_2258 = &frameManagerLock
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
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
!   _temp_2259 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2259		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1157,r13		! source line 1157
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
	.word	_Label_2260
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2262
	.word	-12
	.word	4
	.word	_Label_2263
	.word	-16
	.word	4
	.word	_Label_2264
	.word	-20
	.word	4
	.word	_Label_2265
	.word	-24
	.word	4
	.word	_Label_2266
	.word	-28
	.word	4
	.word	_Label_2267
	.word	-32
	.word	4
	.word	_Label_2268
	.word	-36
	.word	4
	.word	_Label_2269
	.word	-40
	.word	4
	.word	0
_Label_2260:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2261:
	.ascii	"Pself\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2268:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2269:
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
_Label_3780:
	push	r0
	sub	r1,1,r1
	bne	_Label_3780
	mov	1162,r13		! source line 1162
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_2270 = &frameManagerLock
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
	mov	1165,r13		! source line 1165
	mov	"\0\0WH",r10
_Label_2271:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2273		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2273
!	jmp	_Label_2272
_Label_2272:
	mov	1165,r13		! source line 1165
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   _temp_2274 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2275 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2274  sizeInBytes=4
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
	jmp	_Label_2271
_Label_2273:
! FOR STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2280 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2281 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2280  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2276:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2281 then goto _Label_2279		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2279
_Label_2277:
	mov	1168,r13		! source line 1168
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0AS",r10
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_2282 = &framesInUse
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
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
!   _temp_2283 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2283		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1171,r13		! source line 1171
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
_Label_2278:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2276
! END FOR
_Label_2279:
! ASSIGNMENT STATEMENT...
	mov	1173,r13		! source line 1173
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
	mov	1174,r13		! source line 1174
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2284 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2284 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_2285 = &frameManagerLock
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
	mov	1175,r13		! source line 1175
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
	.word	_Label_2286
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2287
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2288
	.word	12
	.word	4
	.word	_Label_2289
	.word	16
	.word	4
	.word	_Label_2290
	.word	-12
	.word	4
	.word	_Label_2291
	.word	-16
	.word	4
	.word	_Label_2292
	.word	-20
	.word	4
	.word	_Label_2293
	.word	-24
	.word	4
	.word	_Label_2294
	.word	-28
	.word	4
	.word	_Label_2295
	.word	-32
	.word	4
	.word	_Label_2296
	.word	-36
	.word	4
	.word	_Label_2297
	.word	-40
	.word	4
	.word	_Label_2298
	.word	-44
	.word	4
	.word	_Label_2299
	.word	-48
	.word	4
	.word	_Label_2300
	.word	-52
	.word	4
	.word	_Label_2301
	.word	-56
	.word	4
	.word	0
_Label_2286:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2287:
	.ascii	"Pself\0"
	.align
_Label_2288:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2289:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2299:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2300:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2301:
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
_Label_3781:
	push	r0
	sub	r1,1,r1
	bne	_Label_3781
	mov	1180,r13		! source line 1180
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0SE",r10
!   _temp_2302 = &frameManagerLock
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
	mov	1186,r13		! source line 1186
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2307 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2310 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2309 = *_temp_2310  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2308 = _temp_2309 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2307  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2303:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2308 then goto _Label_2306		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2306
_Label_2304:
	mov	1186,r13		! source line 1186
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
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
	mov	1188,r13		! source line 1188
	mov	"\0\0AS",r10
!   _temp_2311 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_2311 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   _temp_2312 = &framesInUse
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
_Label_2305:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2303
! END FOR
_Label_2306:
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2314 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2313 = *_temp_2314  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2313		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
!   _temp_2315 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2316 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2315  sizeInBytes=4
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
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_2317 = &frameManagerLock
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
	mov	1193,r13		! source line 1193
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
	.word	_Label_2318
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2319
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2320
	.word	12
	.word	4
	.word	_Label_2321
	.word	-12
	.word	4
	.word	_Label_2322
	.word	-16
	.word	4
	.word	_Label_2323
	.word	-20
	.word	4
	.word	_Label_2324
	.word	-24
	.word	4
	.word	_Label_2325
	.word	-28
	.word	4
	.word	_Label_2326
	.word	-32
	.word	4
	.word	_Label_2327
	.word	-36
	.word	4
	.word	_Label_2328
	.word	-40
	.word	4
	.word	_Label_2329
	.word	-44
	.word	4
	.word	_Label_2330
	.word	-48
	.word	4
	.word	_Label_2331
	.word	-52
	.word	4
	.word	_Label_2332
	.word	-56
	.word	4
	.word	_Label_2333
	.word	-60
	.word	4
	.word	_Label_2334
	.word	-64
	.word	4
	.word	_Label_2335
	.word	-68
	.word	4
	.word	0
_Label_2318:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2319:
	.ascii	"Pself\0"
	.align
_Label_2320:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2333:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2334:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_2335:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2336
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
_Label_2336:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2337
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2337:
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
_Label_3782:
	push	r0
	sub	r1,1,r1
	bne	_Label_3782
	mov	1203,r13		! source line 1203
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   _temp_2338 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2340 = &_temp_2339
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2340 = _temp_2340 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2342:
!   Data Move: *_temp_2340 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2340 = _temp_2340 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2341 = _temp_2341 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2341) then goto _Label_2342
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2342
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2343 = &_temp_2339
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3783
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3783:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2338 = *_temp_2343  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3784:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3784
! RETURN STATEMENT...
	mov	1208,r13		! source line 1208
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
	.word	_Label_2344
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2345
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2346
	.word	-12
	.word	4
	.word	_Label_2347
	.word	-16
	.word	4
	.word	_Label_2348
	.word	-20
	.word	4
	.word	_Label_2349
	.word	-104
	.word	84
	.word	_Label_2350
	.word	-108
	.word	4
	.word	0
_Label_2344:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2345:
	.ascii	"Pself\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2338\0"
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
_Label_3785:
	push	r0
	sub	r1,1,r1
	bne	_Label_3785
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2351 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2351  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2352 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2352  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2357 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2358 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2357  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2353:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2358 then goto _Label_2356		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2356
_Label_2354:
	mov	1220,r13		! source line 1220
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2359 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2359  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2361 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2361 [i ] into _temp_2362
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
!   _temp_2360 = _temp_2362		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2360  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2363 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2363  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2365 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2365 [i ] into _temp_2366
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
!   Data Move: _temp_2364 = *_temp_2366  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2364  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2367 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2367  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2368 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2368  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2369 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2371) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2370  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2372 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2372  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0IF",r10
	mov	1230,r13		! source line 1230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2376) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2375  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2375) then goto _Label_2374
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2374
!	jmp	_Label_2373
_Label_2373:
! THEN...
	mov	1231,r13		! source line 1231
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2378) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2377  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2379
_Label_2374:
! ELSE...
	mov	1233,r13		! source line 1233
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2380 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2380  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2379:
! CALL STATEMENT...
!   _temp_2381 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2381  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0IF",r10
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2384) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2382 else goto _Label_2383
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2383
	jmp	_Label_2382
_Label_2382:
! THEN...
	mov	1237,r13		! source line 1237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2385 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2385  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2386
_Label_2383:
! ELSE...
	mov	1239,r13		! source line 1239
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2387 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2387  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2386:
! CALL STATEMENT...
!   _temp_2388 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2388  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0IF",r10
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2391) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2389 else goto _Label_2390
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2390
	jmp	_Label_2389
_Label_2389:
! THEN...
	mov	1243,r13		! source line 1243
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2392 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2392  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2393
_Label_2390:
! ELSE...
	mov	1245,r13		! source line 1245
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2394 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2394  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2393:
! CALL STATEMENT...
!   _temp_2395 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2395  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0IF",r10
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2398) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2396 else goto _Label_2397
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2397
	jmp	_Label_2396
_Label_2396:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2399 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2399  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2400
_Label_2397:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2401 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2401  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2400:
! CALL STATEMENT...
!   _temp_2402 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2402  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0IF",r10
	mov	1254,r13		! source line 1254
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2405) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2403 else goto _Label_2404
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2404
	jmp	_Label_2403
_Label_2403:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2406 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2406  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2407
_Label_2404:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2408 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2408  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2407:
! CALL STATEMENT...
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2355:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2353
! END FOR
_Label_2356:
! RETURN STATEMENT...
	mov	1220,r13		! source line 1220
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
	.word	_Label_2409
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2411
	.word	-12
	.word	4
	.word	_Label_2412
	.word	-16
	.word	4
	.word	_Label_2413
	.word	-20
	.word	4
	.word	_Label_2414
	.word	-24
	.word	4
	.word	_Label_2415
	.word	-28
	.word	4
	.word	_Label_2416
	.word	-32
	.word	4
	.word	_Label_2417
	.word	-36
	.word	4
	.word	_Label_2418
	.word	-40
	.word	4
	.word	_Label_2419
	.word	-44
	.word	4
	.word	_Label_2420
	.word	-48
	.word	4
	.word	_Label_2421
	.word	-52
	.word	4
	.word	_Label_2422
	.word	-56
	.word	4
	.word	_Label_2423
	.word	-60
	.word	4
	.word	_Label_2424
	.word	-64
	.word	4
	.word	_Label_2425
	.word	-68
	.word	4
	.word	_Label_2426
	.word	-72
	.word	4
	.word	_Label_2427
	.word	-76
	.word	4
	.word	_Label_2428
	.word	-80
	.word	4
	.word	_Label_2429
	.word	-84
	.word	4
	.word	_Label_2430
	.word	-88
	.word	4
	.word	_Label_2431
	.word	-92
	.word	4
	.word	_Label_2432
	.word	-96
	.word	4
	.word	_Label_2433
	.word	-100
	.word	4
	.word	_Label_2434
	.word	-104
	.word	4
	.word	_Label_2435
	.word	-108
	.word	4
	.word	_Label_2436
	.word	-112
	.word	4
	.word	_Label_2437
	.word	-116
	.word	4
	.word	_Label_2438
	.word	-120
	.word	4
	.word	_Label_2439
	.word	-124
	.word	4
	.word	_Label_2440
	.word	-128
	.word	4
	.word	_Label_2441
	.word	-132
	.word	4
	.word	_Label_2442
	.word	-136
	.word	4
	.word	_Label_2443
	.word	-140
	.word	4
	.word	_Label_2444
	.word	-144
	.word	4
	.word	_Label_2445
	.word	-148
	.word	4
	.word	_Label_2446
	.word	-152
	.word	4
	.word	_Label_2447
	.word	-156
	.word	4
	.word	_Label_2448
	.word	-160
	.word	4
	.word	_Label_2449
	.word	-164
	.word	4
	.word	_Label_2450
	.word	-168
	.word	4
	.word	0
_Label_2409:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2410:
	.ascii	"Pself\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2450:
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
_Label_3786:
	push	r0
	sub	r1,1,r1
	bne	_Label_3786
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0RE",r10
!   _temp_2453 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2453 [entry ] into _temp_2454
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
!   Data Move: _temp_2452 = *_temp_2454  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2451 = _temp_2452 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2451  (sizeInBytes=4)
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
	.word	_Label_2455
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2456
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2457
	.word	12
	.word	4
	.word	_Label_2458
	.word	-12
	.word	4
	.word	_Label_2459
	.word	-16
	.word	4
	.word	_Label_2460
	.word	-20
	.word	4
	.word	_Label_2461
	.word	-24
	.word	4
	.word	0
_Label_2455:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2456:
	.ascii	"Pself\0"
	.align
_Label_2457:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2451\0"
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
_Label_3787:
	push	r0
	sub	r1,1,r1
	bne	_Label_3787
	mov	1275,r13		! source line 1275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0RE",r10
!   _temp_2464 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2464 [entry ] into _temp_2465
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
!   Data Move: _temp_2463 = *_temp_2465  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2462 = _temp_2463 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2462  (sizeInBytes=4)
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
	.word	_Label_2466
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2468
	.word	12
	.word	4
	.word	_Label_2469
	.word	-12
	.word	4
	.word	_Label_2470
	.word	-16
	.word	4
	.word	_Label_2471
	.word	-20
	.word	4
	.word	_Label_2472
	.word	-24
	.word	4
	.word	0
_Label_2466:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2467:
	.ascii	"Pself\0"
	.align
_Label_2468:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2462\0"
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
_Label_3788:
	push	r0
	sub	r1,1,r1
	bne	_Label_3788
	mov	1284,r13		! source line 1284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_2473 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2473 [entry ] into _temp_2474
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
!   _temp_2478 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2478 [entry ] into _temp_2479
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
!   Data Move: _temp_2477 = *_temp_2479  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2476 = _temp_2477 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2475 = _temp_2476 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2474 = _temp_2475  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1289,r13		! source line 1289
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
	.word	_Label_2480
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2482
	.word	12
	.word	4
	.word	_Label_2483
	.word	16
	.word	4
	.word	_Label_2484
	.word	-12
	.word	4
	.word	_Label_2485
	.word	-16
	.word	4
	.word	_Label_2486
	.word	-20
	.word	4
	.word	_Label_2487
	.word	-24
	.word	4
	.word	_Label_2488
	.word	-28
	.word	4
	.word	_Label_2489
	.word	-32
	.word	4
	.word	_Label_2490
	.word	-36
	.word	4
	.word	0
_Label_2480:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2481:
	.ascii	"Pself\0"
	.align
_Label_2482:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2483:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2473\0"
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
_Label_3789:
	push	r0
	sub	r1,1,r1
	bne	_Label_3789
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0RE",r10
!   _temp_2494 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2494 [entry ] into _temp_2495
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
!   Data Move: _temp_2493 = *_temp_2495  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2492 = _temp_2493 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2492) then goto _Label_2496
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2496
!   _temp_2491 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2497
_Label_2496:
!   _temp_2491 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2497:
!   ReturnResult: _temp_2491  (sizeInBytes=1)
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
	.word	_Label_2498
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2500
	.word	12
	.word	4
	.word	_Label_2501
	.word	-16
	.word	4
	.word	_Label_2502
	.word	-20
	.word	4
	.word	_Label_2503
	.word	-24
	.word	4
	.word	_Label_2504
	.word	-28
	.word	4
	.word	_Label_2505
	.word	-9
	.word	1
	.word	0
_Label_2498:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2499:
	.ascii	"Pself\0"
	.align
_Label_2500:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2505:
	.byte	'C'
	.ascii	"_temp_2491\0"
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
_Label_3790:
	push	r0
	sub	r1,1,r1
	bne	_Label_3790
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0RE",r10
!   _temp_2509 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2509 [entry ] into _temp_2510
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
!   Data Move: _temp_2508 = *_temp_2510  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2507 = _temp_2508 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2507) then goto _Label_2511
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2511
!   _temp_2506 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2512
_Label_2511:
!   _temp_2506 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2512:
!   ReturnResult: _temp_2506  (sizeInBytes=1)
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
	.word	_Label_2513
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2515
	.word	12
	.word	4
	.word	_Label_2516
	.word	-16
	.word	4
	.word	_Label_2517
	.word	-20
	.word	4
	.word	_Label_2518
	.word	-24
	.word	4
	.word	_Label_2519
	.word	-28
	.word	4
	.word	_Label_2520
	.word	-9
	.word	1
	.word	0
_Label_2513:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2514:
	.ascii	"Pself\0"
	.align
_Label_2515:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2520:
	.byte	'C'
	.ascii	"_temp_2506\0"
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
_Label_3791:
	push	r0
	sub	r1,1,r1
	bne	_Label_3791
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_2524 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2524 [entry ] into _temp_2525
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
!   Data Move: _temp_2523 = *_temp_2525  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2522 = _temp_2523 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2522) then goto _Label_2526
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2526
!   _temp_2521 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2527
_Label_2526:
!   _temp_2521 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2527:
!   ReturnResult: _temp_2521  (sizeInBytes=1)
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
	.word	_Label_2528
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2529
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2530
	.word	12
	.word	4
	.word	_Label_2531
	.word	-16
	.word	4
	.word	_Label_2532
	.word	-20
	.word	4
	.word	_Label_2533
	.word	-24
	.word	4
	.word	_Label_2534
	.word	-28
	.word	4
	.word	_Label_2535
	.word	-9
	.word	1
	.word	0
_Label_2528:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2529:
	.ascii	"Pself\0"
	.align
_Label_2530:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2535:
	.byte	'C'
	.ascii	"_temp_2521\0"
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
_Label_3792:
	push	r0
	sub	r1,1,r1
	bne	_Label_3792
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_2539 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2539 [entry ] into _temp_2540
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
!   Data Move: _temp_2538 = *_temp_2540  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2537 = _temp_2538 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2537) then goto _Label_2541
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2541
!   _temp_2536 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2542
_Label_2541:
!   _temp_2536 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2542:
!   ReturnResult: _temp_2536  (sizeInBytes=1)
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
	.word	_Label_2543
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2545
	.word	12
	.word	4
	.word	_Label_2546
	.word	-16
	.word	4
	.word	_Label_2547
	.word	-20
	.word	4
	.word	_Label_2548
	.word	-24
	.word	4
	.word	_Label_2549
	.word	-28
	.word	4
	.word	_Label_2550
	.word	-9
	.word	1
	.word	0
_Label_2543:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2544:
	.ascii	"Pself\0"
	.align
_Label_2545:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2550:
	.byte	'C'
	.ascii	"_temp_2536\0"
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
_Label_3793:
	push	r0
	sub	r1,1,r1
	bne	_Label_3793
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_2551 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2551 [entry ] into _temp_2552
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
!   _temp_2555 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2555 [entry ] into _temp_2556
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
!   Data Move: _temp_2554 = *_temp_2556  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2553 = _temp_2554 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2552 = _temp_2553  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
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
	.word	_Label_2557
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2558
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2559
	.word	12
	.word	4
	.word	_Label_2560
	.word	-12
	.word	4
	.word	_Label_2561
	.word	-16
	.word	4
	.word	_Label_2562
	.word	-20
	.word	4
	.word	_Label_2563
	.word	-24
	.word	4
	.word	_Label_2564
	.word	-28
	.word	4
	.word	_Label_2565
	.word	-32
	.word	4
	.word	0
_Label_2557:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2558:
	.ascii	"Pself\0"
	.align
_Label_2559:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2551\0"
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
_Label_3794:
	push	r0
	sub	r1,1,r1
	bne	_Label_3794
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
!   _temp_2566 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2566 [entry ] into _temp_2567
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
!   _temp_2570 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2570 [entry ] into _temp_2571
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
!   Data Move: _temp_2569 = *_temp_2571  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2568 = _temp_2569 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2567 = _temp_2568  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
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
	.word	_Label_2572
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2573
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2574
	.word	12
	.word	4
	.word	_Label_2575
	.word	-12
	.word	4
	.word	_Label_2576
	.word	-16
	.word	4
	.word	_Label_2577
	.word	-20
	.word	4
	.word	_Label_2578
	.word	-24
	.word	4
	.word	_Label_2579
	.word	-28
	.word	4
	.word	_Label_2580
	.word	-32
	.word	4
	.word	0
_Label_2572:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2573:
	.ascii	"Pself\0"
	.align
_Label_2574:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2566\0"
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
_Label_3795:
	push	r0
	sub	r1,1,r1
	bne	_Label_3795
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_2581 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2581 [entry ] into _temp_2582
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
!   _temp_2585 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2585 [entry ] into _temp_2586
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
!   Data Move: _temp_2584 = *_temp_2586  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2583 = _temp_2584 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2582 = _temp_2583  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
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
	.word	_Label_2587
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2589
	.word	12
	.word	4
	.word	_Label_2590
	.word	-12
	.word	4
	.word	_Label_2591
	.word	-16
	.word	4
	.word	_Label_2592
	.word	-20
	.word	4
	.word	_Label_2593
	.word	-24
	.word	4
	.word	_Label_2594
	.word	-28
	.word	4
	.word	_Label_2595
	.word	-32
	.word	4
	.word	0
_Label_2587:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2588:
	.ascii	"Pself\0"
	.align
_Label_2589:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2581\0"
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
_Label_3796:
	push	r0
	sub	r1,1,r1
	bne	_Label_3796
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_2596 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2596 [entry ] into _temp_2597
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
!   _temp_2600 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2600 [entry ] into _temp_2601
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
!   Data Move: _temp_2599 = *_temp_2601  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2598 = _temp_2599 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2597 = _temp_2598  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
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
	.word	_Label_2602
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2604
	.word	12
	.word	4
	.word	_Label_2605
	.word	-12
	.word	4
	.word	_Label_2606
	.word	-16
	.word	4
	.word	_Label_2607
	.word	-20
	.word	4
	.word	_Label_2608
	.word	-24
	.word	4
	.word	_Label_2609
	.word	-28
	.word	4
	.word	_Label_2610
	.word	-32
	.word	4
	.word	0
_Label_2602:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2603:
	.ascii	"Pself\0"
	.align
_Label_2604:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2596\0"
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
_Label_3797:
	push	r0
	sub	r1,1,r1
	bne	_Label_3797
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_2611 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2611 [entry ] into _temp_2612
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
!   _temp_2615 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2615 [entry ] into _temp_2616
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
!   Data Move: _temp_2614 = *_temp_2616  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2613 = _temp_2614 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2612 = _temp_2613  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
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
	.word	_Label_2617
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2618
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2619
	.word	12
	.word	4
	.word	_Label_2620
	.word	-12
	.word	4
	.word	_Label_2621
	.word	-16
	.word	4
	.word	_Label_2622
	.word	-20
	.word	4
	.word	_Label_2623
	.word	-24
	.word	4
	.word	_Label_2624
	.word	-28
	.word	4
	.word	_Label_2625
	.word	-32
	.word	4
	.word	0
_Label_2617:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2618:
	.ascii	"Pself\0"
	.align
_Label_2619:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2611\0"
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
_Label_3798:
	push	r0
	sub	r1,1,r1
	bne	_Label_3798
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_2626 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2626 [entry ] into _temp_2627
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
!   _temp_2630 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2630 [entry ] into _temp_2631
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
!   Data Move: _temp_2629 = *_temp_2631  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2628 = _temp_2629 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2627 = _temp_2628  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
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
	.word	_Label_2632
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2634
	.word	12
	.word	4
	.word	_Label_2635
	.word	-12
	.word	4
	.word	_Label_2636
	.word	-16
	.word	4
	.word	_Label_2637
	.word	-20
	.word	4
	.word	_Label_2638
	.word	-24
	.word	4
	.word	_Label_2639
	.word	-28
	.word	4
	.word	_Label_2640
	.word	-32
	.word	4
	.word	0
_Label_2632:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2633:
	.ascii	"Pself\0"
	.align
_Label_2634:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2626\0"
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
_Label_3799:
	push	r0
	sub	r1,1,r1
	bne	_Label_3799
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_2641 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2641 [entry ] into _temp_2642
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
!   _temp_2645 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2645 [entry ] into _temp_2646
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
!   Data Move: _temp_2644 = *_temp_2646  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2643 = _temp_2644 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2642 = _temp_2643  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
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
	.word	_Label_2647
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2649
	.word	12
	.word	4
	.word	_Label_2650
	.word	-12
	.word	4
	.word	_Label_2651
	.word	-16
	.word	4
	.word	_Label_2652
	.word	-20
	.word	4
	.word	_Label_2653
	.word	-24
	.word	4
	.word	_Label_2654
	.word	-28
	.word	4
	.word	_Label_2655
	.word	-32
	.word	4
	.word	0
_Label_2647:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2648:
	.ascii	"Pself\0"
	.align
_Label_2649:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2641\0"
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
_Label_3800:
	push	r0
	sub	r1,1,r1
	bne	_Label_3800
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_2656 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2656 [entry ] into _temp_2657
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
!   _temp_2660 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2660 [entry ] into _temp_2661
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
!   Data Move: _temp_2659 = *_temp_2661  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2658 = _temp_2659 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2657 = _temp_2658  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
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
	.word	_Label_2662
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2663
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2664
	.word	12
	.word	4
	.word	_Label_2665
	.word	-12
	.word	4
	.word	_Label_2666
	.word	-16
	.word	4
	.word	_Label_2667
	.word	-20
	.word	4
	.word	_Label_2668
	.word	-24
	.word	4
	.word	_Label_2669
	.word	-28
	.word	4
	.word	_Label_2670
	.word	-32
	.word	4
	.word	0
_Label_2662:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2663:
	.ascii	"Pself\0"
	.align
_Label_2664:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2656\0"
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
_Label_3801:
	push	r0
	sub	r1,1,r1
	bne	_Label_3801
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2672 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2672 [0 ] into _temp_2673
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
!   _temp_2671 = _temp_2673		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2674 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2671  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2674  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1408,r13		! source line 1408
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
	.word	_Label_2675
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2677
	.word	-12
	.word	4
	.word	_Label_2678
	.word	-16
	.word	4
	.word	_Label_2679
	.word	-20
	.word	4
	.word	_Label_2680
	.word	-24
	.word	4
	.word	0
_Label_2675:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2676:
	.ascii	"Pself\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2671\0"
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
_Label_3802:
	push	r0
	sub	r1,1,r1
	bne	_Label_3802
	mov	1413,r13		! source line 1413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2681
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2681
	jmp	_Label_2682
_Label_2681:
! THEN...
	mov	1429,r13		! source line 1429
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2683
_Label_2682:
! ELSE...
	mov	1430,r13		! source line 1430
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2685		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2685
!	jmp	_Label_2684
_Label_2684:
! THEN...
	mov	1431,r13		! source line 1431
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2685:
! END IF...
_Label_2683:
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
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
	mov	1434,r13		! source line 1434
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
	mov	1437,r13		! source line 1437
	mov	"\0\0WH",r10
_Label_2686:
!	jmp	_Label_2687
_Label_2687:
	mov	1437,r13		! source line 1437
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2690		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2690
!	jmp	_Label_2689
_Label_2689:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2691 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2691  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2690:
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2695) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2694  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2694 then goto _Label_2693 else goto _Label_2692
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2692
	jmp	_Label_2693
_Label_2692:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2696 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2696  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2693:
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
	mov	1446,r13		! source line 1446
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2698) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2697  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2697 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0WH",r10
_Label_2699:
!   if offset >= 8192 then goto _Label_2701		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2701
!	jmp	_Label_2700
_Label_2700:
	mov	1448,r13		! source line 1448
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2702 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2702  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2704		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2704
!	jmp	_Label_2703
_Label_2703:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2704:
! END WHILE...
	jmp	_Label_2699
_Label_2701:
! ASSIGNMENT STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2686
_Label_2688:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2705
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2706
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2707
	.word	12
	.word	4
	.word	_Label_2708
	.word	16
	.word	4
	.word	_Label_2709
	.word	20
	.word	4
	.word	_Label_2710
	.word	-9
	.word	1
	.word	_Label_2711
	.word	-16
	.word	4
	.word	_Label_2712
	.word	-20
	.word	4
	.word	_Label_2713
	.word	-24
	.word	4
	.word	_Label_2714
	.word	-28
	.word	4
	.word	_Label_2715
	.word	-10
	.word	1
	.word	_Label_2716
	.word	-32
	.word	4
	.word	_Label_2717
	.word	-36
	.word	4
	.word	_Label_2718
	.word	-40
	.word	4
	.word	_Label_2719
	.word	-44
	.word	4
	.word	_Label_2720
	.word	-48
	.word	4
	.word	0
_Label_2705:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2706:
	.ascii	"Pself\0"
	.align
_Label_2707:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2708:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2709:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2710:
	.byte	'C'
	.ascii	"_temp_2702\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2715:
	.byte	'C'
	.ascii	"_temp_2694\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2717:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2720:
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
_Label_3803:
	push	r0
	sub	r1,1,r1
	bne	_Label_3803
	mov	1467,r13		! source line 1467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2721
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2721
	jmp	_Label_2722
_Label_2721:
! THEN...
	mov	1479,r13		! source line 1479
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2723
_Label_2722:
! ELSE...
	mov	1480,r13		! source line 1480
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2725		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2725
!	jmp	_Label_2724
_Label_2724:
! THEN...
	mov	1481,r13		! source line 1481
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2725:
! END IF...
_Label_2723:
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
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
	mov	1484,r13		! source line 1484
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
	mov	1485,r13		! source line 1485
	mov	"\0\0WH",r10
_Label_2726:
!	jmp	_Label_2727
_Label_2727:
	mov	1485,r13		! source line 1485
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2732		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2732
	jmp	_Label_2729
_Label_2732:
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2734) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2733  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2733 then goto _Label_2731 else goto _Label_2729
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2729
	jmp	_Label_2731
_Label_2731:
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2736) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2735  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2735 then goto _Label_2730 else goto _Label_2729
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2729
	jmp	_Label_2730
_Label_2729:
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
_Label_2730:
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2738) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2737  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2737 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0WH",r10
_Label_2739:
!   if offset >= 8192 then goto _Label_2741		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2741
!	jmp	_Label_2740
_Label_2740:
	mov	1492,r13		! source line 1492
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2742 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2742  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2744		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2744
!	jmp	_Label_2743
_Label_2743:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2744:
! END WHILE...
	jmp	_Label_2739
_Label_2741:
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2726
_Label_2728:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2745
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2747
	.word	12
	.word	4
	.word	_Label_2748
	.word	16
	.word	4
	.word	_Label_2749
	.word	20
	.word	4
	.word	_Label_2750
	.word	-9
	.word	1
	.word	_Label_2751
	.word	-16
	.word	4
	.word	_Label_2752
	.word	-20
	.word	4
	.word	_Label_2753
	.word	-24
	.word	4
	.word	_Label_2754
	.word	-10
	.word	1
	.word	_Label_2755
	.word	-28
	.word	4
	.word	_Label_2756
	.word	-11
	.word	1
	.word	_Label_2757
	.word	-32
	.word	4
	.word	_Label_2758
	.word	-36
	.word	4
	.word	_Label_2759
	.word	-40
	.word	4
	.word	_Label_2760
	.word	-44
	.word	4
	.word	0
_Label_2745:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2746:
	.ascii	"Pself\0"
	.align
_Label_2747:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2749:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2750:
	.byte	'C'
	.ascii	"_temp_2742\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2754:
	.byte	'C'
	.ascii	"_temp_2735\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2756:
	.byte	'C'
	.ascii	"_temp_2733\0"
	.align
_Label_2757:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2758:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2759:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2760:
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
_Label_3804:
	push	r0
	sub	r1,1,r1
	bne	_Label_3804
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0IF",r10
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
!   _temp_2764 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2765) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2764  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2763  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2763 >= 4 then goto _Label_2762		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2762
!	jmp	_Label_2761
_Label_2761:
! THEN...
	mov	1536,r13		! source line 1536
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2762:
! IF STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2767		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2767
!	jmp	_Label_2766
_Label_2766:
! THEN...
	mov	1541,r13		! source line 1541
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2767:
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
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
	mov	1546,r13		! source line 1546
	mov	"\0\0RE",r10
	mov	1546,r13		! source line 1546
	mov	"\0\0SE",r10
!   _temp_2770 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2769 = _temp_2770 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2771 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2772) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2769  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2771  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2768  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2768  (sizeInBytes=4)
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
	.word	_Label_2773
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2774
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2775
	.word	12
	.word	4
	.word	_Label_2776
	.word	16
	.word	4
	.word	_Label_2777
	.word	20
	.word	4
	.word	_Label_2778
	.word	-12
	.word	4
	.word	_Label_2779
	.word	-16
	.word	4
	.word	_Label_2780
	.word	-20
	.word	4
	.word	_Label_2781
	.word	-24
	.word	4
	.word	_Label_2782
	.word	-28
	.word	4
	.word	_Label_2783
	.word	-32
	.word	4
	.word	_Label_2784
	.word	-36
	.word	4
	.word	_Label_2785
	.word	-40
	.word	4
	.word	_Label_2786
	.word	-44
	.word	4
	.word	0
_Label_2773:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2774:
	.ascii	"Pself\0"
	.align
_Label_2775:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2776:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2777:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2787
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2787:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2788
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2788:
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
_Label_3805:
	push	r0
	sub	r1,1,r1
	bne	_Label_3805
	mov	2217,r13		! source line 2217
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2789 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2218,r13		! source line 2218
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
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
	mov	2226,r13		! source line 2226
	mov	"\0\0SE",r10
!   _temp_2791 = &semUsedInSynchMethods
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
	mov	2227,r13		! source line 2227
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
	mov	2228,r13		! source line 2228
	mov	"\0\0SE",r10
!   _temp_2793 = &diskBusy
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
	mov	2228,r13		! source line 2228
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
	.word	_Label_2794
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	-12
	.word	4
	.word	_Label_2797
	.word	-16
	.word	4
	.word	_Label_2798
	.word	-20
	.word	4
	.word	_Label_2799
	.word	-24
	.word	4
	.word	_Label_2800
	.word	-28
	.word	4
	.word	0
_Label_2794:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2789\0"
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
_Label_3806:
	push	r0
	sub	r1,1,r1
	bne	_Label_3806
	mov	2233,r13		! source line 2233
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2801 = &diskBusy
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
	mov	2247,r13		! source line 2247
	mov	"\0\0WH",r10
_Label_2802:
!	jmp	_Label_2803
_Label_2803:
	mov	2247,r13		! source line 2247
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_2805 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2806) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2805  sizeInBytes=4
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
	mov	2251,r13		! source line 2251
	mov	"\0\0SE",r10
!   _temp_2807 = &semUsedInSynchMethods
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
	mov	2254,r13		! source line 2254
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2816 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2810
	cmp	r1,2
	be	_Label_2811
	cmp	r1,3
	be	_Label_2812
	cmp	r1,4
	be	_Label_2813
	cmp	r1,5
	be	_Label_2814
	cmp	r1,6
	be	_Label_2815
	jmp	_Label_2808
! CASE 1...
_Label_2810:
! SEND STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0SE",r10
!   _temp_2817 = &diskBusy
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
	mov	2257,r13		! source line 2257
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2811:
! CALL STATEMENT...
!   _temp_2818 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2818  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2259,r13		! source line 2259
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2812:
! CALL STATEMENT...
!   _temp_2819 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2819  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2261,r13		! source line 2261
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2813:
! CALL STATEMENT...
!   _temp_2820 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2820  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2263,r13		! source line 2263
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2814:
! BREAK STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0BR",r10
	jmp	_Label_2809
! CASE 6...
_Label_2815:
! CALL STATEMENT...
!   _temp_2821 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2821  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2269,r13		! source line 2269
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2808:
! CALL STATEMENT...
!   _temp_2822 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2822  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2271,r13		! source line 2271
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2809:
! END WHILE...
	jmp	_Label_2802
_Label_2804:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2823
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2825
	.word	12
	.word	4
	.word	_Label_2826
	.word	16
	.word	4
	.word	_Label_2827
	.word	20
	.word	4
	.word	_Label_2828
	.word	-12
	.word	4
	.word	_Label_2829
	.word	-16
	.word	4
	.word	_Label_2830
	.word	-20
	.word	4
	.word	_Label_2831
	.word	-24
	.word	4
	.word	_Label_2832
	.word	-28
	.word	4
	.word	_Label_2833
	.word	-32
	.word	4
	.word	_Label_2834
	.word	-36
	.word	4
	.word	_Label_2835
	.word	-40
	.word	4
	.word	_Label_2836
	.word	-44
	.word	4
	.word	_Label_2837
	.word	-48
	.word	4
	.word	_Label_2838
	.word	-52
	.word	4
	.word	0
_Label_2823:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2824:
	.ascii	"Pself\0"
	.align
_Label_2825:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2826:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2827:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2801\0"
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
	mov	2280,r13		! source line 2280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
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
	mov	2299,r13		! source line 2299
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
	mov	2300,r13		! source line 2300
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
	mov	2301,r13		! source line 2301
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
	mov	2301,r13		! source line 2301
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
	.word	_Label_2839
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2841
	.word	12
	.word	4
	.word	_Label_2842
	.word	16
	.word	4
	.word	_Label_2843
	.word	20
	.word	4
	.word	_Label_2844
	.word	24
	.word	4
	.word	0
_Label_2839:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2840:
	.ascii	"Pself\0"
	.align
_Label_2841:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2842:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2843:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2844:
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
_Label_3807:
	push	r0
	sub	r1,1,r1
	bne	_Label_3807
	mov	2306,r13		! source line 2306
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0SE",r10
!   _temp_2845 = &diskBusy
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
	mov	2319,r13		! source line 2319
	mov	"\0\0WH",r10
_Label_2846:
!	jmp	_Label_2847
_Label_2847:
	mov	2319,r13		! source line 2319
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0SE",r10
!   _temp_2849 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2850) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2849  sizeInBytes=4
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
	mov	2322,r13		! source line 2322
	mov	"\0\0SE",r10
!   _temp_2851 = &semUsedInSynchMethods
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
	mov	2325,r13		! source line 2325
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2860 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2854
	cmp	r1,2
	be	_Label_2855
	cmp	r1,3
	be	_Label_2856
	cmp	r1,4
	be	_Label_2857
	cmp	r1,5
	be	_Label_2858
	cmp	r1,6
	be	_Label_2859
	jmp	_Label_2852
! CASE 1...
_Label_2854:
! SEND STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   _temp_2861 = &diskBusy
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
	mov	2328,r13		! source line 2328
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2855:
! CALL STATEMENT...
!   _temp_2862 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2862  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2330,r13		! source line 2330
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2856:
! CALL STATEMENT...
!   _temp_2863 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2863  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2332,r13		! source line 2332
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2857:
! CALL STATEMENT...
!   _temp_2864 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2334,r13		! source line 2334
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2858:
! BREAK STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0BR",r10
	jmp	_Label_2853
! CASE 6...
_Label_2859:
! CALL STATEMENT...
!   _temp_2865 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2865  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2340,r13		! source line 2340
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2852:
! CALL STATEMENT...
!   _temp_2866 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2866  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2342,r13		! source line 2342
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2853:
! END WHILE...
	jmp	_Label_2846
_Label_2848:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2867
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2869
	.word	12
	.word	4
	.word	_Label_2870
	.word	16
	.word	4
	.word	_Label_2871
	.word	20
	.word	4
	.word	_Label_2872
	.word	-12
	.word	4
	.word	_Label_2873
	.word	-16
	.word	4
	.word	_Label_2874
	.word	-20
	.word	4
	.word	_Label_2875
	.word	-24
	.word	4
	.word	_Label_2876
	.word	-28
	.word	4
	.word	_Label_2877
	.word	-32
	.word	4
	.word	_Label_2878
	.word	-36
	.word	4
	.word	_Label_2879
	.word	-40
	.word	4
	.word	_Label_2880
	.word	-44
	.word	4
	.word	_Label_2881
	.word	-48
	.word	4
	.word	_Label_2882
	.word	-52
	.word	4
	.word	0
_Label_2867:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2868:
	.ascii	"Pself\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2870:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2871:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2845\0"
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
	mov	2351,r13		! source line 2351
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
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
	mov	2369,r13		! source line 2369
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
	mov	2370,r13		! source line 2370
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
	mov	2371,r13		! source line 2371
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
	mov	2371,r13		! source line 2371
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
	.word	_Label_2883
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2884
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2885
	.word	12
	.word	4
	.word	_Label_2886
	.word	16
	.word	4
	.word	_Label_2887
	.word	20
	.word	4
	.word	_Label_2888
	.word	24
	.word	4
	.word	0
_Label_2883:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2884:
	.ascii	"Pself\0"
	.align
_Label_2885:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2886:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2887:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2888:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2889
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
_Label_2889:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2890
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2890:
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
_Label_3808:
	push	r0
	sub	r1,1,r1
	bne	_Label_3808
	mov	2382,r13		! source line 2382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2891 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2891  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2389,r13		! source line 2389
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
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
	mov	2391,r13		! source line 2391
	mov	"\0\0SE",r10
!   _temp_2893 = &fileManagerLock
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
	mov	2394,r13		! source line 2394
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
	mov	2395,r13		! source line 2395
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
	mov	2396,r13		! source line 2396
	mov	"\0\0SE",r10
!   _temp_2896 = &anFCBBecameFree
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
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   _temp_2897 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2899 = &_temp_2898
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2899 = _temp_2899 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2901 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3809:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3809
!   _temp_2901 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2903:
!   Data Move: *_temp_2899 = _temp_2901  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3810:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3810
!   _temp_2899 = _temp_2899 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2900 = _temp_2900 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2900) then goto _Label_2903
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2903
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2904 = &_temp_2898
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3811
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3811:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2897 = *_temp_2904  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3812:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3812
! FOR STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2909 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2910 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2909  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2905:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2910 then goto _Label_2908		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2908
_Label_2906:
	mov	2399,r13		! source line 2399
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0AS",r10
!   _temp_2911 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2911 [i ] into _temp_2912
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
!   _temp_2913 = _temp_2912 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2913 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   _temp_2914 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2914 [i ] into _temp_2915
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
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_2917 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2917 [i ] into _temp_2918
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
!   _temp_2916 = _temp_2918		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2919 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2916  sizeInBytes=4
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
_Label_2907:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2905
! END FOR
_Label_2908:
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
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
	mov	2407,r13		! source line 2407
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
	mov	2408,r13		! source line 2408
	mov	"\0\0SE",r10
!   _temp_2922 = &anOpenFileBecameFree
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
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   _temp_2923 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2925 = &_temp_2924
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2925 = _temp_2925 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2927 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3813:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3813
!   _temp_2927 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2929:
!   Data Move: *_temp_2925 = _temp_2927  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3814:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3814
!   _temp_2925 = _temp_2925 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2926 = _temp_2926 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2926) then goto _Label_2929
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2929
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2930 = &_temp_2924
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3815
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3815:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2923 = *_temp_2930  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3816:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3816
! FOR STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2935 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2936 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2935  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2931:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2936 then goto _Label_2934		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2934
_Label_2932:
	mov	2411,r13		! source line 2411
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   _temp_2937 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2937 [i ] into _temp_2938
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
!   _temp_2939 = _temp_2938 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2939 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2941 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2941 [i ] into _temp_2942
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
!   _temp_2940 = _temp_2942		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2943 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2940  sizeInBytes=4
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
_Label_2933:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2931
! END FOR
_Label_2934:
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3817:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3817
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0AS",r10
!   _temp_2945 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2946 = _temp_2945 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2946 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
	mov	2423,r13		! source line 2423
	mov	"\0\0SE",r10
!   _temp_2947 = &_P_Kernel_frameManager
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
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_2948 = &_P_Kernel_diskDriver
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
	mov	2424,r13		! source line 2424
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
	.word	_Label_2949
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2951
	.word	-12
	.word	4
	.word	_Label_2952
	.word	-16
	.word	4
	.word	_Label_2953
	.word	-20
	.word	4
	.word	_Label_2954
	.word	-24
	.word	4
	.word	_Label_2955
	.word	-28
	.word	4
	.word	_Label_2956
	.word	-32
	.word	4
	.word	_Label_2957
	.word	-36
	.word	4
	.word	_Label_2958
	.word	-40
	.word	4
	.word	_Label_2959
	.word	-44
	.word	4
	.word	_Label_2960
	.word	-48
	.word	4
	.word	_Label_2961
	.word	-52
	.word	4
	.word	_Label_2962
	.word	-56
	.word	4
	.word	_Label_2963
	.word	-60
	.word	4
	.word	_Label_2964
	.word	-64
	.word	4
	.word	_Label_2965
	.word	-68
	.word	4
	.word	_Label_2966
	.word	-72
	.word	4
	.word	_Label_2967
	.word	-100
	.word	28
	.word	_Label_2968
	.word	-104
	.word	4
	.word	_Label_2969
	.word	-108
	.word	4
	.word	_Label_2970
	.word	-392
	.word	284
	.word	_Label_2971
	.word	-396
	.word	4
	.word	_Label_2972
	.word	-400
	.word	4
	.word	_Label_2973
	.word	-404
	.word	4
	.word	_Label_2974
	.word	-408
	.word	4
	.word	_Label_2975
	.word	-412
	.word	4
	.word	_Label_2976
	.word	-416
	.word	4
	.word	_Label_2977
	.word	-420
	.word	4
	.word	_Label_2978
	.word	-424
	.word	4
	.word	_Label_2979
	.word	-428
	.word	4
	.word	_Label_2980
	.word	-432
	.word	4
	.word	_Label_2981
	.word	-436
	.word	4
	.word	_Label_2982
	.word	-440
	.word	4
	.word	_Label_2983
	.word	-444
	.word	4
	.word	_Label_2984
	.word	-448
	.word	4
	.word	_Label_2985
	.word	-452
	.word	4
	.word	_Label_2986
	.word	-456
	.word	4
	.word	_Label_2987
	.word	-460
	.word	4
	.word	_Label_2988
	.word	-500
	.word	40
	.word	_Label_2989
	.word	-504
	.word	4
	.word	_Label_2990
	.word	-508
	.word	4
	.word	_Label_2991
	.word	-912
	.word	404
	.word	_Label_2992
	.word	-916
	.word	4
	.word	_Label_2993
	.word	-920
	.word	4
	.word	_Label_2994
	.word	-924
	.word	4
	.word	_Label_2995
	.word	-928
	.word	4
	.word	_Label_2996
	.word	-932
	.word	4
	.word	_Label_2997
	.word	-936
	.word	4
	.word	_Label_2998
	.word	-940
	.word	4
	.word	_Label_2999
	.word	-944
	.word	4
	.word	0
_Label_2949:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2950:
	.ascii	"Pself\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2999:
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
_Label_3818:
	push	r0
	sub	r1,1,r1
	bne	_Label_3818
	mov	2431,r13		! source line 2431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_3000 = &fileManagerLock
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
!   _temp_3001 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3001  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2434,r13		! source line 2434
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3006 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3007 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3006  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3002:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3007 then goto _Label_3005		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3005
_Label_3003:
	mov	2435,r13		! source line 2435
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3008 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3008  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2436,r13		! source line 2436
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2437,r13		! source line 2437
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3009 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3009  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2438,r13		! source line 2438
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0SE",r10
!   _temp_3010 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3010 [i ] into _temp_3011
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
_Label_3004:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3002
! END FOR
_Label_3005:
! CALL STATEMENT...
!   _temp_3012 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3012  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2441,r13		! source line 2441
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0SE",r10
!   _temp_3013 = _function_185_printFCB
	set	_function_185_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3014 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3013  sizeInBytes=4
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
	mov	2443,r13		! source line 2443
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3015 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3015  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2444,r13		! source line 2444
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3020 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3021 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3020  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3016:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3021 then goto _Label_3019		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3019
_Label_3017:
	mov	2445,r13		! source line 2445
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3022 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3022  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2446,r13		! source line 2446
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2447,r13		! source line 2447
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3023 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3023  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2448,r13		! source line 2448
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3025 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3025 [i ] into _temp_3026
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
!   _temp_3024 = _temp_3026		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3024  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2449,r13		! source line 2449
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3027 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3027  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2450,r13		! source line 2450
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_3028 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3028 [i ] into _temp_3029
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
_Label_3018:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3016
! END FOR
_Label_3019:
! CALL STATEMENT...
!   _temp_3030 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3030  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2453,r13		! source line 2453
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0SE",r10
!   _temp_3031 = _function_184_printOpen
	set	_function_184_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3032 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3031  sizeInBytes=4
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
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   _temp_3033 = &fileManagerLock
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
	mov	2455,r13		! source line 2455
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
	.word	_Label_3034
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3035
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3036
	.word	-12
	.word	4
	.word	_Label_3037
	.word	-16
	.word	4
	.word	_Label_3038
	.word	-20
	.word	4
	.word	_Label_3039
	.word	-24
	.word	4
	.word	_Label_3040
	.word	-28
	.word	4
	.word	_Label_3041
	.word	-32
	.word	4
	.word	_Label_3042
	.word	-36
	.word	4
	.word	_Label_3043
	.word	-40
	.word	4
	.word	_Label_3044
	.word	-44
	.word	4
	.word	_Label_3045
	.word	-48
	.word	4
	.word	_Label_3046
	.word	-52
	.word	4
	.word	_Label_3047
	.word	-56
	.word	4
	.word	_Label_3048
	.word	-60
	.word	4
	.word	_Label_3049
	.word	-64
	.word	4
	.word	_Label_3050
	.word	-68
	.word	4
	.word	_Label_3051
	.word	-72
	.word	4
	.word	_Label_3052
	.word	-76
	.word	4
	.word	_Label_3053
	.word	-80
	.word	4
	.word	_Label_3054
	.word	-84
	.word	4
	.word	_Label_3055
	.word	-88
	.word	4
	.word	_Label_3056
	.word	-92
	.word	4
	.word	_Label_3057
	.word	-96
	.word	4
	.word	_Label_3058
	.word	-100
	.word	4
	.word	_Label_3059
	.word	-104
	.word	4
	.word	_Label_3060
	.word	-108
	.word	4
	.word	_Label_3061
	.word	-112
	.word	4
	.word	_Label_3062
	.word	-116
	.word	4
	.word	0
_Label_3034:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3035:
	.ascii	"Pself\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3062:
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
_Label_3819:
	push	r0
	sub	r1,1,r1
	bne	_Label_3819
	mov	2460,r13		! source line 2460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0AS",r10
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   _temp_3063 = &_P_Kernel_fileManager
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
	mov	2477,r13		! source line 2477
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3064
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3064
	jmp	_Label_3065
_Label_3064:
! THEN...
	mov	2478,r13		! source line 2478
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3065:
! SEND STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   _temp_3066 = &fileManagerLock
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
	mov	2483,r13		! source line 2483
	mov	"\0\0WH",r10
_Label_3067:
	mov	2483,r13		! source line 2483
	mov	"\0\0SE",r10
!   _temp_3070 = &openFileFreeList
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
!   if result==true then goto _Label_3068 else goto _Label_3069
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3069
	jmp	_Label_3068
_Label_3068:
	mov	2483,r13		! source line 2483
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_3071 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3072 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3071  sizeInBytes=4
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
	jmp	_Label_3067
_Label_3069:
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
	mov	2486,r13		! source line 2486
	mov	"\0\0SE",r10
!   _temp_3073 = &openFileFreeList
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
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3074 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3074 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3075 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3075 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3076 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3076 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0SE",r10
!   _temp_3077 = &fileManagerLock
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
	mov	2496,r13		! source line 2496
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
	.word	_Label_3078
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3079
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3080
	.word	12
	.word	4
	.word	_Label_3081
	.word	-12
	.word	4
	.word	_Label_3082
	.word	-16
	.word	4
	.word	_Label_3083
	.word	-20
	.word	4
	.word	_Label_3084
	.word	-24
	.word	4
	.word	_Label_3085
	.word	-28
	.word	4
	.word	_Label_3086
	.word	-32
	.word	4
	.word	_Label_3087
	.word	-36
	.word	4
	.word	_Label_3088
	.word	-40
	.word	4
	.word	_Label_3089
	.word	-44
	.word	4
	.word	_Label_3090
	.word	-48
	.word	4
	.word	_Label_3091
	.word	-52
	.word	4
	.word	_Label_3092
	.word	-56
	.word	4
	.word	0
_Label_3078:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3079:
	.ascii	"Pself\0"
	.align
_Label_3080:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3091:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3092:
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
_Label_3820:
	push	r0
	sub	r1,1,r1
	bne	_Label_3820
	mov	2501,r13		! source line 2501
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
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
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3094		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3094
!	jmp	_Label_3093
_Label_3093:
! THEN...
	mov	2532,r13		! source line 2532
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3095 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3095  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2532,r13		! source line 2532
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3094:
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
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
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
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
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0WH",r10
_Label_3096:
!   if numFiles <= 0 then goto _Label_3098		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3098
!	jmp	_Label_3097
_Label_3097:
	mov	2542,r13		! source line 2542
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3099 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3099  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2543,r13		! source line 2543
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3100 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3100  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3101 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3101  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3105 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3105 then goto _Label_3103		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3103
!	jmp	_Label_3104
_Label_3104:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3107
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
!   _temp_3106 = _temp_3107		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3106  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3102 else goto _Label_3103
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3103
	jmp	_Label_3102
_Label_3102:
! THEN...
	mov	2551,r13		! source line 2551
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0BR",r10
	jmp	_Label_3098
! END IF...
_Label_3103:
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3096
_Label_3098:
! IF STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3109		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3109
!	jmp	_Label_3108
_Label_3108:
! THEN...
	mov	2559,r13		! source line 2559
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3109:
! SEND STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0SE",r10
!   _temp_3110 = &fileManagerLock
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
	mov	2564,r13		! source line 2564
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3115 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3116 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3115  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3111:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3116 then goto _Label_3114		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3114
_Label_3112:
	mov	2564,r13		! source line 2564
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   _temp_3117 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3117 [i ] into _temp_3118
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
!   fcb = _temp_3118		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3122 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3121 = *_temp_3122  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3121 != start then goto _Label_3120		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3120
!	jmp	_Label_3119
_Label_3119:
! THEN...
	mov	2567,r13		! source line 2567
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3123 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3126 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3125 = *_temp_3126  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3124 = _temp_3125 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3123 = _temp_3124  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_3127 = &fileManagerLock
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
	mov	2569,r13		! source line 2569
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3120:
!   Increment the FOR-LOOP index variable and jump back
_Label_3113:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3111
! END FOR
_Label_3114:
! WHILE STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0WH",r10
_Label_3128:
	mov	2574,r13		! source line 2574
	mov	"\0\0SE",r10
!   _temp_3131 = &fcbFreeList
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
!   if result==true then goto _Label_3129 else goto _Label_3130
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3130
	jmp	_Label_3129
_Label_3129:
	mov	2574,r13		! source line 2574
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0SE",r10
!   _temp_3132 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3133 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3132  sizeInBytes=4
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
	jmp	_Label_3128
_Label_3130:
! ASSIGNMENT STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0AS",r10
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   _temp_3134 = &fcbFreeList
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
	mov	2580,r13		! source line 2580
	mov	"\0\0SE",r10
!   _temp_3135 = &fileManagerLock
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
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3136 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3136 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3137 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3137 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3138 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3138 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3143 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3142 = *_temp_3143  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3142 < 0 then goto _Label_3141		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3141
	jmp	_Label_3139
_Label_3141:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3144 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3144 ) then goto _Label_3140		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3140
!	jmp	_Label_3139
_Label_3139:
! THEN...
	mov	2587,r13		! source line 2587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3145 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3145  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2587,r13		! source line 2587
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3140:
! RETURN STATEMENT...
	mov	2589,r13		! source line 2589
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
	.word	_Label_3146
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3148
	.word	12
	.word	4
	.word	_Label_3149
	.word	-12
	.word	4
	.word	_Label_3150
	.word	-16
	.word	4
	.word	_Label_3151
	.word	-20
	.word	4
	.word	_Label_3152
	.word	-24
	.word	4
	.word	_Label_3153
	.word	-28
	.word	4
	.word	_Label_3154
	.word	-32
	.word	4
	.word	_Label_3155
	.word	-36
	.word	4
	.word	_Label_3156
	.word	-40
	.word	4
	.word	_Label_3157
	.word	-44
	.word	4
	.word	_Label_3158
	.word	-48
	.word	4
	.word	_Label_3159
	.word	-52
	.word	4
	.word	_Label_3160
	.word	-56
	.word	4
	.word	_Label_3161
	.word	-60
	.word	4
	.word	_Label_3162
	.word	-64
	.word	4
	.word	_Label_3163
	.word	-68
	.word	4
	.word	_Label_3164
	.word	-72
	.word	4
	.word	_Label_3165
	.word	-76
	.word	4
	.word	_Label_3166
	.word	-80
	.word	4
	.word	_Label_3167
	.word	-84
	.word	4
	.word	_Label_3168
	.word	-88
	.word	4
	.word	_Label_3169
	.word	-92
	.word	4
	.word	_Label_3170
	.word	-96
	.word	4
	.word	_Label_3171
	.word	-100
	.word	4
	.word	_Label_3172
	.word	-104
	.word	4
	.word	_Label_3173
	.word	-108
	.word	4
	.word	_Label_3174
	.word	-112
	.word	4
	.word	_Label_3175
	.word	-116
	.word	4
	.word	_Label_3176
	.word	-120
	.word	4
	.word	_Label_3177
	.word	-124
	.word	4
	.word	_Label_3178
	.word	-128
	.word	4
	.word	_Label_3179
	.word	-132
	.word	4
	.word	_Label_3180
	.word	-136
	.word	4
	.word	_Label_3181
	.word	-140
	.word	4
	.word	_Label_3182
	.word	-144
	.word	4
	.word	_Label_3183
	.word	-148
	.word	4
	.word	_Label_3184
	.word	-152
	.word	4
	.word	_Label_3185
	.word	-156
	.word	4
	.word	_Label_3186
	.word	-160
	.word	4
	.word	0
_Label_3146:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3147:
	.ascii	"Pself\0"
	.align
_Label_3148:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3180:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3181:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3182:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3183:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3184:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3185:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3186:
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
_Label_3821:
	push	r0
	sub	r1,1,r1
	bne	_Label_3821
	mov	2602,r13		! source line 2602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0IF",r10
!   _temp_3189 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3189 then goto _Label_3188		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3188
!	jmp	_Label_3187
_Label_3187:
! THEN...
	mov	2605,r13		! source line 2605
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3188:
! SEND STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0SE",r10
!   _temp_3190 = &fileManagerLock
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
	mov	2608,r13		! source line 2608
	mov	"\0\0SE",r10
!   _temp_3191 = &_P_Kernel_fileManager
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
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3192 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3192  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3193 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3196 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3195 = *_temp_3196  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3194 = _temp_3195 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3193 = _temp_3194  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3200 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3199 = *_temp_3200  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3199 > 0 then goto _Label_3198		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3198
!	jmp	_Label_3197
_Label_3197:
! THEN...
	mov	2612,r13		! source line 2612
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0SE",r10
!   _temp_3201 = &openFileFreeList
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
	mov	2613,r13		! source line 2613
	mov	"\0\0SE",r10
!   _temp_3202 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3203 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3202  sizeInBytes=4
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
	mov	2614,r13		! source line 2614
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3204 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3207 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3206 = *_temp_3207  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3205 = _temp_3206 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3204 = _temp_3205  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3211 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3210 = *_temp_3211  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3210 > 0 then goto _Label_3209		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3209
!	jmp	_Label_3208
_Label_3208:
! THEN...
	mov	2616,r13		! source line 2616
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0SE",r10
!   _temp_3212 = &fcbFreeList
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
	mov	2617,r13		! source line 2617
	mov	"\0\0SE",r10
!   _temp_3213 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3214 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3213  sizeInBytes=4
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
_Label_3209:
! END IF...
_Label_3198:
! SEND STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0SE",r10
!   _temp_3215 = &fileManagerLock
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
	mov	2620,r13		! source line 2620
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
	.word	_Label_3216
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3217
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3218
	.word	12
	.word	4
	.word	_Label_3219
	.word	-12
	.word	4
	.word	_Label_3220
	.word	-16
	.word	4
	.word	_Label_3221
	.word	-20
	.word	4
	.word	_Label_3222
	.word	-24
	.word	4
	.word	_Label_3223
	.word	-28
	.word	4
	.word	_Label_3224
	.word	-32
	.word	4
	.word	_Label_3225
	.word	-36
	.word	4
	.word	_Label_3226
	.word	-40
	.word	4
	.word	_Label_3227
	.word	-44
	.word	4
	.word	_Label_3228
	.word	-48
	.word	4
	.word	_Label_3229
	.word	-52
	.word	4
	.word	_Label_3230
	.word	-56
	.word	4
	.word	_Label_3231
	.word	-60
	.word	4
	.word	_Label_3232
	.word	-64
	.word	4
	.word	_Label_3233
	.word	-68
	.word	4
	.word	_Label_3234
	.word	-72
	.word	4
	.word	_Label_3235
	.word	-76
	.word	4
	.word	_Label_3236
	.word	-80
	.word	4
	.word	_Label_3237
	.word	-84
	.word	4
	.word	_Label_3238
	.word	-88
	.word	4
	.word	_Label_3239
	.word	-92
	.word	4
	.word	_Label_3240
	.word	-96
	.word	4
	.word	_Label_3241
	.word	-100
	.word	4
	.word	_Label_3242
	.word	-104
	.word	4
	.word	0
_Label_3216:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3217:
	.ascii	"Pself\0"
	.align
_Label_3218:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3242:
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
_Label_3822:
	push	r0
	sub	r1,1,r1
	bne	_Label_3822
	mov	2625,r13		! source line 2625
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3246 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3245 = *_temp_3246  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3245) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3247 = _temp_3245 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3247 ) then goto _Label_3244		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3244
!	jmp	_Label_3243
_Label_3243:
! THEN...
	mov	2631,r13		! source line 2631
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3252 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3251 = *_temp_3252  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3251) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3253 = _temp_3251 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3250 = *_temp_3253  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3250 >= 0 then goto _Label_3249		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3249
!	jmp	_Label_3248
_Label_3248:
! THEN...
	mov	2632,r13		! source line 2632
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3254 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3254  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2632,r13		! source line 2632
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3249:
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3256 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3255 = *_temp_3256  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3255) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3257 = _temp_3255 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3257 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3261 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3260 = *_temp_3261  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3260) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3262 = _temp_3260 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3259 = *_temp_3262  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3265 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3264 = *_temp_3265  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3264) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3266 = _temp_3264 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3263 = *_temp_3266  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3258 = _temp_3259 + _temp_3263		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3269 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3268 = *_temp_3269  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3268) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3270 = _temp_3268 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3267 = *_temp_3270  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3271 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3258  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3267  sizeInBytes=4
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
_Label_3244:
! RETURN STATEMENT...
	mov	2630,r13		! source line 2630
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
	.word	_Label_3272
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3274
	.word	12
	.word	4
	.word	_Label_3275
	.word	-12
	.word	4
	.word	_Label_3276
	.word	-16
	.word	4
	.word	_Label_3277
	.word	-20
	.word	4
	.word	_Label_3278
	.word	-24
	.word	4
	.word	_Label_3279
	.word	-28
	.word	4
	.word	_Label_3280
	.word	-32
	.word	4
	.word	_Label_3281
	.word	-36
	.word	4
	.word	_Label_3282
	.word	-40
	.word	4
	.word	_Label_3283
	.word	-44
	.word	4
	.word	_Label_3284
	.word	-48
	.word	4
	.word	_Label_3285
	.word	-52
	.word	4
	.word	_Label_3286
	.word	-56
	.word	4
	.word	_Label_3287
	.word	-60
	.word	4
	.word	_Label_3288
	.word	-64
	.word	4
	.word	_Label_3289
	.word	-68
	.word	4
	.word	_Label_3290
	.word	-72
	.word	4
	.word	_Label_3291
	.word	-76
	.word	4
	.word	_Label_3292
	.word	-80
	.word	4
	.word	_Label_3293
	.word	-84
	.word	4
	.word	_Label_3294
	.word	-88
	.word	4
	.word	_Label_3295
	.word	-92
	.word	4
	.word	_Label_3296
	.word	-96
	.word	4
	.word	_Label_3297
	.word	-100
	.word	4
	.word	_Label_3298
	.word	-104
	.word	4
	.word	_Label_3299
	.word	-108
	.word	4
	.word	0
_Label_3272:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3273:
	.ascii	"Pself\0"
	.align
_Label_3274:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3245\0"
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
_Label_3823:
	push	r0
	sub	r1,1,r1
	bne	_Label_3823
	mov	2644,r13		! source line 2644
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0SE",r10
!   _temp_3300 = &fileManagerLock
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
	mov	2660,r13		! source line 2660
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3306		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3306
!   _temp_3305 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3307
_Label_3306:
!   _temp_3305 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3307:
!   if _temp_3305 then goto _Label_3304 else goto _Label_3301
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3301
	jmp	_Label_3304
_Label_3304:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3310 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3309 = *_temp_3310  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3309 == 0 then goto _Label_3311		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3311
!   _temp_3308 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3312
_Label_3311:
!   _temp_3308 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3312:
!   if _temp_3308 then goto _Label_3303 else goto _Label_3301
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3301
	jmp	_Label_3303
_Label_3303:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3315 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3314 = *_temp_3315  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3314) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3316 = _temp_3314 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3313 = *_temp_3316  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3313 >= 0 then goto _Label_3302		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3302
!	jmp	_Label_3301
_Label_3301:
! THEN...
	mov	2661,r13		! source line 2661
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3317 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3317  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2661,r13		! source line 2661
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3302:
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3318 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3318  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0WH",r10
_Label_3319:
!   if numBytes <= 0 then goto _Label_3321		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3321
!	jmp	_Label_3320
_Label_3320:
	mov	2664,r13		! source line 2664
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
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
	mov	2674,r13		! source line 2674
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
	mov	2678,r13		! source line 2678
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3325 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3324 = *_temp_3325  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3324 == sector then goto _Label_3323		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3323
!	jmp	_Label_3322
_Label_3322:
! THEN...
	mov	2679,r13		! source line 2679
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3326) then goto _runtimeErrorNullPointer
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
	mov	2681,r13		! source line 2681
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3329 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3328 = *_temp_3329  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3327 = sector + _temp_3328		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3331 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3330 = *_temp_3331  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3332 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3327  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3330  sizeInBytes=4
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
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3333 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3333 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3334 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3334 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3323:
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3336 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3335 = *_temp_3336  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3335 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0AS",r10
!   _temp_3337 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3337  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2688,r13		! source line 2688
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
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3319
_Label_3321:
! SEND STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0SE",r10
!   _temp_3338 = &fileManagerLock
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
	mov	2703,r13		! source line 2703
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
	.word	_Label_3339
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3340
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3341
	.word	12
	.word	4
	.word	_Label_3342
	.word	16
	.word	4
	.word	_Label_3343
	.word	20
	.word	4
	.word	_Label_3344
	.word	24
	.word	4
	.word	_Label_3345
	.word	-16
	.word	4
	.word	_Label_3346
	.word	-20
	.word	4
	.word	_Label_3347
	.word	-24
	.word	4
	.word	_Label_3348
	.word	-28
	.word	4
	.word	_Label_3349
	.word	-32
	.word	4
	.word	_Label_3350
	.word	-36
	.word	4
	.word	_Label_3351
	.word	-40
	.word	4
	.word	_Label_3352
	.word	-44
	.word	4
	.word	_Label_3353
	.word	-48
	.word	4
	.word	_Label_3354
	.word	-52
	.word	4
	.word	_Label_3355
	.word	-56
	.word	4
	.word	_Label_3356
	.word	-60
	.word	4
	.word	_Label_3357
	.word	-64
	.word	4
	.word	_Label_3358
	.word	-68
	.word	4
	.word	_Label_3359
	.word	-72
	.word	4
	.word	_Label_3360
	.word	-76
	.word	4
	.word	_Label_3361
	.word	-80
	.word	4
	.word	_Label_3362
	.word	-84
	.word	4
	.word	_Label_3363
	.word	-88
	.word	4
	.word	_Label_3364
	.word	-92
	.word	4
	.word	_Label_3365
	.word	-96
	.word	4
	.word	_Label_3366
	.word	-100
	.word	4
	.word	_Label_3367
	.word	-104
	.word	4
	.word	_Label_3368
	.word	-9
	.word	1
	.word	_Label_3369
	.word	-10
	.word	1
	.word	_Label_3370
	.word	-108
	.word	4
	.word	_Label_3371
	.word	-112
	.word	4
	.word	_Label_3372
	.word	-116
	.word	4
	.word	_Label_3373
	.word	-120
	.word	4
	.word	_Label_3374
	.word	-124
	.word	4
	.word	_Label_3375
	.word	-128
	.word	4
	.word	0
_Label_3339:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3340:
	.ascii	"Pself\0"
	.align
_Label_3341:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3342:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3343:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3344:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3338\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3328\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3324\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3317\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3310\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3368:
	.byte	'C'
	.ascii	"_temp_3308\0"
	.align
_Label_3369:
	.byte	'C'
	.ascii	"_temp_3305\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3371:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3372:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3373:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3374:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3375:
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
_Label_3824:
	push	r0
	sub	r1,1,r1
	bne	_Label_3824
	mov	2708,r13		! source line 2708
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
!   _temp_3376 = &fileManagerLock
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
	mov	2725,r13		! source line 2725
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3382		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3382
!   _temp_3381 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3383
_Label_3382:
!   _temp_3381 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3383:
!   if _temp_3381 then goto _Label_3380 else goto _Label_3377
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3377
	jmp	_Label_3380
_Label_3380:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3386 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3385 = *_temp_3386  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3385 == 0 then goto _Label_3387		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3387
!   _temp_3384 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3388
_Label_3387:
!   _temp_3384 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3388:
!   if _temp_3384 then goto _Label_3379 else goto _Label_3377
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3377
	jmp	_Label_3379
_Label_3379:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3391 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3390 = *_temp_3391  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3390) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3392 = _temp_3390 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3389 = *_temp_3392  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3389 >= 0 then goto _Label_3378		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3378
!	jmp	_Label_3377
_Label_3377:
! THEN...
	mov	2726,r13		! source line 2726
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3393 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3393  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2726,r13		! source line 2726
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3378:
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3394 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3394  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0WH",r10
_Label_3395:
!   if numBytes <= 0 then goto _Label_3397		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3397
!	jmp	_Label_3396
_Label_3396:
	mov	2729,r13		! source line 2729
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
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
	mov	2739,r13		! source line 2739
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
	mov	2743,r13		! source line 2743
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3401 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3400 = *_temp_3401  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3400 == sector then goto _Label_3399		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3399
!	jmp	_Label_3398
_Label_3398:
! THEN...
	mov	2745,r13		! source line 2745
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3402) then goto _runtimeErrorNullPointer
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
_Label_3399:
! ASSIGNMENT STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3404 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3403 = *_temp_3404  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3403 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   _temp_3405 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3405  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2748,r13		! source line 2748
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3409 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3408 = *_temp_3409  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3408 != sector then goto _Label_3407		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3407
!	jmp	_Label_3406
_Label_3406:
	jmp	_Label_3410
_Label_3407:
! ELSE...
	mov	2751,r13		! source line 2751
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3413
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3413
	jmp	_Label_3412
_Label_3413:
!   if bytesToMove != 8192 then goto _Label_3412		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3412
!	jmp	_Label_3411
_Label_3411:
	jmp	_Label_3414
_Label_3412:
! ELSE...
	mov	2755,r13		! source line 2755
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3417 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3416 = *_temp_3417  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3415 = sector + _temp_3416		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3419 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3418 = *_temp_3419  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3420 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3415  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3418  sizeInBytes=4
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
_Label_3414:
! END IF...
_Label_3410:
! ASSIGNMENT STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3421 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3421 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3422 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3422 = 1  (sizeInBytes=1)
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
	mov	2764,r13		! source line 2764
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3395
_Label_3397:
! SEND STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
!   _temp_3423 = &fileManagerLock
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
	mov	2776,r13		! source line 2776
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
	.word	_Label_3424
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3425
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3426
	.word	12
	.word	4
	.word	_Label_3427
	.word	16
	.word	4
	.word	_Label_3428
	.word	20
	.word	4
	.word	_Label_3429
	.word	24
	.word	4
	.word	_Label_3430
	.word	-16
	.word	4
	.word	_Label_3431
	.word	-20
	.word	4
	.word	_Label_3432
	.word	-24
	.word	4
	.word	_Label_3433
	.word	-28
	.word	4
	.word	_Label_3434
	.word	-32
	.word	4
	.word	_Label_3435
	.word	-36
	.word	4
	.word	_Label_3436
	.word	-40
	.word	4
	.word	_Label_3437
	.word	-44
	.word	4
	.word	_Label_3438
	.word	-48
	.word	4
	.word	_Label_3439
	.word	-52
	.word	4
	.word	_Label_3440
	.word	-56
	.word	4
	.word	_Label_3441
	.word	-60
	.word	4
	.word	_Label_3442
	.word	-64
	.word	4
	.word	_Label_3443
	.word	-68
	.word	4
	.word	_Label_3444
	.word	-72
	.word	4
	.word	_Label_3445
	.word	-76
	.word	4
	.word	_Label_3446
	.word	-80
	.word	4
	.word	_Label_3447
	.word	-84
	.word	4
	.word	_Label_3448
	.word	-88
	.word	4
	.word	_Label_3449
	.word	-92
	.word	4
	.word	_Label_3450
	.word	-96
	.word	4
	.word	_Label_3451
	.word	-100
	.word	4
	.word	_Label_3452
	.word	-104
	.word	4
	.word	_Label_3453
	.word	-108
	.word	4
	.word	_Label_3454
	.word	-112
	.word	4
	.word	_Label_3455
	.word	-9
	.word	1
	.word	_Label_3456
	.word	-10
	.word	1
	.word	_Label_3457
	.word	-116
	.word	4
	.word	_Label_3458
	.word	-120
	.word	4
	.word	_Label_3459
	.word	-124
	.word	4
	.word	_Label_3460
	.word	-128
	.word	4
	.word	_Label_3461
	.word	-132
	.word	4
	.word	_Label_3462
	.word	-136
	.word	4
	.word	0
_Label_3424:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3425:
	.ascii	"Pself\0"
	.align
_Label_3426:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3427:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3428:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3429:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3430:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3431:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3432:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3433:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3455:
	.byte	'C'
	.ascii	"_temp_3384\0"
	.align
_Label_3456:
	.byte	'C'
	.ascii	"_temp_3381\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3458:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3459:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3460:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3461:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3462:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3463
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3463:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3464
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3464:
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
_Label_3825:
	push	r0
	sub	r1,1,r1
	bne	_Label_3825
	mov	2812,r13		! source line 2812
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
	mov	2814,r13		! source line 2814
	mov	"\0\0SE",r10
!   _temp_3465 = &_P_Kernel_frameManager
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
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2817,r13		! source line 2817
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
	.word	_Label_3466
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3468
	.word	-12
	.word	4
	.word	0
_Label_3466:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3467:
	.ascii	"Pself\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3465\0"
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
_Label_3826:
	push	r0
	sub	r1,1,r1
	bne	_Label_3826
	mov	2822,r13		! source line 2822
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3469 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3469  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3470 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3470  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2825,r13		! source line 2825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3471 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3471  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2827,r13		! source line 2827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2828,r13		! source line 2828
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3472 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3472  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2829,r13		! source line 2829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3473 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3473  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3474 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2835,r13		! source line 2835
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
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
	.word	_Label_3475
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3476
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3477
	.word	-12
	.word	4
	.word	_Label_3478
	.word	-16
	.word	4
	.word	_Label_3479
	.word	-20
	.word	4
	.word	_Label_3480
	.word	-24
	.word	4
	.word	_Label_3481
	.word	-28
	.word	4
	.word	_Label_3482
	.word	-32
	.word	4
	.word	0
_Label_3475:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3476:
	.ascii	"Pself\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3483
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3483:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3484
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3484:
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
_Label_3827:
	push	r0
	sub	r1,1,r1
	bne	_Label_3827
	mov	2846,r13		! source line 2846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3485 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3485  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2848,r13		! source line 2848
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3486 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3486  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2849,r13		! source line 2849
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3488		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3488
!	jmp	_Label_3487
_Label_3487:
! THEN...
	mov	2851,r13		! source line 2851
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2851,r13		! source line 2851
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
	jmp	_Label_3489
_Label_3488:
! ELSE...
	mov	2853,r13		! source line 2853
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3490 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2853,r13		! source line 2853
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3489:
! RETURN STATEMENT...
	mov	2850,r13		! source line 2850
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
	.word	_Label_3491
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3492
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3493
	.word	-12
	.word	4
	.word	_Label_3494
	.word	-16
	.word	4
	.word	_Label_3495
	.word	-20
	.word	4
	.word	0
_Label_3491:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3492:
	.ascii	"Pself\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3485\0"
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
_Label_3828:
	push	r0
	sub	r1,1,r1
	bne	_Label_3828
	mov	2859,r13		! source line 2859
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0SE",r10
!   _temp_3496 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3497 = _temp_3496 + 4
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
	mov	2870,r13		! source line 2870
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2871,r13		! source line 2871
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
	mov	2872,r13		! source line 2872
	mov	"\0\0SE",r10
!   _temp_3498 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3499 = _temp_3498 + 4
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
	mov	2873,r13		! source line 2873
	mov	"\0\0RE",r10
	mov	2873,r13		! source line 2873
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3502 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3501  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3500  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3500  (sizeInBytes=1)
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
	.word	_Label_3503
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3504
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3505
	.word	12
	.word	4
	.word	_Label_3506
	.word	16
	.word	4
	.word	_Label_3507
	.word	-16
	.word	4
	.word	_Label_3508
	.word	-20
	.word	4
	.word	_Label_3509
	.word	-9
	.word	1
	.word	_Label_3510
	.word	-24
	.word	4
	.word	_Label_3511
	.word	-28
	.word	4
	.word	_Label_3512
	.word	-32
	.word	4
	.word	_Label_3513
	.word	-36
	.word	4
	.word	_Label_3514
	.word	-40
	.word	4
	.word	0
_Label_3503:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3504:
	.ascii	"Pself\0"
	.align
_Label_3505:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3506:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3507:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3508:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3509:
	.byte	'C'
	.ascii	"_temp_3500\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3514:
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
_Label_3829:
	push	r0
	sub	r1,1,r1
	bne	_Label_3829
	mov	2878,r13		! source line 2878
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0IF",r10
	mov	2883,r13		! source line 2883
	mov	"\0\0SE",r10
!   _temp_3518 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3519) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3518  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3517  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3517 then goto _Label_3516 else goto _Label_3515
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3515
	jmp	_Label_3516
_Label_3515:
! THEN...
	mov	2884,r13		! source line 2884
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3520 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3520  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2884,r13		! source line 2884
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3516:
! RETURN STATEMENT...
	mov	2886,r13		! source line 2886
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
	.word	_Label_3521
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3522
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3523
	.word	-16
	.word	4
	.word	_Label_3524
	.word	-20
	.word	4
	.word	_Label_3525
	.word	-24
	.word	4
	.word	_Label_3526
	.word	-9
	.word	1
	.word	_Label_3527
	.word	-28
	.word	4
	.word	0
_Label_3521:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3522:
	.ascii	"Pself\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3526:
	.byte	'C'
	.ascii	"_temp_3517\0"
	.align
_Label_3527:
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
_Label_3830:
	push	r0
	sub	r1,1,r1
	bne	_Label_3830
	mov	2891,r13		! source line 2891
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3531 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3530 = *_temp_3531  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3530) then goto _Label_3529
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3529
!	jmp	_Label_3528
_Label_3528:
! THEN...
	mov	2918,r13		! source line 2918
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3532 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3532  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2918,r13		! source line 2918
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3529:
! IF STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0IF",r10
	mov	2922,r13		! source line 2922
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3536) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3535  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3535 == 1112300152 then goto _Label_3534		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3534
!	jmp	_Label_3533
_Label_3533:
! THEN...
	mov	2923,r13		! source line 2923
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3537 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3537  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2923,r13		! source line 2923
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3534:
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
	mov	2928,r13		! source line 2928
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3538) then goto _runtimeErrorNullPointer
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
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3539) then goto _runtimeErrorNullPointer
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
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
	mov	2930,r13		! source line 2930
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3540) then goto _runtimeErrorNullPointer
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
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
	mov	2931,r13		! source line 2931
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3541) then goto _runtimeErrorNullPointer
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
	mov	2932,r13		! source line 2932
	mov	"\0\0AS",r10
	mov	2932,r13		! source line 2932
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3542) then goto _runtimeErrorNullPointer
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
	mov	2933,r13		! source line 2933
	mov	"\0\0AS",r10
	mov	2933,r13		! source line 2933
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3543) then goto _runtimeErrorNullPointer
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
	mov	2936,r13		! source line 2936
	mov	"\0\0IF",r10
!   _temp_3546 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3546) then goto _Label_3545
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3545
!	jmp	_Label_3544
_Label_3544:
! THEN...
	mov	2937,r13		! source line 2937
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3547 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3547  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2937,r13		! source line 2937
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3545:
! ASSIGNMENT STATEMENT...
	mov	2940,r13		! source line 2940
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
	mov	2944,r13		! source line 2944
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3549
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3549
!	jmp	_Label_3548
_Label_3548:
! THEN...
	mov	2945,r13		! source line 2945
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3550 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3550  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3549:
! IF STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0IF",r10
!   _temp_3553 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3553) then goto _Label_3552
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3552
!	jmp	_Label_3551
_Label_3551:
! THEN...
	mov	2951,r13		! source line 2951
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3554 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3554  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2951,r13		! source line 2951
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3552:
! IF STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0IF",r10
!   _temp_3557 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3557 then goto _Label_3556		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3556
!	jmp	_Label_3555
_Label_3555:
! THEN...
	mov	2955,r13		! source line 2955
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3558 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3558  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2955,r13		! source line 2955
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3556:
! ASSIGNMENT STATEMENT...
	mov	2958,r13		! source line 2958
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
	mov	2961,r13		! source line 2961
	mov	"\0\0IF",r10
!   _temp_3561 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3561) then goto _Label_3560
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3560
!	jmp	_Label_3559
_Label_3559:
! THEN...
	mov	2962,r13		! source line 2962
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3562 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3562  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2962,r13		! source line 2962
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2963,r13		! source line 2963
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3560:
! IF STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0IF",r10
!   _temp_3565 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3565 then goto _Label_3564		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3564
!	jmp	_Label_3563
_Label_3563:
! THEN...
	mov	2966,r13		! source line 2966
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3566 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3566  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2966,r13		! source line 2966
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2967,r13		! source line 2967
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3564:
! ASSIGNMENT STATEMENT...
	mov	2969,r13		! source line 2969
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
	mov	2972,r13		! source line 2972
	mov	"\0\0AS",r10
!   _temp_3569 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3568 = _temp_3569 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3567 = _temp_3568 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3567 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3571		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3571
!	jmp	_Label_3570
_Label_3570:
! THEN...
	mov	2988,r13		! source line 2988
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3572 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3572  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2988,r13		! source line 2988
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3573 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3573  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2989,r13		! source line 2989
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3574 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3574  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2990,r13		! source line 2990
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3571:
! SEND STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0SE",r10
!   _temp_3575 = &_P_Kernel_frameManager
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
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
	mov	2999,r13		! source line 2999
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3579) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3578  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3578 == 707406378 then goto _Label_3577		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3577
!	jmp	_Label_3576
_Label_3576:
! THEN...
	mov	3000,r13		! source line 3000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3580 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3580  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3000,r13		! source line 3000
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0SE",r10
!   _temp_3581 = &_P_Kernel_frameManager
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
	mov	3002,r13		! source line 3002
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3577:
! ASSIGNMENT STATEMENT...
	mov	3006,r13		! source line 3006
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
	mov	3007,r13		! source line 3007
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3586 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3587 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3586  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3582:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3587 then goto _Label_3585		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3585
_Label_3583:
	mov	3007,r13		! source line 3007
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0AS",r10
	mov	3008,r13		! source line 3008
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
	mov	3011,r13		! source line 3011
	mov	"\0\0IF",r10
	mov	3011,r13		! source line 3011
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3591) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3590  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3590 then goto _Label_3589 else goto _Label_3588
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3588
	jmp	_Label_3589
_Label_3588:
! THEN...
	mov	3012,r13		! source line 3012
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3592 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3592  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3012,r13		! source line 3012
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0SE",r10
!   _temp_3593 = &_P_Kernel_frameManager
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
	mov	3014,r13		! source line 3014
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3589:
! SEND STATEMENT...
	mov	3016,r13		! source line 3016
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
	mov	3017,r13		! source line 3017
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3584:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3582
! END FOR
_Label_3585:
! IF STATEMENT...
	mov	3021,r13		! source line 3021
	mov	"\0\0IF",r10
	mov	3021,r13		! source line 3021
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3597) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3596  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3596 == 707406378 then goto _Label_3595		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3595
!	jmp	_Label_3594
_Label_3594:
! THEN...
	mov	3022,r13		! source line 3022
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3598 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3598  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3022,r13		! source line 3022
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0SE",r10
!   _temp_3599 = &_P_Kernel_frameManager
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
	mov	3024,r13		! source line 3024
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3595:
! FOR STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3604 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3605 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3604  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3600:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3605 then goto _Label_3603		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3603
_Label_3601:
	mov	3028,r13		! source line 3028
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0AS",r10
	mov	3029,r13		! source line 3029
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
	mov	3032,r13		! source line 3032
	mov	"\0\0IF",r10
	mov	3032,r13		! source line 3032
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3609) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3608  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3608 then goto _Label_3607 else goto _Label_3606
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3606
	jmp	_Label_3607
_Label_3606:
! THEN...
	mov	3033,r13		! source line 3033
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3610 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3610  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3033,r13		! source line 3033
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0SE",r10
!   _temp_3611 = &_P_Kernel_frameManager
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
	mov	3035,r13		! source line 3035
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3607:
! ASSIGNMENT STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3602:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3600
! END FOR
_Label_3603:
! IF STATEMENT...
	mov	3041,r13		! source line 3041
	mov	"\0\0IF",r10
	mov	3041,r13		! source line 3041
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3615) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3614  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3614 == 707406378 then goto _Label_3613		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3613
!	jmp	_Label_3612
_Label_3612:
! THEN...
	mov	3042,r13		! source line 3042
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3616 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3616  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3042,r13		! source line 3042
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0SE",r10
!   _temp_3617 = &_P_Kernel_frameManager
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
	mov	3044,r13		! source line 3044
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3613:
! ASSIGNMENT STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0AS",r10
	mov	3048,r13		! source line 3048
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
	mov	3052,r13		! source line 3052
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3055,r13		! source line 3055
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
	.word	_Label_3618
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3620
	.word	12
	.word	4
	.word	_Label_3621
	.word	-16
	.word	4
	.word	_Label_3622
	.word	-20
	.word	4
	.word	_Label_3623
	.word	-24
	.word	4
	.word	_Label_3624
	.word	-28
	.word	4
	.word	_Label_3625
	.word	-32
	.word	4
	.word	_Label_3626
	.word	-36
	.word	4
	.word	_Label_3627
	.word	-40
	.word	4
	.word	_Label_3628
	.word	-9
	.word	1
	.word	_Label_3629
	.word	-44
	.word	4
	.word	_Label_3630
	.word	-48
	.word	4
	.word	_Label_3631
	.word	-52
	.word	4
	.word	_Label_3632
	.word	-56
	.word	4
	.word	_Label_3633
	.word	-60
	.word	4
	.word	_Label_3634
	.word	-64
	.word	4
	.word	_Label_3635
	.word	-68
	.word	4
	.word	_Label_3636
	.word	-72
	.word	4
	.word	_Label_3637
	.word	-76
	.word	4
	.word	_Label_3638
	.word	-10
	.word	1
	.word	_Label_3639
	.word	-80
	.word	4
	.word	_Label_3640
	.word	-84
	.word	4
	.word	_Label_3641
	.word	-88
	.word	4
	.word	_Label_3642
	.word	-92
	.word	4
	.word	_Label_3643
	.word	-96
	.word	4
	.word	_Label_3644
	.word	-100
	.word	4
	.word	_Label_3645
	.word	-104
	.word	4
	.word	_Label_3646
	.word	-108
	.word	4
	.word	_Label_3647
	.word	-112
	.word	4
	.word	_Label_3648
	.word	-116
	.word	4
	.word	_Label_3649
	.word	-120
	.word	4
	.word	_Label_3650
	.word	-124
	.word	4
	.word	_Label_3651
	.word	-128
	.word	4
	.word	_Label_3652
	.word	-132
	.word	4
	.word	_Label_3653
	.word	-136
	.word	4
	.word	_Label_3654
	.word	-140
	.word	4
	.word	_Label_3655
	.word	-144
	.word	4
	.word	_Label_3656
	.word	-148
	.word	4
	.word	_Label_3657
	.word	-152
	.word	4
	.word	_Label_3658
	.word	-156
	.word	4
	.word	_Label_3659
	.word	-160
	.word	4
	.word	_Label_3660
	.word	-164
	.word	4
	.word	_Label_3661
	.word	-168
	.word	4
	.word	_Label_3662
	.word	-172
	.word	4
	.word	_Label_3663
	.word	-176
	.word	4
	.word	_Label_3664
	.word	-180
	.word	4
	.word	_Label_3665
	.word	-184
	.word	4
	.word	_Label_3666
	.word	-188
	.word	4
	.word	_Label_3667
	.word	-192
	.word	4
	.word	_Label_3668
	.word	-196
	.word	4
	.word	_Label_3669
	.word	-200
	.word	4
	.word	_Label_3670
	.word	-204
	.word	4
	.word	_Label_3671
	.word	-208
	.word	4
	.word	_Label_3672
	.word	-212
	.word	4
	.word	_Label_3673
	.word	-216
	.word	4
	.word	_Label_3674
	.word	-220
	.word	4
	.word	_Label_3675
	.word	-224
	.word	4
	.word	_Label_3676
	.word	-228
	.word	4
	.word	_Label_3677
	.word	-232
	.word	4
	.word	_Label_3678
	.word	-236
	.word	4
	.word	_Label_3679
	.word	-240
	.word	4
	.word	_Label_3680
	.word	-244
	.word	4
	.word	_Label_3681
	.word	-248
	.word	4
	.word	_Label_3682
	.word	-252
	.word	4
	.word	_Label_3683
	.word	-256
	.word	4
	.word	_Label_3684
	.word	-260
	.word	4
	.word	_Label_3685
	.word	-264
	.word	4
	.word	_Label_3686
	.word	-268
	.word	4
	.word	0
_Label_3618:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3619:
	.ascii	"Pself\0"
	.align
_Label_3620:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3617\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3628:
	.byte	'C'
	.ascii	"_temp_3608\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3638:
	.byte	'C'
	.ascii	"_temp_3590\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3569\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3657:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3658:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3553\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3542\0"
	.align
_Label_3665:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3669:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3670:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3671:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3672:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3673:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3674:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3675:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3676:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3677:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3678:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3679:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3680:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3681:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3682:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3683:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3684:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3685:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3686:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
