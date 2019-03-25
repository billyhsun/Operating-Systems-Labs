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
	.skip	1316
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
_StringConst_199:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_198:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_197:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_196:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_195:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_194:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_193:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_192:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_191:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_190:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_189:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_188:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_187:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_186:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_185:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_184:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_183:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_182:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_181:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_180:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_179:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_178:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_177:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_176:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_175:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_174:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_173:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_172:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_171:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_170:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_169:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_168:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_167:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_166:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_165:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_164:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_163:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_161:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_160:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_159:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_158:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_157:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_156:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_155:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_154:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_153:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_152:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_151:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_150:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_149:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_148:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_147:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_137:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_132:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_131:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_130:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_127:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_126:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_125:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_124:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_123:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_122:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_121:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_120:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_119:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_118:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_117:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_116:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_115:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_114:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_113:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_112:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_111:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_110:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_109:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_108:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_107:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_106:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_105:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_104:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_103:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_102:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_101:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_100:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_99:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_98:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_97:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_96:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_94:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_93:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_89:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_88:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_87:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_86:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_85:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_84:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_83:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_82:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_81:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_80:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_79:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_78:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_77:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_76:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_75:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_73:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_72:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_71:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_70:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_69:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_68:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_67:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_66:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_65:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_64:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_63:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_62:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_61:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_60:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_59:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_58:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_57:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_56:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_55:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_54:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_53:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_52:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_51:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_50:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_49:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_48:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_47:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_45:
	.word	11			! length
	.ascii	"Filename = "
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"virt adrr of filename = "
	.align
_StringConst_43:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
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
	set	0x48ee3049,r4		! myHashVal = 1223569481
	cmp	r3,r4
	be	_Label_209
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
_Label_209:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_210
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_210
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_210
_Label_210:
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
_Label_3294:
	push	r0
	sub	r1,1,r1
	bne	_Label_3294
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0AS",r10
	mov	13,r13		! source line 13
	mov	"\0\0SE",r10
!   _temp_211 = &_P_Kernel_threadManager
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
!   _temp_212 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
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
!   _temp_213 = _function_208_StartUserProcess
	set	_function_208_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_214 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_213  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_214  sizeInBytes=4
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
	.word	_Label_215
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_216
	.word	-12
	.word	4
	.word	_Label_217
	.word	-16
	.word	4
	.word	_Label_218
	.word	-20
	.word	4
	.word	_Label_219
	.word	-24
	.word	4
	.word	_Label_220
	.word	-28
	.word	4
	.word	0
_Label_215:
	.ascii	"InitFirstProcess\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_220:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_208_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3295:
	push	r0
	sub	r1,1,r1
	bne	_Label_3295
	mov	23,r13		! source line 23
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_221 = &_P_Kernel_processManager
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
!   _temp_222 = pcb + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_222 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_223 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_223 = pcb  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
	mov	35,r13		! source line 35
	mov	"\0\0SE",r10
!   _temp_224 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   _temp_225 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
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
!   _temp_227 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_226 = _temp_227		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_226  sizeInBytes=4
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
!   _temp_228 = &_P_Kernel_fileManager
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
!   _temp_230 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_231 = _temp_230 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_229 = *_temp_231  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStack = _temp_229 * 8192		(int)
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
!   _temp_232 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_232 [999 ] into _temp_233
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
!   initSystemStack = _temp_233		(4 bytes)
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
!   _temp_234 = pcb + 32
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
!   _temp_235 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_235 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_236 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
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
_RoutineDescriptor__function_208_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_237
	.word	0		! total size of parameters
	.word	100		! frame size = 100
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
	.word	_Label_244
	.word	-36
	.word	4
	.word	_Label_245
	.word	-40
	.word	4
	.word	_Label_246
	.word	-44
	.word	4
	.word	_Label_247
	.word	-48
	.word	4
	.word	_Label_248
	.word	-52
	.word	4
	.word	_Label_249
	.word	-56
	.word	4
	.word	_Label_250
	.word	-60
	.word	4
	.word	_Label_251
	.word	-64
	.word	4
	.word	_Label_252
	.word	-68
	.word	4
	.word	_Label_253
	.word	-72
	.word	4
	.word	_Label_254
	.word	-76
	.word	4
	.word	_Label_255
	.word	-80
	.word	4
	.word	_Label_256
	.word	-84
	.word	4
	.word	_Label_257
	.word	-88
	.word	4
	.word	_Label_258
	.word	-92
	.word	4
	.word	_Label_259
	.word	-96
	.word	4
	.word	0
_Label_237:
	.ascii	"StartUserProcess\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_255:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"initUserStack\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"initSystemStack\0"
	.align
_Label_259:
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
_Label_3296:
	push	r0
	sub	r1,1,r1
	bne	_Label_3296
	mov	51,r13		! source line 51
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	58,r13		! source line 58
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_260 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
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
_Label_3297:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3297
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0SE",r10
!   _temp_264 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-44]
!   _temp_265 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_264  sizeInBytes=4
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
!   _temp_266 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_267 = _temp_266 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_267 = 3  (sizeInBytes=4)
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
_Label_3298:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3298
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   _temp_269 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-24]
!   _temp_270 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_269  sizeInBytes=4
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
!   _temp_271 = _function_207_IdleFunction
	set	_function_207_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_272 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_271  sizeInBytes=4
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
	.word	_Label_273
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_274
	.word	-12
	.word	4
	.word	_Label_275
	.word	-16
	.word	4
	.word	_Label_276
	.word	-20
	.word	4
	.word	_Label_277
	.word	-24
	.word	4
	.word	_Label_278
	.word	-28
	.word	4
	.word	_Label_279
	.word	-32
	.word	4
	.word	_Label_280
	.word	-36
	.word	4
	.word	_Label_281
	.word	-40
	.word	4
	.word	_Label_282
	.word	-44
	.word	4
	.word	_Label_283
	.word	-48
	.word	4
	.word	_Label_284
	.word	-52
	.word	4
	.word	_Label_285
	.word	-56
	.word	4
	.word	_Label_286
	.word	-60
	.word	4
	.word	0
_Label_273:
	.ascii	"InitializeScheduler\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_207_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3299:
	push	r0
	sub	r1,1,r1
	bne	_Label_3299
	mov	76,r13		! source line 76
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0WH",r10
_Label_287:
!	jmp	_Label_288
_Label_288:
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
!   _temp_292 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_290 else goto _Label_291
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_291
	jmp	_Label_290
_Label_290:
! THEN...
	mov	89,r13		! source line 89
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_293
_Label_291:
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
_Label_293:
! END WHILE...
	jmp	_Label_287
_Label_289:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_IdleFunction:
	.word	_sourceFileName
	.word	_Label_294
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_295
	.word	8
	.word	4
	.word	_Label_296
	.word	-12
	.word	4
	.word	_Label_297
	.word	-16
	.word	4
	.word	0
_Label_294:
	.ascii	"IdleFunction\0"
	.align
_Label_295:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_297:
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
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
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
!   _temp_300 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_300 ) then goto _Label_299		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_299
!	jmp	_Label_298
_Label_298:
! THEN...
	mov	115,r13		! source line 115
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_302 [0 ] into _temp_303
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
!   _temp_301 = _temp_303		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_299:
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
!   _temp_304 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_304 = 3  (sizeInBytes=4)
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
_Label_305:
	mov	128,r13		! source line 128
	mov	"\0\0SE",r10
!   _temp_309 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_308  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_308 then goto _Label_307 else goto _Label_306
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_306
	jmp	_Label_307
_Label_306:
	mov	128,r13		! source line 128
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0AS",r10
	mov	129,r13		! source line 129
	mov	"\0\0SE",r10
!   _temp_310 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_311 = &_P_Kernel_threadManager
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
	jmp	_Label_305
_Label_307:
! IF STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_314 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_314 ) then goto _Label_313		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_313
!	jmp	_Label_312
_Label_312:
! THEN...
	mov	134,r13		! source line 134
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_316 [0 ] into _temp_317
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
!   _temp_315 = _temp_317		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
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
!   _temp_319 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_318 = *_temp_319  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_318) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_320 = _temp_318 + 32
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
_Label_313:
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
	.word	_Label_321
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_322
	.word	8
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	_Label_325
	.word	-24
	.word	4
	.word	_Label_326
	.word	-28
	.word	4
	.word	_Label_327
	.word	-32
	.word	4
	.word	_Label_328
	.word	-36
	.word	4
	.word	_Label_329
	.word	-40
	.word	4
	.word	_Label_330
	.word	-44
	.word	4
	.word	_Label_331
	.word	-48
	.word	4
	.word	_Label_332
	.word	-52
	.word	4
	.word	_Label_333
	.word	-9
	.word	1
	.word	_Label_334
	.word	-56
	.word	4
	.word	_Label_335
	.word	-60
	.word	4
	.word	_Label_336
	.word	-64
	.word	4
	.word	_Label_337
	.word	-68
	.word	4
	.word	_Label_338
	.word	-72
	.word	4
	.word	_Label_339
	.word	-76
	.word	4
	.word	_Label_340
	.word	-80
	.word	4
	.word	0
_Label_321:
	.ascii	"Run\0"
	.align
_Label_322:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_333:
	.byte	'C'
	.ascii	"_temp_308\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_339:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_340:
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
_Label_3301:
	push	r0
	sub	r1,1,r1
	bne	_Label_3301
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
!   _temp_341 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	149,r13		! source line 149
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   _temp_342 = _function_206_ThreadPrintShort
	set	_function_206_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_343 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_342  sizeInBytes=4
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
	.word	_Label_344
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_345
	.word	-12
	.word	4
	.word	_Label_346
	.word	-16
	.word	4
	.word	_Label_347
	.word	-20
	.word	4
	.word	_Label_348
	.word	-24
	.word	4
	.word	0
_Label_344:
	.ascii	"PrintReadyList\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_348:
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
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
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
!   _temp_349 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_349  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_351 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_350 = *_temp_351  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
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
!   _temp_352 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
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
	.word	_Label_353
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	0
_Label_353:
	.ascii	"ThreadStartMain\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_358:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_359:
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
_Label_3303:
	push	r0
	sub	r1,1,r1
	bne	_Label_3303
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
!   _temp_360 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_361 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
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
	.word	_Label_362
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_363
	.word	-12
	.word	4
	.word	_Label_364
	.word	-16
	.word	4
	.word	_Label_365
	.word	-20
	.word	4
	.word	0
_Label_362:
	.ascii	"ThreadFinish\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_365:
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
_Label_3304:
	push	r0
	sub	r1,1,r1
	bne	_Label_3304
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
!   _temp_366 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_368		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_368
!	jmp	_Label_367
_Label_367:
! THEN...
	mov	211,r13		! source line 211
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_369 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
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
!   _temp_371 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_370 = *_temp_371  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_368:
! CALL STATEMENT...
!   _temp_372 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
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
!   _temp_373 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	216,r13		! source line 216
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_374 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
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
	.word	_Label_375
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_376
	.word	8
	.word	4
	.word	_Label_377
	.word	-12
	.word	4
	.word	_Label_378
	.word	-16
	.word	4
	.word	_Label_379
	.word	-20
	.word	4
	.word	_Label_380
	.word	-24
	.word	4
	.word	_Label_381
	.word	-28
	.word	4
	.word	_Label_382
	.word	-32
	.word	4
	.word	_Label_383
	.word	-36
	.word	4
	.word	_Label_384
	.word	-40
	.word	4
	.word	0
_Label_375:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_376:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_384:
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
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
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
!   if newStatus != 1 then goto _Label_386		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_386
!	jmp	_Label_385
_Label_385:
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
	jmp	_Label_387
_Label_386:
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
_Label_387:
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
	.word	_Label_388
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_389
	.word	8
	.word	4
	.word	_Label_390
	.word	-12
	.word	4
	.word	0
_Label_388:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_206_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
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
!   if t == 0 then goto _Label_394		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_394
!   _temp_393 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_395
_Label_394:
!   _temp_393 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_395:
!   if _temp_393 then goto _Label_392 else goto _Label_391
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_391
	jmp	_Label_392
_Label_391:
! THEN...
	mov	693,r13		! source line 693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_396 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
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
_Label_392:
! CALL STATEMENT...
!   _temp_397 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
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
!   _temp_399 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_398 = *_temp_399  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_400 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
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
!   _temp_409 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_408 = *_temp_409  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_403
	cmp	r1,2
	be	_Label_404
	cmp	r1,3
	be	_Label_405
	cmp	r1,4
	be	_Label_406
	cmp	r1,5
	be	_Label_407
	jmp	_Label_401
! CASE 1...
_Label_403:
! CALL STATEMENT...
!   _temp_410 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0BR",r10
	jmp	_Label_402
! CASE 2...
_Label_404:
! CALL STATEMENT...
!   _temp_411 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0BR",r10
	jmp	_Label_402
! CASE 3...
_Label_405:
! CALL STATEMENT...
!   _temp_412 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0BR",r10
	jmp	_Label_402
! CASE 4...
_Label_406:
! CALL STATEMENT...
!   _temp_413 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0BR",r10
	jmp	_Label_402
! CASE 5...
_Label_407:
! CALL STATEMENT...
!   _temp_414 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0BR",r10
	jmp	_Label_402
! DEFAULT CASE...
_Label_401:
! CALL STATEMENT...
!   _temp_415 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
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
_Label_402:
! CALL STATEMENT...
!   _temp_416 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_417 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_418 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
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
_RoutineDescriptor__function_206_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_419
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_420
	.word	8
	.word	4
	.word	_Label_421
	.word	-16
	.word	4
	.word	_Label_422
	.word	-20
	.word	4
	.word	_Label_423
	.word	-24
	.word	4
	.word	_Label_424
	.word	-28
	.word	4
	.word	_Label_425
	.word	-32
	.word	4
	.word	_Label_426
	.word	-36
	.word	4
	.word	_Label_427
	.word	-40
	.word	4
	.word	_Label_428
	.word	-44
	.word	4
	.word	_Label_429
	.word	-48
	.word	4
	.word	_Label_430
	.word	-52
	.word	4
	.word	_Label_431
	.word	-56
	.word	4
	.word	_Label_432
	.word	-60
	.word	4
	.word	_Label_433
	.word	-64
	.word	4
	.word	_Label_434
	.word	-68
	.word	4
	.word	_Label_435
	.word	-72
	.word	4
	.word	_Label_436
	.word	-76
	.word	4
	.word	_Label_437
	.word	-9
	.word	1
	.word	_Label_438
	.word	-80
	.word	4
	.word	0
_Label_419:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_420:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_437:
	.byte	'C'
	.ascii	"_temp_393\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_205_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
	mov	1051,r13		! source line 1051
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_439 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
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
_RoutineDescriptor__function_205_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_440
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_441
	.word	8
	.word	4
	.word	_Label_442
	.word	-12
	.word	4
	.word	0
_Label_440:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_441:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_439\0"
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
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
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
!   _temp_444 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_443 = *_temp_444  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_443) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = _temp_443 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_445 = exitStatus  (sizeInBytes=4)
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
!   _temp_446 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_446 = 0  (sizeInBytes=1)
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
!   _temp_449 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_448 = *_temp_449  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_448) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_450 = _temp_448 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_447 = _temp_450		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_451 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_447  sizeInBytes=4
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
!   _temp_453 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_452 = *_temp_453  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_454 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_452  sizeInBytes=4
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
!   _temp_456 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_455 = *_temp_456  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_455) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = _temp_455 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_457 = 0  (sizeInBytes=4)
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
!   _temp_458 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_458 = 0  (sizeInBytes=4)
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
	.word	_Label_459
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_460
	.word	8
	.word	4
	.word	_Label_461
	.word	-12
	.word	4
	.word	_Label_462
	.word	-16
	.word	4
	.word	_Label_463
	.word	-20
	.word	4
	.word	_Label_464
	.word	-24
	.word	4
	.word	_Label_465
	.word	-28
	.word	4
	.word	_Label_466
	.word	-32
	.word	4
	.word	_Label_467
	.word	-36
	.word	4
	.word	_Label_468
	.word	-40
	.word	4
	.word	_Label_469
	.word	-44
	.word	4
	.word	_Label_470
	.word	-48
	.word	4
	.word	_Label_471
	.word	-52
	.word	4
	.word	_Label_472
	.word	-56
	.word	4
	.word	_Label_473
	.word	-60
	.word	4
	.word	_Label_474
	.word	-64
	.word	4
	.word	_Label_475
	.word	-68
	.word	4
	.word	_Label_476
	.word	-72
	.word	4
	.word	_Label_477
	.word	-76
	.word	4
	.word	0
_Label_459:
	.ascii	"ProcessFinish\0"
	.align
_Label_460:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_477:
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
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
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
	.word	_Label_478
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_478:
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
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
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
!   _temp_482 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_483 = _temp_482 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_481 = *_temp_483  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_481 == 0 then goto _Label_480		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_480
!	jmp	_Label_479
_Label_479:
! THEN...
	mov	1586,r13		! source line 1586
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0SE",r10
!   _temp_485 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_486 = _temp_485 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_484 = *_temp_486  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_484) then goto _runtimeErrorNullPointer
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
_Label_480:
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
	.word	_Label_487
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_488
	.word	-12
	.word	4
	.word	_Label_489
	.word	-16
	.word	4
	.word	_Label_490
	.word	-20
	.word	4
	.word	_Label_491
	.word	-24
	.word	4
	.word	_Label_492
	.word	-28
	.word	4
	.word	_Label_493
	.word	-32
	.word	4
	.word	0
_Label_487:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_481\0"
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
	.word	_Label_494
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_494:
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
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
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
!   _temp_495 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1613,r13		! source line 1613
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_496
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_497
	.word	-12
	.word	4
	.word	0
_Label_496:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_495\0"
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
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
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
!   _temp_498 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1625,r13		! source line 1625
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_499
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_500
	.word	-12
	.word	4
	.word	0
_Label_499:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_498\0"
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
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
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
!   _temp_501 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_502
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_503
	.word	-12
	.word	4
	.word	0
_Label_502:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_501\0"
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
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
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
!   _temp_504 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_505
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_506
	.word	-12
	.word	4
	.word	0
_Label_505:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_504\0"
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
_Label_3315:
	push	r0
	sub	r1,1,r1
	bne	_Label_3315
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
!   _temp_507 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_508
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_509
	.word	-12
	.word	4
	.word	0
_Label_508:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_507\0"
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
_Label_3316:
	push	r0
	sub	r1,1,r1
	bne	_Label_3316
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
!   _temp_510 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
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
_Label_3317:
	push	r0
	sub	r1,1,r1
	bne	_Label_3317
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
!   _temp_513 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_514
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_515
	.word	-12
	.word	4
	.word	0
_Label_514:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_204_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3318:
	push	r0
	sub	r1,1,r1
	bne	_Label_3318
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_516 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
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
!   _temp_517 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
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
!   _temp_521 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_520 = *_temp_521  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_520 == 0 then goto _Label_519		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_519
!	jmp	_Label_518
_Label_518:
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
!   _temp_523 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_522 = *_temp_523  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_522) then goto _runtimeErrorNullPointer
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
	jmp	_Label_524
_Label_519:
! ELSE...
	mov	1703,r13		! source line 1703
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_525 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_524:
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
_RoutineDescriptor__function_204_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_526
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_527
	.word	8
	.word	4
	.word	_Label_528
	.word	-12
	.word	4
	.word	_Label_529
	.word	-16
	.word	4
	.word	_Label_530
	.word	-20
	.word	4
	.word	_Label_531
	.word	-24
	.word	4
	.word	_Label_532
	.word	-28
	.word	4
	.word	_Label_533
	.word	-32
	.word	4
	.word	_Label_534
	.word	-36
	.word	4
	.word	0
_Label_526:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_527:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_516\0"
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
_Label_3319:
	push	r0
	sub	r1,1,r1
	bne	_Label_3319
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
	be	_Label_3320
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_535
_Label_3320:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_535
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_535
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_549,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_549:
	jmp	_Label_541	! 1:	
	jmp	_Label_548	! 2:	
	jmp	_Label_538	! 3:	
	jmp	_Label_537	! 4:	
	jmp	_Label_540	! 5:	
	jmp	_Label_539	! 6:	
	jmp	_Label_542	! 7:	
	jmp	_Label_543	! 8:	
	jmp	_Label_544	! 9:	
	jmp	_Label_545	! 10:	
	jmp	_Label_546	! 11:	
	jmp	_Label_547	! 12:	
! CASE 4...
_Label_537:
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_538:
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
_Label_539:
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
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_540:
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
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_541:
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
_Label_542:
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
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_543:
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
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_544:
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
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_545:
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
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_546:
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
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_557  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_547:
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
_Label_548:
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
_Label_535:
! CALL STATEMENT...
!   _temp_558 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
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
!   _temp_559 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
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
_Label_536:
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
	.word	_Label_560
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_561
	.word	8
	.word	4
	.word	_Label_562
	.word	12
	.word	4
	.word	_Label_563
	.word	16
	.word	4
	.word	_Label_564
	.word	20
	.word	4
	.word	_Label_565
	.word	24
	.word	4
	.word	_Label_566
	.word	-12
	.word	4
	.word	_Label_567
	.word	-16
	.word	4
	.word	_Label_568
	.word	-20
	.word	4
	.word	_Label_569
	.word	-24
	.word	4
	.word	_Label_570
	.word	-28
	.word	4
	.word	_Label_571
	.word	-32
	.word	4
	.word	_Label_572
	.word	-36
	.word	4
	.word	_Label_573
	.word	-40
	.word	4
	.word	_Label_574
	.word	-44
	.word	4
	.word	_Label_575
	.word	-48
	.word	4
	.word	0
_Label_560:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_550\0"
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
_Label_3321:
	push	r0
	sub	r1,1,r1
	bne	_Label_3321
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
	.word	_Label_576
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_577
	.word	8
	.word	4
	.word	0
_Label_576:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_577:
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
_Label_3322:
	push	r0
	sub	r1,1,r1
	bne	_Label_3322
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_578 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_578  sizeInBytes=4
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
	.word	_Label_579
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_580
	.word	-12
	.word	4
	.word	0
_Label_579:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_578\0"
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
_Label_3323:
	push	r0
	sub	r1,1,r1
	bne	_Label_3323
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
	.word	_Label_581
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_581:
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
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
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
!   _temp_582 = &_P_Kernel_threadManager
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
!   _temp_583 = &_P_Kernel_processManager
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
!   _temp_584 = newPCB + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_584 = newThread  (sizeInBytes=4)
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
!   _temp_585 = newPCB + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_587 = *_temp_588  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_587) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = _temp_587 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_586 = *_temp_589  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_585 = _temp_586  (sizeInBytes=4)
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
!   _temp_590 = newThread + 76
	load	[r14+-200],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_590 = 2  (sizeInBytes=4)
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
!   _temp_591 = newThread + 4160
	load	[r14+-200],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_591 = newPCB  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = newThread + 4096
	load	[r14+-200],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_593 [0 ] into _temp_594
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
!   _temp_592 = _temp_594		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
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
!   _temp_595 = newThread + 68
	load	[r14+-200],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = newThread + 88
	load	[r14+-200],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_597 [999 ] into _temp_598
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
!   _temp_596 = _temp_598		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_595 = _temp_596  (sizeInBytes=4)
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
!   _temp_600 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_599 = _temp_600		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_602 = *_temp_603  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_602) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = _temp_602 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_605 = _temp_604 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_601 = *_temp_605  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_606 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_599  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_601  sizeInBytes=4
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
!   _temp_611 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_614 = *_temp_615  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_614) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = _temp_614 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_617 = _temp_616 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_613 = *_temp_617  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_612 = _temp_613 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_611  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-216]
_Label_607:
!   Perform the FOR-LOOP termination test
!   if i > _temp_612 then goto _Label_610		
	load	[r14+-216],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_610
_Label_608:
	mov	1820,r13		! source line 1820
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_618  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _temp_621 + 32
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
!   Retrieve Result: targetName=_temp_620  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_618  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_620  sizeInBytes=4
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
!   _temp_628 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_627 = *_temp_628  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_627) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _temp_627 + 32
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
!   Retrieve Result: targetName=_temp_626  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_630 = _temp_626 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_630 then goto _Label_625 else goto _Label_624
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_624
	jmp	_Label_625
_Label_624:
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
!   _temp_631 = newPCB + 32
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
	jmp	_Label_632
_Label_625:
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
!   _temp_633 = newPCB + 32
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
_Label_632:
!   Increment the FOR-LOOP index variable and jump back
_Label_609:
!   i = i + 1
	load	[r14+-216],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
	jmp	_Label_607
! END FOR
_Label_610:
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
!   _temp_634 = _function_203_Resume_After_Fork
	set	_function_203_Resume_After_Fork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_634  sizeInBytes=4
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
!   _temp_636 = newPCB + 12
	load	[r14+-204],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_635 = *_temp_636  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_635  (sizeInBytes=4)
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
	.word	_Label_637
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	_Label_640
	.word	-24
	.word	4
	.word	_Label_641
	.word	-28
	.word	4
	.word	_Label_642
	.word	-32
	.word	4
	.word	_Label_643
	.word	-9
	.word	1
	.word	_Label_644
	.word	-36
	.word	4
	.word	_Label_645
	.word	-40
	.word	4
	.word	_Label_646
	.word	-44
	.word	4
	.word	_Label_647
	.word	-10
	.word	1
	.word	_Label_648
	.word	-48
	.word	4
	.word	_Label_649
	.word	-52
	.word	4
	.word	_Label_650
	.word	-56
	.word	4
	.word	_Label_651
	.word	-60
	.word	4
	.word	_Label_652
	.word	-64
	.word	4
	.word	_Label_653
	.word	-68
	.word	4
	.word	_Label_654
	.word	-72
	.word	4
	.word	_Label_655
	.word	-76
	.word	4
	.word	_Label_656
	.word	-80
	.word	4
	.word	_Label_657
	.word	-84
	.word	4
	.word	_Label_658
	.word	-88
	.word	4
	.word	_Label_659
	.word	-92
	.word	4
	.word	_Label_660
	.word	-96
	.word	4
	.word	_Label_661
	.word	-100
	.word	4
	.word	_Label_662
	.word	-104
	.word	4
	.word	_Label_663
	.word	-108
	.word	4
	.word	_Label_664
	.word	-112
	.word	4
	.word	_Label_665
	.word	-116
	.word	4
	.word	_Label_666
	.word	-120
	.word	4
	.word	_Label_667
	.word	-124
	.word	4
	.word	_Label_668
	.word	-128
	.word	4
	.word	_Label_669
	.word	-132
	.word	4
	.word	_Label_670
	.word	-136
	.word	4
	.word	_Label_671
	.word	-140
	.word	4
	.word	_Label_672
	.word	-144
	.word	4
	.word	_Label_673
	.word	-148
	.word	4
	.word	_Label_674
	.word	-152
	.word	4
	.word	_Label_675
	.word	-156
	.word	4
	.word	_Label_676
	.word	-160
	.word	4
	.word	_Label_677
	.word	-164
	.word	4
	.word	_Label_678
	.word	-168
	.word	4
	.word	_Label_679
	.word	-172
	.word	4
	.word	_Label_680
	.word	-176
	.word	4
	.word	_Label_681
	.word	-180
	.word	4
	.word	_Label_682
	.word	-184
	.word	4
	.word	_Label_683
	.word	-188
	.word	4
	.word	_Label_684
	.word	-192
	.word	4
	.word	_Label_685
	.word	-196
	.word	4
	.word	_Label_686
	.word	-200
	.word	4
	.word	_Label_687
	.word	-204
	.word	4
	.word	_Label_688
	.word	-208
	.word	4
	.word	_Label_689
	.word	-212
	.word	4
	.word	_Label_690
	.word	-216
	.word	4
	.word	0
_Label_637:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_643:
	.byte	'C'
	.ascii	"_temp_630\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_647:
	.byte	'C'
	.ascii	"_temp_626\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_687:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_689:
	.byte	'I'
	.ascii	"oldPC\0"
	.align
_Label_690:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Resume_After_Fork  ===============
! 
_function_203_Resume_After_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_Resume_After_Fork,r1
	push	r1
	mov	17,r1
_Label_3325:
	push	r0
	sub	r1,1,r1
	bne	_Label_3325
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
!   _temp_692 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_691 = *_temp_692  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_691) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_693 = _temp_691 + 32
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
!   _temp_695 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_695 [0 ] into _temp_696
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
!   _temp_694 = _temp_696		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_694  sizeInBytes=4
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
!   _temp_697 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_697 = 1  (sizeInBytes=1)
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
!   _temp_698 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_698 [14 ] into _temp_699
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
!   Data Move: userStackTop = *_temp_699  (sizeInBytes=4)
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
!   _temp_700 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_700 [999 ] into _temp_701
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
!   systemStackTop = _temp_701		(4 bytes)
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
_RoutineDescriptor__function_203_Resume_After_Fork:
	.word	_sourceFileName
	.word	_Label_702
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_703
	.word	8
	.word	4
	.word	_Label_704
	.word	-12
	.word	4
	.word	_Label_705
	.word	-16
	.word	4
	.word	_Label_706
	.word	-20
	.word	4
	.word	_Label_707
	.word	-24
	.word	4
	.word	_Label_708
	.word	-28
	.word	4
	.word	_Label_709
	.word	-32
	.word	4
	.word	_Label_710
	.word	-36
	.word	4
	.word	_Label_711
	.word	-40
	.word	4
	.word	_Label_712
	.word	-44
	.word	4
	.word	_Label_713
	.word	-48
	.word	4
	.word	_Label_714
	.word	-52
	.word	4
	.word	_Label_715
	.word	-56
	.word	4
	.word	_Label_716
	.word	-60
	.word	4
	.word	_Label_717
	.word	-64
	.word	4
	.word	0
_Label_702:
	.ascii	"Resume_After_Fork\0"
	.align
_Label_703:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_717:
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
_Label_3326:
	push	r0
	sub	r1,1,r1
	bne	_Label_3326
	mov	1854,r13		! source line 1854
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_722 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_723 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_722  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_718:
!   Perform the FOR-LOOP termination test
!   if i > _temp_723 then goto _Label_721		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_721
_Label_719:
	mov	1859,r13		! source line 1859
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0IF",r10
!   _temp_729 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_730 = _temp_729 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_730 [i ] into _temp_731
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_732 = _temp_731 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_728 = *_temp_732  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_728 != processID then goto _Label_725		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_725
!	jmp	_Label_727
_Label_727:
!   _temp_734 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_735 = _temp_734 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_735 [i ] into _temp_736
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_737 = _temp_736 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_733 = *_temp_737  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_739 = *_temp_740  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_739) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_741 = _temp_739 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_738 = *_temp_741  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_733 != _temp_738 then goto _Label_725		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_725
!	jmp	_Label_726
_Label_726:
!   _temp_743 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_744 = _temp_743 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_744 [i ] into _temp_745
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_746 = _temp_745 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_742 = *_temp_746  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_742 == 3 then goto _Label_725		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_725
!	jmp	_Label_724
_Label_724:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
	mov	1861,r13		! source line 1861
	mov	"\0\0SE",r10
!   _temp_748 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_749 = _temp_748 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_749 [i ] into _temp_750
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_747 = _temp_750		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_751 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_747  sizeInBytes=4
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
_Label_725:
!   Increment the FOR-LOOP index variable and jump back
_Label_720:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_718
! END FOR
_Label_721:
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
	.word	_Label_752
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_753
	.word	8
	.word	4
	.word	_Label_754
	.word	-12
	.word	4
	.word	_Label_755
	.word	-16
	.word	4
	.word	_Label_756
	.word	-20
	.word	4
	.word	_Label_757
	.word	-24
	.word	4
	.word	_Label_758
	.word	-28
	.word	4
	.word	_Label_759
	.word	-32
	.word	4
	.word	_Label_760
	.word	-36
	.word	4
	.word	_Label_761
	.word	-40
	.word	4
	.word	_Label_762
	.word	-44
	.word	4
	.word	_Label_763
	.word	-48
	.word	4
	.word	_Label_764
	.word	-52
	.word	4
	.word	_Label_765
	.word	-56
	.word	4
	.word	_Label_766
	.word	-60
	.word	4
	.word	_Label_767
	.word	-64
	.word	4
	.word	_Label_768
	.word	-68
	.word	4
	.word	_Label_769
	.word	-72
	.word	4
	.word	_Label_770
	.word	-76
	.word	4
	.word	_Label_771
	.word	-80
	.word	4
	.word	_Label_772
	.word	-84
	.word	4
	.word	_Label_773
	.word	-88
	.word	4
	.word	_Label_774
	.word	-92
	.word	4
	.word	_Label_775
	.word	-96
	.word	4
	.word	_Label_776
	.word	-100
	.word	4
	.word	_Label_777
	.word	-104
	.word	4
	.word	_Label_778
	.word	-108
	.word	4
	.word	_Label_779
	.word	-112
	.word	4
	.word	_Label_780
	.word	-116
	.word	4
	.word	_Label_781
	.word	-120
	.word	4
	.word	0
_Label_752:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_753:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_781:
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
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
	mov	1872,r13		! source line 1872
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! addrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	add	r14,-216,r4
	mov	23,r3
_Label_3328:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3328
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
!   _temp_783 = &strBuffer
	add	r14,-240,r1
	store	r1,[r14+-120]
!   _temp_784 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_786 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_785 = *_temp_786  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_785) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_787 = _temp_785 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_783  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_784  sizeInBytes=4
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
!   if junk >= 0 then goto _Label_789		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_789
!	jmp	_Label_788
_Label_788:
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
_Label_789:
! SEND STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_790 = &addrSpace
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
!   _temp_791 = &strBuffer
	add	r14,-240,r1
	store	r1,[r14+-96]
!   _temp_792 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_791  sizeInBytes=4
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
!   if intIsZero (openFile) then goto _Label_793
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_793
	jmp	_Label_794
_Label_793:
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
_Label_794:
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
	mov	1892,r13		! source line 1892
	mov	"\0\0SE",r10
!   _temp_795 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-88]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_795  sizeInBytes=4
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
!   if initUserPC >= 0 then goto _Label_797		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_797
!	jmp	_Label_796
_Label_796:
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
_Label_797:
! SEND STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_799 = *_temp_800  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_799) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_801 = _temp_799 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_798 = _temp_801		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-84]
!   _temp_802 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_798  sizeInBytes=4
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
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_804 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_803 = *_temp_804  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_803) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = _temp_803 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_805 = addrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-56],r4
	mov	23,r3
_Label_3329:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3329
! SEND STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0SE",r10
!   _temp_806 = &_P_Kernel_fileManager
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
	mov	1899,r13		! source line 1899
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_807 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_807 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   _temp_809 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-40]
!   _temp_810 = _temp_809 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_808 = *_temp_810  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_808 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_811 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_811 [999 ] into _temp_812
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
!   initSystemStackTop = _temp_812		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-256]
! SEND STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0SE",r10
!   _temp_813 = &addrSpace
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
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	BecomeUserThread
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_815 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_814 = *_temp_815  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_814) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_816 = _temp_814 + 32
	load	[r14+-20],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_816 = addrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-12],r4
	mov	23,r3
_Label_3330:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3330
! RETURN STATEMENT...
	mov	1905,r13		! source line 1905
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
	.word	_Label_817
	.word	4		! total size of parameters
	.word	268		! frame size = 268
	.word	_Label_818
	.word	8
	.word	4
	.word	_Label_819
	.word	-12
	.word	4
	.word	_Label_820
	.word	-16
	.word	4
	.word	_Label_821
	.word	-20
	.word	4
	.word	_Label_822
	.word	-24
	.word	4
	.word	_Label_823
	.word	-28
	.word	4
	.word	_Label_824
	.word	-32
	.word	4
	.word	_Label_825
	.word	-36
	.word	4
	.word	_Label_826
	.word	-40
	.word	4
	.word	_Label_827
	.word	-44
	.word	4
	.word	_Label_828
	.word	-48
	.word	4
	.word	_Label_829
	.word	-52
	.word	4
	.word	_Label_830
	.word	-56
	.word	4
	.word	_Label_831
	.word	-60
	.word	4
	.word	_Label_832
	.word	-64
	.word	4
	.word	_Label_833
	.word	-68
	.word	4
	.word	_Label_834
	.word	-72
	.word	4
	.word	_Label_835
	.word	-76
	.word	4
	.word	_Label_836
	.word	-80
	.word	4
	.word	_Label_837
	.word	-84
	.word	4
	.word	_Label_838
	.word	-88
	.word	4
	.word	_Label_839
	.word	-92
	.word	4
	.word	_Label_840
	.word	-96
	.word	4
	.word	_Label_841
	.word	-100
	.word	4
	.word	_Label_842
	.word	-104
	.word	4
	.word	_Label_843
	.word	-108
	.word	4
	.word	_Label_844
	.word	-112
	.word	4
	.word	_Label_845
	.word	-116
	.word	4
	.word	_Label_846
	.word	-120
	.word	4
	.word	_Label_847
	.word	-124
	.word	4
	.word	_Label_848
	.word	-216
	.word	92
	.word	_Label_849
	.word	-240
	.word	24
	.word	_Label_850
	.word	-244
	.word	4
	.word	_Label_851
	.word	-248
	.word	4
	.word	_Label_852
	.word	-252
	.word	4
	.word	_Label_853
	.word	-256
	.word	4
	.word	_Label_854
	.word	-260
	.word	4
	.word	0
_Label_817:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_818:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_848:
	.byte	'O'
	.ascii	"addrSpace\0"
	.align
_Label_849:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_850:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_851:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_852:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_853:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_854:
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
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	1910,r13		! source line 1910
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0AS",r10
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   _temp_855 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_856 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_858 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_857 = *_temp_858  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_857) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_859 = _temp_857 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_855  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_856  sizeInBytes=4
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
!   _temp_860 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_860  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_861 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_862 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_863 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_864 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_864  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
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
	.word	_Label_865
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_866
	.word	8
	.word	4
	.word	_Label_867
	.word	-12
	.word	4
	.word	_Label_868
	.word	-16
	.word	4
	.word	_Label_869
	.word	-20
	.word	4
	.word	_Label_870
	.word	-24
	.word	4
	.word	_Label_871
	.word	-28
	.word	4
	.word	_Label_872
	.word	-32
	.word	4
	.word	_Label_873
	.word	-36
	.word	4
	.word	_Label_874
	.word	-40
	.word	4
	.word	_Label_875
	.word	-44
	.word	4
	.word	_Label_876
	.word	-48
	.word	4
	.word	_Label_877
	.word	-52
	.word	4
	.word	_Label_878
	.word	-76
	.word	24
	.word	0
_Label_865:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_866:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_877:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_878:
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
	mov	21,r1
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	1928,r13		! source line 1928
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0AS",r10
	mov	1932,r13		! source line 1932
	mov	"\0\0SE",r10
!   _temp_879 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_880 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_882 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_881 = *_temp_882  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_881) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_883 = _temp_881 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_879  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_880  sizeInBytes=4
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
!   _temp_884 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_885 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_885  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_886 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_886  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_887 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_888 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_888  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_889
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_890
	.word	8
	.word	4
	.word	_Label_891
	.word	-12
	.word	4
	.word	_Label_892
	.word	-16
	.word	4
	.word	_Label_893
	.word	-20
	.word	4
	.word	_Label_894
	.word	-24
	.word	4
	.word	_Label_895
	.word	-28
	.word	4
	.word	_Label_896
	.word	-32
	.word	4
	.word	_Label_897
	.word	-36
	.word	4
	.word	_Label_898
	.word	-40
	.word	4
	.word	_Label_899
	.word	-44
	.word	4
	.word	_Label_900
	.word	-48
	.word	4
	.word	_Label_901
	.word	-52
	.word	4
	.word	_Label_902
	.word	-76
	.word	24
	.word	0
_Label_889:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_890:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_902:
	.byte	'A'
	.ascii	"strBuffer\0"
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
	mov	6,r1
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	1946,r13		! source line 1946
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_903 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_903  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_904 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_904  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_905 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_905  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_906 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_906  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_907 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_908
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_909
	.word	8
	.word	4
	.word	_Label_910
	.word	12
	.word	4
	.word	_Label_911
	.word	16
	.word	4
	.word	_Label_912
	.word	-12
	.word	4
	.word	_Label_913
	.word	-16
	.word	4
	.word	_Label_914
	.word	-20
	.word	4
	.word	_Label_915
	.word	-24
	.word	4
	.word	_Label_916
	.word	-28
	.word	4
	.word	0
_Label_908:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_909:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_910:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_911:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_903\0"
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
	mov	6,r1
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_917 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_917  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1965,r13		! source line 1965
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_918 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_918  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_919 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_919  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_920 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_920  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_921 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_921  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_922
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_923
	.word	8
	.word	4
	.word	_Label_924
	.word	12
	.word	4
	.word	_Label_925
	.word	16
	.word	4
	.word	_Label_926
	.word	-12
	.word	4
	.word	_Label_927
	.word	-16
	.word	4
	.word	_Label_928
	.word	-20
	.word	4
	.word	_Label_929
	.word	-24
	.word	4
	.word	_Label_930
	.word	-28
	.word	4
	.word	0
_Label_922:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_923:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_924:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_925:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_917\0"
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
	mov	4,r1
_Label_3335:
	push	r0
	sub	r1,1,r1
	bne	_Label_3335
	mov	1980,r13		! source line 1980
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_931 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_932 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_933 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_934
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_935
	.word	8
	.word	4
	.word	_Label_936
	.word	12
	.word	4
	.word	_Label_937
	.word	-12
	.word	4
	.word	_Label_938
	.word	-16
	.word	4
	.word	_Label_939
	.word	-20
	.word	4
	.word	0
_Label_934:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_935:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_936:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_931\0"
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
	mov	3,r1
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
	mov	1994,r13		! source line 1994
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_940 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_941 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_941  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_942
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_943
	.word	8
	.word	4
	.word	_Label_944
	.word	-12
	.word	4
	.word	_Label_945
	.word	-16
	.word	4
	.word	0
_Label_942:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_943:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_202_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
	mov	2590,r13		! source line 2590
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_946 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_946  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   _temp_947 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_947) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_949 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_949) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_948 = *_temp_949  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_947 = _temp_948  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   _temp_950 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_950) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_952 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_952) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_951 = *_temp_952  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_950 = _temp_951  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   _temp_953 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_953) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_955 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_955) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_954 = *_temp_955  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_953 = _temp_954  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_956
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_957
	.word	8
	.word	4
	.word	_Label_958
	.word	12
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-9
	.word	1
	.word	_Label_961
	.word	-20
	.word	4
	.word	_Label_962
	.word	-24
	.word	4
	.word	_Label_963
	.word	-10
	.word	1
	.word	_Label_964
	.word	-28
	.word	4
	.word	_Label_965
	.word	-32
	.word	4
	.word	_Label_966
	.word	-11
	.word	1
	.word	_Label_967
	.word	-36
	.word	4
	.word	_Label_968
	.word	-12
	.word	1
	.word	_Label_969
	.word	-40
	.word	4
	.word	_Label_970
	.word	-44
	.word	4
	.word	0
_Label_956:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_957:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_958:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_960:
	.byte	'C'
	.ascii	"_temp_954\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_963:
	.byte	'C'
	.ascii	"_temp_951\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_966:
	.byte	'C'
	.ascii	"_temp_948\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_968:
	.byte	'C'
	.ascii	"_temp_946\0"
	.align
_Label_969:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_970:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_201_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_printFCB,r1
	push	r1
	mov	3,r1
_Label_3338:
	push	r0
	sub	r1,1,r1
	bne	_Label_3338
	mov	2600,r13		! source line 2600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_972 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_971 = *_temp_972  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_971  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2601,r13		! source line 2601
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2602,r13		! source line 2602
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_printFCB:
	.word	_sourceFileName
	.word	_Label_973
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_974
	.word	8
	.word	4
	.word	_Label_975
	.word	-12
	.word	4
	.word	_Label_976
	.word	-16
	.word	4
	.word	0
_Label_973:
	.ascii	"printFCB\0"
	.align
_Label_974:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_200_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_printOpen,r1
	push	r1
	mov	4,r1
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
	mov	2605,r13		! source line 2605
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_977 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_977  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2606,r13		! source line 2606
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_978 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_978  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2607,r13		! source line 2607
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_979 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_979  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2608,r13		! source line 2608
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2609,r13		! source line 2609
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
	mov	2609,r13		! source line 2609
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_printOpen:
	.word	_sourceFileName
	.word	_Label_980
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_981
	.word	8
	.word	4
	.word	_Label_982
	.word	-12
	.word	4
	.word	_Label_983
	.word	-16
	.word	4
	.word	_Label_984
	.word	-20
	.word	4
	.word	0
_Label_980:
	.ascii	"printOpen\0"
	.align
_Label_981:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_985
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_985:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_986
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_986:
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
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
	mov	274,r13		! source line 274
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_988		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	276,r13		! source line 276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_989 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
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
_Label_988:
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
	.word	_Label_991
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_992
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_993
	.word	12
	.word	4
	.word	_Label_994
	.word	-12
	.word	4
	.word	_Label_995
	.word	-16
	.word	4
	.word	0
_Label_991:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_992:
	.ascii	"Pself\0"
	.align
_Label_993:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_989\0"
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
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
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
!   if count != 2147483647 then goto _Label_997		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_997
!	jmp	_Label_996
_Label_996:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_998 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_998  sizeInBytes=4
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
_Label_997:
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
!   if count > 0 then goto _Label_1000		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1000
!	jmp	_Label_999
_Label_999:
! THEN...
	mov	294,r13		! source line 294
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
	mov	294,r13		! source line 294
	mov	"\0\0SE",r10
!   _temp_1001 = &waitingThreads
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
!   _temp_1002 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1002 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0SE",r10
!   _temp_1003 = &_P_Kernel_readyList
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
_Label_1000:
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
	.word	_Label_1004
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1005
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1006
	.word	-12
	.word	4
	.word	_Label_1007
	.word	-16
	.word	4
	.word	_Label_1008
	.word	-20
	.word	4
	.word	_Label_1009
	.word	-24
	.word	4
	.word	_Label_1010
	.word	-28
	.word	4
	.word	_Label_1011
	.word	-32
	.word	4
	.word	0
_Label_1004:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1005:
	.ascii	"Pself\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1010:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1011:
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
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
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
!   if count != -2147483648 then goto _Label_1013		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1013
!	jmp	_Label_1012
_Label_1012:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1014 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1014  sizeInBytes=4
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
_Label_1013:
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
!   if count >= 0 then goto _Label_1016		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1016
!	jmp	_Label_1015
_Label_1015:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_1017 = &waitingThreads
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
_Label_1016:
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
	.word	_Label_1018
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1019
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1020
	.word	-12
	.word	4
	.word	_Label_1021
	.word	-16
	.word	4
	.word	_Label_1022
	.word	-20
	.word	4
	.word	0
_Label_1018:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1019:
	.ascii	"Pself\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1022:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1023
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1023:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1024
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1024:
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
_Label_3343:
	push	r0
	sub	r1,1,r1
	bne	_Label_3343
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
	.word	_Label_1026
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1027
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1028
	.word	-12
	.word	4
	.word	0
_Label_1026:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1027:
	.ascii	"Pself\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1025\0"
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
_Label_3344:
	push	r0
	sub	r1,1,r1
	bne	_Label_3344
	mov	344,r13		! source line 344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1030		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1030
!	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	348,r13		! source line 348
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
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
_Label_1030:
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
!   if heldBy == 0 then goto _Label_1035		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1035
!   _temp_1034 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1036
_Label_1035:
!   _temp_1034 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1036:
!   if _temp_1034 then goto _Label_1033 else goto _Label_1032
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1032
	jmp	_Label_1033
_Label_1032:
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
	jmp	_Label_1037
_Label_1033:
! ELSE...
	mov	354,r13		! source line 354
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0SE",r10
!   _temp_1038 = &waitingThreads
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
_Label_1037:
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
	.word	_Label_1039
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1041
	.word	-16
	.word	4
	.word	_Label_1042
	.word	-9
	.word	1
	.word	_Label_1043
	.word	-20
	.word	4
	.word	_Label_1044
	.word	-24
	.word	4
	.word	0
_Label_1039:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1040:
	.ascii	"Pself\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1042:
	.byte	'C'
	.ascii	"_temp_1034\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1044:
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
_Label_3345:
	push	r0
	sub	r1,1,r1
	bne	_Label_3345
	mov	362,r13		! source line 362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1046		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1046
!	jmp	_Label_1045
_Label_1045:
! THEN...
	mov	367,r13		! source line 367
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1047 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
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
_Label_1046:
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
!   _temp_1048 = &waitingThreads
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
!   if t == 0 then goto _Label_1050		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1050
!	jmp	_Label_1049
_Label_1049:
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
!   _temp_1051 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1051 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0SE",r10
!   _temp_1052 = &_P_Kernel_readyList
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
	jmp	_Label_1053
_Label_1050:
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
_Label_1053:
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
	.word	_Label_1054
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1055
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1056
	.word	-12
	.word	4
	.word	_Label_1057
	.word	-16
	.word	4
	.word	_Label_1058
	.word	-20
	.word	4
	.word	_Label_1059
	.word	-24
	.word	4
	.word	_Label_1060
	.word	-28
	.word	4
	.word	_Label_1061
	.word	-32
	.word	4
	.word	0
_Label_1054:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1055:
	.ascii	"Pself\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1060:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1061:
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
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
	mov	383,r13		! source line 383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1064		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1064
!	jmp	_Label_1063
_Label_1063:
!   _temp_1062 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1065
_Label_1064:
!   _temp_1062 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1065:
!   ReturnResult: _temp_1062  (sizeInBytes=1)
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
	.word	_Label_1066
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1068
	.word	-9
	.word	1
	.word	0
_Label_1066:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1067:
	.ascii	"Pself\0"
	.align
_Label_1068:
	.byte	'C'
	.ascii	"_temp_1062\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1069
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1069:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1070
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1070:
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
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
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
	.word	_Label_1072
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1073
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1074
	.word	-12
	.word	4
	.word	0
_Label_1072:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1073:
	.ascii	"Pself\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1071\0"
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
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
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
!   Retrieve Result: targetName=_temp_1077  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1077 then goto _Label_1076 else goto _Label_1075
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1075
	jmp	_Label_1076
_Label_1075:
! THEN...
	mov	434,r13		! source line 434
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1078 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1078  sizeInBytes=4
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
_Label_1076:
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
!   _temp_1079 = &waitingThreads
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
	.word	_Label_1080
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1081
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1082
	.word	12
	.word	4
	.word	_Label_1083
	.word	-16
	.word	4
	.word	_Label_1084
	.word	-20
	.word	4
	.word	_Label_1085
	.word	-9
	.word	1
	.word	_Label_1086
	.word	-24
	.word	4
	.word	0
_Label_1080:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1081:
	.ascii	"Pself\0"
	.align
_Label_1082:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1085:
	.byte	'C'
	.ascii	"_temp_1077\0"
	.align
_Label_1086:
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
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
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
!   Retrieve Result: targetName=_temp_1089  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1089 then goto _Label_1088 else goto _Label_1087
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1087
	jmp	_Label_1088
_Label_1087:
! THEN...
	mov	451,r13		! source line 451
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1090 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
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
_Label_1088:
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
!   _temp_1091 = &waitingThreads
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
!   if t == 0 then goto _Label_1093		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1093
!	jmp	_Label_1092
_Label_1092:
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
!   _temp_1094 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1094 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0SE",r10
!   _temp_1095 = &_P_Kernel_readyList
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
_Label_1093:
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
	.word	_Label_1096
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1097
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1098
	.word	12
	.word	4
	.word	_Label_1099
	.word	-16
	.word	4
	.word	_Label_1100
	.word	-20
	.word	4
	.word	_Label_1101
	.word	-24
	.word	4
	.word	_Label_1102
	.word	-28
	.word	4
	.word	_Label_1103
	.word	-9
	.word	1
	.word	_Label_1104
	.word	-32
	.word	4
	.word	_Label_1105
	.word	-36
	.word	4
	.word	0
_Label_1096:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1097:
	.ascii	"Pself\0"
	.align
_Label_1098:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1103:
	.byte	'C'
	.ascii	"_temp_1089\0"
	.align
_Label_1104:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1105:
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
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
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
!   Retrieve Result: targetName=_temp_1108  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1108 then goto _Label_1107 else goto _Label_1106
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1106
	jmp	_Label_1107
_Label_1106:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1109 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
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
_Label_1107:
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
_Label_1110:
!	jmp	_Label_1111
_Label_1111:
	mov	472,r13		! source line 472
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
	mov	473,r13		! source line 473
	mov	"\0\0SE",r10
!   _temp_1113 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1114
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1114
	jmp	_Label_1115
_Label_1114:
! THEN...
	mov	475,r13		! source line 475
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0BR",r10
	jmp	_Label_1112
! END IF...
_Label_1115:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1116 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1116 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_1117 = &_P_Kernel_readyList
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
	jmp	_Label_1110
_Label_1112:
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
	.word	_Label_1118
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1120
	.word	12
	.word	4
	.word	_Label_1121
	.word	-16
	.word	4
	.word	_Label_1122
	.word	-20
	.word	4
	.word	_Label_1123
	.word	-24
	.word	4
	.word	_Label_1124
	.word	-28
	.word	4
	.word	_Label_1125
	.word	-9
	.word	1
	.word	_Label_1126
	.word	-32
	.word	4
	.word	_Label_1127
	.word	-36
	.word	4
	.word	0
_Label_1118:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1119:
	.ascii	"Pself\0"
	.align
_Label_1120:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1125:
	.byte	'C'
	.ascii	"_temp_1108\0"
	.align
_Label_1126:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1127:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1128
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
_Label_1128:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1129
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1129:
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
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
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
!   _temp_1130 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1130) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1130 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_1131 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1131 [0 ] into _temp_1132
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
!   Data Move: *_temp_1132 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   _temp_1133 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1133 [999 ] into _temp_1134
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
!   Data Move: *_temp_1134 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   _temp_1135 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1135 [999 ] into _temp_1136
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
!   stackTop = _temp_1136		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   _temp_1137 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1139 = &_temp_1138
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1139 = _temp_1139 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1141:
!   Data Move: *_temp_1139 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1139 = _temp_1139 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1140 = _temp_1140 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1140) then goto _Label_1141
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1141
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1142 = &_temp_1138
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3352
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3352:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1137 = *_temp_1142  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3353:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3353
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
!   _temp_1143 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1145 = &_temp_1144
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1145 = _temp_1145 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1147:
!   Data Move: *_temp_1145 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1145 = _temp_1145 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1146 = _temp_1146 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1146) then goto _Label_1147
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1147
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1148 = &_temp_1144
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3354
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3354:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1143 = *_temp_1148  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3355:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3355
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
	.word	_Label_1149
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1150
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1151
	.word	12
	.word	4
	.word	_Label_1152
	.word	-12
	.word	4
	.word	_Label_1153
	.word	-16
	.word	4
	.word	_Label_1154
	.word	-20
	.word	4
	.word	_Label_1155
	.word	-84
	.word	64
	.word	_Label_1156
	.word	-88
	.word	4
	.word	_Label_1157
	.word	-92
	.word	4
	.word	_Label_1158
	.word	-96
	.word	4
	.word	_Label_1159
	.word	-100
	.word	4
	.word	_Label_1160
	.word	-156
	.word	56
	.word	_Label_1161
	.word	-160
	.word	4
	.word	_Label_1162
	.word	-164
	.word	4
	.word	_Label_1163
	.word	-168
	.word	4
	.word	_Label_1164
	.word	-172
	.word	4
	.word	_Label_1165
	.word	-176
	.word	4
	.word	_Label_1166
	.word	-180
	.word	4
	.word	_Label_1167
	.word	-184
	.word	4
	.word	_Label_1168
	.word	-188
	.word	4
	.word	0
_Label_1149:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1150:
	.ascii	"Pself\0"
	.align
_Label_1151:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1130\0"
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
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
!   _temp_1169 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1169  (sizeInBytes=4)
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
!   _temp_1171 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1170  sizeInBytes=4
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
	.word	_Label_1172
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1174
	.word	12
	.word	4
	.word	_Label_1175
	.word	16
	.word	4
	.word	_Label_1176
	.word	-12
	.word	4
	.word	_Label_1177
	.word	-16
	.word	4
	.word	_Label_1178
	.word	-20
	.word	4
	.word	_Label_1179
	.word	-24
	.word	4
	.word	_Label_1180
	.word	-28
	.word	4
	.word	0
_Label_1172:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1173:
	.ascii	"Pself\0"
	.align
_Label_1174:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1175:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1179:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1180:
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	534,r13		! source line 534
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1183 == _P_Kernel_currentThread then goto _Label_1182		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1182
!	jmp	_Label_1181
_Label_1181:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1184 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1184  sizeInBytes=4
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
_Label_1182:
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
!   _temp_1185 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1187		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1187
!	jmp	_Label_1186
_Label_1186:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1189		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1189
!	jmp	_Label_1188
_Label_1188:
! THEN...
	mov	563,r13		! source line 563
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1190 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
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
_Label_1189:
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
!   _temp_1192 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1191  sizeInBytes=4
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
_Label_1187:
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
	.word	_Label_1193
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1194
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1195
	.word	-12
	.word	4
	.word	_Label_1196
	.word	-16
	.word	4
	.word	_Label_1197
	.word	-20
	.word	4
	.word	_Label_1198
	.word	-24
	.word	4
	.word	_Label_1199
	.word	-28
	.word	4
	.word	_Label_1200
	.word	-32
	.word	4
	.word	_Label_1201
	.word	-36
	.word	4
	.word	_Label_1202
	.word	-40
	.word	4
	.word	_Label_1203
	.word	-44
	.word	4
	.word	0
_Label_1193:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1194:
	.ascii	"Pself\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1201:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1202:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1203:
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
	mov	574,r13		! source line 574
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1205		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1205
!	jmp	_Label_1204
_Label_1204:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1206 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
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
_Label_1205:
! IF STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1209 == _P_Kernel_currentThread then goto _Label_1208		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1208
!	jmp	_Label_1207
_Label_1207:
! THEN...
	mov	591,r13		! source line 591
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1210 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1210  sizeInBytes=4
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
_Label_1208:
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
!   _temp_1211 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1212
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1212
	jmp	_Label_1213
_Label_1212:
! THEN...
	mov	599,r13		! source line 599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1214 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
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
_Label_1213:
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
	.word	_Label_1215
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1216
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1217
	.word	-12
	.word	4
	.word	_Label_1218
	.word	-16
	.word	4
	.word	_Label_1219
	.word	-20
	.word	4
	.word	_Label_1220
	.word	-24
	.word	4
	.word	_Label_1221
	.word	-28
	.word	4
	.word	_Label_1222
	.word	-32
	.word	4
	.word	0
_Label_1215:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1216:
	.ascii	"Pself\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1222:
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	606,r13		! source line 606
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0IF",r10
!   _temp_1226 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1226 [0 ] into _temp_1227
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
!   Data Move: _temp_1225 = *_temp_1227  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1225 == 606348324 then goto _Label_1224		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1224
!	jmp	_Label_1223
_Label_1223:
! THEN...
	mov	613,r13		! source line 613
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1228 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
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
	jmp	_Label_1229
_Label_1224:
! ELSE...
	mov	614,r13		! source line 614
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0IF",r10
!   _temp_1233 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1233 [999 ] into _temp_1234
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
!   Data Move: _temp_1232 = *_temp_1234  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1232 == 606348324 then goto _Label_1231		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1231
!	jmp	_Label_1230
_Label_1230:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1235 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1235  sizeInBytes=4
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
_Label_1231:
! END IF...
_Label_1229:
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
	.word	_Label_1236
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1237
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1238
	.word	-12
	.word	4
	.word	_Label_1239
	.word	-16
	.word	4
	.word	_Label_1240
	.word	-20
	.word	4
	.word	_Label_1241
	.word	-24
	.word	4
	.word	_Label_1242
	.word	-28
	.word	4
	.word	_Label_1243
	.word	-32
	.word	4
	.word	_Label_1244
	.word	-36
	.word	4
	.word	_Label_1245
	.word	-40
	.word	4
	.word	0
_Label_1236:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1237:
	.ascii	"Pself\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1225\0"
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
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
!   _temp_1246 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
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
!   _temp_1247 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1249 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1249  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1250 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1250  sizeInBytes=4
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
!   _temp_1255 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1256 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1255  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1251:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1256 then goto _Label_1254		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1254
_Label_1252:
	mov	634,r13		! source line 634
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1257 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1258 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1259 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1261 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1261 [i ] into _temp_1262
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
!   Data Move: _temp_1260 = *_temp_1262  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1263 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1263  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1265 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1265 [i ] into _temp_1266
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
!   Data Move: _temp_1264 = *_temp_1266  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1264  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1267 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1253:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1251
! END FOR
_Label_1254:
! CALL STATEMENT...
!   _temp_1268 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-116]
!   _temp_1269 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1268  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1269  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1270 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-108]
!   _temp_1272 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1272 [0 ] into _temp_1273
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
!   _temp_1271 = _temp_1273		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1270  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1271  sizeInBytes=4
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
	be	_Label_1276
	cmp	r1,2
	be	_Label_1277
	cmp	r1,3
	be	_Label_1278
	cmp	r1,4
	be	_Label_1279
	cmp	r1,5
	be	_Label_1280
	jmp	_Label_1274
! CASE 1...
_Label_1276:
! CALL STATEMENT...
!   _temp_1281 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_1275
! CASE 2...
_Label_1277:
! CALL STATEMENT...
!   _temp_1282 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0BR",r10
	jmp	_Label_1275
! CASE 3...
_Label_1278:
! CALL STATEMENT...
!   _temp_1283 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0BR",r10
	jmp	_Label_1275
! CASE 4...
_Label_1279:
! CALL STATEMENT...
!   _temp_1284 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1284  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0BR",r10
	jmp	_Label_1275
! CASE 5...
_Label_1280:
! CALL STATEMENT...
!   _temp_1285 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1285  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_1275
! DEFAULT CASE...
_Label_1274:
! CALL STATEMENT...
!   _temp_1286 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1286  sizeInBytes=4
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
_Label_1275:
! CALL STATEMENT...
!   _temp_1287 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
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
!   _temp_1288 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
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
!   _temp_1293 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1294 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1293  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1289:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1294 then goto _Label_1292		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1292
_Label_1290:
	mov	668,r13		! source line 668
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1295 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1296 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1297 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1299 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1299 [i ] into _temp_1300
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
!   Data Move: _temp_1298 = *_temp_1300  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1301 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1301  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1303 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1303 [i ] into _temp_1304
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
!   Data Move: _temp_1302 = *_temp_1304  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1305 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1291:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1289
! END FOR
_Label_1292:
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
	.word	_Label_1306
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1307
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1308
	.word	-12
	.word	4
	.word	_Label_1309
	.word	-16
	.word	4
	.word	_Label_1310
	.word	-20
	.word	4
	.word	_Label_1311
	.word	-24
	.word	4
	.word	_Label_1312
	.word	-28
	.word	4
	.word	_Label_1313
	.word	-32
	.word	4
	.word	_Label_1314
	.word	-36
	.word	4
	.word	_Label_1315
	.word	-40
	.word	4
	.word	_Label_1316
	.word	-44
	.word	4
	.word	_Label_1317
	.word	-48
	.word	4
	.word	_Label_1318
	.word	-52
	.word	4
	.word	_Label_1319
	.word	-56
	.word	4
	.word	_Label_1320
	.word	-60
	.word	4
	.word	_Label_1321
	.word	-64
	.word	4
	.word	_Label_1322
	.word	-68
	.word	4
	.word	_Label_1323
	.word	-72
	.word	4
	.word	_Label_1324
	.word	-76
	.word	4
	.word	_Label_1325
	.word	-80
	.word	4
	.word	_Label_1326
	.word	-84
	.word	4
	.word	_Label_1327
	.word	-88
	.word	4
	.word	_Label_1328
	.word	-92
	.word	4
	.word	_Label_1329
	.word	-96
	.word	4
	.word	_Label_1330
	.word	-100
	.word	4
	.word	_Label_1331
	.word	-104
	.word	4
	.word	_Label_1332
	.word	-108
	.word	4
	.word	_Label_1333
	.word	-112
	.word	4
	.word	_Label_1334
	.word	-116
	.word	4
	.word	_Label_1335
	.word	-120
	.word	4
	.word	_Label_1336
	.word	-124
	.word	4
	.word	_Label_1337
	.word	-128
	.word	4
	.word	_Label_1338
	.word	-132
	.word	4
	.word	_Label_1339
	.word	-136
	.word	4
	.word	_Label_1340
	.word	-140
	.word	4
	.word	_Label_1341
	.word	-144
	.word	4
	.word	_Label_1342
	.word	-148
	.word	4
	.word	_Label_1343
	.word	-152
	.word	4
	.word	_Label_1344
	.word	-156
	.word	4
	.word	_Label_1345
	.word	-160
	.word	4
	.word	_Label_1346
	.word	-164
	.word	4
	.word	_Label_1347
	.word	-168
	.word	4
	.word	_Label_1348
	.word	-172
	.word	4
	.word	_Label_1349
	.word	-176
	.word	4
	.word	_Label_1350
	.word	-180
	.word	4
	.word	_Label_1351
	.word	-184
	.word	4
	.word	_Label_1352
	.word	-188
	.word	4
	.word	_Label_1353
	.word	-192
	.word	4
	.word	_Label_1354
	.word	-196
	.word	4
	.word	0
_Label_1306:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1307:
	.ascii	"Pself\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1353:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1354:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1355
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1355:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1356
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1356:
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
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	732,r13		! source line 732
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0AS",r10
!   _temp_1357 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1359 = &_temp_1358
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1359 = _temp_1359 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1361 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3362:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3362
!   _temp_1361 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1363:
!   Data Move: *_temp_1359 = _temp_1361  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3363:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3363
!   _temp_1359 = _temp_1359 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1360 = _temp_1360 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1360) then goto _Label_1363
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1363
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1364 = &_temp_1358
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3364
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3364:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1357 = *_temp_1364  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3365:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3365
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
!   _temp_1368 = &threadManagerLock
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
!   _temp_1369 = &aThreadBecameFree
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
!   _temp_1374 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1375 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1374  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_1370:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1375 then goto _Label_1373		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1373
_Label_1371:
	mov	746,r13		! source line 746
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1376 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-48]
!   _temp_1377 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1377 [i ] into _temp_1378
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
!   Prepare Argument: offset=12  value=_temp_1376  sizeInBytes=4
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
!   _temp_1379 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1379 [i ] into _temp_1380
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
!   _temp_1381 = _temp_1380 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1381 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1383 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1383 [i ] into _temp_1384
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
!   _temp_1382 = _temp_1384		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1385 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1382  sizeInBytes=4
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
_Label_1372:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_1370
! END FOR
_Label_1373:
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
	.word	_Label_1386
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_1387
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1388
	.word	-12
	.word	4
	.word	_Label_1389
	.word	-16
	.word	4
	.word	_Label_1390
	.word	-20
	.word	4
	.word	_Label_1391
	.word	-24
	.word	4
	.word	_Label_1392
	.word	-28
	.word	4
	.word	_Label_1393
	.word	-32
	.word	4
	.word	_Label_1394
	.word	-36
	.word	4
	.word	_Label_1395
	.word	-40
	.word	4
	.word	_Label_1396
	.word	-44
	.word	4
	.word	_Label_1397
	.word	-48
	.word	4
	.word	_Label_1398
	.word	-52
	.word	4
	.word	_Label_1399
	.word	-56
	.word	4
	.word	_Label_1400
	.word	-60
	.word	4
	.word	_Label_1401
	.word	-64
	.word	4
	.word	_Label_1402
	.word	-68
	.word	4
	.word	_Label_1403
	.word	-72
	.word	4
	.word	_Label_1404
	.word	-76
	.word	4
	.word	_Label_1405
	.word	-80
	.word	4
	.word	_Label_1406
	.word	-84
	.word	4
	.word	_Label_1407
	.word	-4248
	.word	4164
	.word	_Label_1408
	.word	-4252
	.word	4
	.word	_Label_1409
	.word	-4256
	.word	4
	.word	_Label_1410
	.word	-45900
	.word	41644
	.word	_Label_1411
	.word	-45904
	.word	4
	.word	_Label_1412
	.word	-45908
	.word	4
	.word	0
_Label_1386:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1387:
	.ascii	"Pself\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1412:
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
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
!   _temp_1413 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
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
!   _temp_1418 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1419 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1418  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1414:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1419 then goto _Label_1417		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1417
_Label_1415:
	mov	764,r13		! source line 764
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1420 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
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
!   _temp_1421 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1421  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1423 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1423 [i ] into _temp_1424
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
!   _temp_1422 = _temp_1424		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1422  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CA",r10
	call	_function_206_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1416:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1414
! END FOR
_Label_1417:
! CALL STATEMENT...
!   _temp_1425 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_1426 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1427 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1426  sizeInBytes=4
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
	.word	_Label_1428
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1429
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1430
	.word	-12
	.word	4
	.word	_Label_1431
	.word	-16
	.word	4
	.word	_Label_1432
	.word	-20
	.word	4
	.word	_Label_1433
	.word	-24
	.word	4
	.word	_Label_1434
	.word	-28
	.word	4
	.word	_Label_1435
	.word	-32
	.word	4
	.word	_Label_1436
	.word	-36
	.word	4
	.word	_Label_1437
	.word	-40
	.word	4
	.word	_Label_1438
	.word	-44
	.word	4
	.word	_Label_1439
	.word	-48
	.word	4
	.word	_Label_1440
	.word	-52
	.word	4
	.word	_Label_1441
	.word	-56
	.word	4
	.word	_Label_1442
	.word	-60
	.word	4
	.word	0
_Label_1428:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1429:
	.ascii	"Pself\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1441:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1442:
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
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
	mov	778,r13		! source line 778
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1443 = &threadManagerLock
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
_Label_1444:
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_1447 = &freeList
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
!   if result==true then goto _Label_1445 else goto _Label_1446
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1446
	jmp	_Label_1445
_Label_1445:
	mov	786,r13		! source line 786
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1448 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1449 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1448  sizeInBytes=4
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
	jmp	_Label_1444
_Label_1446:
! ASSIGNMENT STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0AS",r10
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1450 = &freeList
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
!   _temp_1451 = threadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1451 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1452 = &threadManagerLock
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
	.word	_Label_1453
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1454
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1455
	.word	-12
	.word	4
	.word	_Label_1456
	.word	-16
	.word	4
	.word	_Label_1457
	.word	-20
	.word	4
	.word	_Label_1458
	.word	-24
	.word	4
	.word	_Label_1459
	.word	-28
	.word	4
	.word	_Label_1460
	.word	-32
	.word	4
	.word	_Label_1461
	.word	-36
	.word	4
	.word	_Label_1462
	.word	-40
	.word	4
	.word	0
_Label_1453:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1454:
	.ascii	"Pself\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1462:
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	797,r13		! source line 797
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_1463 = &threadManagerLock
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
!   _temp_1464 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1464 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_1465 = &freeList
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
!   _temp_1466 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1467 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1466  sizeInBytes=4
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
!   _temp_1468 = &threadManagerLock
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
	.word	_Label_1469
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1471
	.word	12
	.word	4
	.word	_Label_1472
	.word	-12
	.word	4
	.word	_Label_1473
	.word	-16
	.word	4
	.word	_Label_1474
	.word	-20
	.word	4
	.word	_Label_1475
	.word	-24
	.word	4
	.word	_Label_1476
	.word	-28
	.word	4
	.word	_Label_1477
	.word	-32
	.word	4
	.word	0
_Label_1469:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1470:
	.ascii	"Pself\0"
	.align
_Label_1471:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1478
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1478:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1479
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1479:
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
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
_Label_3370:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3370
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_1481 = &addrSpace
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
	.word	_Label_1482
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1484
	.word	-12
	.word	4
	.word	_Label_1485
	.word	-16
	.word	4
	.word	0
_Label_1482:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1483:
	.ascii	"Pself\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1480\0"
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
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	833,r13		! source line 833
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1486) then goto _runtimeErrorNullPointer
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
!   _temp_1487 = &addrSpace
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
!   _temp_1488 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
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
	call	_function_206_ThreadPrintShort
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
	.word	_Label_1489
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1491
	.word	-12
	.word	4
	.word	_Label_1492
	.word	-16
	.word	4
	.word	_Label_1493
	.word	-20
	.word	4
	.word	0
_Label_1489:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1490:
	.ascii	"Pself\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1486\0"
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	856,r13		! source line 856
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1494 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1496 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
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
!   _temp_1497 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1499		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1499
!	jmp	_Label_1498
_Label_1498:
! THEN...
	mov	866,r13		! source line 866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1500 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1501
_Label_1499:
! ELSE...
	mov	867,r13		! source line 867
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1503		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1503
!	jmp	_Label_1502
_Label_1502:
! THEN...
	mov	868,r13		! source line 868
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1504 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1505
_Label_1503:
! ELSE...
	mov	869,r13		! source line 869
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1507		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1507
!	jmp	_Label_1506
_Label_1506:
! THEN...
	mov	870,r13		! source line 870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1508 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1509
_Label_1507:
! ELSE...
	mov	872,r13		! source line 872
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
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
_Label_1509:
! END IF...
_Label_1505:
! END IF...
_Label_1501:
! CALL STATEMENT...
!   _temp_1511 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
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
!   _temp_1512 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
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
	.word	_Label_1513
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1515
	.word	-12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-20
	.word	4
	.word	_Label_1518
	.word	-24
	.word	4
	.word	_Label_1519
	.word	-28
	.word	4
	.word	_Label_1520
	.word	-32
	.word	4
	.word	_Label_1521
	.word	-36
	.word	4
	.word	_Label_1522
	.word	-40
	.word	4
	.word	_Label_1523
	.word	-44
	.word	4
	.word	_Label_1524
	.word	-48
	.word	4
	.word	0
_Label_1513:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1514:
	.ascii	"Pself\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1525
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
_Label_1525:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1526
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1526:
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
	mov	368,r1
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	889,r13		! source line 889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1530 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1456]
!   NEW ARRAY Constructor...
!   _temp_1532 = &_temp_1531
	add	r14,-1452,r1
	store	r1,[r14+-208]
!   _temp_1532 = _temp_1532 + 4
	load	[r14+-208],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1534 = zeros  (sizeInBytes=124)
	add	r14,-200,r4
	mov	31,r3
_Label_3374:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3374
!   _temp_1534 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-200]
	mov	10,r1
	store	r1,[r14+-204]
_Label_1536:
!   Data Move: *_temp_1532 = _temp_1534  (sizeInBytes=124)
	add	r14,-200,r5
	load	[r14+-208],r4
	mov	31,r3
_Label_3375:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3375
!   _temp_1532 = _temp_1532 + 124
	load	[r14+-208],r1
	add	r1,124,r1
	store	r1,[r14+-208]
!   _temp_1533 = _temp_1533 + -1
	load	[r14+-204],r1
	add	r1,-1,r1
	store	r1,[r14+-204]
!   if intNotZero (_temp_1533) then goto _Label_1536
	load	[r14+-204],r1
	cmp	r1,r0
	bne	_Label_1536
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1452]
!   _temp_1537 = &_temp_1531
	add	r14,-1452,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3376
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3376:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1530 = *_temp_1537  (sizeInBytes=1244)
	load	[r14+-72],r5
	load	[r14+-1456],r4
	mov	311,r3
_Label_3377:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3377
! ASSIGNMENT STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1539 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
!   _temp_1540 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
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
!   _temp_1541 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
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
!   _temp_1546 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1547 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1546  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1542:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1547 then goto _Label_1545		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1545
_Label_1543:
	mov	903,r13		! source line 903
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_1548 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1548 [i ] into _temp_1549
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
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
!   _temp_1550 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1550 [i ] into _temp_1551
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1552 = _temp_1551 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1552 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1554 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1554 [i ] into _temp_1555
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1553 = _temp_1555		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1556 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1553  sizeInBytes=4
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
_Label_1544:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1542
! END FOR
_Label_1545:
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! RETURN STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1557
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1558
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1559
	.word	-12
	.word	4
	.word	_Label_1560
	.word	-16
	.word	4
	.word	_Label_1561
	.word	-20
	.word	4
	.word	_Label_1562
	.word	-24
	.word	4
	.word	_Label_1563
	.word	-28
	.word	4
	.word	_Label_1564
	.word	-32
	.word	4
	.word	_Label_1565
	.word	-36
	.word	4
	.word	_Label_1566
	.word	-40
	.word	4
	.word	_Label_1567
	.word	-44
	.word	4
	.word	_Label_1568
	.word	-48
	.word	4
	.word	_Label_1569
	.word	-52
	.word	4
	.word	_Label_1570
	.word	-56
	.word	4
	.word	_Label_1571
	.word	-60
	.word	4
	.word	_Label_1572
	.word	-64
	.word	4
	.word	_Label_1573
	.word	-68
	.word	4
	.word	_Label_1574
	.word	-72
	.word	4
	.word	_Label_1575
	.word	-76
	.word	4
	.word	_Label_1576
	.word	-200
	.word	124
	.word	_Label_1577
	.word	-204
	.word	4
	.word	_Label_1578
	.word	-208
	.word	4
	.word	_Label_1579
	.word	-1452
	.word	1244
	.word	_Label_1580
	.word	-1456
	.word	4
	.word	_Label_1581
	.word	-1460
	.word	4
	.word	_Label_1582
	.word	-1464
	.word	4
	.word	_Label_1583
	.word	-1468
	.word	4
	.word	_Label_1584
	.word	-1472
	.word	4
	.word	0
_Label_1557:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1558:
	.ascii	"Pself\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1584:
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
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
!   _temp_1585 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
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
!   _temp_1590 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1591 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1590  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1586:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1591 then goto _Label_1589		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1589
_Label_1587:
	mov	922,r13		! source line 922
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1592 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1592  sizeInBytes=4
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
!   _temp_1593 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1593  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0SE",r10
!   _temp_1594 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1594 [i ] into _temp_1595
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
	set	124,r3
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
_Label_1588:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1586
! END FOR
_Label_1589:
! CALL STATEMENT...
!   _temp_1596 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1596  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1597 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1598 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1597  sizeInBytes=4
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
	.word	_Label_1599
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1600
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1601
	.word	-12
	.word	4
	.word	_Label_1602
	.word	-16
	.word	4
	.word	_Label_1603
	.word	-20
	.word	4
	.word	_Label_1604
	.word	-24
	.word	4
	.word	_Label_1605
	.word	-28
	.word	4
	.word	_Label_1606
	.word	-32
	.word	4
	.word	_Label_1607
	.word	-36
	.word	4
	.word	_Label_1608
	.word	-40
	.word	4
	.word	_Label_1609
	.word	-44
	.word	4
	.word	_Label_1610
	.word	-48
	.word	4
	.word	_Label_1611
	.word	-52
	.word	4
	.word	_Label_1612
	.word	-56
	.word	4
	.word	0
_Label_1599:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1600:
	.ascii	"Pself\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1611:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1612:
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
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
!   _temp_1613 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1613  sizeInBytes=4
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
!   _temp_1618 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1619 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1618  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1614:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1619 then goto _Label_1617		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1617
_Label_1615:
	mov	945,r13		! source line 945
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1620 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1620  sizeInBytes=4
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
!   _temp_1621 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1621 [i ] into _temp_1622
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
	set	124,r3
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
_Label_1616:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1614
! END FOR
_Label_1617:
! CALL STATEMENT...
!   _temp_1623 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1623  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1624 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1625 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1624  sizeInBytes=4
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
	.word	_Label_1626
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1628
	.word	-12
	.word	4
	.word	_Label_1629
	.word	-16
	.word	4
	.word	_Label_1630
	.word	-20
	.word	4
	.word	_Label_1631
	.word	-24
	.word	4
	.word	_Label_1632
	.word	-28
	.word	4
	.word	_Label_1633
	.word	-32
	.word	4
	.word	_Label_1634
	.word	-36
	.word	4
	.word	_Label_1635
	.word	-40
	.word	4
	.word	_Label_1636
	.word	-44
	.word	4
	.word	_Label_1637
	.word	-48
	.word	4
	.word	_Label_1638
	.word	-52
	.word	4
	.word	0
_Label_1626:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1627:
	.ascii	"Pself\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1638:
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	958,r13		! source line 958
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_1639 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
_Label_1640:
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_1643 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1641 else goto _Label_1642
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1642
	jmp	_Label_1641
_Label_1641:
	mov	966,r13		! source line 966
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1644 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1645 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1644  sizeInBytes=4
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
	jmp	_Label_1640
_Label_1642:
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_1646 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
!   _temp_1647 = processPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1647 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1648 = processPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1648 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1649 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	.word	_Label_1650
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1652
	.word	-12
	.word	4
	.word	_Label_1653
	.word	-16
	.word	4
	.word	_Label_1654
	.word	-20
	.word	4
	.word	_Label_1655
	.word	-24
	.word	4
	.word	_Label_1656
	.word	-28
	.word	4
	.word	_Label_1657
	.word	-32
	.word	4
	.word	_Label_1658
	.word	-36
	.word	4
	.word	_Label_1659
	.word	-40
	.word	4
	.word	_Label_1660
	.word	-44
	.word	4
	.word	0
_Label_1650:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1651:
	.ascii	"Pself\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1660:
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	979,r13		! source line 979
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1661 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1661  sizeInBytes=4
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
!   _temp_1662 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
!   _temp_1663 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1663 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_1664 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
!   _temp_1665 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1666 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1665  sizeInBytes=4
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
!   _temp_1667 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	.word	_Label_1668
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1669
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1670
	.word	12
	.word	4
	.word	_Label_1671
	.word	-12
	.word	4
	.word	_Label_1672
	.word	-16
	.word	4
	.word	_Label_1673
	.word	-20
	.word	4
	.word	_Label_1674
	.word	-24
	.word	4
	.word	_Label_1675
	.word	-28
	.word	4
	.word	_Label_1676
	.word	-32
	.word	4
	.word	_Label_1677
	.word	-36
	.word	4
	.word	0
_Label_1668:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1669:
	.ascii	"Pself\0"
	.align
_Label_1670:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1661\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	994,r13		! source line 994
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1678 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
!   _temp_1683 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-176]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1684 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-172]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1683  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+-184]
_Label_1679:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1684 then goto _Label_1682		
	load	[r14+-184],r1
	load	[r14+-172],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1682
_Label_1680:
	mov	1000,r13		! source line 1000
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0IF",r10
!   _temp_1689 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Move address of _temp_1689 [i ] into _temp_1690
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   _temp_1691 = _temp_1690 + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1688 = *_temp_1691  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1693 = PCB + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1692 = *_temp_1693  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if _temp_1688 != _temp_1692 then goto _Label_1686		(int)
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bne	_Label_1686
!	jmp	_Label_1687
_Label_1687:
!   _temp_1695 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Move address of _temp_1695 [i ] into _temp_1696
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1697 = _temp_1696 + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1694 = *_temp_1697  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if _temp_1694 != 2 then goto _Label_1686		(int)
	load	[r14+-144],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1686
!	jmp	_Label_1685
_Label_1685:
! THEN...
	mov	1002,r13		! source line 1002
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0AS",r10
!   _temp_1698 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Move address of _temp_1698 [i ] into _temp_1699
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   _temp_1700 = _temp_1699 + 20
	load	[r14+-124],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_1700 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-120],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_1702 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1702 [i ] into _temp_1703
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_1701 = _temp_1703		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-116]
!   _temp_1704 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1701  sizeInBytes=4
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
!   _temp_1705 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-100]
!   _temp_1706 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1705  sizeInBytes=4
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
_Label_1686:
!   Increment the FOR-LOOP index variable and jump back
_Label_1681:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_1679
! END FOR
_Label_1682:
! FOR STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1711 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1712 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1711  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-184]
_Label_1707:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1712 then goto _Label_1710		
	load	[r14+-184],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1710
_Label_1708:
	mov	1008,r13		! source line 1008
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0IF",r10
!   _temp_1717 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_1717 [i ] into _temp_1718
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   _temp_1719 = _temp_1718 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1716 = *_temp_1719  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1721 = PCB + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1720 = *_temp_1721  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_1716 != _temp_1720 then goto _Label_1714		(int)
	load	[r14+-84],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bne	_Label_1714
!	jmp	_Label_1715
_Label_1715:
!   _temp_1723 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1723 [i ] into _temp_1724
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_1725 = _temp_1724 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1722 = *_temp_1725  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_1722 != 1 then goto _Label_1714		(int)
	load	[r14+-60],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1714
!	jmp	_Label_1713
_Label_1713:
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
!   _temp_1726 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1726 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1727 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   _temp_1728 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1727  sizeInBytes=4
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
!   _temp_1729 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
_Label_1714:
!   Increment the FOR-LOOP index variable and jump back
_Label_1709:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_1707
! END FOR
_Label_1710:
! ASSIGNMENT STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1730 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1730 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0SE",r10
!   _temp_1731 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
!   _temp_1732 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1733 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1732  sizeInBytes=4
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
!   _temp_1734 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	.word	_Label_1735
	.word	8		! total size of parameters
	.word	184		! frame size = 184
	.word	_Label_1736
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1737
	.word	12
	.word	4
	.word	_Label_1738
	.word	-12
	.word	4
	.word	_Label_1739
	.word	-16
	.word	4
	.word	_Label_1740
	.word	-20
	.word	4
	.word	_Label_1741
	.word	-24
	.word	4
	.word	_Label_1742
	.word	-28
	.word	4
	.word	_Label_1743
	.word	-32
	.word	4
	.word	_Label_1744
	.word	-36
	.word	4
	.word	_Label_1745
	.word	-40
	.word	4
	.word	_Label_1746
	.word	-44
	.word	4
	.word	_Label_1747
	.word	-48
	.word	4
	.word	_Label_1748
	.word	-52
	.word	4
	.word	_Label_1749
	.word	-56
	.word	4
	.word	_Label_1750
	.word	-60
	.word	4
	.word	_Label_1751
	.word	-64
	.word	4
	.word	_Label_1752
	.word	-68
	.word	4
	.word	_Label_1753
	.word	-72
	.word	4
	.word	_Label_1754
	.word	-76
	.word	4
	.word	_Label_1755
	.word	-80
	.word	4
	.word	_Label_1756
	.word	-84
	.word	4
	.word	_Label_1757
	.word	-88
	.word	4
	.word	_Label_1758
	.word	-92
	.word	4
	.word	_Label_1759
	.word	-96
	.word	4
	.word	_Label_1760
	.word	-100
	.word	4
	.word	_Label_1761
	.word	-104
	.word	4
	.word	_Label_1762
	.word	-108
	.word	4
	.word	_Label_1763
	.word	-112
	.word	4
	.word	_Label_1764
	.word	-116
	.word	4
	.word	_Label_1765
	.word	-120
	.word	4
	.word	_Label_1766
	.word	-124
	.word	4
	.word	_Label_1767
	.word	-128
	.word	4
	.word	_Label_1768
	.word	-132
	.word	4
	.word	_Label_1769
	.word	-136
	.word	4
	.word	_Label_1770
	.word	-140
	.word	4
	.word	_Label_1771
	.word	-144
	.word	4
	.word	_Label_1772
	.word	-148
	.word	4
	.word	_Label_1773
	.word	-152
	.word	4
	.word	_Label_1774
	.word	-156
	.word	4
	.word	_Label_1775
	.word	-160
	.word	4
	.word	_Label_1776
	.word	-164
	.word	4
	.word	_Label_1777
	.word	-168
	.word	4
	.word	_Label_1778
	.word	-172
	.word	4
	.word	_Label_1779
	.word	-176
	.word	4
	.word	_Label_1780
	.word	-180
	.word	4
	.word	_Label_1781
	.word	-184
	.word	4
	.word	0
_Label_1735:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1736:
	.ascii	"Pself\0"
	.align
_Label_1737:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1781:
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	1028,r13		! source line 1028
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1782 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
_Label_1783:
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1787 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1786 = *_temp_1787  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1786 == 2 then goto _Label_1785		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1785
!	jmp	_Label_1784
_Label_1784:
	mov	1034,r13		! source line 1034
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_1788 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   _temp_1789 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1788  sizeInBytes=4
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
	jmp	_Label_1783
_Label_1785:
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1790 = PCB + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exit_status = *_temp_1790  (sizeInBytes=4)
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
!   _temp_1791 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1791 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1792 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
!   _temp_1793 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1794 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1793  sizeInBytes=4
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
!   _temp_1795 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	.word	_Label_1796
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1798
	.word	12
	.word	4
	.word	_Label_1799
	.word	-12
	.word	4
	.word	_Label_1800
	.word	-16
	.word	4
	.word	_Label_1801
	.word	-20
	.word	4
	.word	_Label_1802
	.word	-24
	.word	4
	.word	_Label_1803
	.word	-28
	.word	4
	.word	_Label_1804
	.word	-32
	.word	4
	.word	_Label_1805
	.word	-36
	.word	4
	.word	_Label_1806
	.word	-40
	.word	4
	.word	_Label_1807
	.word	-44
	.word	4
	.word	_Label_1808
	.word	-48
	.word	4
	.word	_Label_1809
	.word	-52
	.word	4
	.word	_Label_1810
	.word	-56
	.word	4
	.word	0
_Label_1796:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1797:
	.ascii	"Pself\0"
	.align
_Label_1798:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1810:
	.byte	'I'
	.ascii	"exit_status\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1811
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1811:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1812
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1812:
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	1088,r13		! source line 1088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1813 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
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
!   _temp_1815 = &framesInUse
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
!   _temp_1817 = &frameManagerLock
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
!   _temp_1819 = &newFramesAvailable
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
!   _temp_1824 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1825 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1824  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1820:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1825 then goto _Label_1823		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1823
_Label_1821:
	mov	1107,r13		! source line 1107
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1828 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1828) then goto _Label_1827
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1827
!	jmp	_Label_1826
_Label_1826:
! THEN...
	mov	1111,r13		! source line 1111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1829 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1829  sizeInBytes=4
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
_Label_1827:
!   Increment the FOR-LOOP index variable and jump back
_Label_1822:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1820
! END FOR
_Label_1823:
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
	.word	_Label_1830
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1832
	.word	-12
	.word	4
	.word	_Label_1833
	.word	-16
	.word	4
	.word	_Label_1834
	.word	-20
	.word	4
	.word	_Label_1835
	.word	-24
	.word	4
	.word	_Label_1836
	.word	-28
	.word	4
	.word	_Label_1837
	.word	-32
	.word	4
	.word	_Label_1838
	.word	-36
	.word	4
	.word	_Label_1839
	.word	-40
	.word	4
	.word	_Label_1840
	.word	-44
	.word	4
	.word	_Label_1841
	.word	-48
	.word	4
	.word	_Label_1842
	.word	-52
	.word	4
	.word	_Label_1843
	.word	-56
	.word	4
	.word	0
_Label_1830:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1831:
	.ascii	"Pself\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1843:
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1844 = &frameManagerLock
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
!   _temp_1845 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1846 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1846  sizeInBytes=4
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
!   _temp_1847 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1847  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_1848 = &framesInUse
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
!   _temp_1849 = &frameManagerLock
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
	.word	_Label_1850
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1852
	.word	-12
	.word	4
	.word	_Label_1853
	.word	-16
	.word	4
	.word	_Label_1854
	.word	-20
	.word	4
	.word	_Label_1855
	.word	-24
	.word	4
	.word	_Label_1856
	.word	-28
	.word	4
	.word	_Label_1857
	.word	-32
	.word	4
	.word	0
_Label_1850:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1851:
	.ascii	"Pself\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1844\0"
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	1132,r13		! source line 1132
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1858 = &frameManagerLock
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
_Label_1859:
!   if numberFreeFrames >= 1 then goto _Label_1861		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1861
!	jmp	_Label_1860
_Label_1860:
	mov	1143,r13		! source line 1143
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1862 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1863 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1862  sizeInBytes=4
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
	jmp	_Label_1859
_Label_1861:
! ASSIGNMENT STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0AS",r10
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1864 = &framesInUse
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
!   _temp_1865 = &frameManagerLock
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
!   _temp_1866 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1866		(int)
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
	.word	_Label_1867
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1869
	.word	-12
	.word	4
	.word	_Label_1870
	.word	-16
	.word	4
	.word	_Label_1871
	.word	-20
	.word	4
	.word	_Label_1872
	.word	-24
	.word	4
	.word	_Label_1873
	.word	-28
	.word	4
	.word	_Label_1874
	.word	-32
	.word	4
	.word	_Label_1875
	.word	-36
	.word	4
	.word	_Label_1876
	.word	-40
	.word	4
	.word	0
_Label_1867:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1868:
	.ascii	"Pself\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1875:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1876:
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	1162,r13		! source line 1162
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_1877 = &frameManagerLock
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
_Label_1878:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1880		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1880
!	jmp	_Label_1879
_Label_1879:
	mov	1165,r13		! source line 1165
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   _temp_1881 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1882 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1881  sizeInBytes=4
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
	jmp	_Label_1878
_Label_1880:
! FOR STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1887 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1888 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1887  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1883:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1888 then goto _Label_1886		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1886
_Label_1884:
	mov	1168,r13		! source line 1168
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0AS",r10
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_1889 = &framesInUse
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
!   _temp_1890 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1890		(int)
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
_Label_1885:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1883
! END FOR
_Label_1886:
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
!   _temp_1891 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1891 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_1892 = &frameManagerLock
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
	.word	_Label_1893
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1895
	.word	12
	.word	4
	.word	_Label_1896
	.word	16
	.word	4
	.word	_Label_1897
	.word	-12
	.word	4
	.word	_Label_1898
	.word	-16
	.word	4
	.word	_Label_1899
	.word	-20
	.word	4
	.word	_Label_1900
	.word	-24
	.word	4
	.word	_Label_1901
	.word	-28
	.word	4
	.word	_Label_1902
	.word	-32
	.word	4
	.word	_Label_1903
	.word	-36
	.word	4
	.word	_Label_1904
	.word	-40
	.word	4
	.word	_Label_1905
	.word	-44
	.word	4
	.word	_Label_1906
	.word	-48
	.word	4
	.word	_Label_1907
	.word	-52
	.word	4
	.word	_Label_1908
	.word	-56
	.word	4
	.word	0
_Label_1893:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1894:
	.ascii	"Pself\0"
	.align
_Label_1895:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1896:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1906:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1907:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1908:
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	1180,r13		! source line 1180
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0SE",r10
!   _temp_1909 = &frameManagerLock
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
!   _temp_1914 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1917 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1916 = *_temp_1917  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1915 = _temp_1916 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1914  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1910:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1915 then goto _Label_1913		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1913
_Label_1911:
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
!   _temp_1918 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_1918 div 8192		(int)
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
!   _temp_1919 = &framesInUse
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
_Label_1912:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1910
! END FOR
_Label_1913:
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1921 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1920 = *_temp_1921  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1920		(int)
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
!   _temp_1922 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1923 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1922  sizeInBytes=4
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
!   _temp_1924 = &frameManagerLock
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
	.word	_Label_1925
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1927
	.word	12
	.word	4
	.word	_Label_1928
	.word	-12
	.word	4
	.word	_Label_1929
	.word	-16
	.word	4
	.word	_Label_1930
	.word	-20
	.word	4
	.word	_Label_1931
	.word	-24
	.word	4
	.word	_Label_1932
	.word	-28
	.word	4
	.word	_Label_1933
	.word	-32
	.word	4
	.word	_Label_1934
	.word	-36
	.word	4
	.word	_Label_1935
	.word	-40
	.word	4
	.word	_Label_1936
	.word	-44
	.word	4
	.word	_Label_1937
	.word	-48
	.word	4
	.word	_Label_1938
	.word	-52
	.word	4
	.word	_Label_1939
	.word	-56
	.word	4
	.word	_Label_1940
	.word	-60
	.word	4
	.word	_Label_1941
	.word	-64
	.word	4
	.word	_Label_1942
	.word	-68
	.word	4
	.word	0
_Label_1925:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1926:
	.ascii	"Pself\0"
	.align
_Label_1927:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1940:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1941:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_1942:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1943
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
_Label_1943:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1944
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1944:
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
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
!   _temp_1945 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1947 = &_temp_1946
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1947 = _temp_1947 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1949:
!   Data Move: *_temp_1947 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1947 = _temp_1947 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1948 = _temp_1948 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1948) then goto _Label_1949
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1949
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1950 = &_temp_1946
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3390
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3390:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1945 = *_temp_1950  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3391:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3391
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
	.word	_Label_1951
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1952
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1953
	.word	-12
	.word	4
	.word	_Label_1954
	.word	-16
	.word	4
	.word	_Label_1955
	.word	-20
	.word	4
	.word	_Label_1956
	.word	-104
	.word	84
	.word	_Label_1957
	.word	-108
	.word	4
	.word	0
_Label_1951:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1952:
	.ascii	"Pself\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1945\0"
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1958 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1958  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1959 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1959  sizeInBytes=4
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
!   _temp_1964 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1965 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1964  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1960:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1965 then goto _Label_1963		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1963
_Label_1961:
	mov	1220,r13		! source line 1220
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1966 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1968 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1968 [i ] into _temp_1969
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
!   _temp_1967 = _temp_1969		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1967  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1970 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1972 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1972 [i ] into _temp_1973
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
!   Data Move: _temp_1971 = *_temp_1973  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1971  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1974 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1975 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1975  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1976 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1976  sizeInBytes=4
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
!   if intIsZero (_temp_1978) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1977  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1977  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1979 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1979  sizeInBytes=4
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
!   if intIsZero (_temp_1983) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1982  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1982) then goto _Label_1981
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1981
!	jmp	_Label_1980
_Label_1980:
! THEN...
	mov	1231,r13		! source line 1231
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1985) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1984  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1984  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1986
_Label_1981:
! ELSE...
	mov	1233,r13		! source line 1233
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1987 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1987  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1986:
! CALL STATEMENT...
!   _temp_1988 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1988  sizeInBytes=4
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
!   if intIsZero (_temp_1991) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1989 else goto _Label_1990
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1990
	jmp	_Label_1989
_Label_1989:
! THEN...
	mov	1237,r13		! source line 1237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1992 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1992  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1993
_Label_1990:
! ELSE...
	mov	1239,r13		! source line 1239
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1994 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1994  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1993:
! CALL STATEMENT...
!   _temp_1995 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
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
!   if intIsZero (_temp_1998) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1996 else goto _Label_1997
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1997
	jmp	_Label_1996
_Label_1996:
! THEN...
	mov	1243,r13		! source line 1243
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1999 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1999  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2000
_Label_1997:
! ELSE...
	mov	1245,r13		! source line 1245
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2001 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2001  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2000:
! CALL STATEMENT...
!   _temp_2002 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2002  sizeInBytes=4
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
!   if intIsZero (_temp_2005) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2003 else goto _Label_2004
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2004
	jmp	_Label_2003
_Label_2003:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2006 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2007
_Label_2004:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2008 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2008  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2007:
! CALL STATEMENT...
!   _temp_2009 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
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
!   if intIsZero (_temp_2012) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2010 else goto _Label_2011
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2011
	jmp	_Label_2010
_Label_2010:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2013 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2014
_Label_2011:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2015 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2014:
! CALL STATEMENT...
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1962:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1960
! END FOR
_Label_1963:
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
	.word	_Label_2016
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2018
	.word	-12
	.word	4
	.word	_Label_2019
	.word	-16
	.word	4
	.word	_Label_2020
	.word	-20
	.word	4
	.word	_Label_2021
	.word	-24
	.word	4
	.word	_Label_2022
	.word	-28
	.word	4
	.word	_Label_2023
	.word	-32
	.word	4
	.word	_Label_2024
	.word	-36
	.word	4
	.word	_Label_2025
	.word	-40
	.word	4
	.word	_Label_2026
	.word	-44
	.word	4
	.word	_Label_2027
	.word	-48
	.word	4
	.word	_Label_2028
	.word	-52
	.word	4
	.word	_Label_2029
	.word	-56
	.word	4
	.word	_Label_2030
	.word	-60
	.word	4
	.word	_Label_2031
	.word	-64
	.word	4
	.word	_Label_2032
	.word	-68
	.word	4
	.word	_Label_2033
	.word	-72
	.word	4
	.word	_Label_2034
	.word	-76
	.word	4
	.word	_Label_2035
	.word	-80
	.word	4
	.word	_Label_2036
	.word	-84
	.word	4
	.word	_Label_2037
	.word	-88
	.word	4
	.word	_Label_2038
	.word	-92
	.word	4
	.word	_Label_2039
	.word	-96
	.word	4
	.word	_Label_2040
	.word	-100
	.word	4
	.word	_Label_2041
	.word	-104
	.word	4
	.word	_Label_2042
	.word	-108
	.word	4
	.word	_Label_2043
	.word	-112
	.word	4
	.word	_Label_2044
	.word	-116
	.word	4
	.word	_Label_2045
	.word	-120
	.word	4
	.word	_Label_2046
	.word	-124
	.word	4
	.word	_Label_2047
	.word	-128
	.word	4
	.word	_Label_2048
	.word	-132
	.word	4
	.word	_Label_2049
	.word	-136
	.word	4
	.word	_Label_2050
	.word	-140
	.word	4
	.word	_Label_2051
	.word	-144
	.word	4
	.word	_Label_2052
	.word	-148
	.word	4
	.word	_Label_2053
	.word	-152
	.word	4
	.word	_Label_2054
	.word	-156
	.word	4
	.word	_Label_2055
	.word	-160
	.word	4
	.word	_Label_2056
	.word	-164
	.word	4
	.word	_Label_2057
	.word	-168
	.word	4
	.word	0
_Label_2016:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2017:
	.ascii	"Pself\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_2057:
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0RE",r10
!   _temp_2060 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2060 [entry ] into _temp_2061
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
!   Data Move: _temp_2059 = *_temp_2061  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2058 = _temp_2059 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2058  (sizeInBytes=4)
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
	.word	_Label_2062
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2064
	.word	12
	.word	4
	.word	_Label_2065
	.word	-12
	.word	4
	.word	_Label_2066
	.word	-16
	.word	4
	.word	_Label_2067
	.word	-20
	.word	4
	.word	_Label_2068
	.word	-24
	.word	4
	.word	0
_Label_2062:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2063:
	.ascii	"Pself\0"
	.align
_Label_2064:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2058\0"
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1275,r13		! source line 1275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0RE",r10
!   _temp_2071 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2071 [entry ] into _temp_2072
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
!   Data Move: _temp_2070 = *_temp_2072  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2069 = _temp_2070 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2069  (sizeInBytes=4)
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
	.word	_Label_2073
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2075
	.word	12
	.word	4
	.word	_Label_2076
	.word	-12
	.word	4
	.word	_Label_2077
	.word	-16
	.word	4
	.word	_Label_2078
	.word	-20
	.word	4
	.word	_Label_2079
	.word	-24
	.word	4
	.word	0
_Label_2073:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2074:
	.ascii	"Pself\0"
	.align
_Label_2075:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2069\0"
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1284,r13		! source line 1284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_2080 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2080 [entry ] into _temp_2081
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
!   _temp_2085 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2085 [entry ] into _temp_2086
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
!   Data Move: _temp_2084 = *_temp_2086  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2083 = _temp_2084 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2082 = _temp_2083 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2081 = _temp_2082  (sizeInBytes=4)
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
	.word	_Label_2087
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2088
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2089
	.word	12
	.word	4
	.word	_Label_2090
	.word	16
	.word	4
	.word	_Label_2091
	.word	-12
	.word	4
	.word	_Label_2092
	.word	-16
	.word	4
	.word	_Label_2093
	.word	-20
	.word	4
	.word	_Label_2094
	.word	-24
	.word	4
	.word	_Label_2095
	.word	-28
	.word	4
	.word	_Label_2096
	.word	-32
	.word	4
	.word	_Label_2097
	.word	-36
	.word	4
	.word	0
_Label_2087:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2088:
	.ascii	"Pself\0"
	.align
_Label_2089:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2090:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2080\0"
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0RE",r10
!   _temp_2101 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2101 [entry ] into _temp_2102
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
!   Data Move: _temp_2100 = *_temp_2102  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2099 = _temp_2100 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2099) then goto _Label_2103
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2103
!   _temp_2098 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2104
_Label_2103:
!   _temp_2098 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2104:
!   ReturnResult: _temp_2098  (sizeInBytes=1)
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
	.word	_Label_2105
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2107
	.word	12
	.word	4
	.word	_Label_2108
	.word	-16
	.word	4
	.word	_Label_2109
	.word	-20
	.word	4
	.word	_Label_2110
	.word	-24
	.word	4
	.word	_Label_2111
	.word	-28
	.word	4
	.word	_Label_2112
	.word	-9
	.word	1
	.word	0
_Label_2105:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2106:
	.ascii	"Pself\0"
	.align
_Label_2107:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2112:
	.byte	'C'
	.ascii	"_temp_2098\0"
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0RE",r10
!   _temp_2116 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2116 [entry ] into _temp_2117
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
!   Data Move: _temp_2115 = *_temp_2117  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2114 = _temp_2115 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2114) then goto _Label_2118
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2118
!   _temp_2113 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2119
_Label_2118:
!   _temp_2113 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2119:
!   ReturnResult: _temp_2113  (sizeInBytes=1)
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
	.word	_Label_2120
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2122
	.word	12
	.word	4
	.word	_Label_2123
	.word	-16
	.word	4
	.word	_Label_2124
	.word	-20
	.word	4
	.word	_Label_2125
	.word	-24
	.word	4
	.word	_Label_2126
	.word	-28
	.word	4
	.word	_Label_2127
	.word	-9
	.word	1
	.word	0
_Label_2120:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2121:
	.ascii	"Pself\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2127:
	.byte	'C'
	.ascii	"_temp_2113\0"
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
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_2131 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2131 [entry ] into _temp_2132
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
!   Data Move: _temp_2130 = *_temp_2132  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2129 = _temp_2130 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2129) then goto _Label_2133
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2133
!   _temp_2128 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2134
_Label_2133:
!   _temp_2128 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2134:
!   ReturnResult: _temp_2128  (sizeInBytes=1)
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
	.word	_Label_2135
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2137
	.word	12
	.word	4
	.word	_Label_2138
	.word	-16
	.word	4
	.word	_Label_2139
	.word	-20
	.word	4
	.word	_Label_2140
	.word	-24
	.word	4
	.word	_Label_2141
	.word	-28
	.word	4
	.word	_Label_2142
	.word	-9
	.word	1
	.word	0
_Label_2135:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2136:
	.ascii	"Pself\0"
	.align
_Label_2137:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2142:
	.byte	'C'
	.ascii	"_temp_2128\0"
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_2146 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2146 [entry ] into _temp_2147
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
!   Data Move: _temp_2145 = *_temp_2147  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2144 = _temp_2145 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2144) then goto _Label_2148
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2148
!   _temp_2143 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2149
_Label_2148:
!   _temp_2143 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2149:
!   ReturnResult: _temp_2143  (sizeInBytes=1)
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
	.word	_Label_2150
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	12
	.word	4
	.word	_Label_2153
	.word	-16
	.word	4
	.word	_Label_2154
	.word	-20
	.word	4
	.word	_Label_2155
	.word	-24
	.word	4
	.word	_Label_2156
	.word	-28
	.word	4
	.word	_Label_2157
	.word	-9
	.word	1
	.word	0
_Label_2150:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2157:
	.byte	'C'
	.ascii	"_temp_2143\0"
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_2158 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2158 [entry ] into _temp_2159
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
!   _temp_2162 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2162 [entry ] into _temp_2163
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
!   Data Move: _temp_2161 = *_temp_2163  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2160 = _temp_2161 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2159 = _temp_2160  (sizeInBytes=4)
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
	.word	_Label_2164
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2166
	.word	12
	.word	4
	.word	_Label_2167
	.word	-12
	.word	4
	.word	_Label_2168
	.word	-16
	.word	4
	.word	_Label_2169
	.word	-20
	.word	4
	.word	_Label_2170
	.word	-24
	.word	4
	.word	_Label_2171
	.word	-28
	.word	4
	.word	_Label_2172
	.word	-32
	.word	4
	.word	0
_Label_2164:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2165:
	.ascii	"Pself\0"
	.align
_Label_2166:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2158\0"
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
!   _temp_2173 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2173 [entry ] into _temp_2174
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
!   _temp_2177 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2177 [entry ] into _temp_2178
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
!   Data Move: _temp_2176 = *_temp_2178  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2175 = _temp_2176 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2174 = _temp_2175  (sizeInBytes=4)
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
	.word	_Label_2179
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2180
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2181
	.word	12
	.word	4
	.word	_Label_2182
	.word	-12
	.word	4
	.word	_Label_2183
	.word	-16
	.word	4
	.word	_Label_2184
	.word	-20
	.word	4
	.word	_Label_2185
	.word	-24
	.word	4
	.word	_Label_2186
	.word	-28
	.word	4
	.word	_Label_2187
	.word	-32
	.word	4
	.word	0
_Label_2179:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2180:
	.ascii	"Pself\0"
	.align
_Label_2181:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2173\0"
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_2188 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2188 [entry ] into _temp_2189
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
!   _temp_2192 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2192 [entry ] into _temp_2193
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
!   Data Move: _temp_2191 = *_temp_2193  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2190 = _temp_2191 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2189 = _temp_2190  (sizeInBytes=4)
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
	.word	_Label_2194
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2196
	.word	12
	.word	4
	.word	_Label_2197
	.word	-12
	.word	4
	.word	_Label_2198
	.word	-16
	.word	4
	.word	_Label_2199
	.word	-20
	.word	4
	.word	_Label_2200
	.word	-24
	.word	4
	.word	_Label_2201
	.word	-28
	.word	4
	.word	_Label_2202
	.word	-32
	.word	4
	.word	0
_Label_2194:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2195:
	.ascii	"Pself\0"
	.align
_Label_2196:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2188\0"
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_2203 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2203 [entry ] into _temp_2204
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
!   _temp_2207 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2207 [entry ] into _temp_2208
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
!   Data Move: _temp_2206 = *_temp_2208  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2205 = _temp_2206 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2204 = _temp_2205  (sizeInBytes=4)
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
	.word	_Label_2209
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2211
	.word	12
	.word	4
	.word	_Label_2212
	.word	-12
	.word	4
	.word	_Label_2213
	.word	-16
	.word	4
	.word	_Label_2214
	.word	-20
	.word	4
	.word	_Label_2215
	.word	-24
	.word	4
	.word	_Label_2216
	.word	-28
	.word	4
	.word	_Label_2217
	.word	-32
	.word	4
	.word	0
_Label_2209:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2210:
	.ascii	"Pself\0"
	.align
_Label_2211:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2203\0"
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_2218 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2218 [entry ] into _temp_2219
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
!   _temp_2222 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2222 [entry ] into _temp_2223
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
!   Data Move: _temp_2221 = *_temp_2223  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2220 = _temp_2221 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2219 = _temp_2220  (sizeInBytes=4)
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
	.word	_Label_2224
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2226
	.word	12
	.word	4
	.word	_Label_2227
	.word	-12
	.word	4
	.word	_Label_2228
	.word	-16
	.word	4
	.word	_Label_2229
	.word	-20
	.word	4
	.word	_Label_2230
	.word	-24
	.word	4
	.word	_Label_2231
	.word	-28
	.word	4
	.word	_Label_2232
	.word	-32
	.word	4
	.word	0
_Label_2224:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2225:
	.ascii	"Pself\0"
	.align
_Label_2226:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2218\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_2233 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2233 [entry ] into _temp_2234
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
!   _temp_2237 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2237 [entry ] into _temp_2238
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
!   Data Move: _temp_2236 = *_temp_2238  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2235 = _temp_2236 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2234 = _temp_2235  (sizeInBytes=4)
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
	.word	_Label_2239
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2240
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2241
	.word	12
	.word	4
	.word	_Label_2242
	.word	-12
	.word	4
	.word	_Label_2243
	.word	-16
	.word	4
	.word	_Label_2244
	.word	-20
	.word	4
	.word	_Label_2245
	.word	-24
	.word	4
	.word	_Label_2246
	.word	-28
	.word	4
	.word	_Label_2247
	.word	-32
	.word	4
	.word	0
_Label_2239:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2240:
	.ascii	"Pself\0"
	.align
_Label_2241:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2233\0"
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_2248 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2248 [entry ] into _temp_2249
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
!   _temp_2252 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2252 [entry ] into _temp_2253
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
!   Data Move: _temp_2251 = *_temp_2253  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2250 = _temp_2251 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2249 = _temp_2250  (sizeInBytes=4)
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
	.word	_Label_2254
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2255
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2256
	.word	12
	.word	4
	.word	_Label_2257
	.word	-12
	.word	4
	.word	_Label_2258
	.word	-16
	.word	4
	.word	_Label_2259
	.word	-20
	.word	4
	.word	_Label_2260
	.word	-24
	.word	4
	.word	_Label_2261
	.word	-28
	.word	4
	.word	_Label_2262
	.word	-32
	.word	4
	.word	0
_Label_2254:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2255:
	.ascii	"Pself\0"
	.align
_Label_2256:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2248\0"
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_2263 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2263 [entry ] into _temp_2264
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
!   _temp_2267 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2267 [entry ] into _temp_2268
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
!   Data Move: _temp_2266 = *_temp_2268  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2265 = _temp_2266 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2264 = _temp_2265  (sizeInBytes=4)
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
	.word	_Label_2269
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2271
	.word	12
	.word	4
	.word	_Label_2272
	.word	-12
	.word	4
	.word	_Label_2273
	.word	-16
	.word	4
	.word	_Label_2274
	.word	-20
	.word	4
	.word	_Label_2275
	.word	-24
	.word	4
	.word	_Label_2276
	.word	-28
	.word	4
	.word	_Label_2277
	.word	-32
	.word	4
	.word	0
_Label_2269:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2270:
	.ascii	"Pself\0"
	.align
_Label_2271:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2263\0"
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2279 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2279 [0 ] into _temp_2280
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
!   _temp_2278 = _temp_2280		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2281 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2278  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2281  sizeInBytes=4
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
	.word	_Label_2282
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2283
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2284
	.word	-12
	.word	4
	.word	_Label_2285
	.word	-16
	.word	4
	.word	_Label_2286
	.word	-20
	.word	4
	.word	_Label_2287
	.word	-24
	.word	4
	.word	0
_Label_2282:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2283:
	.ascii	"Pself\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2278\0"
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	1413,r13		! source line 1413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2288
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2288
	jmp	_Label_2289
_Label_2288:
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
	jmp	_Label_2290
_Label_2289:
! ELSE...
	mov	1430,r13		! source line 1430
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2292		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2292
!	jmp	_Label_2291
_Label_2291:
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
_Label_2292:
! END IF...
_Label_2290:
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
_Label_2293:
!	jmp	_Label_2294
_Label_2294:
	mov	1437,r13		! source line 1437
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2297		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2297
!	jmp	_Label_2296
_Label_2296:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2298 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2298  sizeInBytes=4
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
_Label_2297:
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2302) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2301  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2301 then goto _Label_2300 else goto _Label_2299
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2299
	jmp	_Label_2300
_Label_2299:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2303 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2303  sizeInBytes=4
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
_Label_2300:
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
	mov	1446,r13		! source line 1446
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2305) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2304  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2304 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0WH",r10
_Label_2306:
!   if offset >= 8192 then goto _Label_2308		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2308
!	jmp	_Label_2307
_Label_2307:
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
!   Data Move: _temp_2309 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2309  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2311		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2311
!	jmp	_Label_2310
_Label_2310:
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
_Label_2311:
! END WHILE...
	jmp	_Label_2306
_Label_2308:
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
	jmp	_Label_2293
_Label_2295:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2312
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2314
	.word	12
	.word	4
	.word	_Label_2315
	.word	16
	.word	4
	.word	_Label_2316
	.word	20
	.word	4
	.word	_Label_2317
	.word	-9
	.word	1
	.word	_Label_2318
	.word	-16
	.word	4
	.word	_Label_2319
	.word	-20
	.word	4
	.word	_Label_2320
	.word	-24
	.word	4
	.word	_Label_2321
	.word	-28
	.word	4
	.word	_Label_2322
	.word	-10
	.word	1
	.word	_Label_2323
	.word	-32
	.word	4
	.word	_Label_2324
	.word	-36
	.word	4
	.word	_Label_2325
	.word	-40
	.word	4
	.word	_Label_2326
	.word	-44
	.word	4
	.word	_Label_2327
	.word	-48
	.word	4
	.word	0
_Label_2312:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2313:
	.ascii	"Pself\0"
	.align
_Label_2314:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2315:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2316:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2317:
	.byte	'C'
	.ascii	"_temp_2309\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2322:
	.byte	'C'
	.ascii	"_temp_2301\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2324:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2325:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2326:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2327:
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	1467,r13		! source line 1467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2328
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2328
	jmp	_Label_2329
_Label_2328:
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
	jmp	_Label_2330
_Label_2329:
! ELSE...
	mov	1480,r13		! source line 1480
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2332		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2332
!	jmp	_Label_2331
_Label_2331:
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
_Label_2332:
! END IF...
_Label_2330:
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
_Label_2333:
!	jmp	_Label_2334
_Label_2334:
	mov	1485,r13		! source line 1485
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2339		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2339
	jmp	_Label_2336
_Label_2339:
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2341) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2340  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2340 then goto _Label_2338 else goto _Label_2336
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2336
	jmp	_Label_2338
_Label_2338:
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2343) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2342  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2342 then goto _Label_2337 else goto _Label_2336
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2336
	jmp	_Label_2337
_Label_2336:
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
_Label_2337:
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2345) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2344  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2344 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0WH",r10
_Label_2346:
!   if offset >= 8192 then goto _Label_2348		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2348
!	jmp	_Label_2347
_Label_2347:
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
!   Data Move: _temp_2349 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2349  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2351		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2351
!	jmp	_Label_2350
_Label_2350:
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
_Label_2351:
! END WHILE...
	jmp	_Label_2346
_Label_2348:
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
	jmp	_Label_2333
_Label_2335:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2352
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2353
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2354
	.word	12
	.word	4
	.word	_Label_2355
	.word	16
	.word	4
	.word	_Label_2356
	.word	20
	.word	4
	.word	_Label_2357
	.word	-9
	.word	1
	.word	_Label_2358
	.word	-16
	.word	4
	.word	_Label_2359
	.word	-20
	.word	4
	.word	_Label_2360
	.word	-24
	.word	4
	.word	_Label_2361
	.word	-10
	.word	1
	.word	_Label_2362
	.word	-28
	.word	4
	.word	_Label_2363
	.word	-11
	.word	1
	.word	_Label_2364
	.word	-32
	.word	4
	.word	_Label_2365
	.word	-36
	.word	4
	.word	_Label_2366
	.word	-40
	.word	4
	.word	_Label_2367
	.word	-44
	.word	4
	.word	0
_Label_2352:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2353:
	.ascii	"Pself\0"
	.align
_Label_2354:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2355:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2356:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2357:
	.byte	'C'
	.ascii	"_temp_2349\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2361:
	.byte	'C'
	.ascii	"_temp_2342\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2363:
	.byte	'C'
	.ascii	"_temp_2340\0"
	.align
_Label_2364:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2365:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2366:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2367:
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0IF",r10
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
!   _temp_2371 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2372) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2371  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2370  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2370 >= 4 then goto _Label_2369		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2369
!	jmp	_Label_2368
_Label_2368:
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
_Label_2369:
! IF STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2374		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2374
!	jmp	_Label_2373
_Label_2373:
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
_Label_2374:
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
!   _temp_2377 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2376 = _temp_2377 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2378 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2379) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2376  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2378  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2375  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2375  (sizeInBytes=4)
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
	.word	_Label_2380
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2381
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2382
	.word	12
	.word	4
	.word	_Label_2383
	.word	16
	.word	4
	.word	_Label_2384
	.word	20
	.word	4
	.word	_Label_2385
	.word	-12
	.word	4
	.word	_Label_2386
	.word	-16
	.word	4
	.word	_Label_2387
	.word	-20
	.word	4
	.word	_Label_2388
	.word	-24
	.word	4
	.word	_Label_2389
	.word	-28
	.word	4
	.word	_Label_2390
	.word	-32
	.word	4
	.word	_Label_2391
	.word	-36
	.word	4
	.word	_Label_2392
	.word	-40
	.word	4
	.word	_Label_2393
	.word	-44
	.word	4
	.word	0
_Label_2380:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2381:
	.ascii	"Pself\0"
	.align
_Label_2382:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2383:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2384:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2393:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2394
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2394:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2395
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2395:
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	2026,r13		! source line 2026
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2396 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2396  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
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
	mov	2035,r13		! source line 2035
	mov	"\0\0SE",r10
!   _temp_2398 = &semUsedInSynchMethods
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
	mov	2036,r13		! source line 2036
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
	mov	2037,r13		! source line 2037
	mov	"\0\0SE",r10
!   _temp_2400 = &diskBusy
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
	mov	2037,r13		! source line 2037
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
	.word	_Label_2401
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2403
	.word	-12
	.word	4
	.word	_Label_2404
	.word	-16
	.word	4
	.word	_Label_2405
	.word	-20
	.word	4
	.word	_Label_2406
	.word	-24
	.word	4
	.word	_Label_2407
	.word	-28
	.word	4
	.word	0
_Label_2401:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2402:
	.ascii	"Pself\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2400\0"
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
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	2042,r13		! source line 2042
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0SE",r10
!   _temp_2408 = &diskBusy
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
	mov	2056,r13		! source line 2056
	mov	"\0\0WH",r10
_Label_2409:
!	jmp	_Label_2410
_Label_2410:
	mov	2056,r13		! source line 2056
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   _temp_2412 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2413) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2412  sizeInBytes=4
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
	mov	2060,r13		! source line 2060
	mov	"\0\0SE",r10
!   _temp_2414 = &semUsedInSynchMethods
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
	mov	2063,r13		! source line 2063
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2423 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2417
	cmp	r1,2
	be	_Label_2418
	cmp	r1,3
	be	_Label_2419
	cmp	r1,4
	be	_Label_2420
	cmp	r1,5
	be	_Label_2421
	cmp	r1,6
	be	_Label_2422
	jmp	_Label_2415
! CASE 1...
_Label_2417:
! SEND STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0SE",r10
!   _temp_2424 = &diskBusy
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
	mov	2066,r13		! source line 2066
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2418:
! CALL STATEMENT...
!   _temp_2425 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2425  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2068,r13		! source line 2068
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2419:
! CALL STATEMENT...
!   _temp_2426 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2426  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2070,r13		! source line 2070
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2420:
! CALL STATEMENT...
!   _temp_2427 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2427  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2072,r13		! source line 2072
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2421:
! BREAK STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0BR",r10
	jmp	_Label_2416
! CASE 6...
_Label_2422:
! CALL STATEMENT...
!   _temp_2428 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2428  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2078,r13		! source line 2078
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2415:
! CALL STATEMENT...
!   _temp_2429 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2080,r13		! source line 2080
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2416:
! END WHILE...
	jmp	_Label_2409
_Label_2411:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2430
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2431
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2432
	.word	12
	.word	4
	.word	_Label_2433
	.word	16
	.word	4
	.word	_Label_2434
	.word	20
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
	.word	0
_Label_2430:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2431:
	.ascii	"Pself\0"
	.align
_Label_2432:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2433:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2434:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2408\0"
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
	mov	2089,r13		! source line 2089
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
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
	mov	2108,r13		! source line 2108
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
	mov	2109,r13		! source line 2109
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
	mov	2110,r13		! source line 2110
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
	mov	2110,r13		! source line 2110
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
	.word	_Label_2446
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2448
	.word	12
	.word	4
	.word	_Label_2449
	.word	16
	.word	4
	.word	_Label_2450
	.word	20
	.word	4
	.word	_Label_2451
	.word	24
	.word	4
	.word	0
_Label_2446:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2447:
	.ascii	"Pself\0"
	.align
_Label_2448:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2449:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2450:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2451:
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	2115,r13		! source line 2115
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_2452 = &diskBusy
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
	mov	2128,r13		! source line 2128
	mov	"\0\0WH",r10
_Label_2453:
!	jmp	_Label_2454
_Label_2454:
	mov	2128,r13		! source line 2128
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0SE",r10
!   _temp_2456 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2457) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2456  sizeInBytes=4
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
	mov	2131,r13		! source line 2131
	mov	"\0\0SE",r10
!   _temp_2458 = &semUsedInSynchMethods
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
	mov	2134,r13		! source line 2134
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2467 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2461
	cmp	r1,2
	be	_Label_2462
	cmp	r1,3
	be	_Label_2463
	cmp	r1,4
	be	_Label_2464
	cmp	r1,5
	be	_Label_2465
	cmp	r1,6
	be	_Label_2466
	jmp	_Label_2459
! CASE 1...
_Label_2461:
! SEND STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0SE",r10
!   _temp_2468 = &diskBusy
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
	mov	2137,r13		! source line 2137
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2462:
! CALL STATEMENT...
!   _temp_2469 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2469  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2139,r13		! source line 2139
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2463:
! CALL STATEMENT...
!   _temp_2470 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2470  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2141,r13		! source line 2141
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2464:
! CALL STATEMENT...
!   _temp_2471 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2471  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2143,r13		! source line 2143
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2465:
! BREAK STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0BR",r10
	jmp	_Label_2460
! CASE 6...
_Label_2466:
! CALL STATEMENT...
!   _temp_2472 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2472  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2149,r13		! source line 2149
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2459:
! CALL STATEMENT...
!   _temp_2473 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2473  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2151,r13		! source line 2151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2460:
! END WHILE...
	jmp	_Label_2453
_Label_2455:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2474
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2476
	.word	12
	.word	4
	.word	_Label_2477
	.word	16
	.word	4
	.word	_Label_2478
	.word	20
	.word	4
	.word	_Label_2479
	.word	-12
	.word	4
	.word	_Label_2480
	.word	-16
	.word	4
	.word	_Label_2481
	.word	-20
	.word	4
	.word	_Label_2482
	.word	-24
	.word	4
	.word	_Label_2483
	.word	-28
	.word	4
	.word	_Label_2484
	.word	-32
	.word	4
	.word	_Label_2485
	.word	-36
	.word	4
	.word	_Label_2486
	.word	-40
	.word	4
	.word	_Label_2487
	.word	-44
	.word	4
	.word	_Label_2488
	.word	-48
	.word	4
	.word	_Label_2489
	.word	-52
	.word	4
	.word	0
_Label_2474:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2475:
	.ascii	"Pself\0"
	.align
_Label_2476:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2477:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2478:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2452\0"
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
	mov	2160,r13		! source line 2160
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
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
	mov	2178,r13		! source line 2178
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
	mov	2179,r13		! source line 2179
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
	mov	2180,r13		! source line 2180
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
	mov	2180,r13		! source line 2180
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
	.word	_Label_2490
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2491
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2492
	.word	12
	.word	4
	.word	_Label_2493
	.word	16
	.word	4
	.word	_Label_2494
	.word	20
	.word	4
	.word	_Label_2495
	.word	24
	.word	4
	.word	0
_Label_2490:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2491:
	.ascii	"Pself\0"
	.align
_Label_2492:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2493:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2494:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2495:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2496
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
_Label_2496:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2497
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2497:
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	2191,r13		! source line 2191
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2498 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2498  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2198,r13		! source line 2198
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
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
	mov	2200,r13		! source line 2200
	mov	"\0\0SE",r10
!   _temp_2500 = &fileManagerLock
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
	mov	2203,r13		! source line 2203
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
	mov	2204,r13		! source line 2204
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
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_2503 = &anFCBBecameFree
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
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   _temp_2504 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2506 = &_temp_2505
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2506 = _temp_2506 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2508 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3416:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3416
!   _temp_2508 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2510:
!   Data Move: *_temp_2506 = _temp_2508  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3417:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3417
!   _temp_2506 = _temp_2506 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2507 = _temp_2507 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2507) then goto _Label_2510
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2510
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2511 = &_temp_2505
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3418
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3418:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2504 = *_temp_2511  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3419:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3419
! FOR STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2516 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2517 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2516  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2512:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2517 then goto _Label_2515		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2515
_Label_2513:
	mov	2208,r13		! source line 2208
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   _temp_2518 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2518 [i ] into _temp_2519
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
!   _temp_2520 = _temp_2519 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2520 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0SE",r10
!   _temp_2521 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2521 [i ] into _temp_2522
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
	mov	2211,r13		! source line 2211
	mov	"\0\0SE",r10
!   _temp_2524 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2524 [i ] into _temp_2525
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
!   _temp_2523 = _temp_2525		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2526 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2523  sizeInBytes=4
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
_Label_2514:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2512
! END FOR
_Label_2515:
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
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
	mov	2216,r13		! source line 2216
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
	mov	2217,r13		! source line 2217
	mov	"\0\0SE",r10
!   _temp_2529 = &anOpenFileBecameFree
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
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   _temp_2530 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2532 = &_temp_2531
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2532 = _temp_2532 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2534 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3420:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3420
!   _temp_2534 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2536:
!   Data Move: *_temp_2532 = _temp_2534  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3421:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3421
!   _temp_2532 = _temp_2532 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2533 = _temp_2533 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2533) then goto _Label_2536
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2536
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2537 = &_temp_2531
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3422
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3422:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2530 = *_temp_2537  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3423:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3423
! FOR STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2542 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2543 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2542  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2538:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2543 then goto _Label_2541		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2541
_Label_2539:
	mov	2220,r13		! source line 2220
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   _temp_2544 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2544 [i ] into _temp_2545
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
!   _temp_2546 = _temp_2545 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2546 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0SE",r10
!   _temp_2548 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2548 [i ] into _temp_2549
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
!   _temp_2547 = _temp_2549		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2550 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2547  sizeInBytes=4
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
_Label_2540:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2538
! END FOR
_Label_2541:
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3424:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3424
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
!   _temp_2552 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2553 = _temp_2552 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2553 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
	mov	2232,r13		! source line 2232
	mov	"\0\0SE",r10
!   _temp_2554 = &_P_Kernel_frameManager
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
	mov	2233,r13		! source line 2233
	mov	"\0\0SE",r10
!   _temp_2555 = &_P_Kernel_diskDriver
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
	mov	2233,r13		! source line 2233
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
	.word	_Label_2556
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2558
	.word	-12
	.word	4
	.word	_Label_2559
	.word	-16
	.word	4
	.word	_Label_2560
	.word	-20
	.word	4
	.word	_Label_2561
	.word	-24
	.word	4
	.word	_Label_2562
	.word	-28
	.word	4
	.word	_Label_2563
	.word	-32
	.word	4
	.word	_Label_2564
	.word	-36
	.word	4
	.word	_Label_2565
	.word	-40
	.word	4
	.word	_Label_2566
	.word	-44
	.word	4
	.word	_Label_2567
	.word	-48
	.word	4
	.word	_Label_2568
	.word	-52
	.word	4
	.word	_Label_2569
	.word	-56
	.word	4
	.word	_Label_2570
	.word	-60
	.word	4
	.word	_Label_2571
	.word	-64
	.word	4
	.word	_Label_2572
	.word	-68
	.word	4
	.word	_Label_2573
	.word	-72
	.word	4
	.word	_Label_2574
	.word	-100
	.word	28
	.word	_Label_2575
	.word	-104
	.word	4
	.word	_Label_2576
	.word	-108
	.word	4
	.word	_Label_2577
	.word	-392
	.word	284
	.word	_Label_2578
	.word	-396
	.word	4
	.word	_Label_2579
	.word	-400
	.word	4
	.word	_Label_2580
	.word	-404
	.word	4
	.word	_Label_2581
	.word	-408
	.word	4
	.word	_Label_2582
	.word	-412
	.word	4
	.word	_Label_2583
	.word	-416
	.word	4
	.word	_Label_2584
	.word	-420
	.word	4
	.word	_Label_2585
	.word	-424
	.word	4
	.word	_Label_2586
	.word	-428
	.word	4
	.word	_Label_2587
	.word	-432
	.word	4
	.word	_Label_2588
	.word	-436
	.word	4
	.word	_Label_2589
	.word	-440
	.word	4
	.word	_Label_2590
	.word	-444
	.word	4
	.word	_Label_2591
	.word	-448
	.word	4
	.word	_Label_2592
	.word	-452
	.word	4
	.word	_Label_2593
	.word	-456
	.word	4
	.word	_Label_2594
	.word	-460
	.word	4
	.word	_Label_2595
	.word	-500
	.word	40
	.word	_Label_2596
	.word	-504
	.word	4
	.word	_Label_2597
	.word	-508
	.word	4
	.word	_Label_2598
	.word	-912
	.word	404
	.word	_Label_2599
	.word	-916
	.word	4
	.word	_Label_2600
	.word	-920
	.word	4
	.word	_Label_2601
	.word	-924
	.word	4
	.word	_Label_2602
	.word	-928
	.word	4
	.word	_Label_2603
	.word	-932
	.word	4
	.word	_Label_2604
	.word	-936
	.word	4
	.word	_Label_2605
	.word	-940
	.word	4
	.word	_Label_2606
	.word	-944
	.word	4
	.word	0
_Label_2556:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2557:
	.ascii	"Pself\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2606:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	2240,r13		! source line 2240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0SE",r10
!   _temp_2607 = &fileManagerLock
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
!   _temp_2608 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2243,r13		! source line 2243
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2613 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2614 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2613  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2609:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2614 then goto _Label_2612		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2612
_Label_2610:
	mov	2244,r13		! source line 2244
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2615 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2615  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2245,r13		! source line 2245
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2246,r13		! source line 2246
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2616 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2616  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2247,r13		! source line 2247
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0SE",r10
!   _temp_2617 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2617 [i ] into _temp_2618
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
_Label_2611:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2609
! END FOR
_Label_2612:
! CALL STATEMENT...
!   _temp_2619 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2619  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2250,r13		! source line 2250
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0SE",r10
!   _temp_2620 = _function_201_printFCB
	set	_function_201_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2621 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2620  sizeInBytes=4
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
	mov	2252,r13		! source line 2252
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2622 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2622  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2253,r13		! source line 2253
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2627 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2628 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2627  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2623:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2628 then goto _Label_2626		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2626
_Label_2624:
	mov	2254,r13		! source line 2254
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2629 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2629  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2255,r13		! source line 2255
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2256,r13		! source line 2256
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2630 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2630  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2257,r13		! source line 2257
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2632 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2632 [i ] into _temp_2633
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
!   _temp_2631 = _temp_2633		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2631  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2258,r13		! source line 2258
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2634 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2634  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2259,r13		! source line 2259
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0SE",r10
!   _temp_2635 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2635 [i ] into _temp_2636
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
_Label_2625:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2623
! END FOR
_Label_2626:
! CALL STATEMENT...
!   _temp_2637 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2637  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2262,r13		! source line 2262
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   _temp_2638 = _function_200_printOpen
	set	_function_200_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2639 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2638  sizeInBytes=4
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
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_2640 = &fileManagerLock
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
	mov	2264,r13		! source line 2264
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
	.word	_Label_2641
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2642
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2643
	.word	-12
	.word	4
	.word	_Label_2644
	.word	-16
	.word	4
	.word	_Label_2645
	.word	-20
	.word	4
	.word	_Label_2646
	.word	-24
	.word	4
	.word	_Label_2647
	.word	-28
	.word	4
	.word	_Label_2648
	.word	-32
	.word	4
	.word	_Label_2649
	.word	-36
	.word	4
	.word	_Label_2650
	.word	-40
	.word	4
	.word	_Label_2651
	.word	-44
	.word	4
	.word	_Label_2652
	.word	-48
	.word	4
	.word	_Label_2653
	.word	-52
	.word	4
	.word	_Label_2654
	.word	-56
	.word	4
	.word	_Label_2655
	.word	-60
	.word	4
	.word	_Label_2656
	.word	-64
	.word	4
	.word	_Label_2657
	.word	-68
	.word	4
	.word	_Label_2658
	.word	-72
	.word	4
	.word	_Label_2659
	.word	-76
	.word	4
	.word	_Label_2660
	.word	-80
	.word	4
	.word	_Label_2661
	.word	-84
	.word	4
	.word	_Label_2662
	.word	-88
	.word	4
	.word	_Label_2663
	.word	-92
	.word	4
	.word	_Label_2664
	.word	-96
	.word	4
	.word	_Label_2665
	.word	-100
	.word	4
	.word	_Label_2666
	.word	-104
	.word	4
	.word	_Label_2667
	.word	-108
	.word	4
	.word	_Label_2668
	.word	-112
	.word	4
	.word	_Label_2669
	.word	-116
	.word	4
	.word	0
_Label_2641:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2642:
	.ascii	"Pself\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2669:
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
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	2269,r13		! source line 2269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   _temp_2670 = &_P_Kernel_fileManager
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
	mov	2286,r13		! source line 2286
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2671
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2671
	jmp	_Label_2672
_Label_2671:
! THEN...
	mov	2287,r13		! source line 2287
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2672:
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_2673 = &fileManagerLock
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
	mov	2292,r13		! source line 2292
	mov	"\0\0WH",r10
_Label_2674:
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_2677 = &openFileFreeList
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
!   if result==true then goto _Label_2675 else goto _Label_2676
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2676
	jmp	_Label_2675
_Label_2675:
	mov	2292,r13		! source line 2292
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_2678 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2679 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2678  sizeInBytes=4
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
	jmp	_Label_2674
_Label_2676:
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2680 = &openFileFreeList
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
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2681 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2681 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2682 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2682 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2683 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2683 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2684 = &fileManagerLock
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
	mov	2305,r13		! source line 2305
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
	.word	_Label_2685
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2686
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2687
	.word	12
	.word	4
	.word	_Label_2688
	.word	-12
	.word	4
	.word	_Label_2689
	.word	-16
	.word	4
	.word	_Label_2690
	.word	-20
	.word	4
	.word	_Label_2691
	.word	-24
	.word	4
	.word	_Label_2692
	.word	-28
	.word	4
	.word	_Label_2693
	.word	-32
	.word	4
	.word	_Label_2694
	.word	-36
	.word	4
	.word	_Label_2695
	.word	-40
	.word	4
	.word	_Label_2696
	.word	-44
	.word	4
	.word	_Label_2697
	.word	-48
	.word	4
	.word	_Label_2698
	.word	-52
	.word	4
	.word	_Label_2699
	.word	-56
	.word	4
	.word	0
_Label_2685:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2686:
	.ascii	"Pself\0"
	.align
_Label_2687:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2698:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2699:
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	2310,r13		! source line 2310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
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
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2701		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2701
!	jmp	_Label_2700
_Label_2700:
! THEN...
	mov	2341,r13		! source line 2341
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2702 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2702  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2341,r13		! source line 2341
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2701:
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
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
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
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
	mov	2348,r13		! source line 2348
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0WH",r10
_Label_2703:
!   if numFiles <= 0 then goto _Label_2705		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2705
!	jmp	_Label_2704
_Label_2704:
	mov	2351,r13		! source line 2351
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2706 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2706  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2352,r13		! source line 2352
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2707 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2707  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2354,r13		! source line 2354
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2708 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2708  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2356,r13		! source line 2356
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2712 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2712 then goto _Label_2710		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2710
!	jmp	_Label_2711
_Label_2711:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2714
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
!   _temp_2713 = _temp_2714		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2713  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2359,r13		! source line 2359
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2709 else goto _Label_2710
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2710
	jmp	_Label_2709
_Label_2709:
! THEN...
	mov	2360,r13		! source line 2360
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0BR",r10
	jmp	_Label_2705
! END IF...
_Label_2710:
! ASSIGNMENT STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2703
_Label_2705:
! IF STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2716		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2716
!	jmp	_Label_2715
_Label_2715:
! THEN...
	mov	2368,r13		! source line 2368
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2716:
! SEND STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0SE",r10
!   _temp_2717 = &fileManagerLock
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
	mov	2373,r13		! source line 2373
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2722 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2723 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2722  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2718:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2723 then goto _Label_2721		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2721
_Label_2719:
	mov	2373,r13		! source line 2373
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   _temp_2724 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2724 [i ] into _temp_2725
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
!   fcb = _temp_2725		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2729 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2728 = *_temp_2729  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2728 != start then goto _Label_2727		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2727
!	jmp	_Label_2726
_Label_2726:
! THEN...
	mov	2376,r13		! source line 2376
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2730 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2733 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2732 = *_temp_2733  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2731 = _temp_2732 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2730 = _temp_2731  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0SE",r10
!   _temp_2734 = &fileManagerLock
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
	mov	2378,r13		! source line 2378
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2727:
!   Increment the FOR-LOOP index variable and jump back
_Label_2720:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2718
! END FOR
_Label_2721:
! WHILE STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0WH",r10
_Label_2735:
	mov	2383,r13		! source line 2383
	mov	"\0\0SE",r10
!   _temp_2738 = &fcbFreeList
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
!   if result==true then goto _Label_2736 else goto _Label_2737
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2737
	jmp	_Label_2736
_Label_2736:
	mov	2383,r13		! source line 2383
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   _temp_2739 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2740 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2739  sizeInBytes=4
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
	jmp	_Label_2735
_Label_2737:
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
	mov	2386,r13		! source line 2386
	mov	"\0\0SE",r10
!   _temp_2741 = &fcbFreeList
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
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   _temp_2742 = &fileManagerLock
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
	mov	2392,r13		! source line 2392
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2743 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2743 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2744 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2744 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2745 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2745 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2750 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2749 = *_temp_2750  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2749 < 0 then goto _Label_2748		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2748
	jmp	_Label_2746
_Label_2748:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2751 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2751 ) then goto _Label_2747		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2747
!	jmp	_Label_2746
_Label_2746:
! THEN...
	mov	2396,r13		! source line 2396
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2752 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2752  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2396,r13		! source line 2396
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2747:
! RETURN STATEMENT...
	mov	2398,r13		! source line 2398
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
	.word	_Label_2753
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2754
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2755
	.word	12
	.word	4
	.word	_Label_2756
	.word	-12
	.word	4
	.word	_Label_2757
	.word	-16
	.word	4
	.word	_Label_2758
	.word	-20
	.word	4
	.word	_Label_2759
	.word	-24
	.word	4
	.word	_Label_2760
	.word	-28
	.word	4
	.word	_Label_2761
	.word	-32
	.word	4
	.word	_Label_2762
	.word	-36
	.word	4
	.word	_Label_2763
	.word	-40
	.word	4
	.word	_Label_2764
	.word	-44
	.word	4
	.word	_Label_2765
	.word	-48
	.word	4
	.word	_Label_2766
	.word	-52
	.word	4
	.word	_Label_2767
	.word	-56
	.word	4
	.word	_Label_2768
	.word	-60
	.word	4
	.word	_Label_2769
	.word	-64
	.word	4
	.word	_Label_2770
	.word	-68
	.word	4
	.word	_Label_2771
	.word	-72
	.word	4
	.word	_Label_2772
	.word	-76
	.word	4
	.word	_Label_2773
	.word	-80
	.word	4
	.word	_Label_2774
	.word	-84
	.word	4
	.word	_Label_2775
	.word	-88
	.word	4
	.word	_Label_2776
	.word	-92
	.word	4
	.word	_Label_2777
	.word	-96
	.word	4
	.word	_Label_2778
	.word	-100
	.word	4
	.word	_Label_2779
	.word	-104
	.word	4
	.word	_Label_2780
	.word	-108
	.word	4
	.word	_Label_2781
	.word	-112
	.word	4
	.word	_Label_2782
	.word	-116
	.word	4
	.word	_Label_2783
	.word	-120
	.word	4
	.word	_Label_2784
	.word	-124
	.word	4
	.word	_Label_2785
	.word	-128
	.word	4
	.word	_Label_2786
	.word	-132
	.word	4
	.word	_Label_2787
	.word	-136
	.word	4
	.word	_Label_2788
	.word	-140
	.word	4
	.word	_Label_2789
	.word	-144
	.word	4
	.word	_Label_2790
	.word	-148
	.word	4
	.word	_Label_2791
	.word	-152
	.word	4
	.word	_Label_2792
	.word	-156
	.word	4
	.word	_Label_2793
	.word	-160
	.word	4
	.word	0
_Label_2753:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2754:
	.ascii	"Pself\0"
	.align
_Label_2755:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2787:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2788:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2789:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2790:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2791:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2792:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2793:
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
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	2411,r13		! source line 2411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0IF",r10
!   _temp_2796 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2796 then goto _Label_2795		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2795
!	jmp	_Label_2794
_Label_2794:
! THEN...
	mov	2414,r13		! source line 2414
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2795:
! SEND STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_2797 = &fileManagerLock
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
	mov	2417,r13		! source line 2417
	mov	"\0\0SE",r10
!   _temp_2798 = &_P_Kernel_fileManager
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
	mov	2418,r13		! source line 2418
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2799 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2799  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2800 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2803 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2802 = *_temp_2803  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2801 = _temp_2802 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2800 = _temp_2801  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2807 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2806 = *_temp_2807  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2806 > 0 then goto _Label_2805		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2805
!	jmp	_Label_2804
_Label_2804:
! THEN...
	mov	2421,r13		! source line 2421
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2808 = &openFileFreeList
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
	mov	2422,r13		! source line 2422
	mov	"\0\0SE",r10
!   _temp_2809 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2810 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2809  sizeInBytes=4
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
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2811 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2814 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2813 = *_temp_2814  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2812 = _temp_2813 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2811 = _temp_2812  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2818 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2817 = *_temp_2818  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2817 > 0 then goto _Label_2816		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2816
!	jmp	_Label_2815
_Label_2815:
! THEN...
	mov	2425,r13		! source line 2425
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0SE",r10
!   _temp_2819 = &fcbFreeList
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
	mov	2426,r13		! source line 2426
	mov	"\0\0SE",r10
!   _temp_2820 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2821 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2820  sizeInBytes=4
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
_Label_2816:
! END IF...
_Label_2805:
! SEND STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_2822 = &fileManagerLock
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
	mov	2429,r13		! source line 2429
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
	.word	_Label_2823
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2825
	.word	12
	.word	4
	.word	_Label_2826
	.word	-12
	.word	4
	.word	_Label_2827
	.word	-16
	.word	4
	.word	_Label_2828
	.word	-20
	.word	4
	.word	_Label_2829
	.word	-24
	.word	4
	.word	_Label_2830
	.word	-28
	.word	4
	.word	_Label_2831
	.word	-32
	.word	4
	.word	_Label_2832
	.word	-36
	.word	4
	.word	_Label_2833
	.word	-40
	.word	4
	.word	_Label_2834
	.word	-44
	.word	4
	.word	_Label_2835
	.word	-48
	.word	4
	.word	_Label_2836
	.word	-52
	.word	4
	.word	_Label_2837
	.word	-56
	.word	4
	.word	_Label_2838
	.word	-60
	.word	4
	.word	_Label_2839
	.word	-64
	.word	4
	.word	_Label_2840
	.word	-68
	.word	4
	.word	_Label_2841
	.word	-72
	.word	4
	.word	_Label_2842
	.word	-76
	.word	4
	.word	_Label_2843
	.word	-80
	.word	4
	.word	_Label_2844
	.word	-84
	.word	4
	.word	_Label_2845
	.word	-88
	.word	4
	.word	_Label_2846
	.word	-92
	.word	4
	.word	_Label_2847
	.word	-96
	.word	4
	.word	_Label_2848
	.word	-100
	.word	4
	.word	_Label_2849
	.word	-104
	.word	4
	.word	0
_Label_2823:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2824:
	.ascii	"Pself\0"
	.align
_Label_2825:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2849:
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
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	2434,r13		! source line 2434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2853 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2852 = *_temp_2853  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2852) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2854 = _temp_2852 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2854 ) then goto _Label_2851		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2851
!	jmp	_Label_2850
_Label_2850:
! THEN...
	mov	2440,r13		! source line 2440
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2859 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2858 = *_temp_2859  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2858) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2860 = _temp_2858 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2857 = *_temp_2860  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2857 >= 0 then goto _Label_2856		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2856
!	jmp	_Label_2855
_Label_2855:
! THEN...
	mov	2441,r13		! source line 2441
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2861 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2861  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2441,r13		! source line 2441
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2856:
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2863 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2862 = *_temp_2863  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2862) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2864 = _temp_2862 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2864 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2868 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2867 = *_temp_2868  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2867) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2869 = _temp_2867 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2866 = *_temp_2869  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2872 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2871 = *_temp_2872  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2871) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2873 = _temp_2871 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2870 = *_temp_2873  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2865 = _temp_2866 + _temp_2870		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2876 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2875 = *_temp_2876  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2875) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2877 = _temp_2875 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2874 = *_temp_2877  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2878 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2865  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2874  sizeInBytes=4
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
_Label_2851:
! RETURN STATEMENT...
	mov	2439,r13		! source line 2439
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
	.word	_Label_2879
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2880
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2881
	.word	12
	.word	4
	.word	_Label_2882
	.word	-12
	.word	4
	.word	_Label_2883
	.word	-16
	.word	4
	.word	_Label_2884
	.word	-20
	.word	4
	.word	_Label_2885
	.word	-24
	.word	4
	.word	_Label_2886
	.word	-28
	.word	4
	.word	_Label_2887
	.word	-32
	.word	4
	.word	_Label_2888
	.word	-36
	.word	4
	.word	_Label_2889
	.word	-40
	.word	4
	.word	_Label_2890
	.word	-44
	.word	4
	.word	_Label_2891
	.word	-48
	.word	4
	.word	_Label_2892
	.word	-52
	.word	4
	.word	_Label_2893
	.word	-56
	.word	4
	.word	_Label_2894
	.word	-60
	.word	4
	.word	_Label_2895
	.word	-64
	.word	4
	.word	_Label_2896
	.word	-68
	.word	4
	.word	_Label_2897
	.word	-72
	.word	4
	.word	_Label_2898
	.word	-76
	.word	4
	.word	_Label_2899
	.word	-80
	.word	4
	.word	_Label_2900
	.word	-84
	.word	4
	.word	_Label_2901
	.word	-88
	.word	4
	.word	_Label_2902
	.word	-92
	.word	4
	.word	_Label_2903
	.word	-96
	.word	4
	.word	_Label_2904
	.word	-100
	.word	4
	.word	_Label_2905
	.word	-104
	.word	4
	.word	_Label_2906
	.word	-108
	.word	4
	.word	0
_Label_2879:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2880:
	.ascii	"Pself\0"
	.align
_Label_2881:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2852\0"
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	2453,r13		! source line 2453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_2907 = &fileManagerLock
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
	mov	2469,r13		! source line 2469
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2913		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2913
!   _temp_2912 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2914
_Label_2913:
!   _temp_2912 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2914:
!   if _temp_2912 then goto _Label_2911 else goto _Label_2908
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2908
	jmp	_Label_2911
_Label_2911:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2917 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2916 = *_temp_2917  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2916 == 0 then goto _Label_2918		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2918
!   _temp_2915 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2919
_Label_2918:
!   _temp_2915 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2919:
!   if _temp_2915 then goto _Label_2910 else goto _Label_2908
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2908
	jmp	_Label_2910
_Label_2910:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2922 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2921 = *_temp_2922  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2921) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2923 = _temp_2921 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2920 = *_temp_2923  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2920 >= 0 then goto _Label_2909		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2909
!	jmp	_Label_2908
_Label_2908:
! THEN...
	mov	2470,r13		! source line 2470
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2924 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2924  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2470,r13		! source line 2470
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2909:
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2925 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2925  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0WH",r10
_Label_2926:
!   if numBytes <= 0 then goto _Label_2928		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2928
!	jmp	_Label_2927
_Label_2927:
	mov	2473,r13		! source line 2473
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2482,r13		! source line 2482
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
	mov	2483,r13		! source line 2483
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
	mov	2487,r13		! source line 2487
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2932 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2931 = *_temp_2932  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2931 == sector then goto _Label_2930		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2930
!	jmp	_Label_2929
_Label_2929:
! THEN...
	mov	2488,r13		! source line 2488
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2933) then goto _runtimeErrorNullPointer
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
	mov	2490,r13		! source line 2490
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2936 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2935 = *_temp_2936  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2934 = sector + _temp_2935		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2938 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2937 = *_temp_2938  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2939 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2934  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2937  sizeInBytes=4
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
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2940 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2940 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2941 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2941 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2930:
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2943 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2942 = *_temp_2943  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2942 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0AS",r10
!   _temp_2944 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2944  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2497,r13		! source line 2497
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
	mov	2501,r13		! source line 2501
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2926
_Label_2928:
! SEND STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0SE",r10
!   _temp_2945 = &fileManagerLock
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
	mov	2512,r13		! source line 2512
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
	.word	_Label_2946
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2948
	.word	12
	.word	4
	.word	_Label_2949
	.word	16
	.word	4
	.word	_Label_2950
	.word	20
	.word	4
	.word	_Label_2951
	.word	24
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
	.word	-76
	.word	4
	.word	_Label_2968
	.word	-80
	.word	4
	.word	_Label_2969
	.word	-84
	.word	4
	.word	_Label_2970
	.word	-88
	.word	4
	.word	_Label_2971
	.word	-92
	.word	4
	.word	_Label_2972
	.word	-96
	.word	4
	.word	_Label_2973
	.word	-100
	.word	4
	.word	_Label_2974
	.word	-104
	.word	4
	.word	_Label_2975
	.word	-9
	.word	1
	.word	_Label_2976
	.word	-10
	.word	1
	.word	_Label_2977
	.word	-108
	.word	4
	.word	_Label_2978
	.word	-112
	.word	4
	.word	_Label_2979
	.word	-116
	.word	4
	.word	_Label_2980
	.word	-120
	.word	4
	.word	_Label_2981
	.word	-124
	.word	4
	.word	_Label_2982
	.word	-128
	.word	4
	.word	0
_Label_2946:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2947:
	.ascii	"Pself\0"
	.align
_Label_2948:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2949:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2950:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2951:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2975:
	.byte	'C'
	.ascii	"_temp_2915\0"
	.align
_Label_2976:
	.byte	'C'
	.ascii	"_temp_2912\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2978:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2979:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2980:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2981:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2982:
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
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	2517,r13		! source line 2517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0SE",r10
!   _temp_2983 = &fileManagerLock
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
	mov	2534,r13		! source line 2534
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2989		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2989
!   _temp_2988 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2990
_Label_2989:
!   _temp_2988 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2990:
!   if _temp_2988 then goto _Label_2987 else goto _Label_2984
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2984
	jmp	_Label_2987
_Label_2987:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2993 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2992 = *_temp_2993  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2992 == 0 then goto _Label_2994		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2994
!   _temp_2991 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2995
_Label_2994:
!   _temp_2991 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2995:
!   if _temp_2991 then goto _Label_2986 else goto _Label_2984
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2984
	jmp	_Label_2986
_Label_2986:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2998 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2997 = *_temp_2998  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2997) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2999 = _temp_2997 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2996 = *_temp_2999  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2996 >= 0 then goto _Label_2985		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2985
!	jmp	_Label_2984
_Label_2984:
! THEN...
	mov	2535,r13		! source line 2535
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3000 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3000  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2535,r13		! source line 2535
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2985:
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3001 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3001  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0WH",r10
_Label_3002:
!   if numBytes <= 0 then goto _Label_3004		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3004
!	jmp	_Label_3003
_Label_3003:
	mov	2538,r13		! source line 2538
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2547,r13		! source line 2547
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
	mov	2548,r13		! source line 2548
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
	mov	2552,r13		! source line 2552
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3008 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3007 = *_temp_3008  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3007 == sector then goto _Label_3006		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3006
!	jmp	_Label_3005
_Label_3005:
! THEN...
	mov	2554,r13		! source line 2554
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3009) then goto _runtimeErrorNullPointer
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
_Label_3006:
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3011 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3010 = *_temp_3011  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3010 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
!   _temp_3012 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3012  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2557,r13		! source line 2557
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3016 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3015 = *_temp_3016  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3015 != sector then goto _Label_3014		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3014
!	jmp	_Label_3013
_Label_3013:
	jmp	_Label_3017
_Label_3014:
! ELSE...
	mov	2560,r13		! source line 2560
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3020
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3020
	jmp	_Label_3019
_Label_3020:
!   if bytesToMove != 8192 then goto _Label_3019		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3019
!	jmp	_Label_3018
_Label_3018:
	jmp	_Label_3021
_Label_3019:
! ELSE...
	mov	2564,r13		! source line 2564
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3024 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3023 = *_temp_3024  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3022 = sector + _temp_3023		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3026 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3025 = *_temp_3026  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3027 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3022  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3025  sizeInBytes=4
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
_Label_3021:
! END IF...
_Label_3017:
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3028 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3028 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3029 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3029 = 1  (sizeInBytes=1)
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
	mov	2573,r13		! source line 2573
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3002
_Label_3004:
! SEND STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0SE",r10
!   _temp_3030 = &fileManagerLock
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
	mov	2585,r13		! source line 2585
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
	.word	_Label_3031
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3033
	.word	12
	.word	4
	.word	_Label_3034
	.word	16
	.word	4
	.word	_Label_3035
	.word	20
	.word	4
	.word	_Label_3036
	.word	24
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
	.word	-9
	.word	1
	.word	_Label_3063
	.word	-10
	.word	1
	.word	_Label_3064
	.word	-116
	.word	4
	.word	_Label_3065
	.word	-120
	.word	4
	.word	_Label_3066
	.word	-124
	.word	4
	.word	_Label_3067
	.word	-128
	.word	4
	.word	_Label_3068
	.word	-132
	.word	4
	.word	_Label_3069
	.word	-136
	.word	4
	.word	0
_Label_3031:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3032:
	.ascii	"Pself\0"
	.align
_Label_3033:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3034:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3035:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3036:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3062:
	.byte	'C'
	.ascii	"_temp_2991\0"
	.align
_Label_3063:
	.byte	'C'
	.ascii	"_temp_2988\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3065:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3066:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3067:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3068:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3069:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3070
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3070:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3071
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3071:
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	2621,r13		! source line 2621
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   _temp_3072 = &_P_Kernel_frameManager
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
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2626,r13		! source line 2626
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
	.word	_Label_3073
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3075
	.word	-12
	.word	4
	.word	0
_Label_3073:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3074:
	.ascii	"Pself\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3072\0"
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	2631,r13		! source line 2631
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3076 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3076  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2632,r13		! source line 2632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3077 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3077  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2634,r13		! source line 2634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3078 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3078  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3079 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3079  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2639,r13		! source line 2639
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3080 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3080  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2640,r13		! source line 2640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2641,r13		! source line 2641
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3081 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3081  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2644,r13		! source line 2644
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
	.word	_Label_3082
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3083
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3084
	.word	-12
	.word	4
	.word	_Label_3085
	.word	-16
	.word	4
	.word	_Label_3086
	.word	-20
	.word	4
	.word	_Label_3087
	.word	-24
	.word	4
	.word	_Label_3088
	.word	-28
	.word	4
	.word	_Label_3089
	.word	-32
	.word	4
	.word	0
_Label_3082:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3083:
	.ascii	"Pself\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3090
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3090:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3091
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3091:
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	2655,r13		! source line 2655
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3092 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3092  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2657,r13		! source line 2657
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3093 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3093  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2658,r13		! source line 2658
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3095		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3095
!	jmp	_Label_3094
_Label_3094:
! THEN...
	mov	2660,r13		! source line 2660
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2660,r13		! source line 2660
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
	jmp	_Label_3096
_Label_3095:
! ELSE...
	mov	2662,r13		! source line 2662
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3097 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3097  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2662,r13		! source line 2662
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3096:
! RETURN STATEMENT...
	mov	2659,r13		! source line 2659
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
	.word	_Label_3098
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3100
	.word	-12
	.word	4
	.word	_Label_3101
	.word	-16
	.word	4
	.word	_Label_3102
	.word	-20
	.word	4
	.word	0
_Label_3098:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3099:
	.ascii	"Pself\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3092\0"
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	2668,r13		! source line 2668
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0SE",r10
!   _temp_3103 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3104 = _temp_3103 + 4
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
	mov	2679,r13		! source line 2679
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2680,r13		! source line 2680
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
	mov	2681,r13		! source line 2681
	mov	"\0\0SE",r10
!   _temp_3105 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3106 = _temp_3105 + 4
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
	mov	2682,r13		! source line 2682
	mov	"\0\0RE",r10
	mov	2682,r13		! source line 2682
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3109 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3108  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3107  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3107  (sizeInBytes=1)
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
	.word	_Label_3110
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3112
	.word	12
	.word	4
	.word	_Label_3113
	.word	16
	.word	4
	.word	_Label_3114
	.word	-16
	.word	4
	.word	_Label_3115
	.word	-20
	.word	4
	.word	_Label_3116
	.word	-9
	.word	1
	.word	_Label_3117
	.word	-24
	.word	4
	.word	_Label_3118
	.word	-28
	.word	4
	.word	_Label_3119
	.word	-32
	.word	4
	.word	_Label_3120
	.word	-36
	.word	4
	.word	_Label_3121
	.word	-40
	.word	4
	.word	0
_Label_3110:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3111:
	.ascii	"Pself\0"
	.align
_Label_3112:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3116:
	.byte	'C'
	.ascii	"_temp_3107\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3121:
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	2687,r13		! source line 2687
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_3125 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3126) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3125  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3124  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3124 then goto _Label_3123 else goto _Label_3122
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3122
	jmp	_Label_3123
_Label_3122:
! THEN...
	mov	2693,r13		! source line 2693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3127 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3127  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2693,r13		! source line 2693
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3123:
! RETURN STATEMENT...
	mov	2695,r13		! source line 2695
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
	.word	_Label_3128
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3130
	.word	-16
	.word	4
	.word	_Label_3131
	.word	-20
	.word	4
	.word	_Label_3132
	.word	-24
	.word	4
	.word	_Label_3133
	.word	-9
	.word	1
	.word	_Label_3134
	.word	-28
	.word	4
	.word	0
_Label_3128:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3129:
	.ascii	"Pself\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3133:
	.byte	'C'
	.ascii	"_temp_3124\0"
	.align
_Label_3134:
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	2700,r13		! source line 2700
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3138 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3137 = *_temp_3138  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3137) then goto _Label_3136
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3136
!	jmp	_Label_3135
_Label_3135:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3139 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3139  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2727,r13		! source line 2727
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3136:
! IF STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0IF",r10
	mov	2731,r13		! source line 2731
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3143) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3142  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3142 == 1112300152 then goto _Label_3141		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3141
!	jmp	_Label_3140
_Label_3140:
! THEN...
	mov	2732,r13		! source line 2732
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3144 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2732,r13		! source line 2732
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3141:
! ASSIGNMENT STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0AS",r10
	mov	2737,r13		! source line 2737
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3145) then goto _runtimeErrorNullPointer
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
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
	mov	2738,r13		! source line 2738
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3146) then goto _runtimeErrorNullPointer
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
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
	mov	2739,r13		! source line 2739
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3147) then goto _runtimeErrorNullPointer
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
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
	mov	2740,r13		! source line 2740
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3148) then goto _runtimeErrorNullPointer
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
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
	mov	2741,r13		! source line 2741
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3149) then goto _runtimeErrorNullPointer
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
	mov	2742,r13		! source line 2742
	mov	"\0\0AS",r10
	mov	2742,r13		! source line 2742
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3150) then goto _runtimeErrorNullPointer
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
	mov	2745,r13		! source line 2745
	mov	"\0\0IF",r10
!   _temp_3153 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3153) then goto _Label_3152
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3152
!	jmp	_Label_3151
_Label_3151:
! THEN...
	mov	2746,r13		! source line 2746
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3154 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3154  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2746,r13		! source line 2746
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3152:
! ASSIGNMENT STATEMENT...
	mov	2749,r13		! source line 2749
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
	mov	2753,r13		! source line 2753
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3156
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3156
!	jmp	_Label_3155
_Label_3155:
! THEN...
	mov	2754,r13		! source line 2754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3157 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3157  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2754,r13		! source line 2754
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3156:
! IF STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0IF",r10
!   _temp_3160 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3160) then goto _Label_3159
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3159
!	jmp	_Label_3158
_Label_3158:
! THEN...
	mov	2760,r13		! source line 2760
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3161 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3161  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2760,r13		! source line 2760
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3159:
! IF STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0IF",r10
!   _temp_3164 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3164 then goto _Label_3163		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3163
!	jmp	_Label_3162
_Label_3162:
! THEN...
	mov	2764,r13		! source line 2764
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3165 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3165  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2764,r13		! source line 2764
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3163:
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
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
	mov	2770,r13		! source line 2770
	mov	"\0\0IF",r10
!   _temp_3168 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3168) then goto _Label_3167
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3167
!	jmp	_Label_3166
_Label_3166:
! THEN...
	mov	2771,r13		! source line 2771
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3169 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3169  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2771,r13		! source line 2771
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3167:
! IF STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0IF",r10
!   _temp_3172 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3172 then goto _Label_3171		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3171
!	jmp	_Label_3170
_Label_3170:
! THEN...
	mov	2775,r13		! source line 2775
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3173 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3173  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3171:
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
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
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   _temp_3176 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3175 = _temp_3176 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3174 = _temp_3175 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3174 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3178		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3178
!	jmp	_Label_3177
_Label_3177:
! THEN...
	mov	2797,r13		! source line 2797
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3179 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3179  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3180 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3180  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2798,r13		! source line 2798
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3181 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3181  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2799,r13		! source line 2799
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3178:
! SEND STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
!   _temp_3182 = &_P_Kernel_frameManager
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
	mov	2808,r13		! source line 2808
	mov	"\0\0IF",r10
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3186) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3185  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3185 == 707406378 then goto _Label_3184		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3184
!	jmp	_Label_3183
_Label_3183:
! THEN...
	mov	2809,r13		! source line 2809
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3187 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3187  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0SE",r10
!   _temp_3188 = &_P_Kernel_frameManager
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
	mov	2811,r13		! source line 2811
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3184:
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
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
	mov	2816,r13		! source line 2816
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3193 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3194 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3193  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3189:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3194 then goto _Label_3192		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3192
_Label_3190:
	mov	2816,r13		! source line 2816
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0AS",r10
	mov	2817,r13		! source line 2817
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
	mov	2820,r13		! source line 2820
	mov	"\0\0IF",r10
	mov	2820,r13		! source line 2820
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3198) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3197  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3197 then goto _Label_3196 else goto _Label_3195
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3195
	jmp	_Label_3196
_Label_3195:
! THEN...
	mov	2821,r13		! source line 2821
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3199 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3199  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2821,r13		! source line 2821
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   _temp_3200 = &_P_Kernel_frameManager
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
	mov	2823,r13		! source line 2823
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3196:
! SEND STATEMENT...
	mov	2825,r13		! source line 2825
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
	mov	2826,r13		! source line 2826
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3191:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3189
! END FOR
_Label_3192:
! IF STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0IF",r10
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3204) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3203  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3203 == 707406378 then goto _Label_3202		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3202
!	jmp	_Label_3201
_Label_3201:
! THEN...
	mov	2831,r13		! source line 2831
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3205 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3205  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0SE",r10
!   _temp_3206 = &_P_Kernel_frameManager
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
	mov	2833,r13		! source line 2833
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3202:
! FOR STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3211 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3212 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3211  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3207:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3212 then goto _Label_3210		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3210
_Label_3208:
	mov	2837,r13		! source line 2837
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0AS",r10
	mov	2838,r13		! source line 2838
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
	mov	2841,r13		! source line 2841
	mov	"\0\0IF",r10
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3216) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3215  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3215 then goto _Label_3214 else goto _Label_3213
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3213
	jmp	_Label_3214
_Label_3213:
! THEN...
	mov	2842,r13		! source line 2842
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3217 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3217  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2842,r13		! source line 2842
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0SE",r10
!   _temp_3218 = &_P_Kernel_frameManager
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
	mov	2844,r13		! source line 2844
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3214:
! ASSIGNMENT STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3209:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3207
! END FOR
_Label_3210:
! IF STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0IF",r10
	mov	2850,r13		! source line 2850
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3222) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3221  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3221 == 707406378 then goto _Label_3220		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3220
!	jmp	_Label_3219
_Label_3219:
! THEN...
	mov	2851,r13		! source line 2851
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3223 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3223  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2851,r13		! source line 2851
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
!   _temp_3224 = &_P_Kernel_frameManager
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
	mov	2853,r13		! source line 2853
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3220:
! ASSIGNMENT STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0AS",r10
	mov	2857,r13		! source line 2857
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
	mov	2861,r13		! source line 2861
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2864,r13		! source line 2864
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
	.word	_Label_3225
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3227
	.word	12
	.word	4
	.word	_Label_3228
	.word	-16
	.word	4
	.word	_Label_3229
	.word	-20
	.word	4
	.word	_Label_3230
	.word	-24
	.word	4
	.word	_Label_3231
	.word	-28
	.word	4
	.word	_Label_3232
	.word	-32
	.word	4
	.word	_Label_3233
	.word	-36
	.word	4
	.word	_Label_3234
	.word	-40
	.word	4
	.word	_Label_3235
	.word	-9
	.word	1
	.word	_Label_3236
	.word	-44
	.word	4
	.word	_Label_3237
	.word	-48
	.word	4
	.word	_Label_3238
	.word	-52
	.word	4
	.word	_Label_3239
	.word	-56
	.word	4
	.word	_Label_3240
	.word	-60
	.word	4
	.word	_Label_3241
	.word	-64
	.word	4
	.word	_Label_3242
	.word	-68
	.word	4
	.word	_Label_3243
	.word	-72
	.word	4
	.word	_Label_3244
	.word	-76
	.word	4
	.word	_Label_3245
	.word	-10
	.word	1
	.word	_Label_3246
	.word	-80
	.word	4
	.word	_Label_3247
	.word	-84
	.word	4
	.word	_Label_3248
	.word	-88
	.word	4
	.word	_Label_3249
	.word	-92
	.word	4
	.word	_Label_3250
	.word	-96
	.word	4
	.word	_Label_3251
	.word	-100
	.word	4
	.word	_Label_3252
	.word	-104
	.word	4
	.word	_Label_3253
	.word	-108
	.word	4
	.word	_Label_3254
	.word	-112
	.word	4
	.word	_Label_3255
	.word	-116
	.word	4
	.word	_Label_3256
	.word	-120
	.word	4
	.word	_Label_3257
	.word	-124
	.word	4
	.word	_Label_3258
	.word	-128
	.word	4
	.word	_Label_3259
	.word	-132
	.word	4
	.word	_Label_3260
	.word	-136
	.word	4
	.word	_Label_3261
	.word	-140
	.word	4
	.word	_Label_3262
	.word	-144
	.word	4
	.word	_Label_3263
	.word	-148
	.word	4
	.word	_Label_3264
	.word	-152
	.word	4
	.word	_Label_3265
	.word	-156
	.word	4
	.word	_Label_3266
	.word	-160
	.word	4
	.word	_Label_3267
	.word	-164
	.word	4
	.word	_Label_3268
	.word	-168
	.word	4
	.word	_Label_3269
	.word	-172
	.word	4
	.word	_Label_3270
	.word	-176
	.word	4
	.word	_Label_3271
	.word	-180
	.word	4
	.word	_Label_3272
	.word	-184
	.word	4
	.word	_Label_3273
	.word	-188
	.word	4
	.word	_Label_3274
	.word	-192
	.word	4
	.word	_Label_3275
	.word	-196
	.word	4
	.word	_Label_3276
	.word	-200
	.word	4
	.word	_Label_3277
	.word	-204
	.word	4
	.word	_Label_3278
	.word	-208
	.word	4
	.word	_Label_3279
	.word	-212
	.word	4
	.word	_Label_3280
	.word	-216
	.word	4
	.word	_Label_3281
	.word	-220
	.word	4
	.word	_Label_3282
	.word	-224
	.word	4
	.word	_Label_3283
	.word	-228
	.word	4
	.word	_Label_3284
	.word	-232
	.word	4
	.word	_Label_3285
	.word	-236
	.word	4
	.word	_Label_3286
	.word	-240
	.word	4
	.word	_Label_3287
	.word	-244
	.word	4
	.word	_Label_3288
	.word	-248
	.word	4
	.word	_Label_3289
	.word	-252
	.word	4
	.word	_Label_3290
	.word	-256
	.word	4
	.word	_Label_3291
	.word	-260
	.word	4
	.word	_Label_3292
	.word	-264
	.word	4
	.word	_Label_3293
	.word	-268
	.word	4
	.word	0
_Label_3225:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3226:
	.ascii	"Pself\0"
	.align
_Label_3227:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3235:
	.byte	'C'
	.ascii	"_temp_3215\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3245:
	.byte	'C'
	.ascii	"_temp_3197\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3282:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3283:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3284:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3285:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3286:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3287:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3288:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3289:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3290:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3291:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3292:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3293:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
