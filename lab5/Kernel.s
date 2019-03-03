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
_StringConst_205:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_204:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_203:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_202:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_201:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_200:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_199:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_198:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_197:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_196:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_194:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_193:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_192:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_191:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_190:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_189:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_188:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_187:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_186:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_185:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_184:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_183:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_182:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_181:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_180:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_179:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_178:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_177:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_176:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_175:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_174:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_173:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_172:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_171:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_170:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_169:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_168:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_167:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_166:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_165:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_164:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_163:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_162:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_161:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_160:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_159:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_158:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_157:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_156:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_155:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_154:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_153:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_152:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_149:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_146:
	.word	9			! length
	.ascii	"         "
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
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_139:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_138:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_137:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_136:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_132:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_131:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_130:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_129:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_128:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_127:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_126:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_123:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_122:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_121:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_120:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_119:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_118:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_117:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_116:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_115:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_114:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_113:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_112:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_111:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_110:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_109:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_108:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_105:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_104:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_103:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_102:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_101:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_100:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_99:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_98:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_97:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_96:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_95:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_94:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_93:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_92:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_91:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_90:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_89:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_88:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_87:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_86:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_85:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_83:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_82:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_81:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_80:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_79:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_77:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_75:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_74:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_73:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_72:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_71:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_70:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_69:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_68:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_67:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_65:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_64:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_63:
	.word	42			! length
	.ascii	"Handle_Sys_Close invoked by a user thread!"
	.align
_StringConst_62:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_61:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_60:
	.word	41			! length
	.ascii	"Handle_Sys_Seek invoked by a user thread!"
	.align
_StringConst_59:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_58:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_57:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_56:
	.word	42			! length
	.ascii	"Handle_Sys_Write invoked by a user thread!"
	.align
_StringConst_55:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_54:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_53:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_52:
	.word	41			! length
	.ascii	"Handle_Sys_Read invoked by a user thread!"
	.align
_StringConst_51:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_49:
	.word	41			! length
	.ascii	"Handle_Sys_Open invoked by a user thread!"
	.align
_StringConst_48:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_47:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_46:
	.word	43			! length
	.ascii	"Handle_Sys_Create invoked by a user thread!"
	.align
_StringConst_45:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_44:
	.word	41			! length
	.ascii	"Handle_Sys_Join invoked by a user thread!"
	.align
_StringConst_43:
	.word	41			! length
	.ascii	"Handle_Sys_Fork invoked by a user thread!"
	.align
_StringConst_42:
	.word	42			! length
	.ascii	"Handle_Sys_Yield invoked by a user thread!"
	.align
_StringConst_41:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_40:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_39:
	.word	41			! length
	.ascii	"Handle_Sys_Exit invoked by a user thread!"
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
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_25:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_24:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_23:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_22:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_21:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_19:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_18:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_16:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_15:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_14:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_13:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_12:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_11:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_10:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_9:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_7:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_6:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_5:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_4:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_3:
	.word	20			! length
	.ascii	"Becoming User Thread"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram1"
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
	set	0xd62988df,r4		! myHashVal = -701921057
	cmp	r3,r4
	be	_Label_214
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
_Label_214:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_215
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_215
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_215
_Label_215:
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
	mov	7,r1
_Label_2966:
	push	r0
	sub	r1,1,r1
	bne	_Label_2966
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0AS",r10
	mov	13,r13		! source line 13
	mov	"\0\0SE",r10
!   _temp_216 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	14,r13		! source line 14
	mov	"\0\0SE",r10
!   _temp_217 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_217  sizeInBytes=4
	load	[r14+-16],r1
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
	mov	15,r13		! source line 15
	mov	"\0\0SE",r10
!   _temp_218 = _function_213_StartUserProcess
	set	_function_213_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_219
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_220
	.word	-12
	.word	4
	.word	_Label_221
	.word	-16
	.word	4
	.word	_Label_222
	.word	-20
	.word	4
	.word	_Label_223
	.word	-24
	.word	4
	.word	0
_Label_219:
	.ascii	"InitFirstProcess\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_223:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_213_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_2967:
	push	r0
	sub	r1,1,r1
	bne	_Label_2967
	mov	21,r13		! source line 21
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_224 = &_P_Kernel_processManager
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
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_225 = pcb + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_225 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_226 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_226 = pcb  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_227 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-60]
!   _temp_228 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_227  sizeInBytes=4
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
	mov	34,r13		! source line 34
	mov	"\0\0AS",r10
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_230 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_229 = _temp_230		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_229  sizeInBytes=4
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
	mov	35,r13		! source line 35
	mov	"\0\0SE",r10
!   _temp_231 = &_P_Kernel_fileManager
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
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_233 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_234 = _temp_233 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_232 = *_temp_234  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStack = _temp_232 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_235 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_235 [999 ] into _temp_236
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
!   initSystemStack = _temp_236		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	38,r13		! source line 38
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! SEND STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_237 = pcb + 32
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
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_238 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_238 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_239 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	41,r13		! source line 41
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
	mov	42,r13		! source line 42
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_240
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_241
	.word	-12
	.word	4
	.word	_Label_242
	.word	-16
	.word	4
	.word	_Label_243
	.word	-20
	.word	4
	.word	_Label_244
	.word	-24
	.word	4
	.word	_Label_245
	.word	-28
	.word	4
	.word	_Label_246
	.word	-32
	.word	4
	.word	_Label_247
	.word	-36
	.word	4
	.word	_Label_248
	.word	-40
	.word	4
	.word	_Label_249
	.word	-44
	.word	4
	.word	_Label_250
	.word	-48
	.word	4
	.word	_Label_251
	.word	-52
	.word	4
	.word	_Label_252
	.word	-56
	.word	4
	.word	_Label_253
	.word	-60
	.word	4
	.word	_Label_254
	.word	-64
	.word	4
	.word	_Label_255
	.word	-68
	.word	4
	.word	_Label_256
	.word	-72
	.word	4
	.word	_Label_257
	.word	-76
	.word	4
	.word	_Label_258
	.word	-80
	.word	4
	.word	_Label_259
	.word	-84
	.word	4
	.word	_Label_260
	.word	-88
	.word	4
	.word	_Label_261
	.word	-92
	.word	4
	.word	_Label_262
	.word	-96
	.word	4
	.word	0
_Label_240:
	.ascii	"StartUserProcess\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_258:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"initUserStack\0"
	.align
_Label_261:
	.byte	'I'
	.ascii	"initSystemStack\0"
	.align
_Label_262:
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
_Label_2968:
	push	r0
	sub	r1,1,r1
	bne	_Label_2968
	mov	48,r13		! source line 48
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	55,r13		! source line 55
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_263 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
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
	mov	58,r13		! source line 58
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
	mov	59,r13		! source line 59
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2969:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2969
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0SE",r10
!   _temp_267 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_268 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_267  sizeInBytes=4
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
	mov	61,r13		! source line 61
	mov	"\0\0AS",r10
!   _temp_269 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_270 = _temp_269 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_270 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2970:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2970
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0SE",r10
!   _temp_272 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_273 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_272  sizeInBytes=4
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
	mov	64,r13		! source line 64
	mov	"\0\0SE",r10
!   _temp_274 = _function_212_IdleFunction
	set	_function_212_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_275 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_274  sizeInBytes=4
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
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	68,r13		! source line 68
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
	.word	_Label_276
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_277
	.word	-12
	.word	4
	.word	_Label_278
	.word	-16
	.word	4
	.word	_Label_279
	.word	-20
	.word	4
	.word	_Label_280
	.word	-24
	.word	4
	.word	_Label_281
	.word	-28
	.word	4
	.word	_Label_282
	.word	-32
	.word	4
	.word	_Label_283
	.word	-36
	.word	4
	.word	_Label_284
	.word	-40
	.word	4
	.word	_Label_285
	.word	-44
	.word	4
	.word	_Label_286
	.word	-48
	.word	4
	.word	_Label_287
	.word	-52
	.word	4
	.word	_Label_288
	.word	-56
	.word	4
	.word	_Label_289
	.word	-60
	.word	4
	.word	0
_Label_276:
	.ascii	"InitializeScheduler\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_212_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2971:
	push	r0
	sub	r1,1,r1
	bne	_Label_2971
	mov	73,r13		! source line 73
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0WH",r10
_Label_290:
!	jmp	_Label_291
_Label_291:
	mov	83,r13		! source line 83
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0IF",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_295 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_293 else goto _Label_294
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_294
	jmp	_Label_293
_Label_293:
! THEN...
	mov	86,r13		! source line 86
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	86,r13		! source line 86
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_296
_Label_294:
! ELSE...
	mov	88,r13		! source line 88
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	88,r13		! source line 88
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
_Label_296:
! END WHILE...
	jmp	_Label_290
_Label_292:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_IdleFunction:
	.word	_sourceFileName
	.word	_Label_297
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_298
	.word	8
	.word	4
	.word	_Label_299
	.word	-12
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	0
_Label_297:
	.ascii	"IdleFunction\0"
	.align
_Label_298:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_300:
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
_Label_2972:
	push	r0
	sub	r1,1,r1
	bne	_Label_2972
	mov	95,r13		! source line 95
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	109,r13		! source line 109
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
	mov	111,r13		! source line 111
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_303 ) then goto _Label_302		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_302
!	jmp	_Label_301
_Label_301:
! THEN...
	mov	112,r13		! source line 112
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_305 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_305 [0 ] into _temp_306
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
!   _temp_304 = _temp_306		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_302:
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_307 = 3  (sizeInBytes=4)
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
	mov	121,r13		! source line 121
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0WH",r10
_Label_308:
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_312 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_311  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_311 then goto _Label_310 else goto _Label_309
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_309
	jmp	_Label_310
_Label_309:
	mov	125,r13		! source line 125
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_313 = &_P_Kernel_threadsToBeDestroyed
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
	mov	127,r13		! source line 127
	mov	"\0\0SE",r10
!   _temp_314 = &_P_Kernel_threadManager
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
	jmp	_Label_308
_Label_310:
! IF STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_317 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_317 ) then goto _Label_316		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_316
!	jmp	_Label_315
_Label_315:
! THEN...
	mov	131,r13		! source line 131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_319 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_319 [0 ] into _temp_320
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
!   _temp_318 = _temp_320		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_321) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_323 = _temp_321 + 32
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
_Label_316:
! RETURN STATEMENT...
	mov	130,r13		! source line 130
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
	.word	_Label_324
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_325
	.word	8
	.word	4
	.word	_Label_326
	.word	-16
	.word	4
	.word	_Label_327
	.word	-20
	.word	4
	.word	_Label_328
	.word	-24
	.word	4
	.word	_Label_329
	.word	-28
	.word	4
	.word	_Label_330
	.word	-32
	.word	4
	.word	_Label_331
	.word	-36
	.word	4
	.word	_Label_332
	.word	-40
	.word	4
	.word	_Label_333
	.word	-44
	.word	4
	.word	_Label_334
	.word	-48
	.word	4
	.word	_Label_335
	.word	-52
	.word	4
	.word	_Label_336
	.word	-9
	.word	1
	.word	_Label_337
	.word	-56
	.word	4
	.word	_Label_338
	.word	-60
	.word	4
	.word	_Label_339
	.word	-64
	.word	4
	.word	_Label_340
	.word	-68
	.word	4
	.word	_Label_341
	.word	-72
	.word	4
	.word	_Label_342
	.word	-76
	.word	4
	.word	_Label_343
	.word	-80
	.word	4
	.word	0
_Label_324:
	.ascii	"Run\0"
	.align
_Label_325:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_336:
	.byte	'C'
	.ascii	"_temp_311\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_342:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_343:
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
_Label_2973:
	push	r0
	sub	r1,1,r1
	bne	_Label_2973
	mov	138,r13		! source line 138
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_344 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0SE",r10
!   _temp_345 = _function_211_ThreadPrintShort
	set	_function_211_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_346 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_345  sizeInBytes=4
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
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	148,r13		! source line 148
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
	.word	_Label_347
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_348
	.word	-12
	.word	4
	.word	_Label_349
	.word	-16
	.word	4
	.word	_Label_350
	.word	-20
	.word	4
	.word	_Label_351
	.word	-24
	.word	4
	.word	0
_Label_347:
	.ascii	"PrintReadyList\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_351:
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
_Label_2974:
	push	r0
	sub	r1,1,r1
	bne	_Label_2974
	mov	153,r13		! source line 153
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_352  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_354 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_353 = *_temp_354  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	167,r13		! source line 167
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_355 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	169,r13		! source line 169
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	169,r13		! source line 169
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
	.word	_Label_356
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_357
	.word	-12
	.word	4
	.word	_Label_358
	.word	-16
	.word	4
	.word	_Label_359
	.word	-20
	.word	4
	.word	_Label_360
	.word	-24
	.word	4
	.word	_Label_361
	.word	-28
	.word	4
	.word	_Label_362
	.word	-32
	.word	4
	.word	0
_Label_356:
	.ascii	"ThreadStartMain\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_362:
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
_Label_2975:
	push	r0
	sub	r1,1,r1
	bne	_Label_2975
	mov	174,r13		! source line 174
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	185,r13		! source line 185
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   _temp_363 = &_P_Kernel_threadsToBeDestroyed
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
	mov	190,r13		! source line 190
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
!   _temp_364 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	192,r13		! source line 192
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	192,r13		! source line 192
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
	.word	_Label_365
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_366
	.word	-12
	.word	4
	.word	_Label_367
	.word	-16
	.word	4
	.word	_Label_368
	.word	-20
	.word	4
	.word	0
_Label_365:
	.ascii	"ThreadFinish\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_368:
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
_Label_2976:
	push	r0
	sub	r1,1,r1
	bne	_Label_2976
	mov	197,r13		! source line 197
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_369 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_371		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_371
!	jmp	_Label_370
_Label_370:
! THEN...
	mov	208,r13		! source line 208
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_372 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_374 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_373 = *_temp_374  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_371:
! CALL STATEMENT...
!   _temp_375 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_377 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	215,r13		! source line 215
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
	.word	_Label_378
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-12
	.word	4
	.word	_Label_381
	.word	-16
	.word	4
	.word	_Label_382
	.word	-20
	.word	4
	.word	_Label_383
	.word	-24
	.word	4
	.word	_Label_384
	.word	-28
	.word	4
	.word	_Label_385
	.word	-32
	.word	4
	.word	_Label_386
	.word	-36
	.word	4
	.word	_Label_387
	.word	-40
	.word	4
	.word	0
_Label_378:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_379:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_387:
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
_Label_2977:
	push	r0
	sub	r1,1,r1
	bne	_Label_2977
	mov	220,r13		! source line 220
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_389		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_389
!	jmp	_Label_388
_Label_388:
! THEN...
	mov	236,r13		! source line 236
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_390
_Label_389:
! ELSE...
	mov	239,r13		! source line 239
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_390:
! RETURN STATEMENT...
	mov	242,r13		! source line 242
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
	.word	_Label_391
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_392
	.word	8
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	0
_Label_391:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_393:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_211_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
	mov	681,r13		! source line 681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_397		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_397
!   _temp_396 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_398
_Label_397:
!   _temp_396 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_398:
!   if _temp_396 then goto _Label_395 else goto _Label_394
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_394
	jmp	_Label_395
_Label_394:
! THEN...
	mov	690,r13		! source line 690
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_399 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_395:
! CALL STATEMENT...
!   _temp_400 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_402 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_401 = *_temp_402  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_403 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	696,r13		! source line 696
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_412 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_411 = *_temp_412  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_406
	cmp	r1,2
	be	_Label_407
	cmp	r1,3
	be	_Label_408
	cmp	r1,4
	be	_Label_409
	cmp	r1,5
	be	_Label_410
	jmp	_Label_404
! CASE 1...
_Label_406:
! CALL STATEMENT...
!   _temp_413 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0BR",r10
	jmp	_Label_405
! CASE 2...
_Label_407:
! CALL STATEMENT...
!   _temp_414 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0BR",r10
	jmp	_Label_405
! CASE 3...
_Label_408:
! CALL STATEMENT...
!   _temp_415 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0BR",r10
	jmp	_Label_405
! CASE 4...
_Label_409:
! CALL STATEMENT...
!   _temp_416 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0BR",r10
	jmp	_Label_405
! CASE 5...
_Label_410:
! CALL STATEMENT...
!   _temp_417 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0BR",r10
	jmp	_Label_405
! DEFAULT CASE...
_Label_404:
! CALL STATEMENT...
!   _temp_418 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	713,r13		! source line 713
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_405:
! CALL STATEMENT...
!   _temp_419 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_420 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_421 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_421  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_422
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_423
	.word	8
	.word	4
	.word	_Label_424
	.word	-16
	.word	4
	.word	_Label_425
	.word	-20
	.word	4
	.word	_Label_426
	.word	-24
	.word	4
	.word	_Label_427
	.word	-28
	.word	4
	.word	_Label_428
	.word	-32
	.word	4
	.word	_Label_429
	.word	-36
	.word	4
	.word	_Label_430
	.word	-40
	.word	4
	.word	_Label_431
	.word	-44
	.word	4
	.word	_Label_432
	.word	-48
	.word	4
	.word	_Label_433
	.word	-52
	.word	4
	.word	_Label_434
	.word	-56
	.word	4
	.word	_Label_435
	.word	-60
	.word	4
	.word	_Label_436
	.word	-64
	.word	4
	.word	_Label_437
	.word	-68
	.word	4
	.word	_Label_438
	.word	-72
	.word	4
	.word	_Label_439
	.word	-76
	.word	4
	.word	_Label_440
	.word	-9
	.word	1
	.word	_Label_441
	.word	-80
	.word	4
	.word	0
_Label_422:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_423:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_440:
	.byte	'C'
	.ascii	"_temp_396\0"
	.align
_Label_441:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_210_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2979:
	push	r0
	sub	r1,1,r1
	bne	_Label_2979
	mov	1005,r13		! source line 1005
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_442 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1009,r13		! source line 1009
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_443
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_444
	.word	8
	.word	4
	.word	_Label_445
	.word	-12
	.word	4
	.word	0
_Label_443:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_444:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_442\0"
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
	mov	2,r1
_Label_2980:
	push	r0
	sub	r1,1,r1
	bne	_Label_2980
	mov	1015,r13		! source line 1015
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_446 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1021,r13		! source line 1021
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_447
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_448
	.word	8
	.word	4
	.word	_Label_449
	.word	-12
	.word	4
	.word	0
_Label_447:
	.ascii	"ProcessFinish\0"
	.align
_Label_448:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_446\0"
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
_Label_2981:
	push	r0
	sub	r1,1,r1
	bne	_Label_2981
	mov	1503,r13		! source line 1503
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1515,r13		! source line 1515
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
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1516,r13		! source line 1516
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
	.word	_Label_450
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_450:
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
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
	mov	1521,r13		! source line 1521
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0IF",r10
!   _temp_454 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_455 = _temp_454 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_453 = *_temp_455  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_453 == 0 then goto _Label_452		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_452
!	jmp	_Label_451
_Label_451:
! THEN...
	mov	1536,r13		! source line 1536
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
!   _temp_457 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_458 = _temp_457 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_456 = *_temp_458  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_456) then goto _runtimeErrorNullPointer
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
_Label_452:
! RETURN STATEMENT...
	mov	1535,r13		! source line 1535
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
	.word	_Label_459
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_460
	.word	-12
	.word	4
	.word	_Label_461
	.word	-16
	.word	4
	.word	_Label_462
	.word	-20
	.word	4
	.word	_Label_463
	.word	-24
	.word	4
	.word	_Label_464
	.word	-28
	.word	4
	.word	_Label_465
	.word	-32
	.word	4
	.word	0
_Label_459:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_453\0"
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
	mov	1543,r13		! source line 1543
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1552,r13		! source line 1552
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
	.word	_Label_466
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_466:
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
_Label_2983:
	push	r0
	sub	r1,1,r1
	bne	_Label_2983
	mov	1557,r13		! source line 1557
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_467 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1564,r13		! source line 1564
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1564,r13		! source line 1564
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
	.word	_Label_468
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_469
	.word	-12
	.word	4
	.word	0
_Label_468:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_467\0"
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
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
	mov	1569,r13		! source line 1569
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_470 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1576,r13		! source line 1576
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1576,r13		! source line 1576
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
	.word	_Label_471
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_472
	.word	-12
	.word	4
	.word	0
_Label_471:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_470\0"
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
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
	mov	1581,r13		! source line 1581
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_473 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1588,r13		! source line 1588
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
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
	.word	_Label_474
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_475
	.word	-12
	.word	4
	.word	0
_Label_474:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_473\0"
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
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	1593,r13		! source line 1593
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_476 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_476  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
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
	.word	_Label_477
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_478
	.word	-12
	.word	4
	.word	0
_Label_477:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_476\0"
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
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
	mov	1605,r13		! source line 1605
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_479 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_479  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1612,r13		! source line 1612
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1612,r13		! source line 1612
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
	.word	_Label_480
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_481
	.word	-12
	.word	4
	.word	0
_Label_480:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_479\0"
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
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
	mov	1617,r13		! source line 1617
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_482 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_482  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1624,r13		! source line 1624
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1624,r13		! source line 1624
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
	.word	_Label_483
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_483:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_482\0"
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
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	1629,r13		! source line 1629
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_485 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_487
	.word	-12
	.word	4
	.word	0
_Label_486:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_209_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	1641,r13		! source line 1641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_488 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_488  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1647,r13		! source line 1647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_489 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_489  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1648,r13		! source line 1648
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_493 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_492 = *_temp_493  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_492 == 0 then goto _Label_491		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_491
!	jmp	_Label_490
_Label_490:
! THEN...
	mov	1652,r13		! source line 1652
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_494 = *_temp_495  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_494) then goto _runtimeErrorNullPointer
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
	jmp	_Label_496
_Label_491:
! ELSE...
	mov	1654,r13		! source line 1654
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_497 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1654,r13		! source line 1654
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_496:
! SEND STATEMENT...
	mov	1656,r13		! source line 1656
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
	mov	1662,r13		! source line 1662
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_498
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_499
	.word	8
	.word	4
	.word	_Label_500
	.word	-12
	.word	4
	.word	_Label_501
	.word	-16
	.word	4
	.word	_Label_502
	.word	-20
	.word	4
	.word	_Label_503
	.word	-24
	.word	4
	.word	_Label_504
	.word	-28
	.word	4
	.word	_Label_505
	.word	-32
	.word	4
	.word	_Label_506
	.word	-36
	.word	4
	.word	0
_Label_498:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_499:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_488\0"
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
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
	mov	1667,r13		! source line 1667
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1674,r13		! source line 1674
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1688,r13		! source line 1688
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2992
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_507
_Label_2992:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_507
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_507
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_521,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_521:
	jmp	_Label_513	! 1:	
	jmp	_Label_520	! 2:	
	jmp	_Label_510	! 3:	
	jmp	_Label_509	! 4:	
	jmp	_Label_512	! 5:	
	jmp	_Label_511	! 6:	
	jmp	_Label_514	! 7:	
	jmp	_Label_515	! 8:	
	jmp	_Label_516	! 9:	
	jmp	_Label_517	! 10:	
	jmp	_Label_518	! 11:	
	jmp	_Label_519	! 12:	
! CASE 4...
_Label_509:
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_522  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_522  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_510:
! CALL STATEMENT...
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_511:
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_523  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_523  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_512:
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_513:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_514:
! RETURN STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_515:
! RETURN STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_516:
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
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
	mov	1706,r13		! source line 1706
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_517:
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
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
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_518:
! RETURN STATEMENT...
	mov	1710,r13		! source line 1710
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_519:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_520:
! CALL STATEMENT...
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_507:
! CALL STATEMENT...
!   _temp_530 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1720,r13		! source line 1720
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_531 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1721,r13		! source line 1721
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_508:
! RETURN STATEMENT...
	mov	1723,r13		! source line 1723
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
	.word	_Label_532
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_533
	.word	8
	.word	4
	.word	_Label_534
	.word	12
	.word	4
	.word	_Label_535
	.word	16
	.word	4
	.word	_Label_536
	.word	20
	.word	4
	.word	_Label_537
	.word	24
	.word	4
	.word	_Label_538
	.word	-12
	.word	4
	.word	_Label_539
	.word	-16
	.word	4
	.word	_Label_540
	.word	-20
	.word	4
	.word	_Label_541
	.word	-24
	.word	4
	.word	_Label_542
	.word	-28
	.word	4
	.word	_Label_543
	.word	-32
	.word	4
	.word	_Label_544
	.word	-36
	.word	4
	.word	_Label_545
	.word	-40
	.word	4
	.word	_Label_546
	.word	-44
	.word	4
	.word	_Label_547
	.word	-48
	.word	4
	.word	0
_Label_532:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_533:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_534:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_536:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_522\0"
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
	mov	3,r1
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
	mov	1728,r13		! source line 1728
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_548 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_549 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_549  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1733,r13		! source line 1733
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_550
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_551
	.word	8
	.word	4
	.word	_Label_552
	.word	-12
	.word	4
	.word	_Label_553
	.word	-16
	.word	4
	.word	0
_Label_550:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_551:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_548\0"
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
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
	mov	1738,r13		! source line 1738
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_554 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1739,r13		! source line 1739
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
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
	.word	_Label_555
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_556
	.word	-12
	.word	4
	.word	0
_Label_555:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_554\0"
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
	mov	2,r1
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
	mov	1744,r13		! source line 1744
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_557 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_558
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_559
	.word	-12
	.word	4
	.word	0
_Label_558:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_557\0"
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
	mov	2,r1
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	1751,r13		! source line 1751
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_560 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_560  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_561
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_562
	.word	-12
	.word	4
	.word	0
_Label_561:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_560\0"
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
	mov	3,r1
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
	mov	1759,r13		! source line 1759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_563 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_564 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1763,r13		! source line 1763
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_565
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_566
	.word	8
	.word	4
	.word	_Label_567
	.word	-12
	.word	4
	.word	_Label_568
	.word	-16
	.word	4
	.word	0
_Label_565:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_563\0"
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
	mov	64,r1
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
	mov	1770,r13		! source line 1770
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-208,r4
	mov	23,r3
_Label_2999:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2999
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-208]
! ASSIGNMENT STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0AS",r10
	mov	1781,r13		! source line 1781
	mov	"\0\0SE",r10
!   _temp_570 = &kFileName
	add	r14,-240,r1
	store	r1,[r14+-108]
!   _temp_571 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_572 = *_temp_573  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_572) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_574 = _temp_572 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_570  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_571  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0IF",r10
!   if t >= 0 then goto _Label_576		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_576
!	jmp	_Label_575
_Label_575:
! THEN...
	mov	1784,r13		! source line 1784
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_576:
! SEND STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0SE",r10
!   _temp_577 = &newAddrSpace
	add	r14,-208,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0AS",r10
	mov	1787,r13		! source line 1787
	mov	"\0\0SE",r10
!   _temp_578 = &kFileName
	add	r14,-240,r1
	store	r1,[r14+-84]
!   _temp_579 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_578  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFilePtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0IF",r10
!   if intIsZero (openFilePtr) then goto _Label_580
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_580
	jmp	_Label_581
_Label_580:
! THEN...
	mov	1789,r13		! source line 1789
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_581:
! ASSIGNMENT STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0AS",r10
	mov	1791,r13		! source line 1791
	mov	"\0\0SE",r10
!   _temp_582 = &newAddrSpace
	add	r14,-208,r1
	store	r1,[r14+-76]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_582  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=entryPoint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0IF",r10
!   if entryPoint >= 0 then goto _Label_584		(int)
	load	[r14+-116],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_584
!	jmp	_Label_583
_Label_583:
! THEN...
	mov	1793,r13		! source line 1793
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_584:
! SEND STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_586 = *_temp_587  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_586) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _temp_586 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_585 = _temp_588		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_589 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_585  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_590 = *_temp_591  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_590) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = _temp_590 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_592 = newAddrSpace  (sizeInBytes=92)
	add	r14,-208,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3000:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3000
! SEND STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0SE",r10
!   _temp_593 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=openFilePtr  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_594 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
!   _temp_596 = &newAddrSpace
	add	r14,-208,r1
	store	r1,[r14+-28]
!   _temp_597 = _temp_596 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_595 = *_temp_597  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   initUserStack = _temp_595 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_598 [999 ] into _temp_599
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
!   initSystemStack = _temp_599		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-216]
! SEND STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0SE",r10
!   _temp_600 = &newAddrSpace
	add	r14,-208,r1
	store	r1,[r14+-12]
!   Send message SetToThisPageTable
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStack  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=entryPoint  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStack  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+8]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_601
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_602
	.word	8
	.word	4
	.word	_Label_603
	.word	-12
	.word	4
	.word	_Label_604
	.word	-16
	.word	4
	.word	_Label_605
	.word	-20
	.word	4
	.word	_Label_606
	.word	-24
	.word	4
	.word	_Label_607
	.word	-28
	.word	4
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
	.word	_Label_614
	.word	-56
	.word	4
	.word	_Label_615
	.word	-60
	.word	4
	.word	_Label_616
	.word	-64
	.word	4
	.word	_Label_617
	.word	-68
	.word	4
	.word	_Label_618
	.word	-72
	.word	4
	.word	_Label_619
	.word	-76
	.word	4
	.word	_Label_620
	.word	-80
	.word	4
	.word	_Label_621
	.word	-84
	.word	4
	.word	_Label_622
	.word	-88
	.word	4
	.word	_Label_623
	.word	-92
	.word	4
	.word	_Label_624
	.word	-96
	.word	4
	.word	_Label_625
	.word	-100
	.word	4
	.word	_Label_626
	.word	-104
	.word	4
	.word	_Label_627
	.word	-108
	.word	4
	.word	_Label_628
	.word	-112
	.word	4
	.word	_Label_629
	.word	-116
	.word	4
	.word	_Label_630
	.word	-208
	.word	92
	.word	_Label_631
	.word	-212
	.word	4
	.word	_Label_632
	.word	-216
	.word	4
	.word	_Label_633
	.word	-240
	.word	24
	.word	_Label_634
	.word	-244
	.word	4
	.word	_Label_635
	.word	-248
	.word	4
	.word	0
_Label_601:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_602:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_629:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_630:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_631:
	.byte	'I'
	.ascii	"initUserStack\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"initSystemStack\0"
	.align
_Label_633:
	.byte	'A'
	.ascii	"kFileName\0"
	.align
_Label_634:
	.byte	'P'
	.ascii	"openFilePtr\0"
	.align
_Label_635:
	.byte	'I'
	.ascii	"t\0"
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
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	1808,r13		! source line 1808
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
	mov	1813,r13		! source line 1813
	mov	"\0\0SE",r10
!   _temp_636 = &kFileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_637 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_638 = *_temp_639  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_638) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _temp_638 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_636  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_637  sizeInBytes=4
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
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_641 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_642 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_643 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_644 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_645 = &kFileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_645  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1821,r13		! source line 1821
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
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
	.word	_Label_646
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_647
	.word	8
	.word	4
	.word	_Label_648
	.word	-12
	.word	4
	.word	_Label_649
	.word	-16
	.word	4
	.word	_Label_650
	.word	-20
	.word	4
	.word	_Label_651
	.word	-24
	.word	4
	.word	_Label_652
	.word	-28
	.word	4
	.word	_Label_653
	.word	-32
	.word	4
	.word	_Label_654
	.word	-36
	.word	4
	.word	_Label_655
	.word	-40
	.word	4
	.word	_Label_656
	.word	-44
	.word	4
	.word	_Label_657
	.word	-48
	.word	4
	.word	_Label_658
	.word	-52
	.word	4
	.word	_Label_659
	.word	-76
	.word	24
	.word	0
_Label_646:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_647:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"t\0"
	.align
_Label_659:
	.byte	'A'
	.ascii	"kFileName\0"
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
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	1828,r13		! source line 1828
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0AS",r10
	mov	1833,r13		! source line 1833
	mov	"\0\0SE",r10
!   _temp_660 = &kfileName
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_661 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_663 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_662 = *_temp_663  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_662) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = _temp_662 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_660  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_661  sizeInBytes=4
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
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_665 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_666 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_667 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1839,r13		! source line 1839
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_668 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1840,r13		! source line 1840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_669 = &kfileName
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1843,r13		! source line 1843
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
	.word	_Label_670
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_671
	.word	8
	.word	4
	.word	_Label_672
	.word	-12
	.word	4
	.word	_Label_673
	.word	-16
	.word	4
	.word	_Label_674
	.word	-20
	.word	4
	.word	_Label_675
	.word	-24
	.word	4
	.word	_Label_676
	.word	-28
	.word	4
	.word	_Label_677
	.word	-32
	.word	4
	.word	_Label_678
	.word	-36
	.word	4
	.word	_Label_679
	.word	-40
	.word	4
	.word	_Label_680
	.word	-44
	.word	4
	.word	_Label_681
	.word	-48
	.word	4
	.word	_Label_682
	.word	-52
	.word	4
	.word	_Label_683
	.word	-76
	.word	24
	.word	0
_Label_670:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_671:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"t\0"
	.align
_Label_683:
	.byte	'A'
	.ascii	"kfileName\0"
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
	mov	21,r1
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	1848,r13		! source line 1848
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0AS",r10
	mov	1853,r13		! source line 1853
	mov	"\0\0SE",r10
!   _temp_684 = &kBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_685 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_686 = *_temp_687  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_686) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_688 = _temp_686 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_684  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_685  sizeInBytes=4
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
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_689 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1855,r13		! source line 1855
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_690 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_691 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_692 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_693 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_694
	.word	12		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_695
	.word	8
	.word	4
	.word	_Label_696
	.word	12
	.word	4
	.word	_Label_697
	.word	16
	.word	4
	.word	_Label_698
	.word	-12
	.word	4
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
	.word	-36
	.word	4
	.word	_Label_705
	.word	-40
	.word	4
	.word	_Label_706
	.word	-44
	.word	4
	.word	_Label_707
	.word	-48
	.word	4
	.word	_Label_708
	.word	-52
	.word	4
	.word	_Label_709
	.word	-76
	.word	24
	.word	0
_Label_694:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_695:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_696:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_697:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_708:
	.byte	'I'
	.ascii	"t\0"
	.align
_Label_709:
	.byte	'A'
	.ascii	"kBuffer\0"
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
	mov	21,r1
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	1871,r13		! source line 1871
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   _temp_710 = &kBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_711 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_713 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_712 = *_temp_713  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_712) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_714 = _temp_712 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_710  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_711  sizeInBytes=4
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
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_715 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1879,r13		! source line 1879
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_716 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_717 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_719 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_720
	.word	12		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_721
	.word	8
	.word	4
	.word	_Label_722
	.word	12
	.word	4
	.word	_Label_723
	.word	16
	.word	4
	.word	_Label_724
	.word	-12
	.word	4
	.word	_Label_725
	.word	-16
	.word	4
	.word	_Label_726
	.word	-20
	.word	4
	.word	_Label_727
	.word	-24
	.word	4
	.word	_Label_728
	.word	-28
	.word	4
	.word	_Label_729
	.word	-32
	.word	4
	.word	_Label_730
	.word	-36
	.word	4
	.word	_Label_731
	.word	-40
	.word	4
	.word	_Label_732
	.word	-44
	.word	4
	.word	_Label_733
	.word	-48
	.word	4
	.word	_Label_734
	.word	-52
	.word	4
	.word	_Label_735
	.word	-76
	.word	24
	.word	0
_Label_720:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_721:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_722:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_734:
	.byte	'I'
	.ascii	"t\0"
	.align
_Label_735:
	.byte	'A'
	.ascii	"kBuffer\0"
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
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	1894,r13		! source line 1894
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_736 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_737 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_738 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1903,r13		! source line 1903
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
	.word	_Label_739
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_740
	.word	8
	.word	4
	.word	_Label_741
	.word	12
	.word	4
	.word	_Label_742
	.word	-12
	.word	4
	.word	_Label_743
	.word	-16
	.word	4
	.word	_Label_744
	.word	-20
	.word	4
	.word	0
_Label_739:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_740:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_741:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_736\0"
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
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1908,r13		! source line 1908
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_745 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_746 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_746  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1913,r13		! source line 1913
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1913,r13		! source line 1913
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
	.word	_Label_747
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_748
	.word	8
	.word	4
	.word	_Label_749
	.word	-12
	.word	4
	.word	_Label_750
	.word	-16
	.word	4
	.word	0
_Label_747:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_748:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_208_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	2504,r13		! source line 2504
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_751 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_751  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   _temp_752 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_752) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_754 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_754) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_753 = *_temp_754  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_752 = _temp_753  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   _temp_755 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_755) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_757 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_757) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_756 = *_temp_757  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_755 = _temp_756  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   _temp_758 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_758) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_760 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_760) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_759 = *_temp_760  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_758 = _temp_759  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_761
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_762
	.word	8
	.word	4
	.word	_Label_763
	.word	12
	.word	4
	.word	_Label_764
	.word	-16
	.word	4
	.word	_Label_765
	.word	-9
	.word	1
	.word	_Label_766
	.word	-20
	.word	4
	.word	_Label_767
	.word	-24
	.word	4
	.word	_Label_768
	.word	-10
	.word	1
	.word	_Label_769
	.word	-28
	.word	4
	.word	_Label_770
	.word	-32
	.word	4
	.word	_Label_771
	.word	-11
	.word	1
	.word	_Label_772
	.word	-36
	.word	4
	.word	_Label_773
	.word	-12
	.word	1
	.word	_Label_774
	.word	-40
	.word	4
	.word	_Label_775
	.word	-44
	.word	4
	.word	0
_Label_761:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_762:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_763:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_765:
	.byte	'C'
	.ascii	"_temp_759\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_768:
	.byte	'C'
	.ascii	"_temp_756\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_771:
	.byte	'C'
	.ascii	"_temp_753\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_773:
	.byte	'C'
	.ascii	"_temp_751\0"
	.align
_Label_774:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_775:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_207_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_printFCB,r1
	push	r1
	mov	3,r1
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	2514,r13		! source line 2514
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_777 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_776 = *_temp_777  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2515,r13		! source line 2515
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2516,r13		! source line 2516
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_printFCB:
	.word	_sourceFileName
	.word	_Label_778
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_779
	.word	8
	.word	4
	.word	_Label_780
	.word	-12
	.word	4
	.word	_Label_781
	.word	-16
	.word	4
	.word	0
_Label_778:
	.ascii	"printFCB\0"
	.align
_Label_779:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_206_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_printOpen,r1
	push	r1
	mov	4,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	2519,r13		! source line 2519
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_782 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2520,r13		! source line 2520
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_783 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2521,r13		! source line 2521
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_784 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2522,r13		! source line 2522
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2523,r13		! source line 2523
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
	mov	2523,r13		! source line 2523
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_printOpen:
	.word	_sourceFileName
	.word	_Label_785
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_786
	.word	8
	.word	4
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	_Label_789
	.word	-20
	.word	4
	.word	0
_Label_785:
	.ascii	"printOpen\0"
	.align
_Label_786:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_790
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_790:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_791
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_791:
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
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	271,r13		! source line 271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_793		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_793
!	jmp	_Label_792
_Label_792:
! THEN...
	mov	273,r13		! source line 273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_794 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	273,r13		! source line 273
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_793:
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	276,r13		! source line 276
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
	mov	276,r13		! source line 276
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
	.word	_Label_796
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_798
	.word	12
	.word	4
	.word	_Label_799
	.word	-12
	.word	4
	.word	_Label_800
	.word	-16
	.word	4
	.word	0
_Label_796:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_797:
	.ascii	"Pself\0"
	.align
_Label_798:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_794\0"
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
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	281,r13		! source line 281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_802		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_802
!	jmp	_Label_801
_Label_801:
! THEN...
	mov	287,r13		! source line 287
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_803 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	287,r13		! source line 287
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_802:
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
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
	mov	290,r13		! source line 290
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_805		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_805
!	jmp	_Label_804
_Label_804:
! THEN...
	mov	291,r13		! source line 291
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
!   _temp_806 = &waitingThreads
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
	mov	292,r13		! source line 292
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_807 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_807 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0SE",r10
!   _temp_808 = &_P_Kernel_readyList
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
_Label_805:
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
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
	.word	_Label_809
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_811
	.word	-12
	.word	4
	.word	_Label_812
	.word	-16
	.word	4
	.word	_Label_813
	.word	-20
	.word	4
	.word	_Label_814
	.word	-24
	.word	4
	.word	_Label_815
	.word	-28
	.word	4
	.word	_Label_816
	.word	-32
	.word	4
	.word	0
_Label_809:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_810:
	.ascii	"Pself\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_815:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_816:
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
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_818		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_818
!	jmp	_Label_817
_Label_817:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_819 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_819  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_818:
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
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
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_821		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_821
!	jmp	_Label_820
_Label_820:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0SE",r10
!   _temp_822 = &waitingThreads
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
	mov	310,r13		! source line 310
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
_Label_821:
! ASSIGNMENT STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	312,r13		! source line 312
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	312,r13		! source line 312
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
	.word	_Label_823
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_825
	.word	-12
	.word	4
	.word	_Label_826
	.word	-16
	.word	4
	.word	_Label_827
	.word	-20
	.word	4
	.word	0
_Label_823:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_824:
	.ascii	"Pself\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_827:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_828
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_828:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_829
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_829:
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
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	335,r13		! source line 335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
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
	mov	336,r13		! source line 336
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
	.word	_Label_831
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_833
	.word	-12
	.word	4
	.word	0
_Label_831:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_832:
	.ascii	"Pself\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_830\0"
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
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_835		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_835
!	jmp	_Label_834
_Label_834:
! THEN...
	mov	345,r13		! source line 345
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_836 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_836  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	345,r13		! source line 345
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_835:
! ASSIGNMENT STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	347,r13		! source line 347
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_840		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_840
!   _temp_839 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_841
_Label_840:
!   _temp_839 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_841:
!   if _temp_839 then goto _Label_838 else goto _Label_837
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_837
	jmp	_Label_838
_Label_837:
! THEN...
	mov	349,r13		! source line 349
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_842
_Label_838:
! ELSE...
	mov	351,r13		! source line 351
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0SE",r10
!   _temp_843 = &waitingThreads
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
	mov	352,r13		! source line 352
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
_Label_842:
! ASSIGNMENT STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	354,r13		! source line 354
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
	.word	_Label_844
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_846
	.word	-16
	.word	4
	.word	_Label_847
	.word	-9
	.word	1
	.word	_Label_848
	.word	-20
	.word	4
	.word	_Label_849
	.word	-24
	.word	4
	.word	0
_Label_844:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_845:
	.ascii	"Pself\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_847:
	.byte	'C'
	.ascii	"_temp_839\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_849:
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
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	359,r13		! source line 359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_851		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_851
!	jmp	_Label_850
_Label_850:
! THEN...
	mov	364,r13		! source line 364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_852 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	364,r13		! source line 364
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_851:
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0AS",r10
	mov	367,r13		! source line 367
	mov	"\0\0SE",r10
!   _temp_853 = &waitingThreads
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
	mov	368,r13		! source line 368
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_855		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_855
!	jmp	_Label_854
_Label_854:
! THEN...
	mov	369,r13		! source line 369
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_856 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_856 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0SE",r10
!   _temp_857 = &_P_Kernel_readyList
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
	mov	371,r13		! source line 371
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_858
_Label_855:
! ELSE...
	mov	373,r13		! source line 373
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_858:
! ASSIGNMENT STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	375,r13		! source line 375
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	375,r13		! source line 375
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
	.word	_Label_859
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_861
	.word	-12
	.word	4
	.word	_Label_862
	.word	-16
	.word	4
	.word	_Label_863
	.word	-20
	.word	4
	.word	_Label_864
	.word	-24
	.word	4
	.word	_Label_865
	.word	-28
	.word	4
	.word	_Label_866
	.word	-32
	.word	4
	.word	0
_Label_859:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_860:
	.ascii	"Pself\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_865:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_866:
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
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_869		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_869
!	jmp	_Label_868
_Label_868:
!   _temp_867 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_870
_Label_869:
!   _temp_867 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_870:
!   ReturnResult: _temp_867  (sizeInBytes=1)
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
	.word	_Label_871
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_873
	.word	-9
	.word	1
	.word	0
_Label_871:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_872:
	.ascii	"Pself\0"
	.align
_Label_873:
	.byte	'C'
	.ascii	"_temp_867\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_874
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_874:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_875
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_875:
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
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	421,r13		! source line 421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	422,r13		! source line 422
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
	mov	422,r13		! source line 422
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
	.word	_Label_877
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_879
	.word	-12
	.word	4
	.word	0
_Label_877:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_878:
	.ascii	"Pself\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_876\0"
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
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	427,r13		! source line 427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
	mov	430,r13		! source line 430
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
!   Retrieve Result: targetName=_temp_882  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_882 then goto _Label_881 else goto _Label_880
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_880
	jmp	_Label_881
_Label_880:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_883 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_883  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	431,r13		! source line 431
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_881:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	434,r13		! source line 434
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
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_884 = &waitingThreads
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
	mov	436,r13		! source line 436
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
	mov	437,r13		! source line 437
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
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
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
	.word	_Label_885
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_887
	.word	12
	.word	4
	.word	_Label_888
	.word	-16
	.word	4
	.word	_Label_889
	.word	-20
	.word	4
	.word	_Label_890
	.word	-9
	.word	1
	.word	_Label_891
	.word	-24
	.word	4
	.word	0
_Label_885:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_886:
	.ascii	"Pself\0"
	.align
_Label_887:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_890:
	.byte	'C'
	.ascii	"_temp_882\0"
	.align
_Label_891:
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
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	443,r13		! source line 443
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0IF",r10
	mov	447,r13		! source line 447
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
!   Retrieve Result: targetName=_temp_894  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_894 then goto _Label_893 else goto _Label_892
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_892
	jmp	_Label_893
_Label_892:
! THEN...
	mov	448,r13		! source line 448
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_895 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	448,r13		! source line 448
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_893:
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	450,r13		! source line 450
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0AS",r10
	mov	451,r13		! source line 451
	mov	"\0\0SE",r10
!   _temp_896 = &waitingThreads
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
	mov	452,r13		! source line 452
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_898		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_898
!	jmp	_Label_897
_Label_897:
! THEN...
	mov	453,r13		! source line 453
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_899 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_899 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_900 = &_P_Kernel_readyList
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
_Label_898:
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	456,r13		! source line 456
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	456,r13		! source line 456
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
	.word	_Label_901
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_903
	.word	12
	.word	4
	.word	_Label_904
	.word	-16
	.word	4
	.word	_Label_905
	.word	-20
	.word	4
	.word	_Label_906
	.word	-24
	.word	4
	.word	_Label_907
	.word	-28
	.word	4
	.word	_Label_908
	.word	-9
	.word	1
	.word	_Label_909
	.word	-32
	.word	4
	.word	_Label_910
	.word	-36
	.word	4
	.word	0
_Label_901:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_902:
	.ascii	"Pself\0"
	.align
_Label_903:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_908:
	.byte	'C'
	.ascii	"_temp_894\0"
	.align
_Label_909:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_910:
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
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	461,r13		! source line 461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0IF",r10
	mov	465,r13		! source line 465
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
!   Retrieve Result: targetName=_temp_913  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_913 then goto _Label_912 else goto _Label_911
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_911
	jmp	_Label_912
_Label_911:
! THEN...
	mov	466,r13		! source line 466
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_914 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_914  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	466,r13		! source line 466
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_912:
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0WH",r10
_Label_915:
!	jmp	_Label_916
_Label_916:
	mov	469,r13		! source line 469
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0AS",r10
	mov	470,r13		! source line 470
	mov	"\0\0SE",r10
!   _temp_918 = &waitingThreads
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
	mov	471,r13		! source line 471
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_919
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_919
	jmp	_Label_920
_Label_919:
! THEN...
	mov	472,r13		! source line 472
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0BR",r10
	jmp	_Label_917
! END IF...
_Label_920:
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_921 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_921 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0SE",r10
!   _temp_922 = &_P_Kernel_readyList
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
	jmp	_Label_915
_Label_917:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	477,r13		! source line 477
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
	.word	_Label_923
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_925
	.word	12
	.word	4
	.word	_Label_926
	.word	-16
	.word	4
	.word	_Label_927
	.word	-20
	.word	4
	.word	_Label_928
	.word	-24
	.word	4
	.word	_Label_929
	.word	-28
	.word	4
	.word	_Label_930
	.word	-9
	.word	1
	.word	_Label_931
	.word	-32
	.word	4
	.word	_Label_932
	.word	-36
	.word	4
	.word	0
_Label_923:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_924:
	.ascii	"Pself\0"
	.align
_Label_925:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_930:
	.byte	'C'
	.ascii	"_temp_913\0"
	.align
_Label_931:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_932:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_933
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
_Label_933:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_934
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_934:
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
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	488,r13		! source line 488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_935 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_935) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_935 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_936 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_936 [0 ] into _temp_937
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
!   Data Move: *_temp_937 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_938 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_938 [999 ] into _temp_939
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
!   Data Move: *_temp_939 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_940 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_940 [999 ] into _temp_941
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
!   stackTop = _temp_941		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_942 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_944 = &_temp_943
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_944 = _temp_944 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_946:
!   Data Move: *_temp_944 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_944 = _temp_944 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_945 = _temp_945 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_945) then goto _Label_946
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_946
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_947 = &_temp_943
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3022
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3022:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_942 = *_temp_947  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3023:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3023
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   _temp_948 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_950 = &_temp_949
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_950 = _temp_950 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_952:
!   Data Move: *_temp_950 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_950 = _temp_950 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_951 = _temp_951 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_951) then goto _Label_952
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_952
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_953 = &_temp_949
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3024
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3024:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_948 = *_temp_953  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3025:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3025
! RETURN STATEMENT...
	mov	502,r13		! source line 502
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
	.word	_Label_954
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_956
	.word	12
	.word	4
	.word	_Label_957
	.word	-12
	.word	4
	.word	_Label_958
	.word	-16
	.word	4
	.word	_Label_959
	.word	-20
	.word	4
	.word	_Label_960
	.word	-84
	.word	64
	.word	_Label_961
	.word	-88
	.word	4
	.word	_Label_962
	.word	-92
	.word	4
	.word	_Label_963
	.word	-96
	.word	4
	.word	_Label_964
	.word	-100
	.word	4
	.word	_Label_965
	.word	-156
	.word	56
	.word	_Label_966
	.word	-160
	.word	4
	.word	_Label_967
	.word	-164
	.word	4
	.word	_Label_968
	.word	-168
	.word	4
	.word	_Label_969
	.word	-172
	.word	4
	.word	_Label_970
	.word	-176
	.word	4
	.word	_Label_971
	.word	-180
	.word	4
	.word	_Label_972
	.word	-184
	.word	4
	.word	_Label_973
	.word	-188
	.word	4
	.word	0
_Label_954:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_955:
	.ascii	"Pself\0"
	.align
_Label_956:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_935\0"
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
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	507,r13		! source line 507
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	518,r13		! source line 518
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
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
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_974 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_974  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_976 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_975  sizeInBytes=4
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
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	526,r13		! source line 526
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
	.word	_Label_977
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_978
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_979
	.word	12
	.word	4
	.word	_Label_980
	.word	16
	.word	4
	.word	_Label_981
	.word	-12
	.word	4
	.word	_Label_982
	.word	-16
	.word	4
	.word	_Label_983
	.word	-20
	.word	4
	.word	_Label_984
	.word	-24
	.word	4
	.word	_Label_985
	.word	-28
	.word	4
	.word	0
_Label_977:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_978:
	.ascii	"Pself\0"
	.align
_Label_979:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_980:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_984:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_985:
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
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_988 == _P_Kernel_currentThread then goto _Label_987		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_987
!	jmp	_Label_986
_Label_986:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_989 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	548,r13		! source line 548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_987:
! ASSIGNMENT STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	550,r13		! source line 550
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_990 = &_P_Kernel_readyList
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
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_992		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_992
!	jmp	_Label_991
_Label_991:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_994		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_994
!	jmp	_Label_993
_Label_993:
! THEN...
	mov	560,r13		! source line 560
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_995 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_995  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	560,r13		! source line 560
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_994:
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_997 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_996  sizeInBytes=4
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
	mov	564,r13		! source line 564
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_992:
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	566,r13		! source line 566
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
	.word	_Label_998
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_999
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_998:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_999:
	.ascii	"Pself\0"
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
	.ascii	"_temp_990\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1006:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1007:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1008:
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
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	571,r13		! source line 571
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1010		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1010
!	jmp	_Label_1009
_Label_1009:
! THEN...
	mov	584,r13		! source line 584
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1011 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1011  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	584,r13		! source line 584
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1010:
! IF STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1014 == _P_Kernel_currentThread then goto _Label_1013		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1013
!	jmp	_Label_1012
_Label_1012:
! THEN...
	mov	588,r13		! source line 588
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1015 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1015  sizeInBytes=4
	load	[r14+-20],r1
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
_Label_1013:
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
	mov	594,r13		! source line 594
	mov	"\0\0SE",r10
!   _temp_1016 = &_P_Kernel_readyList
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
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1017
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1017
	jmp	_Label_1018
_Label_1017:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1019 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	596,r13		! source line 596
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1018:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	598,r13		! source line 598
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
	.word	_Label_1020
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1022
	.word	-12
	.word	4
	.word	_Label_1023
	.word	-16
	.word	4
	.word	_Label_1024
	.word	-20
	.word	4
	.word	_Label_1025
	.word	-24
	.word	4
	.word	_Label_1026
	.word	-28
	.word	4
	.word	_Label_1027
	.word	-32
	.word	4
	.word	0
_Label_1020:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1021:
	.ascii	"Pself\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1027:
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
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	603,r13		! source line 603
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0IF",r10
!   _temp_1031 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1031 [0 ] into _temp_1032
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
!   Data Move: _temp_1030 = *_temp_1032  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1030 == 606348324 then goto _Label_1029		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1029
!	jmp	_Label_1028
_Label_1028:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1033 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	610,r13		! source line 610
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1034
_Label_1029:
! ELSE...
	mov	611,r13		! source line 611
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0IF",r10
!   _temp_1038 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1038 [999 ] into _temp_1039
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
!   Data Move: _temp_1037 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1037 == 606348324 then goto _Label_1036		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1036
!	jmp	_Label_1035
_Label_1035:
! THEN...
	mov	612,r13		! source line 612
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1040 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1040  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	612,r13		! source line 612
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1036:
! END IF...
_Label_1034:
! RETURN STATEMENT...
	mov	609,r13		! source line 609
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
	.word	_Label_1041
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1042
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1043
	.word	-12
	.word	4
	.word	_Label_1044
	.word	-16
	.word	4
	.word	_Label_1045
	.word	-20
	.word	4
	.word	_Label_1046
	.word	-24
	.word	4
	.word	_Label_1047
	.word	-28
	.word	4
	.word	_Label_1048
	.word	-32
	.word	4
	.word	_Label_1049
	.word	-36
	.word	4
	.word	_Label_1050
	.word	-40
	.word	4
	.word	0
_Label_1041:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1042:
	.ascii	"Pself\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1030\0"
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
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	618,r13		! source line 618
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1051 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1051  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1052 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1053  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1054 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1054  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1055 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	631,r13		! source line 631
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1060 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1061 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1060  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1056:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1061 then goto _Label_1059		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1059
_Label_1057:
	mov	631,r13		! source line 631
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1062 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1063 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1064 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1066 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1066 [i ] into _temp_1067
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
!   Data Move: _temp_1065 = *_temp_1067  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1068 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1068  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1070 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1070 [i ] into _temp_1071
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
!   Data Move: _temp_1069 = *_temp_1071  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1072 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1058:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1056
! END FOR
_Label_1059:
! CALL STATEMENT...
!   _temp_1073 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-116]
!   _temp_1074 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1074  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1075 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-108]
!   _temp_1077 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1077 [0 ] into _temp_1078
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
!   _temp_1076 = _temp_1078		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1076  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	642,r13		! source line 642
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1081
	cmp	r1,2
	be	_Label_1082
	cmp	r1,3
	be	_Label_1083
	cmp	r1,4
	be	_Label_1084
	cmp	r1,5
	be	_Label_1085
	jmp	_Label_1079
! CASE 1...
_Label_1081:
! CALL STATEMENT...
!   _temp_1086 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1086  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_1080
! CASE 2...
_Label_1082:
! CALL STATEMENT...
!   _temp_1087 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1087  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_1080
! CASE 3...
_Label_1083:
! CALL STATEMENT...
!   _temp_1088 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0BR",r10
	jmp	_Label_1080
! CASE 4...
_Label_1084:
! CALL STATEMENT...
!   _temp_1089 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0BR",r10
	jmp	_Label_1080
! CASE 5...
_Label_1085:
! CALL STATEMENT...
!   _temp_1090 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0BR",r10
	jmp	_Label_1080
! DEFAULT CASE...
_Label_1079:
! CALL STATEMENT...
!   _temp_1091 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	659,r13		! source line 659
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1080:
! CALL STATEMENT...
!   _temp_1092 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1093 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1098 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1099 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1098  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1094:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1099 then goto _Label_1097		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1097
_Label_1095:
	mov	665,r13		! source line 665
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1100 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1101 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1102 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1104 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1104 [i ] into _temp_1105
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
!   Data Move: _temp_1103 = *_temp_1105  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1103  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1106 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1106  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1108 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1108 [i ] into _temp_1109
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
!   Data Move: _temp_1107 = *_temp_1109  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1110 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1096:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1094
! END FOR
_Label_1097:
! ASSIGNMENT STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	674,r13		! source line 674
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
	.word	_Label_1111
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1113
	.word	-12
	.word	4
	.word	_Label_1114
	.word	-16
	.word	4
	.word	_Label_1115
	.word	-20
	.word	4
	.word	_Label_1116
	.word	-24
	.word	4
	.word	_Label_1117
	.word	-28
	.word	4
	.word	_Label_1118
	.word	-32
	.word	4
	.word	_Label_1119
	.word	-36
	.word	4
	.word	_Label_1120
	.word	-40
	.word	4
	.word	_Label_1121
	.word	-44
	.word	4
	.word	_Label_1122
	.word	-48
	.word	4
	.word	_Label_1123
	.word	-52
	.word	4
	.word	_Label_1124
	.word	-56
	.word	4
	.word	_Label_1125
	.word	-60
	.word	4
	.word	_Label_1126
	.word	-64
	.word	4
	.word	_Label_1127
	.word	-68
	.word	4
	.word	_Label_1128
	.word	-72
	.word	4
	.word	_Label_1129
	.word	-76
	.word	4
	.word	_Label_1130
	.word	-80
	.word	4
	.word	_Label_1131
	.word	-84
	.word	4
	.word	_Label_1132
	.word	-88
	.word	4
	.word	_Label_1133
	.word	-92
	.word	4
	.word	_Label_1134
	.word	-96
	.word	4
	.word	_Label_1135
	.word	-100
	.word	4
	.word	_Label_1136
	.word	-104
	.word	4
	.word	_Label_1137
	.word	-108
	.word	4
	.word	_Label_1138
	.word	-112
	.word	4
	.word	_Label_1139
	.word	-116
	.word	4
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
	.word	-132
	.word	4
	.word	_Label_1144
	.word	-136
	.word	4
	.word	_Label_1145
	.word	-140
	.word	4
	.word	_Label_1146
	.word	-144
	.word	4
	.word	_Label_1147
	.word	-148
	.word	4
	.word	_Label_1148
	.word	-152
	.word	4
	.word	_Label_1149
	.word	-156
	.word	4
	.word	_Label_1150
	.word	-160
	.word	4
	.word	_Label_1151
	.word	-164
	.word	4
	.word	_Label_1152
	.word	-168
	.word	4
	.word	_Label_1153
	.word	-172
	.word	4
	.word	_Label_1154
	.word	-176
	.word	4
	.word	_Label_1155
	.word	-180
	.word	4
	.word	_Label_1156
	.word	-184
	.word	4
	.word	_Label_1157
	.word	-188
	.word	4
	.word	_Label_1158
	.word	-192
	.word	4
	.word	_Label_1159
	.word	-196
	.word	4
	.word	0
_Label_1111:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1112:
	.ascii	"Pself\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1158:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1159:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1160
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1160:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1161
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1161:
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
	mov	11478,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	729,r13		! source line 729
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1162 = _StringConst_104
	set	_StringConst_104,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
!   _temp_1163 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1165 = &_temp_1164
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1165 = _temp_1165 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1167 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3032:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3032
!   _temp_1167 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1169:
!   Data Move: *_temp_1165 = _temp_1167  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3033:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3033
!   _temp_1165 = _temp_1165 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1166 = _temp_1166 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1166) then goto _Label_1169
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1169
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1170 = &_temp_1164
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3034
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3034:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1163 = *_temp_1170  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3035:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3035
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
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
!   ZeroMemory: threadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1174 = &threadManagerLock
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
!   _temp_1175 = &threadBecameFree
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
	mov	748,r13		! source line 748
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1180 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1181 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1180  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1176:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1181 then goto _Label_1179		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1179
_Label_1177:
	mov	748,r13		! source line 748
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1182 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-48]
!   _temp_1183 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1183 [i ] into _temp_1184
!     make sure index expr is >= 0
	set	-45912,r2
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
!   Prepare Argument: offset=12  value=_temp_1182  sizeInBytes=4
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
	mov	750,r13		! source line 750
	mov	"\0\0AS",r10
!   _temp_1185 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1185 [i ] into _temp_1186
!     make sure index expr is >= 0
	set	-45912,r2
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
!   _temp_1187 = _temp_1186 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1187 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1189 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1189 [i ] into _temp_1190
!     make sure index expr is >= 0
	set	-45912,r2
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
!   _temp_1188 = _temp_1190		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1191 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1188  sizeInBytes=4
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
_Label_1178:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1176
! END FOR
_Label_1179:
! RETURN STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1192
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1194
	.word	-12
	.word	4
	.word	_Label_1195
	.word	-16
	.word	4
	.word	_Label_1196
	.word	-20
	.word	4
	.word	_Label_1197
	.word	-24
	.word	4
	.word	_Label_1198
	.word	-28
	.word	4
	.word	_Label_1199
	.word	-32
	.word	4
	.word	_Label_1200
	.word	-36
	.word	4
	.word	_Label_1201
	.word	-40
	.word	4
	.word	_Label_1202
	.word	-44
	.word	4
	.word	_Label_1203
	.word	-48
	.word	4
	.word	_Label_1204
	.word	-52
	.word	4
	.word	_Label_1205
	.word	-56
	.word	4
	.word	_Label_1206
	.word	-60
	.word	4
	.word	_Label_1207
	.word	-64
	.word	4
	.word	_Label_1208
	.word	-68
	.word	4
	.word	_Label_1209
	.word	-72
	.word	4
	.word	_Label_1210
	.word	-76
	.word	4
	.word	_Label_1211
	.word	-80
	.word	4
	.word	_Label_1212
	.word	-84
	.word	4
	.word	_Label_1213
	.word	-4248
	.word	4164
	.word	_Label_1214
	.word	-4252
	.word	4
	.word	_Label_1215
	.word	-4256
	.word	4
	.word	_Label_1216
	.word	-45900
	.word	41644
	.word	_Label_1217
	.word	-45904
	.word	4
	.word	_Label_1218
	.word	-45908
	.word	4
	.word	_Label_1219
	.word	-45912
	.word	4
	.word	0
_Label_1192:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1193:
	.ascii	"Pself\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1219:
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
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	758,r13		! source line 758
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1220 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1225 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1226 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1225  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1221:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1226 then goto _Label_1224		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1224
_Label_1222:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1227 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1228 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1230 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1230 [i ] into _temp_1231
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
!   _temp_1229 = _temp_1231		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1229  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_function_211_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1223:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1221
! END FOR
_Label_1224:
! CALL STATEMENT...
!   _temp_1232 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1233 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1234 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1233  sizeInBytes=4
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
	mov	775,r13		! source line 775
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	776,r13		! source line 776
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
	.word	_Label_1235
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1236
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1237
	.word	-12
	.word	4
	.word	_Label_1238
	.word	-16
	.word	4
	.word	_Label_1239
	.word	-20
	.word	4
	.word	_Label_1240
	.word	-24
	.word	4
	.word	_Label_1241
	.word	-28
	.word	4
	.word	_Label_1242
	.word	-32
	.word	4
	.word	_Label_1243
	.word	-36
	.word	4
	.word	_Label_1244
	.word	-40
	.word	4
	.word	_Label_1245
	.word	-44
	.word	4
	.word	_Label_1246
	.word	-48
	.word	4
	.word	_Label_1247
	.word	-52
	.word	4
	.word	_Label_1248
	.word	-56
	.word	4
	.word	_Label_1249
	.word	-60
	.word	4
	.word	0
_Label_1235:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1236:
	.ascii	"Pself\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1248:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1249:
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
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1250 = &threadManagerLock
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
	mov	790,r13		! source line 790
	mov	"\0\0WH",r10
_Label_1251:
	mov	790,r13		! source line 790
	mov	"\0\0SE",r10
!   _temp_1254 = &freeList
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
!   if result==true then goto _Label_1252 else goto _Label_1253
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1253
	jmp	_Label_1252
_Label_1252:
	mov	790,r13		! source line 790
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1255 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1256 = &threadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1255  sizeInBytes=4
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
	jmp	_Label_1251
_Label_1253:
! ASSIGNMENT STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0AS",r10
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1257 = &freeList
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
	mov	794,r13		! source line 794
	mov	"\0\0AS",r10
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1258 = threadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1258 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1259 = &threadManagerLock
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
	mov	796,r13		! source line 796
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
	.word	_Label_1260
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1262
	.word	-12
	.word	4
	.word	_Label_1263
	.word	-16
	.word	4
	.word	_Label_1264
	.word	-20
	.word	4
	.word	_Label_1265
	.word	-24
	.word	4
	.word	_Label_1266
	.word	-28
	.word	4
	.word	_Label_1267
	.word	-32
	.word	4
	.word	_Label_1268
	.word	-36
	.word	4
	.word	_Label_1269
	.word	-40
	.word	4
	.word	0
_Label_1260:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1261:
	.ascii	"Pself\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1269:
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
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	801,r13		! source line 801
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_1270 = &threadManagerLock
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
	mov	807,r13		! source line 807
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1271 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1271 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_1272 = &freeList
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
	mov	809,r13		! source line 809
	mov	"\0\0SE",r10
!   _temp_1273 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1274 = &threadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1273  sizeInBytes=4
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
	mov	810,r13		! source line 810
	mov	"\0\0SE",r10
!   _temp_1275 = &threadManagerLock
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
	mov	810,r13		! source line 810
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
	.word	_Label_1276
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1278
	.word	12
	.word	4
	.word	_Label_1279
	.word	-12
	.word	4
	.word	_Label_1280
	.word	-16
	.word	4
	.word	_Label_1281
	.word	-20
	.word	4
	.word	_Label_1282
	.word	-24
	.word	4
	.word	_Label_1283
	.word	-28
	.word	4
	.word	_Label_1284
	.word	-32
	.word	4
	.word	0
_Label_1276:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1277:
	.ascii	"Pself\0"
	.align
_Label_1278:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1285
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1285:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1286
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1286:
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
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3040:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3040
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0SE",r10
!   _temp_1288 = &addrSpace
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
	mov	827,r13		! source line 827
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
	.word	_Label_1289
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1291
	.word	-12
	.word	4
	.word	_Label_1292
	.word	-16
	.word	4
	.word	0
_Label_1289:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1290:
	.ascii	"Pself\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1287\0"
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
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	837,r13		! source line 837
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1293) then goto _runtimeErrorNullPointer
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
	mov	843,r13		! source line 843
	mov	"\0\0SE",r10
!   _temp_1294 = &addrSpace
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
!   _temp_1295 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CA",r10
	call	_function_211_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	855,r13		! source line 855
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
	.word	_Label_1296
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1297
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1298
	.word	-12
	.word	4
	.word	_Label_1299
	.word	-16
	.word	4
	.word	_Label_1300
	.word	-20
	.word	4
	.word	0
_Label_1296:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1297:
	.ascii	"Pself\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1293\0"
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
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	860,r13		! source line 860
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1301 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1301  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1303 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1303  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1304 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1306		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1306
!	jmp	_Label_1305
_Label_1305:
! THEN...
	mov	870,r13		! source line 870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1307 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1308
_Label_1306:
! ELSE...
	mov	871,r13		! source line 871
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1310		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1310
!	jmp	_Label_1309
_Label_1309:
! THEN...
	mov	872,r13		! source line 872
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1311 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1312
_Label_1310:
! ELSE...
	mov	873,r13		! source line 873
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1314		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1314
!	jmp	_Label_1313
_Label_1313:
! THEN...
	mov	874,r13		! source line 874
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1315 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1316
_Label_1314:
! ELSE...
	mov	876,r13		! source line 876
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1317 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	876,r13		! source line 876
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1316:
! END IF...
_Label_1312:
! END IF...
_Label_1308:
! CALL STATEMENT...
!   _temp_1318 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1319 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	882,r13		! source line 882
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
	.word	_Label_1320
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1321
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1322
	.word	-12
	.word	4
	.word	_Label_1323
	.word	-16
	.word	4
	.word	_Label_1324
	.word	-20
	.word	4
	.word	_Label_1325
	.word	-24
	.word	4
	.word	_Label_1326
	.word	-28
	.word	4
	.word	_Label_1327
	.word	-32
	.word	4
	.word	_Label_1328
	.word	-36
	.word	4
	.word	_Label_1329
	.word	-40
	.word	4
	.word	_Label_1330
	.word	-44
	.word	4
	.word	_Label_1331
	.word	-48
	.word	4
	.word	0
_Label_1320:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1321:
	.ascii	"Pself\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1332
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1332:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1333
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1333:
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
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	893,r13		! source line 893
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   _temp_1334 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1336 = &_temp_1335
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1336 = _temp_1336 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1338 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3044:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3044
!   _temp_1338 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1340:
!   Data Move: *_temp_1336 = _temp_1338  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3045:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3045
!   _temp_1336 = _temp_1336 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1337 = _temp_1337 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1337) then goto _Label_1340
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1340
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1341 = &_temp_1335
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3046
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3046:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1334 = *_temp_1341  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3047:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3047
! ASSIGNMENT STATEMENT...
	mov	902,r13		! source line 902
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
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
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
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   processBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   processDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1346 = &processManagerLock
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
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1347 = &processBecameFree
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
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_1348 = &processDied
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
	mov	912,r13		! source line 912
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1353 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1354 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1353  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1349:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1354 then goto _Label_1352		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1352
_Label_1350:
	mov	912,r13		! source line 912
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1355 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1355 [i ] into _temp_1356
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
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   _temp_1357 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1357 [i ] into _temp_1358
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
!   _temp_1359 = _temp_1358 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1359 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0SE",r10
!   _temp_1361 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1361 [i ] into _temp_1362
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
!   _temp_1360 = _temp_1362		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1363 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1360  sizeInBytes=4
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
_Label_1351:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1349
! END FOR
_Label_1352:
! RETURN STATEMENT...
	mov	912,r13		! source line 912
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
	.word	_Label_1364
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1365
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1366
	.word	-12
	.word	4
	.word	_Label_1367
	.word	-16
	.word	4
	.word	_Label_1368
	.word	-20
	.word	4
	.word	_Label_1369
	.word	-24
	.word	4
	.word	_Label_1370
	.word	-28
	.word	4
	.word	_Label_1371
	.word	-32
	.word	4
	.word	_Label_1372
	.word	-36
	.word	4
	.word	_Label_1373
	.word	-40
	.word	4
	.word	_Label_1374
	.word	-44
	.word	4
	.word	_Label_1375
	.word	-48
	.word	4
	.word	_Label_1376
	.word	-52
	.word	4
	.word	_Label_1377
	.word	-56
	.word	4
	.word	_Label_1378
	.word	-60
	.word	4
	.word	_Label_1379
	.word	-64
	.word	4
	.word	_Label_1380
	.word	-68
	.word	4
	.word	_Label_1381
	.word	-72
	.word	4
	.word	_Label_1382
	.word	-76
	.word	4
	.word	_Label_1383
	.word	-80
	.word	4
	.word	_Label_1384
	.word	-84
	.word	4
	.word	_Label_1385
	.word	-88
	.word	4
	.word	_Label_1386
	.word	-212
	.word	124
	.word	_Label_1387
	.word	-216
	.word	4
	.word	_Label_1388
	.word	-220
	.word	4
	.word	_Label_1389
	.word	-1464
	.word	1244
	.word	_Label_1390
	.word	-1468
	.word	4
	.word	_Label_1391
	.word	-1472
	.word	4
	.word	0
_Label_1364:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1365:
	.ascii	"Pself\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1391:
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	921,r13		! source line 921
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1392 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1397 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1398 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1397  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1393:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1398 then goto _Label_1396		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1396
_Label_1394:
	mov	930,r13		! source line 930
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1399 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1399  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1400 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1400  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_1401 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1401 [i ] into _temp_1402
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
_Label_1395:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1393
! END FOR
_Label_1396:
! CALL STATEMENT...
!   _temp_1403 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1403  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_1404 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1405 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1404  sizeInBytes=4
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
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	939,r13		! source line 939
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
	.word	_Label_1406
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1407
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1408
	.word	-12
	.word	4
	.word	_Label_1409
	.word	-16
	.word	4
	.word	_Label_1410
	.word	-20
	.word	4
	.word	_Label_1411
	.word	-24
	.word	4
	.word	_Label_1412
	.word	-28
	.word	4
	.word	_Label_1413
	.word	-32
	.word	4
	.word	_Label_1414
	.word	-36
	.word	4
	.word	_Label_1415
	.word	-40
	.word	4
	.word	_Label_1416
	.word	-44
	.word	4
	.word	_Label_1417
	.word	-48
	.word	4
	.word	_Label_1418
	.word	-52
	.word	4
	.word	_Label_1419
	.word	-56
	.word	4
	.word	0
_Label_1406:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1407:
	.ascii	"Pself\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1418:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1419:
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	944,r13		! source line 944
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1420 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1425 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1426 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1425  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1421:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1426 then goto _Label_1424		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1424
_Label_1422:
	mov	953,r13		! source line 953
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1427 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1428 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1428 [i ] into _temp_1429
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
_Label_1423:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1421
! END FOR
_Label_1424:
! CALL STATEMENT...
!   _temp_1430 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	958,r13		! source line 958
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1431 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1432 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1431  sizeInBytes=4
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
	mov	960,r13		! source line 960
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	961,r13		! source line 961
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	961,r13		! source line 961
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
	.word	_Label_1433
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1435
	.word	-12
	.word	4
	.word	_Label_1436
	.word	-16
	.word	4
	.word	_Label_1437
	.word	-20
	.word	4
	.word	_Label_1438
	.word	-24
	.word	4
	.word	_Label_1439
	.word	-28
	.word	4
	.word	_Label_1440
	.word	-32
	.word	4
	.word	_Label_1441
	.word	-36
	.word	4
	.word	_Label_1442
	.word	-40
	.word	4
	.word	_Label_1443
	.word	-44
	.word	4
	.word	_Label_1444
	.word	-48
	.word	4
	.word	_Label_1445
	.word	-52
	.word	4
	.word	0
_Label_1433:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1434:
	.ascii	"Pself\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1444:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1445:
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	966,r13		! source line 966
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0SE",r10
!   _temp_1446 = &processManagerLock
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
	mov	975,r13		! source line 975
	mov	"\0\0WH",r10
_Label_1447:
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1450 = &freeList
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
!   if result==true then goto _Label_1448 else goto _Label_1449
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1449
	jmp	_Label_1448
_Label_1448:
	mov	975,r13		! source line 975
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1451 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1452 = &processBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1451  sizeInBytes=4
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
	jmp	_Label_1447
_Label_1449:
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1453 = &freeList
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
	mov	979,r13		! source line 979
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1454 = processPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1454 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	980,r13		! source line 980
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
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1455 = processPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1455 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1456 = &processManagerLock
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
	mov	983,r13		! source line 983
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
	.word	_Label_1457
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1459
	.word	-12
	.word	4
	.word	_Label_1460
	.word	-16
	.word	4
	.word	_Label_1461
	.word	-20
	.word	4
	.word	_Label_1462
	.word	-24
	.word	4
	.word	_Label_1463
	.word	-28
	.word	4
	.word	_Label_1464
	.word	-32
	.word	4
	.word	_Label_1465
	.word	-36
	.word	4
	.word	_Label_1466
	.word	-40
	.word	4
	.word	_Label_1467
	.word	-44
	.word	4
	.word	0
_Label_1457:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1458:
	.ascii	"Pself\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1467:
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
	mov	8,r1
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	988,r13		! source line 988
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0SE",r10
!   _temp_1468 = &processManagerLock
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
	mov	994,r13		! source line 994
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1469 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1469 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1470 = &freeList
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
	mov	996,r13		! source line 996
	mov	"\0\0SE",r10
!   _temp_1471 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1472 = &processBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1471  sizeInBytes=4
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
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1473 = &processManagerLock
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
	mov	997,r13		! source line 997
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1474
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1476
	.word	12
	.word	4
	.word	_Label_1477
	.word	-12
	.word	4
	.word	_Label_1478
	.word	-16
	.word	4
	.word	_Label_1479
	.word	-20
	.word	4
	.word	_Label_1480
	.word	-24
	.word	4
	.word	_Label_1481
	.word	-28
	.word	4
	.word	_Label_1482
	.word	-32
	.word	4
	.word	0
_Label_1474:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1475:
	.ascii	"Pself\0"
	.align
_Label_1476:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1483
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1483:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1484
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1484:
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
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	1030,r13		! source line 1030
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1485 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1036,r13		! source line 1036
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
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
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_1487 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1040,r13		! source line 1040
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
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_1489 = &frameManagerLock
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
	mov	1042,r13		! source line 1042
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
	mov	1043,r13		! source line 1043
	mov	"\0\0SE",r10
!   _temp_1491 = &newFramesAvailable
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
	mov	1049,r13		! source line 1049
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1496 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1497 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1496  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1492:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1497 then goto _Label_1495		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1495
_Label_1493:
	mov	1049,r13		! source line 1049
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1500 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1500) then goto _Label_1499
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1499
!	jmp	_Label_1498
_Label_1498:
! THEN...
	mov	1053,r13		! source line 1053
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1501 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1053,r13		! source line 1053
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1499:
!   Increment the FOR-LOOP index variable and jump back
_Label_1494:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1492
! END FOR
_Label_1495:
! RETURN STATEMENT...
	mov	1049,r13		! source line 1049
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
	.word	_Label_1502
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1503
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1504
	.word	-12
	.word	4
	.word	_Label_1505
	.word	-16
	.word	4
	.word	_Label_1506
	.word	-20
	.word	4
	.word	_Label_1507
	.word	-24
	.word	4
	.word	_Label_1508
	.word	-28
	.word	4
	.word	_Label_1509
	.word	-32
	.word	4
	.word	_Label_1510
	.word	-36
	.word	4
	.word	_Label_1511
	.word	-40
	.word	4
	.word	_Label_1512
	.word	-44
	.word	4
	.word	_Label_1513
	.word	-48
	.word	4
	.word	_Label_1514
	.word	-52
	.word	4
	.word	_Label_1515
	.word	-56
	.word	4
	.word	0
_Label_1502:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1503:
	.ascii	"Pself\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1515:
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	1060,r13		! source line 1060
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1516 = &frameManagerLock
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
!   _temp_1517 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1517  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1065,r13		! source line 1065
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1518 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1066,r13		! source line 1066
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1519 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1519  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0SE",r10
!   _temp_1520 = &framesInUse
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
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1521 = &frameManagerLock
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
	mov	1069,r13		! source line 1069
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
	.word	_Label_1522
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1523
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1524
	.word	-12
	.word	4
	.word	_Label_1525
	.word	-16
	.word	4
	.word	_Label_1526
	.word	-20
	.word	4
	.word	_Label_1527
	.word	-24
	.word	4
	.word	_Label_1528
	.word	-28
	.word	4
	.word	_Label_1529
	.word	-32
	.word	4
	.word	0
_Label_1522:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1523:
	.ascii	"Pself\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1516\0"
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	1074,r13		! source line 1074
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1530 = &frameManagerLock
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
	mov	1085,r13		! source line 1085
	mov	"\0\0WH",r10
_Label_1531:
!   if numberFreeFrames >= 1 then goto _Label_1533		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1533
!	jmp	_Label_1532
_Label_1532:
	mov	1085,r13		! source line 1085
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_1534 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1535 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1534  sizeInBytes=4
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
	jmp	_Label_1531
_Label_1533:
! ASSIGNMENT STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0AS",r10
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1536 = &framesInUse
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
	mov	1091,r13		! source line 1091
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
	mov	1094,r13		! source line 1094
	mov	"\0\0SE",r10
!   _temp_1537 = &frameManagerLock
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
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   _temp_1538 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1538		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1099,r13		! source line 1099
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
	.word	_Label_1539
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1541
	.word	-12
	.word	4
	.word	_Label_1542
	.word	-16
	.word	4
	.word	_Label_1543
	.word	-20
	.word	4
	.word	_Label_1544
	.word	-24
	.word	4
	.word	_Label_1545
	.word	-28
	.word	4
	.word	_Label_1546
	.word	-32
	.word	4
	.word	_Label_1547
	.word	-36
	.word	4
	.word	_Label_1548
	.word	-40
	.word	4
	.word	0
_Label_1539:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1540:
	.ascii	"Pself\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1547:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1548:
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
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	1104,r13		! source line 1104
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0SE",r10
!   _temp_1549 = &frameManagerLock
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
	mov	1111,r13		! source line 1111
	mov	"\0\0WH",r10
_Label_1550:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1552		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1552
!	jmp	_Label_1551
_Label_1551:
	mov	1111,r13		! source line 1111
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0SE",r10
!   _temp_1553 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1554 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1553  sizeInBytes=4
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
	jmp	_Label_1550
_Label_1552:
! FOR STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1559 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1560 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1559  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1555:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1560 then goto _Label_1558		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1558
_Label_1556:
	mov	1114,r13		! source line 1114
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_1561 = &framesInUse
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
	mov	1116,r13		! source line 1116
	mov	"\0\0AS",r10
!   _temp_1562 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddress = 1048576 + _temp_1562		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddress  sizeInBytes=4
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
_Label_1557:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1555
! END FOR
_Label_1558:
! ASSIGNMENT STATEMENT...
	mov	1119,r13		! source line 1119
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
	mov	1120,r13		! source line 1120
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1563 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1563 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_1564 = &frameManagerLock
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
	mov	1121,r13		! source line 1121
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
	.word	_Label_1565
	.word	12		! total size of parameters
	.word	60		! frame size = 60
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
	.word	_Label_1574
	.word	-32
	.word	4
	.word	_Label_1575
	.word	-36
	.word	4
	.word	_Label_1576
	.word	-40
	.word	4
	.word	_Label_1577
	.word	-44
	.word	4
	.word	_Label_1578
	.word	-48
	.word	4
	.word	_Label_1579
	.word	-52
	.word	4
	.word	_Label_1580
	.word	-56
	.word	4
	.word	0
_Label_1565:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1566:
	.ascii	"Pself\0"
	.align
_Label_1567:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1568:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
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
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1579:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1580:
	.byte	'I'
	.ascii	"frameAddress\0"
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
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	1126,r13		! source line 1126
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1581 = &frameManagerLock
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
	mov	1133,r13		! source line 1133
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1586 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1589 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1588 = *_temp_1589  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1587 = _temp_1588 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1586  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1582:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1587 then goto _Label_1585		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1585
_Label_1583:
	mov	1133,r13		! source line 1133
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
	mov	1134,r13		! source line 1134
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
!   Retrieve Result: targetName=frameAddress  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0AS",r10
!   _temp_1590 = frameAddress - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_1590 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1591 = &framesInUse
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
_Label_1584:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1582
! END FOR
_Label_1585:
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1593 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1592 = *_temp_1593  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1592		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_1594 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1595 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1594  sizeInBytes=4
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
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1596 = &frameManagerLock
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
	mov	1140,r13		! source line 1140
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
	.word	_Label_1597
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1599
	.word	12
	.word	4
	.word	_Label_1600
	.word	-12
	.word	4
	.word	_Label_1601
	.word	-16
	.word	4
	.word	_Label_1602
	.word	-20
	.word	4
	.word	_Label_1603
	.word	-24
	.word	4
	.word	_Label_1604
	.word	-28
	.word	4
	.word	_Label_1605
	.word	-32
	.word	4
	.word	_Label_1606
	.word	-36
	.word	4
	.word	_Label_1607
	.word	-40
	.word	4
	.word	_Label_1608
	.word	-44
	.word	4
	.word	_Label_1609
	.word	-48
	.word	4
	.word	_Label_1610
	.word	-52
	.word	4
	.word	_Label_1611
	.word	-56
	.word	4
	.word	_Label_1612
	.word	-60
	.word	4
	.word	_Label_1613
	.word	-64
	.word	4
	.word	_Label_1614
	.word	-68
	.word	4
	.word	0
_Label_1597:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1598:
	.ascii	"Pself\0"
	.align
_Label_1599:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1612:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1613:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"frameAddress\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1615
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
_Label_1615:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1616
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1616:
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
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	1151,r13		! source line 1151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
!   _temp_1617 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1619 = &_temp_1618
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1619 = _temp_1619 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1621:
!   Data Move: *_temp_1619 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1619 = _temp_1619 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1620 = _temp_1620 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1620) then goto _Label_1621
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1621
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1622 = &_temp_1618
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3058
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3058:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1617 = *_temp_1622  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3059:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3059
! RETURN STATEMENT...
	mov	1156,r13		! source line 1156
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
	.word	_Label_1623
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1625
	.word	-12
	.word	4
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-104
	.word	84
	.word	_Label_1629
	.word	-108
	.word	4
	.word	0
_Label_1623:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1624:
	.ascii	"Pself\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1617\0"
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
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	1161,r13		! source line 1161
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1630 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1630  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1631 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1636 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1637 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1636  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1632:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1637 then goto _Label_1635		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1635
_Label_1633:
	mov	1168,r13		! source line 1168
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1638 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1638  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1640 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1640 [i ] into _temp_1641
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
!   _temp_1639 = _temp_1641		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1642 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1644 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1644 [i ] into _temp_1645
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
!   Data Move: _temp_1643 = *_temp_1645  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1646 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1646  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1173,r13		! source line 1173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1647 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1648 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1648  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1650) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1649  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1649  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1651 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1651  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1177,r13		! source line 1177
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0IF",r10
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1655) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1654  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1654) then goto _Label_1653
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1653
!	jmp	_Label_1652
_Label_1652:
! THEN...
	mov	1179,r13		! source line 1179
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1657) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1656  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1656  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1658
_Label_1653:
! ELSE...
	mov	1181,r13		! source line 1181
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1659 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1658:
! CALL STATEMENT...
!   _temp_1660 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0IF",r10
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1663) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1661 else goto _Label_1662
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1662
	jmp	_Label_1661
_Label_1661:
! THEN...
	mov	1185,r13		! source line 1185
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1664 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1664  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1665
_Label_1662:
! ELSE...
	mov	1187,r13		! source line 1187
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1666 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1665:
! CALL STATEMENT...
!   _temp_1667 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0IF",r10
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1670) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1668 else goto _Label_1669
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1669
	jmp	_Label_1668
_Label_1668:
! THEN...
	mov	1191,r13		! source line 1191
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1671 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1672
_Label_1669:
! ELSE...
	mov	1193,r13		! source line 1193
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1673 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1673  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1672:
! CALL STATEMENT...
!   _temp_1674 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1674  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0IF",r10
	mov	1196,r13		! source line 1196
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1677) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1675 else goto _Label_1676
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1676
	jmp	_Label_1675
_Label_1675:
! THEN...
	mov	1197,r13		! source line 1197
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1678 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1197,r13		! source line 1197
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1679
_Label_1676:
! ELSE...
	mov	1199,r13		! source line 1199
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1680 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1199,r13		! source line 1199
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1679:
! CALL STATEMENT...
!   _temp_1681 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1201,r13		! source line 1201
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0IF",r10
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1684) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1682 else goto _Label_1683
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1683
	jmp	_Label_1682
_Label_1682:
! THEN...
	mov	1203,r13		! source line 1203
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1685 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1203,r13		! source line 1203
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1686
_Label_1683:
! ELSE...
	mov	1205,r13		! source line 1205
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1687 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1205,r13		! source line 1205
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1686:
! CALL STATEMENT...
!   Call the function
	mov	1207,r13		! source line 1207
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1634:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1632
! END FOR
_Label_1635:
! RETURN STATEMENT...
	mov	1168,r13		! source line 1168
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
	.word	_Label_1688
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1689
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1690
	.word	-12
	.word	4
	.word	_Label_1691
	.word	-16
	.word	4
	.word	_Label_1692
	.word	-20
	.word	4
	.word	_Label_1693
	.word	-24
	.word	4
	.word	_Label_1694
	.word	-28
	.word	4
	.word	_Label_1695
	.word	-32
	.word	4
	.word	_Label_1696
	.word	-36
	.word	4
	.word	_Label_1697
	.word	-40
	.word	4
	.word	_Label_1698
	.word	-44
	.word	4
	.word	_Label_1699
	.word	-48
	.word	4
	.word	_Label_1700
	.word	-52
	.word	4
	.word	_Label_1701
	.word	-56
	.word	4
	.word	_Label_1702
	.word	-60
	.word	4
	.word	_Label_1703
	.word	-64
	.word	4
	.word	_Label_1704
	.word	-68
	.word	4
	.word	_Label_1705
	.word	-72
	.word	4
	.word	_Label_1706
	.word	-76
	.word	4
	.word	_Label_1707
	.word	-80
	.word	4
	.word	_Label_1708
	.word	-84
	.word	4
	.word	_Label_1709
	.word	-88
	.word	4
	.word	_Label_1710
	.word	-92
	.word	4
	.word	_Label_1711
	.word	-96
	.word	4
	.word	_Label_1712
	.word	-100
	.word	4
	.word	_Label_1713
	.word	-104
	.word	4
	.word	_Label_1714
	.word	-108
	.word	4
	.word	_Label_1715
	.word	-112
	.word	4
	.word	_Label_1716
	.word	-116
	.word	4
	.word	_Label_1717
	.word	-120
	.word	4
	.word	_Label_1718
	.word	-124
	.word	4
	.word	_Label_1719
	.word	-128
	.word	4
	.word	_Label_1720
	.word	-132
	.word	4
	.word	_Label_1721
	.word	-136
	.word	4
	.word	_Label_1722
	.word	-140
	.word	4
	.word	_Label_1723
	.word	-144
	.word	4
	.word	_Label_1724
	.word	-148
	.word	4
	.word	_Label_1725
	.word	-152
	.word	4
	.word	_Label_1726
	.word	-156
	.word	4
	.word	_Label_1727
	.word	-160
	.word	4
	.word	_Label_1728
	.word	-164
	.word	4
	.word	_Label_1729
	.word	-168
	.word	4
	.word	0
_Label_1688:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1689:
	.ascii	"Pself\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1729:
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
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0RE",r10
!   _temp_1732 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1732 [entry ] into _temp_1733
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
!   Data Move: _temp_1731 = *_temp_1733  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1730 = _temp_1731 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1730  (sizeInBytes=4)
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
	.word	_Label_1734
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1735
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1736
	.word	12
	.word	4
	.word	_Label_1737
	.word	-12
	.word	4
	.word	_Label_1738
	.word	-16
	.word	4
	.word	_Label_1739
	.word	-20
	.word	4
	.word	_Label_1740
	.word	-24
	.word	4
	.word	0
_Label_1734:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1735:
	.ascii	"Pself\0"
	.align
_Label_1736:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1730\0"
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	1223,r13		! source line 1223
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0RE",r10
!   _temp_1743 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1743 [entry ] into _temp_1744
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
!   Data Move: _temp_1742 = *_temp_1744  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1741 = _temp_1742 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1741  (sizeInBytes=4)
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
	.word	_Label_1745
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1747
	.word	12
	.word	4
	.word	_Label_1748
	.word	-12
	.word	4
	.word	_Label_1749
	.word	-16
	.word	4
	.word	_Label_1750
	.word	-20
	.word	4
	.word	_Label_1751
	.word	-24
	.word	4
	.word	0
_Label_1745:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1746:
	.ascii	"Pself\0"
	.align
_Label_1747:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1741\0"
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
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	1232,r13		! source line 1232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0AS",r10
!   _temp_1752 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1752 [entry ] into _temp_1753
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
!   _temp_1757 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1757 [entry ] into _temp_1758
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
!   Data Move: _temp_1756 = *_temp_1758  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1755 = _temp_1756 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1754 = _temp_1755 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1753 = _temp_1754  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1237,r13		! source line 1237
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
	.word	_Label_1759
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1761
	.word	12
	.word	4
	.word	_Label_1762
	.word	16
	.word	4
	.word	_Label_1763
	.word	-12
	.word	4
	.word	_Label_1764
	.word	-16
	.word	4
	.word	_Label_1765
	.word	-20
	.word	4
	.word	_Label_1766
	.word	-24
	.word	4
	.word	_Label_1767
	.word	-28
	.word	4
	.word	_Label_1768
	.word	-32
	.word	4
	.word	_Label_1769
	.word	-36
	.word	4
	.word	0
_Label_1759:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1760:
	.ascii	"Pself\0"
	.align
_Label_1761:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1762:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1752\0"
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	1242,r13		! source line 1242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0RE",r10
!   _temp_1773 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1773 [entry ] into _temp_1774
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
!   Data Move: _temp_1772 = *_temp_1774  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1771 = _temp_1772 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1771) then goto _Label_1775
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1775
!   _temp_1770 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1776
_Label_1775:
!   _temp_1770 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1776:
!   ReturnResult: _temp_1770  (sizeInBytes=1)
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
	.word	_Label_1777
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1778
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1779
	.word	12
	.word	4
	.word	_Label_1780
	.word	-16
	.word	4
	.word	_Label_1781
	.word	-20
	.word	4
	.word	_Label_1782
	.word	-24
	.word	4
	.word	_Label_1783
	.word	-28
	.word	4
	.word	_Label_1784
	.word	-9
	.word	1
	.word	0
_Label_1777:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1778:
	.ascii	"Pself\0"
	.align
_Label_1779:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1784:
	.byte	'C'
	.ascii	"_temp_1770\0"
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
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	1251,r13		! source line 1251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0RE",r10
!   _temp_1788 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1788 [entry ] into _temp_1789
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
!   Data Move: _temp_1787 = *_temp_1789  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1786 = _temp_1787 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1786) then goto _Label_1790
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1790
!   _temp_1785 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1791
_Label_1790:
!   _temp_1785 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1791:
!   ReturnResult: _temp_1785  (sizeInBytes=1)
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
	.word	_Label_1792
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1793
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1794
	.word	12
	.word	4
	.word	_Label_1795
	.word	-16
	.word	4
	.word	_Label_1796
	.word	-20
	.word	4
	.word	_Label_1797
	.word	-24
	.word	4
	.word	_Label_1798
	.word	-28
	.word	4
	.word	_Label_1799
	.word	-9
	.word	1
	.word	0
_Label_1792:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1793:
	.ascii	"Pself\0"
	.align
_Label_1794:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1799:
	.byte	'C'
	.ascii	"_temp_1785\0"
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
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1260,r13		! source line 1260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0RE",r10
!   _temp_1803 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1803 [entry ] into _temp_1804
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
!   Data Move: _temp_1802 = *_temp_1804  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1801 = _temp_1802 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1801) then goto _Label_1805
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1805
!   _temp_1800 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1806
_Label_1805:
!   _temp_1800 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1806:
!   ReturnResult: _temp_1800  (sizeInBytes=1)
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
	.word	_Label_1807
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1808
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1809
	.word	12
	.word	4
	.word	_Label_1810
	.word	-16
	.word	4
	.word	_Label_1811
	.word	-20
	.word	4
	.word	_Label_1812
	.word	-24
	.word	4
	.word	_Label_1813
	.word	-28
	.word	4
	.word	_Label_1814
	.word	-9
	.word	1
	.word	0
_Label_1807:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1808:
	.ascii	"Pself\0"
	.align
_Label_1809:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1814:
	.byte	'C'
	.ascii	"_temp_1800\0"
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
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0RE",r10
!   _temp_1818 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1818 [entry ] into _temp_1819
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
!   Data Move: _temp_1817 = *_temp_1819  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1816 = _temp_1817 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1816) then goto _Label_1820
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1820
!   _temp_1815 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1821
_Label_1820:
!   _temp_1815 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1821:
!   ReturnResult: _temp_1815  (sizeInBytes=1)
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
	.word	_Label_1822
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1823
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1824
	.word	12
	.word	4
	.word	_Label_1825
	.word	-16
	.word	4
	.word	_Label_1826
	.word	-20
	.word	4
	.word	_Label_1827
	.word	-24
	.word	4
	.word	_Label_1828
	.word	-28
	.word	4
	.word	_Label_1829
	.word	-9
	.word	1
	.word	0
_Label_1822:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1823:
	.ascii	"Pself\0"
	.align
_Label_1824:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1829:
	.byte	'C'
	.ascii	"_temp_1815\0"
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	1278,r13		! source line 1278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0AS",r10
!   _temp_1830 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1830 [entry ] into _temp_1831
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
!   _temp_1834 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1834 [entry ] into _temp_1835
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
!   Data Move: _temp_1833 = *_temp_1835  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1832 = _temp_1833 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1831 = _temp_1832  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1282,r13		! source line 1282
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
	.word	_Label_1836
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1838
	.word	12
	.word	4
	.word	_Label_1839
	.word	-12
	.word	4
	.word	_Label_1840
	.word	-16
	.word	4
	.word	_Label_1841
	.word	-20
	.word	4
	.word	_Label_1842
	.word	-24
	.word	4
	.word	_Label_1843
	.word	-28
	.word	4
	.word	_Label_1844
	.word	-32
	.word	4
	.word	0
_Label_1836:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1837:
	.ascii	"Pself\0"
	.align
_Label_1838:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1830\0"
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
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	1287,r13		! source line 1287
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0AS",r10
!   _temp_1845 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1845 [entry ] into _temp_1846
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
!   _temp_1849 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1849 [entry ] into _temp_1850
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
!   Data Move: _temp_1848 = *_temp_1850  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1847 = _temp_1848 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1846 = _temp_1847  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1291,r13		! source line 1291
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
	.word	_Label_1851
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1853
	.word	12
	.word	4
	.word	_Label_1854
	.word	-12
	.word	4
	.word	_Label_1855
	.word	-16
	.word	4
	.word	_Label_1856
	.word	-20
	.word	4
	.word	_Label_1857
	.word	-24
	.word	4
	.word	_Label_1858
	.word	-28
	.word	4
	.word	_Label_1859
	.word	-32
	.word	4
	.word	0
_Label_1851:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1852:
	.ascii	"Pself\0"
	.align
_Label_1853:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1845\0"
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
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	1296,r13		! source line 1296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0AS",r10
!   _temp_1860 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1860 [entry ] into _temp_1861
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
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1864 [entry ] into _temp_1865
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
!   Data Move: _temp_1863 = *_temp_1865  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1862 = _temp_1863 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1861 = _temp_1862  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1300,r13		! source line 1300
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
	.word	_Label_1866
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1867
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1868
	.word	12
	.word	4
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
	.word	0
_Label_1866:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1867:
	.ascii	"Pself\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1860\0"
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
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1305,r13		! source line 1305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   _temp_1875 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1875 [entry ] into _temp_1876
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
!   _temp_1879 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1879 [entry ] into _temp_1880
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
!   Data Move: _temp_1878 = *_temp_1880  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1877 = _temp_1878 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1876 = _temp_1877  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1309,r13		! source line 1309
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
	.word	_Label_1881
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1882
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1883
	.word	12
	.word	4
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
	.word	0
_Label_1881:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1882:
	.ascii	"Pself\0"
	.align
_Label_1883:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1875\0"
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
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1314,r13		! source line 1314
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
!   _temp_1890 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1890 [entry ] into _temp_1891
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
!   _temp_1894 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1894 [entry ] into _temp_1895
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
!   Data Move: _temp_1893 = *_temp_1895  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1892 = _temp_1893 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1891 = _temp_1892  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1318,r13		! source line 1318
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
	.word	_Label_1896
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1898
	.word	12
	.word	4
	.word	_Label_1899
	.word	-12
	.word	4
	.word	_Label_1900
	.word	-16
	.word	4
	.word	_Label_1901
	.word	-20
	.word	4
	.word	_Label_1902
	.word	-24
	.word	4
	.word	_Label_1903
	.word	-28
	.word	4
	.word	_Label_1904
	.word	-32
	.word	4
	.word	0
_Label_1896:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1897:
	.ascii	"Pself\0"
	.align
_Label_1898:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1890\0"
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1323,r13		! source line 1323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0AS",r10
!   _temp_1905 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1905 [entry ] into _temp_1906
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
!   _temp_1909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1909 [entry ] into _temp_1910
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
!   Data Move: _temp_1908 = *_temp_1910  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1907 = _temp_1908 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1906 = _temp_1907  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1327,r13		! source line 1327
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
	.word	_Label_1911
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1913
	.word	12
	.word	4
	.word	_Label_1914
	.word	-12
	.word	4
	.word	_Label_1915
	.word	-16
	.word	4
	.word	_Label_1916
	.word	-20
	.word	4
	.word	_Label_1917
	.word	-24
	.word	4
	.word	_Label_1918
	.word	-28
	.word	4
	.word	_Label_1919
	.word	-32
	.word	4
	.word	0
_Label_1911:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1912:
	.ascii	"Pself\0"
	.align
_Label_1913:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1905\0"
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
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1332,r13		! source line 1332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0AS",r10
!   _temp_1920 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1920 [entry ] into _temp_1921
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
!   _temp_1924 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1924 [entry ] into _temp_1925
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
!   Data Move: _temp_1923 = *_temp_1925  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1922 = _temp_1923 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1921 = _temp_1922  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1336,r13		! source line 1336
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
	.word	_Label_1926
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1928
	.word	12
	.word	4
	.word	_Label_1929
	.word	-12
	.word	4
	.word	_Label_1930
	.word	-16
	.word	4
	.word	_Label_1931
	.word	-20
	.word	4
	.word	_Label_1932
	.word	-24
	.word	4
	.word	_Label_1933
	.word	-28
	.word	4
	.word	_Label_1934
	.word	-32
	.word	4
	.word	0
_Label_1926:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1927:
	.ascii	"Pself\0"
	.align
_Label_1928:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1920\0"
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
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1341,r13		! source line 1341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   _temp_1935 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1935 [entry ] into _temp_1936
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
!   _temp_1939 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1939 [entry ] into _temp_1940
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
!   Data Move: _temp_1938 = *_temp_1940  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1937 = _temp_1938 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1936 = _temp_1937  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
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
	.word	_Label_1941
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1943
	.word	12
	.word	4
	.word	_Label_1944
	.word	-12
	.word	4
	.word	_Label_1945
	.word	-16
	.word	4
	.word	_Label_1946
	.word	-20
	.word	4
	.word	_Label_1947
	.word	-24
	.word	4
	.word	_Label_1948
	.word	-28
	.word	4
	.word	_Label_1949
	.word	-32
	.word	4
	.word	0
_Label_1941:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1942:
	.ascii	"Pself\0"
	.align
_Label_1943:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1935\0"
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1951 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1951 [0 ] into _temp_1952
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
!   _temp_1950 = _temp_1952		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1953 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1950  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1953  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1356,r13		! source line 1356
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1356,r13		! source line 1356
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
	.word	_Label_1954
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1956
	.word	-12
	.word	4
	.word	_Label_1957
	.word	-16
	.word	4
	.word	_Label_1958
	.word	-20
	.word	4
	.word	_Label_1959
	.word	-24
	.word	4
	.word	0
_Label_1954:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1955:
	.ascii	"Pself\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1950\0"
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
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1361,r13		! source line 1361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1960
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1960
	jmp	_Label_1961
_Label_1960:
! THEN...
	mov	1377,r13		! source line 1377
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1962
_Label_1961:
! ELSE...
	mov	1378,r13		! source line 1378
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1964		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1964
!	jmp	_Label_1963
_Label_1963:
! THEN...
	mov	1379,r13		! source line 1379
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1964:
! END IF...
_Label_1962:
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
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
	mov	1382,r13		! source line 1382
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
	mov	1385,r13		! source line 1385
	mov	"\0\0WH",r10
_Label_1965:
!	jmp	_Label_1966
_Label_1966:
	mov	1385,r13		! source line 1385
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1969		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1969
!	jmp	_Label_1968
_Label_1968:
! THEN...
	mov	1387,r13		! source line 1387
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1970 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1387,r13		! source line 1387
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1969:
! IF STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0IF",r10
	mov	1390,r13		! source line 1390
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1974) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1973  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1973 then goto _Label_1972 else goto _Label_1971
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1971
	jmp	_Label_1972
_Label_1971:
! THEN...
	mov	1391,r13		! source line 1391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1975 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1975  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1391,r13		! source line 1391
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1972:
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
	mov	1394,r13		! source line 1394
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1977) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1976  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1976 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0WH",r10
_Label_1978:
!   if offset >= 8192 then goto _Label_1980		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1980
!	jmp	_Label_1979
_Label_1979:
	mov	1396,r13		! source line 1396
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1981 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1981  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1402,r13		! source line 1402
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1983		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1983
!	jmp	_Label_1982
_Label_1982:
! THEN...
	mov	1405,r13		! source line 1405
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1983:
! END WHILE...
	jmp	_Label_1978
_Label_1980:
! ASSIGNMENT STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1965
_Label_1967:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1984
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1986
	.word	12
	.word	4
	.word	_Label_1987
	.word	16
	.word	4
	.word	_Label_1988
	.word	20
	.word	4
	.word	_Label_1989
	.word	-9
	.word	1
	.word	_Label_1990
	.word	-16
	.word	4
	.word	_Label_1991
	.word	-20
	.word	4
	.word	_Label_1992
	.word	-24
	.word	4
	.word	_Label_1993
	.word	-28
	.word	4
	.word	_Label_1994
	.word	-10
	.word	1
	.word	_Label_1995
	.word	-32
	.word	4
	.word	_Label_1996
	.word	-36
	.word	4
	.word	_Label_1997
	.word	-40
	.word	4
	.word	_Label_1998
	.word	-44
	.word	4
	.word	_Label_1999
	.word	-48
	.word	4
	.word	0
_Label_1984:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1985:
	.ascii	"Pself\0"
	.align
_Label_1986:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1987:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1988:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1989:
	.byte	'C'
	.ascii	"_temp_1981\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1994:
	.byte	'C'
	.ascii	"_temp_1973\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1996:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1997:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1998:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1999:
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
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2000
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2000
	jmp	_Label_2001
_Label_2000:
! THEN...
	mov	1427,r13		! source line 1427
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2002
_Label_2001:
! ELSE...
	mov	1428,r13		! source line 1428
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2004		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2004
!	jmp	_Label_2003
_Label_2003:
! THEN...
	mov	1429,r13		! source line 1429
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2004:
! END IF...
_Label_2002:
! ASSIGNMENT STATEMENT...
	mov	1431,r13		! source line 1431
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
	mov	1432,r13		! source line 1432
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
	mov	1433,r13		! source line 1433
	mov	"\0\0WH",r10
_Label_2005:
!	jmp	_Label_2006
_Label_2006:
	mov	1433,r13		! source line 1433
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2011		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2011
	jmp	_Label_2008
_Label_2011:
	mov	1435,r13		! source line 1435
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2013) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2012  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2012 then goto _Label_2010 else goto _Label_2008
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2008
	jmp	_Label_2010
_Label_2010:
	mov	1436,r13		! source line 1436
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2015) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2014  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2014 then goto _Label_2009 else goto _Label_2008
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2008
	jmp	_Label_2009
_Label_2008:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2009:
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
	mov	1439,r13		! source line 1439
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2017) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2016  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2016 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0WH",r10
_Label_2018:
!   if offset >= 8192 then goto _Label_2020		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2020
!	jmp	_Label_2019
_Label_2019:
	mov	1440,r13		! source line 1440
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2021 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2021  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2023		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2023
!	jmp	_Label_2022
_Label_2022:
! THEN...
	mov	1447,r13		! source line 1447
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2023:
! END WHILE...
	jmp	_Label_2018
_Label_2020:
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2005
_Label_2007:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2024
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2026
	.word	12
	.word	4
	.word	_Label_2027
	.word	16
	.word	4
	.word	_Label_2028
	.word	20
	.word	4
	.word	_Label_2029
	.word	-9
	.word	1
	.word	_Label_2030
	.word	-16
	.word	4
	.word	_Label_2031
	.word	-20
	.word	4
	.word	_Label_2032
	.word	-24
	.word	4
	.word	_Label_2033
	.word	-10
	.word	1
	.word	_Label_2034
	.word	-28
	.word	4
	.word	_Label_2035
	.word	-11
	.word	1
	.word	_Label_2036
	.word	-32
	.word	4
	.word	_Label_2037
	.word	-36
	.word	4
	.word	_Label_2038
	.word	-40
	.word	4
	.word	_Label_2039
	.word	-44
	.word	4
	.word	0
_Label_2024:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2025:
	.ascii	"Pself\0"
	.align
_Label_2026:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2027:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2028:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2029:
	.byte	'C'
	.ascii	"_temp_2021\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2033:
	.byte	'C'
	.ascii	"_temp_2014\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2035:
	.byte	'C'
	.ascii	"_temp_2012\0"
	.align
_Label_2036:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2037:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2038:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2039:
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
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1457,r13		! source line 1457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0IF",r10
	mov	1481,r13		! source line 1481
	mov	"\0\0SE",r10
!   _temp_2043 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2044) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2043  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2042  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2042 >= 4 then goto _Label_2041		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2041
!	jmp	_Label_2040
_Label_2040:
! THEN...
	mov	1484,r13		! source line 1484
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2041:
! IF STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2046		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2046
!	jmp	_Label_2045
_Label_2045:
! THEN...
	mov	1489,r13		! source line 1489
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2046:
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
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
	mov	1494,r13		! source line 1494
	mov	"\0\0RE",r10
	mov	1494,r13		! source line 1494
	mov	"\0\0SE",r10
!   _temp_2049 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2048 = _temp_2049 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2050 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2051) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2048  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2050  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2047  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2047  (sizeInBytes=4)
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
	.word	_Label_2052
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2054
	.word	12
	.word	4
	.word	_Label_2055
	.word	16
	.word	4
	.word	_Label_2056
	.word	20
	.word	4
	.word	_Label_2057
	.word	-12
	.word	4
	.word	_Label_2058
	.word	-16
	.word	4
	.word	_Label_2059
	.word	-20
	.word	4
	.word	_Label_2060
	.word	-24
	.word	4
	.word	_Label_2061
	.word	-28
	.word	4
	.word	_Label_2062
	.word	-32
	.word	4
	.word	_Label_2063
	.word	-36
	.word	4
	.word	_Label_2064
	.word	-40
	.word	4
	.word	_Label_2065
	.word	-44
	.word	4
	.word	0
_Label_2052:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2053:
	.ascii	"Pself\0"
	.align
_Label_2054:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2055:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2056:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2065:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2066
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2066:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2067
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2067:
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
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1940,r13		! source line 1940
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2068 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2068  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
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
	mov	1949,r13		! source line 1949
	mov	"\0\0SE",r10
!   _temp_2070 = &semUsedInSynchMethods
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
	mov	1950,r13		! source line 1950
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
	mov	1951,r13		! source line 1951
	mov	"\0\0SE",r10
!   _temp_2072 = &diskBusy
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
	mov	1951,r13		! source line 1951
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
	.word	_Label_2073
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2075
	.word	-12
	.word	4
	.word	_Label_2076
	.word	-16
	.word	4
	.word	_Label_2077
	.word	-20
	.word	4
	.word	_Label_2078
	.word	-24
	.word	4
	.word	_Label_2079
	.word	-28
	.word	4
	.word	0
_Label_2073:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2074:
	.ascii	"Pself\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2068\0"
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
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	1956,r13		! source line 1956
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0SE",r10
!   _temp_2080 = &diskBusy
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
	mov	1970,r13		! source line 1970
	mov	"\0\0WH",r10
_Label_2081:
!	jmp	_Label_2082
_Label_2082:
	mov	1970,r13		! source line 1970
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0SE",r10
!   _temp_2084 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2085) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2084  sizeInBytes=4
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
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   _temp_2086 = &semUsedInSynchMethods
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
	mov	1977,r13		! source line 1977
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2095 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2089
	cmp	r1,2
	be	_Label_2090
	cmp	r1,3
	be	_Label_2091
	cmp	r1,4
	be	_Label_2092
	cmp	r1,5
	be	_Label_2093
	cmp	r1,6
	be	_Label_2094
	jmp	_Label_2087
! CASE 1...
_Label_2089:
! SEND STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0SE",r10
!   _temp_2096 = &diskBusy
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
	mov	1980,r13		! source line 1980
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2090:
! CALL STATEMENT...
!   _temp_2097 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2097  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1982,r13		! source line 1982
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2091:
! CALL STATEMENT...
!   _temp_2098 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2098  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1984,r13		! source line 1984
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2092:
! CALL STATEMENT...
!   _temp_2099 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1986,r13		! source line 1986
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2093:
! BREAK STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0BR",r10
	jmp	_Label_2088
! CASE 6...
_Label_2094:
! CALL STATEMENT...
!   _temp_2100 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2100  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1992,r13		! source line 1992
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2087:
! CALL STATEMENT...
!   _temp_2101 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1994,r13		! source line 1994
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2088:
! END WHILE...
	jmp	_Label_2081
_Label_2083:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2102
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2103
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2104
	.word	12
	.word	4
	.word	_Label_2105
	.word	16
	.word	4
	.word	_Label_2106
	.word	20
	.word	4
	.word	_Label_2107
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_2113
	.word	-36
	.word	4
	.word	_Label_2114
	.word	-40
	.word	4
	.word	_Label_2115
	.word	-44
	.word	4
	.word	_Label_2116
	.word	-48
	.word	4
	.word	_Label_2117
	.word	-52
	.word	4
	.word	0
_Label_2102:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2103:
	.ascii	"Pself\0"
	.align
_Label_2104:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2105:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2106:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2080\0"
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
	mov	2003,r13		! source line 2003
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2021,r13		! source line 2021
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
	mov	2022,r13		! source line 2022
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
	mov	2023,r13		! source line 2023
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
	mov	2024,r13		! source line 2024
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
	mov	2024,r13		! source line 2024
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
	.word	_Label_2118
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2120
	.word	12
	.word	4
	.word	_Label_2121
	.word	16
	.word	4
	.word	_Label_2122
	.word	20
	.word	4
	.word	_Label_2123
	.word	24
	.word	4
	.word	0
_Label_2118:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2119:
	.ascii	"Pself\0"
	.align
_Label_2120:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2121:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2123:
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
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	2029,r13		! source line 2029
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0SE",r10
!   _temp_2124 = &diskBusy
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
	mov	2042,r13		! source line 2042
	mov	"\0\0WH",r10
_Label_2125:
!	jmp	_Label_2126
_Label_2126:
	mov	2042,r13		! source line 2042
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0SE",r10
!   _temp_2128 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2129) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2128  sizeInBytes=4
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
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   _temp_2130 = &semUsedInSynchMethods
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
	mov	2048,r13		! source line 2048
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2139 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2133
	cmp	r1,2
	be	_Label_2134
	cmp	r1,3
	be	_Label_2135
	cmp	r1,4
	be	_Label_2136
	cmp	r1,5
	be	_Label_2137
	cmp	r1,6
	be	_Label_2138
	jmp	_Label_2131
! CASE 1...
_Label_2133:
! SEND STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0SE",r10
!   _temp_2140 = &diskBusy
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
	mov	2051,r13		! source line 2051
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2134:
! CALL STATEMENT...
!   _temp_2141 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2141  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2053,r13		! source line 2053
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2135:
! CALL STATEMENT...
!   _temp_2142 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2142  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2055,r13		! source line 2055
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2136:
! CALL STATEMENT...
!   _temp_2143 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2143  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2057,r13		! source line 2057
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2137:
! BREAK STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0BR",r10
	jmp	_Label_2132
! CASE 6...
_Label_2138:
! CALL STATEMENT...
!   _temp_2144 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2144  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2063,r13		! source line 2063
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2131:
! CALL STATEMENT...
!   _temp_2145 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2145  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2065,r13		! source line 2065
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2132:
! END WHILE...
	jmp	_Label_2125
_Label_2127:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2146
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2148
	.word	12
	.word	4
	.word	_Label_2149
	.word	16
	.word	4
	.word	_Label_2150
	.word	20
	.word	4
	.word	_Label_2151
	.word	-12
	.word	4
	.word	_Label_2152
	.word	-16
	.word	4
	.word	_Label_2153
	.word	-20
	.word	4
	.word	_Label_2154
	.word	-24
	.word	4
	.word	_Label_2155
	.word	-28
	.word	4
	.word	_Label_2156
	.word	-32
	.word	4
	.word	_Label_2157
	.word	-36
	.word	4
	.word	_Label_2158
	.word	-40
	.word	4
	.word	_Label_2159
	.word	-44
	.word	4
	.word	_Label_2160
	.word	-48
	.word	4
	.word	_Label_2161
	.word	-52
	.word	4
	.word	0
_Label_2146:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2147:
	.ascii	"Pself\0"
	.align
_Label_2148:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2149:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2150:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2124\0"
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
	mov	2074,r13		! source line 2074
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
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
	mov	2092,r13		! source line 2092
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
	mov	2093,r13		! source line 2093
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
	mov	2094,r13		! source line 2094
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
	mov	2094,r13		! source line 2094
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
	.word	_Label_2162
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2163
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2164
	.word	12
	.word	4
	.word	_Label_2165
	.word	16
	.word	4
	.word	_Label_2166
	.word	20
	.word	4
	.word	_Label_2167
	.word	24
	.word	4
	.word	0
_Label_2162:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2163:
	.ascii	"Pself\0"
	.align
_Label_2164:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2165:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2166:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2167:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2168
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
_Label_2168:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2169
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2169:
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
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	2105,r13		! source line 2105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2170 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2170  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2112,r13		! source line 2112
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
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
	mov	2114,r13		! source line 2114
	mov	"\0\0SE",r10
!   _temp_2172 = &fileManagerLock
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
	mov	2117,r13		! source line 2117
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
	mov	2118,r13		! source line 2118
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
	mov	2119,r13		! source line 2119
	mov	"\0\0SE",r10
!   _temp_2175 = &anFCBBecameFree
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
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   _temp_2176 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2178 = &_temp_2177
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2178 = _temp_2178 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2180 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3084:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3084
!   _temp_2180 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2182:
!   Data Move: *_temp_2178 = _temp_2180  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3085:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3085
!   _temp_2178 = _temp_2178 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2179 = _temp_2179 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2179) then goto _Label_2182
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2182
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2183 = &_temp_2177
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3086
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3086:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2176 = *_temp_2183  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3087:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3087
! FOR STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2188 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2189 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2188  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2184:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2189 then goto _Label_2187		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2187
_Label_2185:
	mov	2122,r13		! source line 2122
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   _temp_2190 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2190 [i ] into _temp_2191
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
!   _temp_2192 = _temp_2191 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2192 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   _temp_2193 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2193 [i ] into _temp_2194
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
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   _temp_2196 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2196 [i ] into _temp_2197
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
!   _temp_2195 = _temp_2197		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2198 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2195  sizeInBytes=4
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
_Label_2186:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2184
! END FOR
_Label_2187:
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
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
	mov	2130,r13		! source line 2130
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
	mov	2131,r13		! source line 2131
	mov	"\0\0SE",r10
!   _temp_2201 = &anOpenFileBecameFree
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
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   _temp_2202 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2204 = &_temp_2203
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2204 = _temp_2204 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2206 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3088:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3088
!   _temp_2206 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2208:
!   Data Move: *_temp_2204 = _temp_2206  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3089:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3089
!   _temp_2204 = _temp_2204 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2205 = _temp_2205 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2205) then goto _Label_2208
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2208
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2209 = &_temp_2203
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3090
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3090:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2202 = *_temp_2209  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3091:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3091
! FOR STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2214 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2215 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2214  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2210:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2215 then goto _Label_2213		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2213
_Label_2211:
	mov	2134,r13		! source line 2134
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
!   _temp_2216 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2216 [i ] into _temp_2217
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
!   _temp_2218 = _temp_2217 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2218 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0SE",r10
!   _temp_2220 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2220 [i ] into _temp_2221
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
!   _temp_2219 = _temp_2221		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2222 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2219  sizeInBytes=4
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
_Label_2212:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2210
! END FOR
_Label_2213:
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3092:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3092
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   _temp_2224 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2225 = _temp_2224 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2225 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
	mov	2146,r13		! source line 2146
	mov	"\0\0SE",r10
!   _temp_2226 = &_P_Kernel_frameManager
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
	mov	2147,r13		! source line 2147
	mov	"\0\0SE",r10
!   _temp_2227 = &_P_Kernel_diskDriver
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
	mov	2147,r13		! source line 2147
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
	.word	_Label_2228
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2229
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2230
	.word	-12
	.word	4
	.word	_Label_2231
	.word	-16
	.word	4
	.word	_Label_2232
	.word	-20
	.word	4
	.word	_Label_2233
	.word	-24
	.word	4
	.word	_Label_2234
	.word	-28
	.word	4
	.word	_Label_2235
	.word	-32
	.word	4
	.word	_Label_2236
	.word	-36
	.word	4
	.word	_Label_2237
	.word	-40
	.word	4
	.word	_Label_2238
	.word	-44
	.word	4
	.word	_Label_2239
	.word	-48
	.word	4
	.word	_Label_2240
	.word	-52
	.word	4
	.word	_Label_2241
	.word	-56
	.word	4
	.word	_Label_2242
	.word	-60
	.word	4
	.word	_Label_2243
	.word	-64
	.word	4
	.word	_Label_2244
	.word	-68
	.word	4
	.word	_Label_2245
	.word	-72
	.word	4
	.word	_Label_2246
	.word	-100
	.word	28
	.word	_Label_2247
	.word	-104
	.word	4
	.word	_Label_2248
	.word	-108
	.word	4
	.word	_Label_2249
	.word	-392
	.word	284
	.word	_Label_2250
	.word	-396
	.word	4
	.word	_Label_2251
	.word	-400
	.word	4
	.word	_Label_2252
	.word	-404
	.word	4
	.word	_Label_2253
	.word	-408
	.word	4
	.word	_Label_2254
	.word	-412
	.word	4
	.word	_Label_2255
	.word	-416
	.word	4
	.word	_Label_2256
	.word	-420
	.word	4
	.word	_Label_2257
	.word	-424
	.word	4
	.word	_Label_2258
	.word	-428
	.word	4
	.word	_Label_2259
	.word	-432
	.word	4
	.word	_Label_2260
	.word	-436
	.word	4
	.word	_Label_2261
	.word	-440
	.word	4
	.word	_Label_2262
	.word	-444
	.word	4
	.word	_Label_2263
	.word	-448
	.word	4
	.word	_Label_2264
	.word	-452
	.word	4
	.word	_Label_2265
	.word	-456
	.word	4
	.word	_Label_2266
	.word	-460
	.word	4
	.word	_Label_2267
	.word	-500
	.word	40
	.word	_Label_2268
	.word	-504
	.word	4
	.word	_Label_2269
	.word	-508
	.word	4
	.word	_Label_2270
	.word	-912
	.word	404
	.word	_Label_2271
	.word	-916
	.word	4
	.word	_Label_2272
	.word	-920
	.word	4
	.word	_Label_2273
	.word	-924
	.word	4
	.word	_Label_2274
	.word	-928
	.word	4
	.word	_Label_2275
	.word	-932
	.word	4
	.word	_Label_2276
	.word	-936
	.word	4
	.word	_Label_2277
	.word	-940
	.word	4
	.word	_Label_2278
	.word	-944
	.word	4
	.word	0
_Label_2228:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2229:
	.ascii	"Pself\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2278:
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	2154,r13		! source line 2154
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_2279 = &fileManagerLock
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
!   _temp_2280 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2157,r13		! source line 2157
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2285 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2286 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2285  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2281:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2286 then goto _Label_2284		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2284
_Label_2282:
	mov	2158,r13		! source line 2158
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2287 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2287  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2159,r13		! source line 2159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2160,r13		! source line 2160
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2288 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2288  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0SE",r10
!   _temp_2289 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2289 [i ] into _temp_2290
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
_Label_2283:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2281
! END FOR
_Label_2284:
! CALL STATEMENT...
!   _temp_2291 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2291  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2164,r13		! source line 2164
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0SE",r10
!   _temp_2292 = _function_207_printFCB
	set	_function_207_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2293 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2292  sizeInBytes=4
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
	mov	2166,r13		! source line 2166
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2294 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2294  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2167,r13		! source line 2167
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2299 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2300 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2299  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2295:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2300 then goto _Label_2298		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2298
_Label_2296:
	mov	2168,r13		! source line 2168
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2301 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2301  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2169,r13		! source line 2169
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2170,r13		! source line 2170
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2302 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2302  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2304 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2304 [i ] into _temp_2305
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
!   _temp_2303 = _temp_2305		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2303  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2172,r13		! source line 2172
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2306 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2173,r13		! source line 2173
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0SE",r10
!   _temp_2307 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2307 [i ] into _temp_2308
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
_Label_2297:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2295
! END FOR
_Label_2298:
! CALL STATEMENT...
!   _temp_2309 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2309  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2176,r13		! source line 2176
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0SE",r10
!   _temp_2310 = _function_206_printOpen
	set	_function_206_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2311 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2310  sizeInBytes=4
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
	mov	2178,r13		! source line 2178
	mov	"\0\0SE",r10
!   _temp_2312 = &fileManagerLock
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
	mov	2178,r13		! source line 2178
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
	.word	_Label_2313
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2315
	.word	-12
	.word	4
	.word	_Label_2316
	.word	-16
	.word	4
	.word	_Label_2317
	.word	-20
	.word	4
	.word	_Label_2318
	.word	-24
	.word	4
	.word	_Label_2319
	.word	-28
	.word	4
	.word	_Label_2320
	.word	-32
	.word	4
	.word	_Label_2321
	.word	-36
	.word	4
	.word	_Label_2322
	.word	-40
	.word	4
	.word	_Label_2323
	.word	-44
	.word	4
	.word	_Label_2324
	.word	-48
	.word	4
	.word	_Label_2325
	.word	-52
	.word	4
	.word	_Label_2326
	.word	-56
	.word	4
	.word	_Label_2327
	.word	-60
	.word	4
	.word	_Label_2328
	.word	-64
	.word	4
	.word	_Label_2329
	.word	-68
	.word	4
	.word	_Label_2330
	.word	-72
	.word	4
	.word	_Label_2331
	.word	-76
	.word	4
	.word	_Label_2332
	.word	-80
	.word	4
	.word	_Label_2333
	.word	-84
	.word	4
	.word	_Label_2334
	.word	-88
	.word	4
	.word	_Label_2335
	.word	-92
	.word	4
	.word	_Label_2336
	.word	-96
	.word	4
	.word	_Label_2337
	.word	-100
	.word	4
	.word	_Label_2338
	.word	-104
	.word	4
	.word	_Label_2339
	.word	-108
	.word	4
	.word	_Label_2340
	.word	-112
	.word	4
	.word	_Label_2341
	.word	-116
	.word	4
	.word	0
_Label_2313:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2314:
	.ascii	"Pself\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2341:
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	2183,r13		! source line 2183
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
	mov	2199,r13		! source line 2199
	mov	"\0\0SE",r10
!   _temp_2342 = &_P_Kernel_fileManager
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
	mov	2200,r13		! source line 2200
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2343
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2343
	jmp	_Label_2344
_Label_2343:
! THEN...
	mov	2201,r13		! source line 2201
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2344:
! SEND STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_2345 = &fileManagerLock
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
	mov	2206,r13		! source line 2206
	mov	"\0\0WH",r10
_Label_2346:
	mov	2206,r13		! source line 2206
	mov	"\0\0SE",r10
!   _temp_2349 = &openFileFreeList
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
!   if result==true then goto _Label_2347 else goto _Label_2348
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2348
	jmp	_Label_2347
_Label_2347:
	mov	2206,r13		! source line 2206
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0SE",r10
!   _temp_2350 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2351 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2350  sizeInBytes=4
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
	jmp	_Label_2346
_Label_2348:
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2352 = &openFileFreeList
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
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2353 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2353 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2354 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2354 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2355 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2355 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0SE",r10
!   _temp_2356 = &fileManagerLock
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
	mov	2219,r13		! source line 2219
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
	.word	_Label_2357
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2358
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2359
	.word	12
	.word	4
	.word	_Label_2360
	.word	-12
	.word	4
	.word	_Label_2361
	.word	-16
	.word	4
	.word	_Label_2362
	.word	-20
	.word	4
	.word	_Label_2363
	.word	-24
	.word	4
	.word	_Label_2364
	.word	-28
	.word	4
	.word	_Label_2365
	.word	-32
	.word	4
	.word	_Label_2366
	.word	-36
	.word	4
	.word	_Label_2367
	.word	-40
	.word	4
	.word	_Label_2368
	.word	-44
	.word	4
	.word	_Label_2369
	.word	-48
	.word	4
	.word	_Label_2370
	.word	-52
	.word	4
	.word	_Label_2371
	.word	-56
	.word	4
	.word	0
_Label_2357:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2358:
	.ascii	"Pself\0"
	.align
_Label_2359:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2370:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2371:
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	2224,r13		! source line 2224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
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
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2373		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2373
!	jmp	_Label_2372
_Label_2372:
! THEN...
	mov	2255,r13		! source line 2255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2374 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2374  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2255,r13		! source line 2255
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2373:
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
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
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
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
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0WH",r10
_Label_2375:
!   if numFiles <= 0 then goto _Label_2377		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2377
!	jmp	_Label_2376
_Label_2376:
	mov	2265,r13		! source line 2265
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2378 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2378  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2266,r13		! source line 2266
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2379 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2379  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2268,r13		! source line 2268
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2380 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2380  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2270,r13		! source line 2270
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2384 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2384 then goto _Label_2382		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2382
!	jmp	_Label_2383
_Label_2383:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2386
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
!   _temp_2385 = _temp_2386		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2385  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2273,r13		! source line 2273
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2381 else goto _Label_2382
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2382
	jmp	_Label_2381
_Label_2381:
! THEN...
	mov	2274,r13		! source line 2274
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0BR",r10
	jmp	_Label_2377
! END IF...
_Label_2382:
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2375
_Label_2377:
! IF STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2388		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2388
!	jmp	_Label_2387
_Label_2387:
! THEN...
	mov	2282,r13		! source line 2282
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2388:
! SEND STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   _temp_2389 = &fileManagerLock
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
	mov	2287,r13		! source line 2287
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2394 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2395 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2394  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2390:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2395 then goto _Label_2393		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2393
_Label_2391:
	mov	2287,r13		! source line 2287
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0AS",r10
!   _temp_2396 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2396 [i ] into _temp_2397
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
!   fcb = _temp_2397		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2401 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2400 = *_temp_2401  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2400 != start then goto _Label_2399		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2399
!	jmp	_Label_2398
_Label_2398:
! THEN...
	mov	2290,r13		! source line 2290
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2402 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2405 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2404 = *_temp_2405  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2403 = _temp_2404 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2402 = _temp_2403  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_2406 = &fileManagerLock
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
	mov	2292,r13		! source line 2292
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2399:
!   Increment the FOR-LOOP index variable and jump back
_Label_2392:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2390
! END FOR
_Label_2393:
! WHILE STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0WH",r10
_Label_2407:
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   _temp_2410 = &fcbFreeList
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
!   if result==true then goto _Label_2408 else goto _Label_2409
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2409
	jmp	_Label_2408
_Label_2408:
	mov	2297,r13		! source line 2297
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0SE",r10
!   _temp_2411 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2412 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2411  sizeInBytes=4
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
	jmp	_Label_2407
_Label_2409:
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
	mov	2300,r13		! source line 2300
	mov	"\0\0SE",r10
!   _temp_2413 = &fcbFreeList
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
	mov	2303,r13		! source line 2303
	mov	"\0\0SE",r10
!   _temp_2414 = &fileManagerLock
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
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2415 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2415 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2416 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2416 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2417 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2417 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2422 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2421 = *_temp_2422  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2421 < 0 then goto _Label_2420		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2420
	jmp	_Label_2418
_Label_2420:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2423 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2423 ) then goto _Label_2419		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2419
!	jmp	_Label_2418
_Label_2418:
! THEN...
	mov	2310,r13		! source line 2310
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2424 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2424  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2310,r13		! source line 2310
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2419:
! RETURN STATEMENT...
	mov	2312,r13		! source line 2312
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
	.word	_Label_2425
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2426
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2427
	.word	12
	.word	4
	.word	_Label_2428
	.word	-12
	.word	4
	.word	_Label_2429
	.word	-16
	.word	4
	.word	_Label_2430
	.word	-20
	.word	4
	.word	_Label_2431
	.word	-24
	.word	4
	.word	_Label_2432
	.word	-28
	.word	4
	.word	_Label_2433
	.word	-32
	.word	4
	.word	_Label_2434
	.word	-36
	.word	4
	.word	_Label_2435
	.word	-40
	.word	4
	.word	_Label_2436
	.word	-44
	.word	4
	.word	_Label_2437
	.word	-48
	.word	4
	.word	_Label_2438
	.word	-52
	.word	4
	.word	_Label_2439
	.word	-56
	.word	4
	.word	_Label_2440
	.word	-60
	.word	4
	.word	_Label_2441
	.word	-64
	.word	4
	.word	_Label_2442
	.word	-68
	.word	4
	.word	_Label_2443
	.word	-72
	.word	4
	.word	_Label_2444
	.word	-76
	.word	4
	.word	_Label_2445
	.word	-80
	.word	4
	.word	_Label_2446
	.word	-84
	.word	4
	.word	_Label_2447
	.word	-88
	.word	4
	.word	_Label_2448
	.word	-92
	.word	4
	.word	_Label_2449
	.word	-96
	.word	4
	.word	_Label_2450
	.word	-100
	.word	4
	.word	_Label_2451
	.word	-104
	.word	4
	.word	_Label_2452
	.word	-108
	.word	4
	.word	_Label_2453
	.word	-112
	.word	4
	.word	_Label_2454
	.word	-116
	.word	4
	.word	_Label_2455
	.word	-120
	.word	4
	.word	_Label_2456
	.word	-124
	.word	4
	.word	_Label_2457
	.word	-128
	.word	4
	.word	_Label_2458
	.word	-132
	.word	4
	.word	_Label_2459
	.word	-136
	.word	4
	.word	_Label_2460
	.word	-140
	.word	4
	.word	_Label_2461
	.word	-144
	.word	4
	.word	_Label_2462
	.word	-148
	.word	4
	.word	_Label_2463
	.word	-152
	.word	4
	.word	_Label_2464
	.word	-156
	.word	4
	.word	_Label_2465
	.word	-160
	.word	4
	.word	0
_Label_2425:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2426:
	.ascii	"Pself\0"
	.align
_Label_2427:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2459:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2460:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2461:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2462:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2463:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2464:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2465:
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
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	2325,r13		! source line 2325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0IF",r10
!   _temp_2468 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2468 then goto _Label_2467		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2467
!	jmp	_Label_2466
_Label_2466:
! THEN...
	mov	2328,r13		! source line 2328
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2467:
! SEND STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0SE",r10
!   _temp_2469 = &fileManagerLock
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
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2470 = &_P_Kernel_fileManager
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
	mov	2332,r13		! source line 2332
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2471 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2471  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2472 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2475 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2474 = *_temp_2475  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2473 = _temp_2474 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2472 = _temp_2473  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2479 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2478 = *_temp_2479  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2478 > 0 then goto _Label_2477		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2477
!	jmp	_Label_2476
_Label_2476:
! THEN...
	mov	2335,r13		! source line 2335
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0SE",r10
!   _temp_2480 = &openFileFreeList
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
	mov	2336,r13		! source line 2336
	mov	"\0\0SE",r10
!   _temp_2481 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2482 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2481  sizeInBytes=4
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
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2486 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2485 = *_temp_2486  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2484 = _temp_2485 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2483 = _temp_2484  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2489 = *_temp_2490  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2489 > 0 then goto _Label_2488		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2488
!	jmp	_Label_2487
_Label_2487:
! THEN...
	mov	2339,r13		! source line 2339
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_2491 = &fcbFreeList
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
	mov	2340,r13		! source line 2340
	mov	"\0\0SE",r10
!   _temp_2492 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2493 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2492  sizeInBytes=4
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
_Label_2488:
! END IF...
_Label_2477:
! SEND STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0SE",r10
!   _temp_2494 = &fileManagerLock
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
	mov	2343,r13		! source line 2343
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
	.word	_Label_2495
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2497
	.word	12
	.word	4
	.word	_Label_2498
	.word	-12
	.word	4
	.word	_Label_2499
	.word	-16
	.word	4
	.word	_Label_2500
	.word	-20
	.word	4
	.word	_Label_2501
	.word	-24
	.word	4
	.word	_Label_2502
	.word	-28
	.word	4
	.word	_Label_2503
	.word	-32
	.word	4
	.word	_Label_2504
	.word	-36
	.word	4
	.word	_Label_2505
	.word	-40
	.word	4
	.word	_Label_2506
	.word	-44
	.word	4
	.word	_Label_2507
	.word	-48
	.word	4
	.word	_Label_2508
	.word	-52
	.word	4
	.word	_Label_2509
	.word	-56
	.word	4
	.word	_Label_2510
	.word	-60
	.word	4
	.word	_Label_2511
	.word	-64
	.word	4
	.word	_Label_2512
	.word	-68
	.word	4
	.word	_Label_2513
	.word	-72
	.word	4
	.word	_Label_2514
	.word	-76
	.word	4
	.word	_Label_2515
	.word	-80
	.word	4
	.word	_Label_2516
	.word	-84
	.word	4
	.word	_Label_2517
	.word	-88
	.word	4
	.word	_Label_2518
	.word	-92
	.word	4
	.word	_Label_2519
	.word	-96
	.word	4
	.word	_Label_2520
	.word	-100
	.word	4
	.word	_Label_2521
	.word	-104
	.word	4
	.word	0
_Label_2495:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2496:
	.ascii	"Pself\0"
	.align
_Label_2497:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2521:
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
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	2348,r13		! source line 2348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2525 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2524 = *_temp_2525  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2524) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2526 = _temp_2524 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2526 ) then goto _Label_2523		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2523
!	jmp	_Label_2522
_Label_2522:
! THEN...
	mov	2354,r13		! source line 2354
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2531 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2530 = *_temp_2531  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2530) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2532 = _temp_2530 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2529 = *_temp_2532  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2529 >= 0 then goto _Label_2528		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2528
!	jmp	_Label_2527
_Label_2527:
! THEN...
	mov	2355,r13		! source line 2355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2533 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2533  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2355,r13		! source line 2355
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2528:
! ASSIGNMENT STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2535 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2534 = *_temp_2535  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2534) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2536 = _temp_2534 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2536 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2540 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2539 = *_temp_2540  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2539) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2541 = _temp_2539 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2538 = *_temp_2541  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2544 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2543 = *_temp_2544  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2543) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2545 = _temp_2543 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2542 = *_temp_2545  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2537 = _temp_2538 + _temp_2542		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2547 = *_temp_2548  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2547) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2549 = _temp_2547 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2546 = *_temp_2549  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2550 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2537  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2546  sizeInBytes=4
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
_Label_2523:
! RETURN STATEMENT...
	mov	2353,r13		! source line 2353
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
	.word	_Label_2551
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2552
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2553
	.word	12
	.word	4
	.word	_Label_2554
	.word	-12
	.word	4
	.word	_Label_2555
	.word	-16
	.word	4
	.word	_Label_2556
	.word	-20
	.word	4
	.word	_Label_2557
	.word	-24
	.word	4
	.word	_Label_2558
	.word	-28
	.word	4
	.word	_Label_2559
	.word	-32
	.word	4
	.word	_Label_2560
	.word	-36
	.word	4
	.word	_Label_2561
	.word	-40
	.word	4
	.word	_Label_2562
	.word	-44
	.word	4
	.word	_Label_2563
	.word	-48
	.word	4
	.word	_Label_2564
	.word	-52
	.word	4
	.word	_Label_2565
	.word	-56
	.word	4
	.word	_Label_2566
	.word	-60
	.word	4
	.word	_Label_2567
	.word	-64
	.word	4
	.word	_Label_2568
	.word	-68
	.word	4
	.word	_Label_2569
	.word	-72
	.word	4
	.word	_Label_2570
	.word	-76
	.word	4
	.word	_Label_2571
	.word	-80
	.word	4
	.word	_Label_2572
	.word	-84
	.word	4
	.word	_Label_2573
	.word	-88
	.word	4
	.word	_Label_2574
	.word	-92
	.word	4
	.word	_Label_2575
	.word	-96
	.word	4
	.word	_Label_2576
	.word	-100
	.word	4
	.word	_Label_2577
	.word	-104
	.word	4
	.word	_Label_2578
	.word	-108
	.word	4
	.word	0
_Label_2551:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2552:
	.ascii	"Pself\0"
	.align
_Label_2553:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2524\0"
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
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	2367,r13		! source line 2367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0SE",r10
!   _temp_2579 = &fileManagerLock
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
	mov	2383,r13		! source line 2383
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2585		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2585
!   _temp_2584 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2586
_Label_2585:
!   _temp_2584 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2586:
!   if _temp_2584 then goto _Label_2583 else goto _Label_2580
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2580
	jmp	_Label_2583
_Label_2583:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2589 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2588 = *_temp_2589  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2588 == 0 then goto _Label_2590		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2590
!   _temp_2587 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2591
_Label_2590:
!   _temp_2587 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2591:
!   if _temp_2587 then goto _Label_2582 else goto _Label_2580
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2580
	jmp	_Label_2582
_Label_2582:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2594 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2593 = *_temp_2594  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2593) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2595 = _temp_2593 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2592 = *_temp_2595  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2592 >= 0 then goto _Label_2581		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2581
!	jmp	_Label_2580
_Label_2580:
! THEN...
	mov	2384,r13		! source line 2384
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2596 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2596  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2384,r13		! source line 2384
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2581:
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2597 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2597  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0WH",r10
_Label_2598:
!   if numBytes <= 0 then goto _Label_2600		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2600
!	jmp	_Label_2599
_Label_2599:
	mov	2387,r13		! source line 2387
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2396,r13		! source line 2396
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
	mov	2397,r13		! source line 2397
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
	mov	2401,r13		! source line 2401
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2604 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2603 = *_temp_2604  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2603 == sector then goto _Label_2602		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2602
!	jmp	_Label_2601
_Label_2601:
! THEN...
	mov	2402,r13		! source line 2402
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2605) then goto _runtimeErrorNullPointer
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
	mov	2404,r13		! source line 2404
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2608 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2607 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2606 = sector + _temp_2607		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2610 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2609 = *_temp_2610  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2611 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2606  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2609  sizeInBytes=4
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
	mov	2407,r13		! source line 2407
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2612 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2612 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2613 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2613 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2602:
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2615 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2614 = *_temp_2615  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2614 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   _temp_2616 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2616  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2411,r13		! source line 2411
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
	mov	2415,r13		! source line 2415
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2598
_Label_2600:
! SEND STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0SE",r10
!   _temp_2617 = &fileManagerLock
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
	mov	2426,r13		! source line 2426
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
	.word	_Label_2618
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2620
	.word	12
	.word	4
	.word	_Label_2621
	.word	16
	.word	4
	.word	_Label_2622
	.word	20
	.word	4
	.word	_Label_2623
	.word	24
	.word	4
	.word	_Label_2624
	.word	-16
	.word	4
	.word	_Label_2625
	.word	-20
	.word	4
	.word	_Label_2626
	.word	-24
	.word	4
	.word	_Label_2627
	.word	-28
	.word	4
	.word	_Label_2628
	.word	-32
	.word	4
	.word	_Label_2629
	.word	-36
	.word	4
	.word	_Label_2630
	.word	-40
	.word	4
	.word	_Label_2631
	.word	-44
	.word	4
	.word	_Label_2632
	.word	-48
	.word	4
	.word	_Label_2633
	.word	-52
	.word	4
	.word	_Label_2634
	.word	-56
	.word	4
	.word	_Label_2635
	.word	-60
	.word	4
	.word	_Label_2636
	.word	-64
	.word	4
	.word	_Label_2637
	.word	-68
	.word	4
	.word	_Label_2638
	.word	-72
	.word	4
	.word	_Label_2639
	.word	-76
	.word	4
	.word	_Label_2640
	.word	-80
	.word	4
	.word	_Label_2641
	.word	-84
	.word	4
	.word	_Label_2642
	.word	-88
	.word	4
	.word	_Label_2643
	.word	-92
	.word	4
	.word	_Label_2644
	.word	-96
	.word	4
	.word	_Label_2645
	.word	-100
	.word	4
	.word	_Label_2646
	.word	-104
	.word	4
	.word	_Label_2647
	.word	-9
	.word	1
	.word	_Label_2648
	.word	-10
	.word	1
	.word	_Label_2649
	.word	-108
	.word	4
	.word	_Label_2650
	.word	-112
	.word	4
	.word	_Label_2651
	.word	-116
	.word	4
	.word	_Label_2652
	.word	-120
	.word	4
	.word	_Label_2653
	.word	-124
	.word	4
	.word	_Label_2654
	.word	-128
	.word	4
	.word	0
_Label_2618:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2619:
	.ascii	"Pself\0"
	.align
_Label_2620:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2621:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2622:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2623:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2647:
	.byte	'C'
	.ascii	"_temp_2587\0"
	.align
_Label_2648:
	.byte	'C'
	.ascii	"_temp_2584\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2650:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2651:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2652:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2653:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2654:
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
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	2431,r13		! source line 2431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_2655 = &fileManagerLock
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
	mov	2448,r13		! source line 2448
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2661		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2661
!   _temp_2660 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2662
_Label_2661:
!   _temp_2660 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2662:
!   if _temp_2660 then goto _Label_2659 else goto _Label_2656
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2656
	jmp	_Label_2659
_Label_2659:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2665 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2664 = *_temp_2665  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2664 == 0 then goto _Label_2666		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2666
!   _temp_2663 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2667
_Label_2666:
!   _temp_2663 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2667:
!   if _temp_2663 then goto _Label_2658 else goto _Label_2656
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2656
	jmp	_Label_2658
_Label_2658:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2670 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2669 = *_temp_2670  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2669) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2671 = _temp_2669 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2668 = *_temp_2671  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2668 >= 0 then goto _Label_2657		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2657
!	jmp	_Label_2656
_Label_2656:
! THEN...
	mov	2449,r13		! source line 2449
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2672 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2672  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2449,r13		! source line 2449
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2657:
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2673 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2673  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0WH",r10
_Label_2674:
!   if numBytes <= 0 then goto _Label_2676		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2676
!	jmp	_Label_2675
_Label_2675:
	mov	2452,r13		! source line 2452
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2461,r13		! source line 2461
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
	mov	2462,r13		! source line 2462
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
	mov	2466,r13		! source line 2466
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2680 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2679 = *_temp_2680  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2679 == sector then goto _Label_2678		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2678
!	jmp	_Label_2677
_Label_2677:
! THEN...
	mov	2468,r13		! source line 2468
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2681) then goto _runtimeErrorNullPointer
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
_Label_2678:
! ASSIGNMENT STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2683 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2682 = *_temp_2683  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2682 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0AS",r10
!   _temp_2684 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2684  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2471,r13		! source line 2471
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2688 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2687 = *_temp_2688  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2687 != sector then goto _Label_2686		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2686
!	jmp	_Label_2685
_Label_2685:
	jmp	_Label_2689
_Label_2686:
! ELSE...
	mov	2474,r13		! source line 2474
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2692
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2692
	jmp	_Label_2691
_Label_2692:
!   if bytesToMove != 8192 then goto _Label_2691		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2691
!	jmp	_Label_2690
_Label_2690:
	jmp	_Label_2693
_Label_2691:
! ELSE...
	mov	2478,r13		! source line 2478
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2696 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2695 = *_temp_2696  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2694 = sector + _temp_2695		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2698 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2697 = *_temp_2698  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2699 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2694  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2697  sizeInBytes=4
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
_Label_2693:
! END IF...
_Label_2689:
! ASSIGNMENT STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2700 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2700 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2701 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2701 = 1  (sizeInBytes=1)
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
	mov	2487,r13		! source line 2487
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2674
_Label_2676:
! SEND STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0SE",r10
!   _temp_2702 = &fileManagerLock
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
	mov	2499,r13		! source line 2499
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
	.word	_Label_2703
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2705
	.word	12
	.word	4
	.word	_Label_2706
	.word	16
	.word	4
	.word	_Label_2707
	.word	20
	.word	4
	.word	_Label_2708
	.word	24
	.word	4
	.word	_Label_2709
	.word	-16
	.word	4
	.word	_Label_2710
	.word	-20
	.word	4
	.word	_Label_2711
	.word	-24
	.word	4
	.word	_Label_2712
	.word	-28
	.word	4
	.word	_Label_2713
	.word	-32
	.word	4
	.word	_Label_2714
	.word	-36
	.word	4
	.word	_Label_2715
	.word	-40
	.word	4
	.word	_Label_2716
	.word	-44
	.word	4
	.word	_Label_2717
	.word	-48
	.word	4
	.word	_Label_2718
	.word	-52
	.word	4
	.word	_Label_2719
	.word	-56
	.word	4
	.word	_Label_2720
	.word	-60
	.word	4
	.word	_Label_2721
	.word	-64
	.word	4
	.word	_Label_2722
	.word	-68
	.word	4
	.word	_Label_2723
	.word	-72
	.word	4
	.word	_Label_2724
	.word	-76
	.word	4
	.word	_Label_2725
	.word	-80
	.word	4
	.word	_Label_2726
	.word	-84
	.word	4
	.word	_Label_2727
	.word	-88
	.word	4
	.word	_Label_2728
	.word	-92
	.word	4
	.word	_Label_2729
	.word	-96
	.word	4
	.word	_Label_2730
	.word	-100
	.word	4
	.word	_Label_2731
	.word	-104
	.word	4
	.word	_Label_2732
	.word	-108
	.word	4
	.word	_Label_2733
	.word	-112
	.word	4
	.word	_Label_2734
	.word	-9
	.word	1
	.word	_Label_2735
	.word	-10
	.word	1
	.word	_Label_2736
	.word	-116
	.word	4
	.word	_Label_2737
	.word	-120
	.word	4
	.word	_Label_2738
	.word	-124
	.word	4
	.word	_Label_2739
	.word	-128
	.word	4
	.word	_Label_2740
	.word	-132
	.word	4
	.word	_Label_2741
	.word	-136
	.word	4
	.word	0
_Label_2703:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2704:
	.ascii	"Pself\0"
	.align
_Label_2705:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2706:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2707:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2708:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2734:
	.byte	'C'
	.ascii	"_temp_2663\0"
	.align
_Label_2735:
	.byte	'C'
	.ascii	"_temp_2660\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2737:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2738:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2739:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2740:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2741:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2742
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2742:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2743
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2743:
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
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	2535,r13		! source line 2535
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
!   _temp_2744 = &_P_Kernel_frameManager
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
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2540,r13		! source line 2540
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
	.word	_Label_2745
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2747
	.word	-12
	.word	4
	.word	0
_Label_2745:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2746:
	.ascii	"Pself\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2744\0"
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
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	2545,r13		! source line 2545
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2748 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2748  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2749 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2749  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2549,r13		! source line 2549
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2750 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2750  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2551,r13		! source line 2551
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2751 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2751  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2553,r13		! source line 2553
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2752 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2752  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2554,r13		! source line 2554
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2555,r13		! source line 2555
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2753 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2753  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2556,r13		! source line 2556
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2557,r13		! source line 2557
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2558,r13		! source line 2558
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2558,r13		! source line 2558
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
	.word	_Label_2754
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2755
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_2754:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2755:
	.ascii	"Pself\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2762
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2762:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2763
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2763:
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
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	2569,r13		! source line 2569
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2764 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2764  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2570,r13		! source line 2570
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2571,r13		! source line 2571
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2765 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2765  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2572,r13		! source line 2572
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2767		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2767
!	jmp	_Label_2766
_Label_2766:
! THEN...
	mov	2574,r13		! source line 2574
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2574,r13		! source line 2574
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
	jmp	_Label_2768
_Label_2767:
! ELSE...
	mov	2576,r13		! source line 2576
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2769 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2576,r13		! source line 2576
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2768:
! RETURN STATEMENT...
	mov	2573,r13		! source line 2573
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
	.word	_Label_2770
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2772
	.word	-12
	.word	4
	.word	_Label_2773
	.word	-16
	.word	4
	.word	_Label_2774
	.word	-20
	.word	4
	.word	0
_Label_2770:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2771:
	.ascii	"Pself\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2764\0"
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
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	2582,r13		! source line 2582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0SE",r10
!   _temp_2775 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2776 = _temp_2775 + 4
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
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
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
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_2777 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2778 = _temp_2777 + 4
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
	mov	2596,r13		! source line 2596
	mov	"\0\0RE",r10
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2781 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2780  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2779  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2779  (sizeInBytes=1)
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
	.word	_Label_2782
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2784
	.word	12
	.word	4
	.word	_Label_2785
	.word	16
	.word	4
	.word	_Label_2786
	.word	-16
	.word	4
	.word	_Label_2787
	.word	-20
	.word	4
	.word	_Label_2788
	.word	-9
	.word	1
	.word	_Label_2789
	.word	-24
	.word	4
	.word	_Label_2790
	.word	-28
	.word	4
	.word	_Label_2791
	.word	-32
	.word	4
	.word	_Label_2792
	.word	-36
	.word	4
	.word	_Label_2793
	.word	-40
	.word	4
	.word	0
_Label_2782:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2783:
	.ascii	"Pself\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2785:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2788:
	.byte	'C'
	.ascii	"_temp_2779\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2793:
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	2601,r13		! source line 2601
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0IF",r10
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
!   _temp_2797 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2798) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2797  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2796  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2796 then goto _Label_2795 else goto _Label_2794
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2794
	jmp	_Label_2795
_Label_2794:
! THEN...
	mov	2607,r13		! source line 2607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2799 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2799  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2607,r13		! source line 2607
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2795:
! RETURN STATEMENT...
	mov	2609,r13		! source line 2609
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
	.word	_Label_2800
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2801
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2802
	.word	-16
	.word	4
	.word	_Label_2803
	.word	-20
	.word	4
	.word	_Label_2804
	.word	-24
	.word	4
	.word	_Label_2805
	.word	-9
	.word	1
	.word	_Label_2806
	.word	-28
	.word	4
	.word	0
_Label_2800:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2801:
	.ascii	"Pself\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2805:
	.byte	'C'
	.ascii	"_temp_2796\0"
	.align
_Label_2806:
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	2614,r13		! source line 2614
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2810 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2809 = *_temp_2810  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2809) then goto _Label_2808
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2808
!	jmp	_Label_2807
_Label_2807:
! THEN...
	mov	2641,r13		! source line 2641
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2811 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2811  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2641,r13		! source line 2641
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2808:
! IF STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0IF",r10
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2815) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2814  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2814 == 1112300152 then goto _Label_2813		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2813
!	jmp	_Label_2812
_Label_2812:
! THEN...
	mov	2646,r13		! source line 2646
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2816 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2816  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2646,r13		! source line 2646
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2813:
! ASSIGNMENT STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0AS",r10
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2817) then goto _runtimeErrorNullPointer
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
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2818) then goto _runtimeErrorNullPointer
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
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
	mov	2653,r13		! source line 2653
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2819) then goto _runtimeErrorNullPointer
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
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
	mov	2654,r13		! source line 2654
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2820) then goto _runtimeErrorNullPointer
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
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2821) then goto _runtimeErrorNullPointer
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
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
	mov	2656,r13		! source line 2656
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2822) then goto _runtimeErrorNullPointer
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
	mov	2659,r13		! source line 2659
	mov	"\0\0IF",r10
!   _temp_2825 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2825) then goto _Label_2824
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2824
!	jmp	_Label_2823
_Label_2823:
! THEN...
	mov	2660,r13		! source line 2660
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2826 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2826  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2660,r13		! source line 2660
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2824:
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
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
	mov	2667,r13		! source line 2667
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2828
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2828
!	jmp	_Label_2827
_Label_2827:
! THEN...
	mov	2668,r13		! source line 2668
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2829 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2829  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2828:
! IF STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0IF",r10
!   _temp_2832 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2832) then goto _Label_2831
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2831
!	jmp	_Label_2830
_Label_2830:
! THEN...
	mov	2674,r13		! source line 2674
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2833 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2833  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2831:
! IF STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0IF",r10
!   _temp_2836 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2836 then goto _Label_2835		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2835
!	jmp	_Label_2834
_Label_2834:
! THEN...
	mov	2678,r13		! source line 2678
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2837 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2837  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2835:
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
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
	mov	2684,r13		! source line 2684
	mov	"\0\0IF",r10
!   _temp_2840 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2840) then goto _Label_2839
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2839
!	jmp	_Label_2838
_Label_2838:
! THEN...
	mov	2685,r13		! source line 2685
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2841 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2841  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2685,r13		! source line 2685
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2839:
! IF STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0IF",r10
!   _temp_2844 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2844 then goto _Label_2843		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2843
!	jmp	_Label_2842
_Label_2842:
! THEN...
	mov	2689,r13		! source line 2689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2689,r13		! source line 2689
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2843:
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
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
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   _temp_2848 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2847 = _temp_2848 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2846 = _temp_2847 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2846 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2850		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2850
!	jmp	_Label_2849
_Label_2849:
! THEN...
	mov	2711,r13		! source line 2711
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2851 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2851  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2711,r13		! source line 2711
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2852 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2852  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2712,r13		! source line 2712
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2853 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2713,r13		! source line 2713
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2850:
! SEND STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0SE",r10
!   _temp_2854 = &_P_Kernel_frameManager
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
	mov	2722,r13		! source line 2722
	mov	"\0\0IF",r10
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2858) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2857  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2857 == 707406378 then goto _Label_2856		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2856
!	jmp	_Label_2855
_Label_2855:
! THEN...
	mov	2723,r13		! source line 2723
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2859 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2859  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2723,r13		! source line 2723
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
!   _temp_2860 = &_P_Kernel_frameManager
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
	mov	2725,r13		! source line 2725
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2856:
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
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
	mov	2730,r13		! source line 2730
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2865 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2866 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2865  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2861:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2866 then goto _Label_2864		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2864
_Label_2862:
	mov	2730,r13		! source line 2730
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
	mov	2731,r13		! source line 2731
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
	mov	2734,r13		! source line 2734
	mov	"\0\0IF",r10
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2870) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2869  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2869 then goto _Label_2868 else goto _Label_2867
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2867
	jmp	_Label_2868
_Label_2867:
! THEN...
	mov	2735,r13		! source line 2735
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2871 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2871  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2735,r13		! source line 2735
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0SE",r10
!   _temp_2872 = &_P_Kernel_frameManager
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
	mov	2737,r13		! source line 2737
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2868:
! SEND STATEMENT...
	mov	2739,r13		! source line 2739
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
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2863:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2861
! END FOR
_Label_2864:
! IF STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0IF",r10
	mov	2744,r13		! source line 2744
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2876) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2875  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2875 == 707406378 then goto _Label_2874		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2874
!	jmp	_Label_2873
_Label_2873:
! THEN...
	mov	2745,r13		! source line 2745
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2877 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2877  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2745,r13		! source line 2745
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0SE",r10
!   _temp_2878 = &_P_Kernel_frameManager
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
_Label_2874:
! FOR STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2883 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2884 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2883  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2879:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2884 then goto _Label_2882		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2882
_Label_2880:
	mov	2751,r13		! source line 2751
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
	mov	2752,r13		! source line 2752
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
	mov	2755,r13		! source line 2755
	mov	"\0\0IF",r10
	mov	2755,r13		! source line 2755
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2888) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2887  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2887 then goto _Label_2886 else goto _Label_2885
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2885
	jmp	_Label_2886
_Label_2885:
! THEN...
	mov	2756,r13		! source line 2756
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2889 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2889  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2756,r13		! source line 2756
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   _temp_2890 = &_P_Kernel_frameManager
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
	mov	2758,r13		! source line 2758
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2886:
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2881:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2879
! END FOR
_Label_2882:
! IF STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0IF",r10
	mov	2764,r13		! source line 2764
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2894) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2893  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2893 == 707406378 then goto _Label_2892		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2892
!	jmp	_Label_2891
_Label_2891:
! THEN...
	mov	2765,r13		! source line 2765
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2895 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2895  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2765,r13		! source line 2765
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
!   _temp_2896 = &_P_Kernel_frameManager
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
	mov	2767,r13		! source line 2767
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2892:
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
	mov	2771,r13		! source line 2771
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
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2778,r13		! source line 2778
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
	.word	_Label_2897
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2898
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2899
	.word	12
	.word	4
	.word	_Label_2900
	.word	-16
	.word	4
	.word	_Label_2901
	.word	-20
	.word	4
	.word	_Label_2902
	.word	-24
	.word	4
	.word	_Label_2903
	.word	-28
	.word	4
	.word	_Label_2904
	.word	-32
	.word	4
	.word	_Label_2905
	.word	-36
	.word	4
	.word	_Label_2906
	.word	-40
	.word	4
	.word	_Label_2907
	.word	-9
	.word	1
	.word	_Label_2908
	.word	-44
	.word	4
	.word	_Label_2909
	.word	-48
	.word	4
	.word	_Label_2910
	.word	-52
	.word	4
	.word	_Label_2911
	.word	-56
	.word	4
	.word	_Label_2912
	.word	-60
	.word	4
	.word	_Label_2913
	.word	-64
	.word	4
	.word	_Label_2914
	.word	-68
	.word	4
	.word	_Label_2915
	.word	-72
	.word	4
	.word	_Label_2916
	.word	-76
	.word	4
	.word	_Label_2917
	.word	-10
	.word	1
	.word	_Label_2918
	.word	-80
	.word	4
	.word	_Label_2919
	.word	-84
	.word	4
	.word	_Label_2920
	.word	-88
	.word	4
	.word	_Label_2921
	.word	-92
	.word	4
	.word	_Label_2922
	.word	-96
	.word	4
	.word	_Label_2923
	.word	-100
	.word	4
	.word	_Label_2924
	.word	-104
	.word	4
	.word	_Label_2925
	.word	-108
	.word	4
	.word	_Label_2926
	.word	-112
	.word	4
	.word	_Label_2927
	.word	-116
	.word	4
	.word	_Label_2928
	.word	-120
	.word	4
	.word	_Label_2929
	.word	-124
	.word	4
	.word	_Label_2930
	.word	-128
	.word	4
	.word	_Label_2931
	.word	-132
	.word	4
	.word	_Label_2932
	.word	-136
	.word	4
	.word	_Label_2933
	.word	-140
	.word	4
	.word	_Label_2934
	.word	-144
	.word	4
	.word	_Label_2935
	.word	-148
	.word	4
	.word	_Label_2936
	.word	-152
	.word	4
	.word	_Label_2937
	.word	-156
	.word	4
	.word	_Label_2938
	.word	-160
	.word	4
	.word	_Label_2939
	.word	-164
	.word	4
	.word	_Label_2940
	.word	-168
	.word	4
	.word	_Label_2941
	.word	-172
	.word	4
	.word	_Label_2942
	.word	-176
	.word	4
	.word	_Label_2943
	.word	-180
	.word	4
	.word	_Label_2944
	.word	-184
	.word	4
	.word	_Label_2945
	.word	-188
	.word	4
	.word	_Label_2946
	.word	-192
	.word	4
	.word	_Label_2947
	.word	-196
	.word	4
	.word	_Label_2948
	.word	-200
	.word	4
	.word	_Label_2949
	.word	-204
	.word	4
	.word	_Label_2950
	.word	-208
	.word	4
	.word	_Label_2951
	.word	-212
	.word	4
	.word	_Label_2952
	.word	-216
	.word	4
	.word	_Label_2953
	.word	-220
	.word	4
	.word	_Label_2954
	.word	-224
	.word	4
	.word	_Label_2955
	.word	-228
	.word	4
	.word	_Label_2956
	.word	-232
	.word	4
	.word	_Label_2957
	.word	-236
	.word	4
	.word	_Label_2958
	.word	-240
	.word	4
	.word	_Label_2959
	.word	-244
	.word	4
	.word	_Label_2960
	.word	-248
	.word	4
	.word	_Label_2961
	.word	-252
	.word	4
	.word	_Label_2962
	.word	-256
	.word	4
	.word	_Label_2963
	.word	-260
	.word	4
	.word	_Label_2964
	.word	-264
	.word	4
	.word	_Label_2965
	.word	-268
	.word	4
	.word	0
_Label_2897:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2898:
	.ascii	"Pself\0"
	.align
_Label_2899:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2907:
	.byte	'C'
	.ascii	"_temp_2887\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2917:
	.byte	'C'
	.ascii	"_temp_2869\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2956:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2958:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2959:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2960:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2961:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2962:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2963:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2964:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2965:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
