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
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
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
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_fileManager
	.export	_P_Kernel_serialHasBeenInitialized
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
_P_Kernel_serialDriver:
	.skip	4308
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_189:
	.word	14			! length
	.ascii	"\' was ingored\n"
	.align
_StringConst_188:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_187:
	.word	19			! length
	.ascii	"serialHandlerThread"
	.align
_StringConst_186:
	.word	30			! length
	.ascii	"Initializing Serial Driver...\n"
	.align
_StringConst_185:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_184:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_183:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_182:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_180:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_179:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_178:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_177:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_176:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_175:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_174:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_173:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_172:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_170:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_169:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_168:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_167:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_166:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_165:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_164:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_163:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_162:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_161:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_160:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_159:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_158:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_157:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_156:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_155:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_154:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_153:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_152:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_151:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_150:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_149:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_147:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_145:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_144:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_143:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_142:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_141:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_140:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_139:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_138:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_137:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_136:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_135:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_134:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_133:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_119:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_118:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_111:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_110:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_108:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_107:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_106:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_105:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_104:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_103:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_102:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
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
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_98:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_97:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_96:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_95:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_94:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_93:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_92:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_91:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_90:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_89:
	.word	22			! length
	.ascii	"    File Descriptors:\n"
	.align
_StringConst_88:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_87:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_86:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_84:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_83:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_82:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_81:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_80:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_79:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_74:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_73:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_72:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_71:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_70:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_69:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_68:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_67:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_66:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_65:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_64:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_63:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_62:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_61:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_60:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_59:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_58:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_56:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_55:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_53:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_52:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_51:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_50:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_49:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_47:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_46:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_45:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_44:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_43:
	.word	8			! length
	.ascii	"terminal"
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
	.ascii	"TestProgram5"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram5"
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
	set	0x48a84754,r4		! myHashVal = 1218987860
	cmp	r3,r4
	be	_Label_200
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
_Label_200:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_201
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_201
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_201
_Label_201:
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
_Label_4191:
	push	r0
	sub	r1,1,r1
	bne	_Label_4191
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0AS",r10
	mov	13,r13		! source line 13
	mov	"\0\0SE",r10
!   _temp_202 = &_P_Kernel_threadManager
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
!   _temp_203 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_203  sizeInBytes=4
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
	mov	15,r13		! source line 15
	mov	"\0\0SE",r10
!   _temp_204 = _function_199_StartUserProcess
	set	_function_199_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_205 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_204  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_205  sizeInBytes=4
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
	mov	15,r13		! source line 15
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
	.word	_Label_206
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_207
	.word	-12
	.word	4
	.word	_Label_208
	.word	-16
	.word	4
	.word	_Label_209
	.word	-20
	.word	4
	.word	_Label_210
	.word	-24
	.word	4
	.word	_Label_211
	.word	-28
	.word	4
	.word	0
_Label_206:
	.ascii	"InitFirstProcess\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_211:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_199_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_4192:
	push	r0
	sub	r1,1,r1
	bne	_Label_4192
	mov	21,r13		! source line 21
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_212 = &_P_Kernel_processManager
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
!   _temp_213 = pcb + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_213 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_214 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_214 = pcb  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_215 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   _temp_216 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
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
!   _temp_218 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_217 = _temp_218		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFilePtr) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_217  sizeInBytes=4
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
!   _temp_219 = &_P_Kernel_fileManager
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
!   _temp_221 = pcb + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_222 = _temp_221 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_220 = *_temp_222  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStack = _temp_220 * 8192		(int)
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
!   _temp_223 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_223 [999 ] into _temp_224
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
!   initSystemStack = _temp_224		(4 bytes)
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
!   _temp_225 = pcb + 32
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
!   _temp_226 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_226 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_227 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_227  sizeInBytes=4
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
_RoutineDescriptor__function_199_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_228
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_229
	.word	-12
	.word	4
	.word	_Label_230
	.word	-16
	.word	4
	.word	_Label_231
	.word	-20
	.word	4
	.word	_Label_232
	.word	-24
	.word	4
	.word	_Label_233
	.word	-28
	.word	4
	.word	_Label_234
	.word	-32
	.word	4
	.word	_Label_235
	.word	-36
	.word	4
	.word	_Label_236
	.word	-40
	.word	4
	.word	_Label_237
	.word	-44
	.word	4
	.word	_Label_238
	.word	-48
	.word	4
	.word	_Label_239
	.word	-52
	.word	4
	.word	_Label_240
	.word	-56
	.word	4
	.word	_Label_241
	.word	-60
	.word	4
	.word	_Label_242
	.word	-64
	.word	4
	.word	_Label_243
	.word	-68
	.word	4
	.word	_Label_244
	.word	-72
	.word	4
	.word	_Label_245
	.word	-76
	.word	4
	.word	_Label_246
	.word	-80
	.word	4
	.word	_Label_247
	.word	-84
	.word	4
	.word	_Label_248
	.word	-88
	.word	4
	.word	_Label_249
	.word	-92
	.word	4
	.word	_Label_250
	.word	-96
	.word	4
	.word	0
_Label_228:
	.ascii	"StartUserProcess\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"entryPoint\0"
	.align
_Label_246:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_247:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_248:
	.byte	'I'
	.ascii	"initUserStack\0"
	.align
_Label_249:
	.byte	'I'
	.ascii	"initSystemStack\0"
	.align
_Label_250:
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
_Label_4193:
	push	r0
	sub	r1,1,r1
	bne	_Label_4193
	mov	49,r13		! source line 49
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_251 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_251  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	58,r13		! source line 58
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
	mov	59,r13		! source line 59
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
	mov	60,r13		! source line 60
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_4194:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4194
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0SE",r10
!   _temp_255 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-44]
!   _temp_256 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_255  sizeInBytes=4
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
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   _temp_257 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_258 = _temp_257 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_258 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_4195:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4195
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0SE",r10
!   _temp_260 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-24]
!   _temp_261 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_260  sizeInBytes=4
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
	mov	65,r13		! source line 65
	mov	"\0\0SE",r10
!   _temp_262 = _function_198_IdleFunction
	set	_function_198_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_263 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_262  sizeInBytes=4
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
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	69,r13		! source line 69
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
	.word	_Label_264
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_265
	.word	-12
	.word	4
	.word	_Label_266
	.word	-16
	.word	4
	.word	_Label_267
	.word	-20
	.word	4
	.word	_Label_268
	.word	-24
	.word	4
	.word	_Label_269
	.word	-28
	.word	4
	.word	_Label_270
	.word	-32
	.word	4
	.word	_Label_271
	.word	-36
	.word	4
	.word	_Label_272
	.word	-40
	.word	4
	.word	_Label_273
	.word	-44
	.word	4
	.word	_Label_274
	.word	-48
	.word	4
	.word	_Label_275
	.word	-52
	.word	4
	.word	_Label_276
	.word	-56
	.word	4
	.word	_Label_277
	.word	-60
	.word	4
	.word	0
_Label_264:
	.ascii	"InitializeScheduler\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_198_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4196:
	push	r0
	sub	r1,1,r1
	bne	_Label_4196
	mov	74,r13		! source line 74
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_278:
!	jmp	_Label_279
_Label_279:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0IF",r10
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_283 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_281 else goto _Label_282
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_282
	jmp	_Label_281
_Label_281:
! THEN...
	mov	87,r13		! source line 87
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_284
_Label_282:
! ELSE...
	mov	89,r13		! source line 89
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	89,r13		! source line 89
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
_Label_284:
! END WHILE...
	jmp	_Label_278
_Label_280:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_IdleFunction:
	.word	_sourceFileName
	.word	_Label_285
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_286
	.word	8
	.word	4
	.word	_Label_287
	.word	-12
	.word	4
	.word	_Label_288
	.word	-16
	.word	4
	.word	0
_Label_285:
	.ascii	"IdleFunction\0"
	.align
_Label_286:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_288:
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
_Label_4197:
	push	r0
	sub	r1,1,r1
	bne	_Label_4197
	mov	96,r13		! source line 96
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	110,r13		! source line 110
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
	mov	112,r13		! source line 112
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_291 ) then goto _Label_290		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_290
!	jmp	_Label_289
_Label_289:
! THEN...
	mov	113,r13		! source line 113
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_293 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_293 [0 ] into _temp_294
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
!   _temp_292 = _temp_294		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_290:
! ASSIGNMENT STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_295 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_295 = 3  (sizeInBytes=4)
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
	mov	122,r13		! source line 122
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0WH",r10
_Label_296:
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_300 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_299  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_299 then goto _Label_298 else goto _Label_297
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_297
	jmp	_Label_298
_Label_297:
	mov	126,r13		! source line 126
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
	mov	127,r13		! source line 127
	mov	"\0\0SE",r10
!   _temp_301 = &_P_Kernel_threadsToBeDestroyed
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
	mov	128,r13		! source line 128
	mov	"\0\0SE",r10
!   _temp_302 = &_P_Kernel_threadManager
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
	jmp	_Label_296
_Label_298:
! IF STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_305 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_305 ) then goto _Label_304		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_304
!	jmp	_Label_303
_Label_303:
! THEN...
	mov	132,r13		! source line 132
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_307 [0 ] into _temp_308
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
!   _temp_306 = _temp_308		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_309 = *_temp_310  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_309) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_311 = _temp_309 + 32
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
_Label_304:
! RETURN STATEMENT...
	mov	131,r13		! source line 131
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
	.word	_Label_312
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_313
	.word	8
	.word	4
	.word	_Label_314
	.word	-16
	.word	4
	.word	_Label_315
	.word	-20
	.word	4
	.word	_Label_316
	.word	-24
	.word	4
	.word	_Label_317
	.word	-28
	.word	4
	.word	_Label_318
	.word	-32
	.word	4
	.word	_Label_319
	.word	-36
	.word	4
	.word	_Label_320
	.word	-40
	.word	4
	.word	_Label_321
	.word	-44
	.word	4
	.word	_Label_322
	.word	-48
	.word	4
	.word	_Label_323
	.word	-52
	.word	4
	.word	_Label_324
	.word	-9
	.word	1
	.word	_Label_325
	.word	-56
	.word	4
	.word	_Label_326
	.word	-60
	.word	4
	.word	_Label_327
	.word	-64
	.word	4
	.word	_Label_328
	.word	-68
	.word	4
	.word	_Label_329
	.word	-72
	.word	4
	.word	_Label_330
	.word	-76
	.word	4
	.word	_Label_331
	.word	-80
	.word	4
	.word	0
_Label_312:
	.ascii	"Run\0"
	.align
_Label_313:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_324:
	.byte	'C'
	.ascii	"_temp_299\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_330:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_331:
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
_Label_4198:
	push	r0
	sub	r1,1,r1
	bne	_Label_4198
	mov	139,r13		! source line 139
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_332 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_333 = _function_197_ThreadPrintShort
	set	_function_197_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_334 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_333  sizeInBytes=4
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
	mov	149,r13		! source line 149
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	149,r13		! source line 149
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	149,r13		! source line 149
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
	.word	_Label_335
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_336
	.word	-12
	.word	4
	.word	_Label_337
	.word	-16
	.word	4
	.word	_Label_338
	.word	-20
	.word	4
	.word	_Label_339
	.word	-24
	.word	4
	.word	0
_Label_335:
	.ascii	"PrintReadyList\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_339:
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
_Label_4199:
	push	r0
	sub	r1,1,r1
	bne	_Label_4199
	mov	154,r13		! source line 154
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_340 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_340  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_342 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_341 = *_temp_342  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	168,r13		! source line 168
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_343 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	170,r13		! source line 170
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	170,r13		! source line 170
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
	.word	_Label_344
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	_Label_349
	.word	-28
	.word	4
	.word	_Label_350
	.word	-32
	.word	4
	.word	0
_Label_344:
	.ascii	"ThreadStartMain\0"
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
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_350:
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
_Label_4200:
	push	r0
	sub	r1,1,r1
	bne	_Label_4200
	mov	175,r13		! source line 175
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	186,r13		! source line 186
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0SE",r10
!   _temp_351 = &_P_Kernel_threadsToBeDestroyed
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
	mov	191,r13		! source line 191
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
!   _temp_352 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	193,r13		! source line 193
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	193,r13		! source line 193
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
	.word	_Label_353
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	0
_Label_353:
	.ascii	"ThreadFinish\0"
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
_Label_4201:
	push	r0
	sub	r1,1,r1
	bne	_Label_4201
	mov	198,r13		! source line 198
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_357 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_359		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_359
!	jmp	_Label_358
_Label_358:
! THEN...
	mov	209,r13		! source line 209
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_360 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_362 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_361 = *_temp_362  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_359:
! CALL STATEMENT...
!   _temp_363 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_365 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	216,r13		! source line 216
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	216,r13		! source line 216
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
	.word	_Label_366
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_367
	.word	8
	.word	4
	.word	_Label_368
	.word	-12
	.word	4
	.word	_Label_369
	.word	-16
	.word	4
	.word	_Label_370
	.word	-20
	.word	4
	.word	_Label_371
	.word	-24
	.word	4
	.word	_Label_372
	.word	-28
	.word	4
	.word	_Label_373
	.word	-32
	.word	4
	.word	_Label_374
	.word	-36
	.word	4
	.word	_Label_375
	.word	-40
	.word	4
	.word	0
_Label_366:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_367:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_375:
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
_Label_4202:
	push	r0
	sub	r1,1,r1
	bne	_Label_4202
	mov	221,r13		! source line 221
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	234,r13		! source line 234
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_377		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_377
!	jmp	_Label_376
_Label_376:
! THEN...
	mov	237,r13		! source line 237
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_378
_Label_377:
! ELSE...
	mov	240,r13		! source line 240
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_378:
! RETURN STATEMENT...
	mov	243,r13		! source line 243
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
	.word	_Label_379
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_380
	.word	8
	.word	4
	.word	_Label_381
	.word	-12
	.word	4
	.word	0
_Label_379:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_380:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_381:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_197_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4203:
	push	r0
	sub	r1,1,r1
	bne	_Label_4203
	mov	682,r13		! source line 682
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_385		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_385
!   _temp_384 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_386
_Label_385:
!   _temp_384 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_386:
!   if _temp_384 then goto _Label_383 else goto _Label_382
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_382
	jmp	_Label_383
_Label_382:
! THEN...
	mov	691,r13		! source line 691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_387 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_383:
! CALL STATEMENT...
!   _temp_388 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_389 = *_temp_390  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_391 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	697,r13		! source line 697
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_399 = *_temp_400  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_394
	cmp	r1,2
	be	_Label_395
	cmp	r1,3
	be	_Label_396
	cmp	r1,4
	be	_Label_397
	cmp	r1,5
	be	_Label_398
	jmp	_Label_392
! CASE 1...
_Label_394:
! CALL STATEMENT...
!   _temp_401 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0BR",r10
	jmp	_Label_393
! CASE 2...
_Label_395:
! CALL STATEMENT...
!   _temp_402 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0BR",r10
	jmp	_Label_393
! CASE 3...
_Label_396:
! CALL STATEMENT...
!   _temp_403 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0BR",r10
	jmp	_Label_393
! CASE 4...
_Label_397:
! CALL STATEMENT...
!   _temp_404 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0BR",r10
	jmp	_Label_393
! CASE 5...
_Label_398:
! CALL STATEMENT...
!   _temp_405 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0BR",r10
	jmp	_Label_393
! DEFAULT CASE...
_Label_392:
! CALL STATEMENT...
!   _temp_406 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	714,r13		! source line 714
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_393:
! CALL STATEMENT...
!   _temp_407 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_408 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_409 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_411
	.word	8
	.word	4
	.word	_Label_412
	.word	-16
	.word	4
	.word	_Label_413
	.word	-20
	.word	4
	.word	_Label_414
	.word	-24
	.word	4
	.word	_Label_415
	.word	-28
	.word	4
	.word	_Label_416
	.word	-32
	.word	4
	.word	_Label_417
	.word	-36
	.word	4
	.word	_Label_418
	.word	-40
	.word	4
	.word	_Label_419
	.word	-44
	.word	4
	.word	_Label_420
	.word	-48
	.word	4
	.word	_Label_421
	.word	-52
	.word	4
	.word	_Label_422
	.word	-56
	.word	4
	.word	_Label_423
	.word	-60
	.word	4
	.word	_Label_424
	.word	-64
	.word	4
	.word	_Label_425
	.word	-68
	.word	4
	.word	_Label_426
	.word	-72
	.word	4
	.word	_Label_427
	.word	-76
	.word	4
	.word	_Label_428
	.word	-9
	.word	1
	.word	_Label_429
	.word	-80
	.word	4
	.word	0
_Label_410:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_411:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_428:
	.byte	'C'
	.ascii	"_temp_384\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_196_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4204:
	push	r0
	sub	r1,1,r1
	bne	_Label_4204
	mov	1049,r13		! source line 1049
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_430 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_430  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1054,r13		! source line 1054
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_196_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_431
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_432
	.word	8
	.word	4
	.word	_Label_433
	.word	-12
	.word	4
	.word	0
_Label_431:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_432:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_430\0"
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
_Label_4205:
	push	r0
	sub	r1,1,r1
	bne	_Label_4205
	mov	1059,r13		! source line 1059
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_435 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_434 = *_temp_435  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_434) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = _temp_434 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_436 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_437 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_437 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStatus  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_439 = *_temp_440  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_439) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = _temp_439 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_438 = _temp_441		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_442 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_438  sizeInBytes=4
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
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_443 = *_temp_444  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_445 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_443  sizeInBytes=4
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
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_446 = *_temp_447  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_446) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _temp_446 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_448 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_449 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1076,r13		! source line 1076
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
	.word	_Label_450
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_451
	.word	8
	.word	4
	.word	_Label_452
	.word	-12
	.word	4
	.word	_Label_453
	.word	-16
	.word	4
	.word	_Label_454
	.word	-20
	.word	4
	.word	_Label_455
	.word	-24
	.word	4
	.word	_Label_456
	.word	-28
	.word	4
	.word	_Label_457
	.word	-32
	.word	4
	.word	_Label_458
	.word	-36
	.word	4
	.word	_Label_459
	.word	-40
	.word	4
	.word	_Label_460
	.word	-44
	.word	4
	.word	_Label_461
	.word	-48
	.word	4
	.word	_Label_462
	.word	-52
	.word	4
	.word	_Label_463
	.word	-56
	.word	4
	.word	_Label_464
	.word	-60
	.word	4
	.word	_Label_465
	.word	-64
	.word	4
	.word	_Label_466
	.word	-68
	.word	4
	.word	_Label_467
	.word	-72
	.word	4
	.word	_Label_468
	.word	-76
	.word	4
	.word	0
_Label_450:
	.ascii	"ProcessFinish\0"
	.align
_Label_451:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_468:
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
_Label_4206:
	push	r0
	sub	r1,1,r1
	bne	_Label_4206
	mov	1553,r13		! source line 1553
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1565,r13		! source line 1565
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
	mov	1566,r13		! source line 1566
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1566,r13		! source line 1566
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
	.word	_Label_469
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_469:
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
_Label_4207:
	push	r0
	sub	r1,1,r1
	bne	_Label_4207
	mov	1571,r13		! source line 1571
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0IF",r10
!   _temp_473 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_474 = _temp_473 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_472 = *_temp_474  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_472 == 0 then goto _Label_471		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_471
!	jmp	_Label_470
_Label_470:
! THEN...
	mov	1584,r13		! source line 1584
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0SE",r10
!   _temp_476 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_477 = _temp_476 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_475 = *_temp_477  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_475) then goto _runtimeErrorNullPointer
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
_Label_471:
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
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
	.word	_Label_478
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_479
	.word	-12
	.word	4
	.word	_Label_480
	.word	-16
	.word	4
	.word	_Label_481
	.word	-20
	.word	4
	.word	_Label_482
	.word	-24
	.word	4
	.word	_Label_483
	.word	-28
	.word	4
	.word	_Label_484
	.word	-32
	.word	4
	.word	0
_Label_478:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_472\0"
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
	mov	4,r1
_Label_4208:
	push	r0
	sub	r1,1,r1
	bne	_Label_4208
	mov	1590,r13		! source line 1590
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0IF",r10
!   _temp_487 = _P_Kernel_serialHasBeenInitialized XOR 1		(bool)
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_487 then goto _Label_486 else goto _Label_485
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_485
	jmp	_Label_486
_Label_485:
! THEN...
	mov	1601,r13		! source line 1601
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0SE",r10
!   _temp_488 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-20]
!   _temp_489 = _temp_488 + 124
	load	[r14+-20],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_486:
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_490
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_491
	.word	-16
	.word	4
	.word	_Label_492
	.word	-20
	.word	4
	.word	_Label_493
	.word	-9
	.word	1
	.word	0
_Label_490:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_493:
	.byte	'C'
	.ascii	"_temp_487\0"
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
_Label_4209:
	push	r0
	sub	r1,1,r1
	bne	_Label_4209
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
!   _temp_494 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1613,r13		! source line 1613
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
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
	.word	_Label_495
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_496
	.word	-12
	.word	4
	.word	0
_Label_495:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_494\0"
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
_Label_4210:
	push	r0
	sub	r1,1,r1
	bne	_Label_4210
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
!   _temp_497 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1625,r13		! source line 1625
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
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
	.word	_Label_498
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_499
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
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
_Label_4211:
	push	r0
	sub	r1,1,r1
	bne	_Label_4211
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
!   _temp_500 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
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
	.word	_Label_501
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_502
	.word	-12
	.word	4
	.word	0
_Label_501:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
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
_Label_4212:
	push	r0
	sub	r1,1,r1
	bne	_Label_4212
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
!   _temp_503 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
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
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
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
_Label_4213:
	push	r0
	sub	r1,1,r1
	bne	_Label_4213
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
!   _temp_506 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
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
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
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
_Label_4214:
	push	r0
	sub	r1,1,r1
	bne	_Label_4214
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
!   _temp_509 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
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
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
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
_Label_4215:
	push	r0
	sub	r1,1,r1
	bne	_Label_4215
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
!   _temp_512 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_function_195_ErrorInUserProcess
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
	.word	_Label_513
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_195_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4216:
	push	r0
	sub	r1,1,r1
	bne	_Label_4216
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_515 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
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
!   _temp_516 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
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
!   _temp_520 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_519 = *_temp_520  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_519 == 0 then goto _Label_518		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_518
!	jmp	_Label_517
_Label_517:
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
!   _temp_522 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_521 = *_temp_522  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_521) then goto _runtimeErrorNullPointer
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
	jmp	_Label_523
_Label_518:
! ELSE...
	mov	1703,r13		! source line 1703
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_524 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_523:
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
_RoutineDescriptor__function_195_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_525
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_526
	.word	8
	.word	4
	.word	_Label_527
	.word	-12
	.word	4
	.word	_Label_528
	.word	-16
	.word	4
	.word	_Label_529
	.word	-20
	.word	4
	.word	_Label_530
	.word	-24
	.word	4
	.word	_Label_531
	.word	-28
	.word	4
	.word	_Label_532
	.word	-32
	.word	4
	.word	_Label_533
	.word	-36
	.word	4
	.word	0
_Label_525:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_526:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_515\0"
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
_Label_4217:
	push	r0
	sub	r1,1,r1
	bne	_Label_4217
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
	be	_Label_4218
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_534
_Label_4218:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_534
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_534
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_548,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_548:
	jmp	_Label_540	! 1:	
	jmp	_Label_547	! 2:	
	jmp	_Label_537	! 3:	
	jmp	_Label_536	! 4:	
	jmp	_Label_539	! 5:	
	jmp	_Label_538	! 6:	
	jmp	_Label_541	! 7:	
	jmp	_Label_542	! 8:	
	jmp	_Label_543	! 9:	
	jmp	_Label_544	! 10:	
	jmp	_Label_545	! 11:	
	jmp	_Label_546	! 12:	
! CASE 4...
_Label_536:
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_537:
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
_Label_538:
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
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_539:
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
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_540:
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
_Label_541:
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
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_542:
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
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_543:
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
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_544:
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
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_545:
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
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_546:
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
_Label_547:
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
_Label_534:
! CALL STATEMENT...
!   _temp_557 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
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
!   _temp_558 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
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
_Label_535:
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
	.word	_Label_559
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_560
	.word	8
	.word	4
	.word	_Label_561
	.word	12
	.word	4
	.word	_Label_562
	.word	16
	.word	4
	.word	_Label_563
	.word	20
	.word	4
	.word	_Label_564
	.word	24
	.word	4
	.word	_Label_565
	.word	-12
	.word	4
	.word	_Label_566
	.word	-16
	.word	4
	.word	_Label_567
	.word	-20
	.word	4
	.word	_Label_568
	.word	-24
	.word	4
	.word	_Label_569
	.word	-28
	.word	4
	.word	_Label_570
	.word	-32
	.word	4
	.word	_Label_571
	.word	-36
	.word	4
	.word	_Label_572
	.word	-40
	.word	4
	.word	_Label_573
	.word	-44
	.word	4
	.word	_Label_574
	.word	-48
	.word	4
	.word	0
_Label_559:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_549\0"
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
_Label_4219:
	push	r0
	sub	r1,1,r1
	bne	_Label_4219
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
	.word	_Label_575
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_576
	.word	8
	.word	4
	.word	0
_Label_575:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_576:
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
_Label_4220:
	push	r0
	sub	r1,1,r1
	bne	_Label_4220
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_577 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
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
	.word	_Label_578
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_579
	.word	-12
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_577\0"
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
_Label_4221:
	push	r0
	sub	r1,1,r1
	bne	_Label_4221
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
	.word	_Label_580
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_580:
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
_Label_4222:
	push	r0
	sub	r1,1,r1
	bne	_Label_4222
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
!   _temp_581 = &_P_Kernel_threadManager
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
!   _temp_582 = &_P_Kernel_processManager
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
!   _temp_583 = newPCB + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_583 = newThread  (sizeInBytes=4)
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
!   _temp_584 = newPCB + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_586 = *_temp_587  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_586) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _temp_586 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_585 = *_temp_588  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_584 = _temp_585  (sizeInBytes=4)
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
!   _temp_589 = newThread + 76
	load	[r14+-200],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_589 = 2  (sizeInBytes=4)
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
!   _temp_590 = newThread + 4160
	load	[r14+-200],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_590 = newPCB  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = newThread + 4096
	load	[r14+-200],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_592 [0 ] into _temp_593
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
!   _temp_591 = _temp_593		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
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
!   _temp_594 = newThread + 68
	load	[r14+-200],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = newThread + 88
	load	[r14+-200],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_596 [999 ] into _temp_597
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
!   _temp_595 = _temp_597		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_594 = _temp_595  (sizeInBytes=4)
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
!   _temp_599 = newPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_598 = _temp_599		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_601 = *_temp_602  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_601) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _temp_601 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_604 = _temp_603 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_600 = *_temp_604  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_605 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_598  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_600  sizeInBytes=4
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
!   _temp_610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_613 = *_temp_614  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_613) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _temp_613 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_616 = _temp_615 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_612 = *_temp_616  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_611 = _temp_612 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_610  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-216]
_Label_606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_611 then goto _Label_609		
	load	[r14+-216],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_609
_Label_607:
	mov	1820,r13		! source line 1820
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_617  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_620 = *_temp_621  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_620) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _temp_620 + 32
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
!   Retrieve Result: targetName=_temp_619  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_617  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_619  sizeInBytes=4
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
!   _temp_627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_626 = *_temp_627  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_626) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _temp_626 + 32
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
!   Retrieve Result: targetName=_temp_625  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_629 = _temp_625 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_629 then goto _Label_624 else goto _Label_623
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_623
	jmp	_Label_624
_Label_623:
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
!   _temp_630 = newPCB + 32
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
	jmp	_Label_631
_Label_624:
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
!   _temp_632 = newPCB + 32
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
_Label_631:
!   Increment the FOR-LOOP index variable and jump back
_Label_608:
!   i = i + 1
	load	[r14+-216],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
	jmp	_Label_606
! END FOR
_Label_609:
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
!   _temp_633 = _function_194_Resume_After_Fork
	set	_function_194_Resume_After_Fork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_633  sizeInBytes=4
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
!   _temp_635 = newPCB + 12
	load	[r14+-204],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_634 = *_temp_635  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_634  (sizeInBytes=4)
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
	.word	_Label_636
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_637
	.word	-16
	.word	4
	.word	_Label_638
	.word	-20
	.word	4
	.word	_Label_639
	.word	-24
	.word	4
	.word	_Label_640
	.word	-28
	.word	4
	.word	_Label_641
	.word	-32
	.word	4
	.word	_Label_642
	.word	-9
	.word	1
	.word	_Label_643
	.word	-36
	.word	4
	.word	_Label_644
	.word	-40
	.word	4
	.word	_Label_645
	.word	-44
	.word	4
	.word	_Label_646
	.word	-10
	.word	1
	.word	_Label_647
	.word	-48
	.word	4
	.word	_Label_648
	.word	-52
	.word	4
	.word	_Label_649
	.word	-56
	.word	4
	.word	_Label_650
	.word	-60
	.word	4
	.word	_Label_651
	.word	-64
	.word	4
	.word	_Label_652
	.word	-68
	.word	4
	.word	_Label_653
	.word	-72
	.word	4
	.word	_Label_654
	.word	-76
	.word	4
	.word	_Label_655
	.word	-80
	.word	4
	.word	_Label_656
	.word	-84
	.word	4
	.word	_Label_657
	.word	-88
	.word	4
	.word	_Label_658
	.word	-92
	.word	4
	.word	_Label_659
	.word	-96
	.word	4
	.word	_Label_660
	.word	-100
	.word	4
	.word	_Label_661
	.word	-104
	.word	4
	.word	_Label_662
	.word	-108
	.word	4
	.word	_Label_663
	.word	-112
	.word	4
	.word	_Label_664
	.word	-116
	.word	4
	.word	_Label_665
	.word	-120
	.word	4
	.word	_Label_666
	.word	-124
	.word	4
	.word	_Label_667
	.word	-128
	.word	4
	.word	_Label_668
	.word	-132
	.word	4
	.word	_Label_669
	.word	-136
	.word	4
	.word	_Label_670
	.word	-140
	.word	4
	.word	_Label_671
	.word	-144
	.word	4
	.word	_Label_672
	.word	-148
	.word	4
	.word	_Label_673
	.word	-152
	.word	4
	.word	_Label_674
	.word	-156
	.word	4
	.word	_Label_675
	.word	-160
	.word	4
	.word	_Label_676
	.word	-164
	.word	4
	.word	_Label_677
	.word	-168
	.word	4
	.word	_Label_678
	.word	-172
	.word	4
	.word	_Label_679
	.word	-176
	.word	4
	.word	_Label_680
	.word	-180
	.word	4
	.word	_Label_681
	.word	-184
	.word	4
	.word	_Label_682
	.word	-188
	.word	4
	.word	_Label_683
	.word	-192
	.word	4
	.word	_Label_684
	.word	-196
	.word	4
	.word	_Label_685
	.word	-200
	.word	4
	.word	_Label_686
	.word	-204
	.word	4
	.word	_Label_687
	.word	-208
	.word	4
	.word	_Label_688
	.word	-212
	.word	4
	.word	_Label_689
	.word	-216
	.word	4
	.word	0
_Label_636:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_642:
	.byte	'C'
	.ascii	"_temp_629\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_646:
	.byte	'C'
	.ascii	"_temp_625\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"oldPC\0"
	.align
_Label_689:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Resume_After_Fork  ===============
! 
_function_194_Resume_After_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_Resume_After_Fork,r1
	push	r1
	mov	17,r1
_Label_4223:
	push	r0
	sub	r1,1,r1
	bne	_Label_4223
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
!   _temp_691 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_690 = *_temp_691  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_690) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_692 = _temp_690 + 32
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
!   _temp_694 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_694 [0 ] into _temp_695
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
!   _temp_693 = _temp_695		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
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
!   _temp_696 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_696 = 1  (sizeInBytes=1)
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
!   _temp_697 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_697 [14 ] into _temp_698
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
!   Data Move: userStackTop = *_temp_698  (sizeInBytes=4)
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
!   _temp_699 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_699 [999 ] into _temp_700
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
!   systemStackTop = _temp_700		(4 bytes)
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
_RoutineDescriptor__function_194_Resume_After_Fork:
	.word	_sourceFileName
	.word	_Label_701
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_702
	.word	8
	.word	4
	.word	_Label_703
	.word	-12
	.word	4
	.word	_Label_704
	.word	-16
	.word	4
	.word	_Label_705
	.word	-20
	.word	4
	.word	_Label_706
	.word	-24
	.word	4
	.word	_Label_707
	.word	-28
	.word	4
	.word	_Label_708
	.word	-32
	.word	4
	.word	_Label_709
	.word	-36
	.word	4
	.word	_Label_710
	.word	-40
	.word	4
	.word	_Label_711
	.word	-44
	.word	4
	.word	_Label_712
	.word	-48
	.word	4
	.word	_Label_713
	.word	-52
	.word	4
	.word	_Label_714
	.word	-56
	.word	4
	.word	_Label_715
	.word	-60
	.word	4
	.word	_Label_716
	.word	-64
	.word	4
	.word	0
_Label_701:
	.ascii	"Resume_After_Fork\0"
	.align
_Label_702:
	.byte	'I'
	.ascii	"PC\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_714:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_716:
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
_Label_4224:
	push	r0
	sub	r1,1,r1
	bne	_Label_4224
	mov	1854,r13		! source line 1854
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_721 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_722 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_721  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_717:
!   Perform the FOR-LOOP termination test
!   if i > _temp_722 then goto _Label_720		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_720
_Label_718:
	mov	1859,r13		! source line 1859
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0IF",r10
!   _temp_728 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_729 = _temp_728 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_729 [i ] into _temp_730
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
!   _temp_731 = _temp_730 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_727 = *_temp_731  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_727 != processID then goto _Label_724		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_724
!	jmp	_Label_726
_Label_726:
!   _temp_733 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_734 = _temp_733 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_734 [i ] into _temp_735
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
!   _temp_736 = _temp_735 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_732 = *_temp_736  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_738 = *_temp_739  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_738) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = _temp_738 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_737 = *_temp_740  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_732 != _temp_737 then goto _Label_724		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_724
!	jmp	_Label_725
_Label_725:
!   _temp_742 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_743 = _temp_742 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_743 [i ] into _temp_744
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
!   _temp_745 = _temp_744 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_741 = *_temp_745  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_741 == 3 then goto _Label_724		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_724
!	jmp	_Label_723
_Label_723:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
	mov	1861,r13		! source line 1861
	mov	"\0\0SE",r10
!   _temp_747 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_748 = _temp_747 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_748 [i ] into _temp_749
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
!   _temp_746 = _temp_749		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_750 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_746  sizeInBytes=4
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
_Label_724:
!   Increment the FOR-LOOP index variable and jump back
_Label_719:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_717
! END FOR
_Label_720:
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
	.word	_Label_751
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_752
	.word	8
	.word	4
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	_Label_755
	.word	-20
	.word	4
	.word	_Label_756
	.word	-24
	.word	4
	.word	_Label_757
	.word	-28
	.word	4
	.word	_Label_758
	.word	-32
	.word	4
	.word	_Label_759
	.word	-36
	.word	4
	.word	_Label_760
	.word	-40
	.word	4
	.word	_Label_761
	.word	-44
	.word	4
	.word	_Label_762
	.word	-48
	.word	4
	.word	_Label_763
	.word	-52
	.word	4
	.word	_Label_764
	.word	-56
	.word	4
	.word	_Label_765
	.word	-60
	.word	4
	.word	_Label_766
	.word	-64
	.word	4
	.word	_Label_767
	.word	-68
	.word	4
	.word	_Label_768
	.word	-72
	.word	4
	.word	_Label_769
	.word	-76
	.word	4
	.word	_Label_770
	.word	-80
	.word	4
	.word	_Label_771
	.word	-84
	.word	4
	.word	_Label_772
	.word	-88
	.word	4
	.word	_Label_773
	.word	-92
	.word	4
	.word	_Label_774
	.word	-96
	.word	4
	.word	_Label_775
	.word	-100
	.word	4
	.word	_Label_776
	.word	-104
	.word	4
	.word	_Label_777
	.word	-108
	.word	4
	.word	_Label_778
	.word	-112
	.word	4
	.word	_Label_779
	.word	-116
	.word	4
	.word	_Label_780
	.word	-120
	.word	4
	.word	0
_Label_751:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_780:
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
_Label_4225:
	push	r0
	sub	r1,1,r1
	bne	_Label_4225
	mov	1872,r13		! source line 1872
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! addrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	add	r14,-216,r4
	mov	23,r3
_Label_4226:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4226
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
!   _temp_782 = &strBuffer
	add	r14,-240,r1
	store	r1,[r14+-120]
!   _temp_783 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_784 = *_temp_785  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_784) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_786 = _temp_784 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_782  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_783  sizeInBytes=4
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
!   if junk >= 0 then goto _Label_788		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_788
!	jmp	_Label_787
_Label_787:
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
_Label_788:
! SEND STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_789 = &addrSpace
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
!   _temp_790 = &strBuffer
	add	r14,-240,r1
	store	r1,[r14+-96]
!   _temp_791 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_790  sizeInBytes=4
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
!   if intIsZero (openFile) then goto _Label_792
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_792
	jmp	_Label_793
_Label_792:
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
_Label_793:
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
	mov	1892,r13		! source line 1892
	mov	"\0\0SE",r10
!   _temp_794 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-88]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_794  sizeInBytes=4
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
!   if initUserPC >= 0 then goto _Label_796		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_796
!	jmp	_Label_795
_Label_795:
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
_Label_796:
! SEND STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_798) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _temp_798 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_797 = _temp_800		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-84]
!   _temp_801 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_797  sizeInBytes=4
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
!   _temp_803 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_802 = *_temp_803  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_802) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_804 = _temp_802 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_804 = addrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-56],r4
	mov	23,r3
_Label_4227:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4227
! SEND STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   _temp_805 = &_P_Kernel_fileManager
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
!   _temp_806 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_806 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0AS",r10
!   _temp_808 = &addrSpace
	add	r14,-216,r1
	store	r1,[r14+-40]
!   _temp_809 = _temp_808 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_807 = *_temp_809  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_807 * 8192		(int)
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
!   _temp_810 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-32]
!   Move address of _temp_810 [999 ] into _temp_811
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
!   initSystemStackTop = _temp_811		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-256]
! SEND STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0SE",r10
!   _temp_812 = &addrSpace
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
!   _temp_814 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_813 = *_temp_814  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_813) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_815 = _temp_813 + 32
	load	[r14+-20],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_815 = addrSpace  (sizeInBytes=92)
	add	r14,-216,r5
	load	[r14+-12],r4
	mov	23,r3
_Label_4228:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4228
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
	.word	_Label_816
	.word	4		! total size of parameters
	.word	268		! frame size = 268
	.word	_Label_817
	.word	8
	.word	4
	.word	_Label_818
	.word	-12
	.word	4
	.word	_Label_819
	.word	-16
	.word	4
	.word	_Label_820
	.word	-20
	.word	4
	.word	_Label_821
	.word	-24
	.word	4
	.word	_Label_822
	.word	-28
	.word	4
	.word	_Label_823
	.word	-32
	.word	4
	.word	_Label_824
	.word	-36
	.word	4
	.word	_Label_825
	.word	-40
	.word	4
	.word	_Label_826
	.word	-44
	.word	4
	.word	_Label_827
	.word	-48
	.word	4
	.word	_Label_828
	.word	-52
	.word	4
	.word	_Label_829
	.word	-56
	.word	4
	.word	_Label_830
	.word	-60
	.word	4
	.word	_Label_831
	.word	-64
	.word	4
	.word	_Label_832
	.word	-68
	.word	4
	.word	_Label_833
	.word	-72
	.word	4
	.word	_Label_834
	.word	-76
	.word	4
	.word	_Label_835
	.word	-80
	.word	4
	.word	_Label_836
	.word	-84
	.word	4
	.word	_Label_837
	.word	-88
	.word	4
	.word	_Label_838
	.word	-92
	.word	4
	.word	_Label_839
	.word	-96
	.word	4
	.word	_Label_840
	.word	-100
	.word	4
	.word	_Label_841
	.word	-104
	.word	4
	.word	_Label_842
	.word	-108
	.word	4
	.word	_Label_843
	.word	-112
	.word	4
	.word	_Label_844
	.word	-116
	.word	4
	.word	_Label_845
	.word	-120
	.word	4
	.word	_Label_846
	.word	-124
	.word	4
	.word	_Label_847
	.word	-216
	.word	92
	.word	_Label_848
	.word	-240
	.word	24
	.word	_Label_849
	.word	-244
	.word	4
	.word	_Label_850
	.word	-248
	.word	4
	.word	_Label_851
	.word	-252
	.word	4
	.word	_Label_852
	.word	-256
	.word	4
	.word	_Label_853
	.word	-260
	.word	4
	.word	0
_Label_816:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_817:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_847:
	.byte	'O'
	.ascii	"addrSpace\0"
	.align
_Label_848:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_849:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_850:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_851:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_852:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_853:
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
_Label_4229:
	push	r0
	sub	r1,1,r1
	bne	_Label_4229
	mov	1912,r13		! source line 1912
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_854 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_855 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_857 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_856 = *_temp_857  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_856) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_858 = _temp_856 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_854  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_855  sizeInBytes=4
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
!   _temp_859 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_859  sizeInBytes=4
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
!   _temp_860 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_860  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_861 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
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
!   _temp_862 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_863 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
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
	.word	_Label_864
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_865
	.word	8
	.word	4
	.word	_Label_866
	.word	-12
	.word	4
	.word	_Label_867
	.word	-16
	.word	4
	.word	_Label_868
	.word	-20
	.word	4
	.word	_Label_869
	.word	-24
	.word	4
	.word	_Label_870
	.word	-28
	.word	4
	.word	_Label_871
	.word	-32
	.word	4
	.word	_Label_872
	.word	-36
	.word	4
	.word	_Label_873
	.word	-40
	.word	4
	.word	_Label_874
	.word	-44
	.word	4
	.word	_Label_875
	.word	-48
	.word	4
	.word	_Label_876
	.word	-52
	.word	4
	.word	_Label_877
	.word	-76
	.word	24
	.word	0
_Label_864:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_865:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_876:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_877:
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
	mov	36,r1
_Label_4230:
	push	r0
	sub	r1,1,r1
	bne	_Label_4230
	mov	1932,r13		! source line 1932
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0AS",r10
	mov	1939,r13		! source line 1939
	mov	"\0\0SE",r10
!   _temp_878 = &strBuffer
	add	r14,-132,r1
	store	r1,[r14+-96]
!   _temp_879 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_881 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_880 = *_temp_881  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_880) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_882 = _temp_880 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_878  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_879  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-108]
! FOR STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_887 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_888 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_887  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-100]
_Label_883:
!   Perform the FOR-LOOP termination test
!   if i > _temp_888 then goto _Label_886		
	load	[r14+-100],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_886
_Label_884:
	mov	1943,r13		! source line 1943
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_893 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_892 = *_temp_893  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_892) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = _temp_892 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_894 [i ] into _temp_895
!     make sure index expr is >= 0
	load	[r14+-100],r2
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
!   Data Move: _temp_891 = *_temp_895  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_891) then goto _Label_889
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_889
	jmp	_Label_890
_Label_889:
! THEN...
	mov	1945,r13		! source line 1945
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-108]
! BREAK STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0BR",r10
	jmp	_Label_886
! END IF...
_Label_890:
!   Increment the FOR-LOOP index variable and jump back
_Label_885:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_883
! END FOR
_Label_886:
! IF STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_897		(int)
	load	[r14+-108],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_897
!	jmp	_Label_896
_Label_896:
! THEN...
	mov	1951,r13		! source line 1951
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_897:
! IF STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0IF",r10
!   _temp_900 = &strBuffer
	add	r14,-132,r1
	store	r1,[r14+-48]
!   _temp_901 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_901  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_898 else goto _Label_899
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_899
	jmp	_Label_898
_Label_898:
! THEN...
	mov	1956,r13		! source line 1956
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0AS",r10
!   _temp_902 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_903 = _temp_902 + 772
	load	[r14+-40],r1
	add	r1,772,r1
	store	r1,[r14+-36]
!   openFile = _temp_903		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-136]
	jmp	_Label_904
_Label_899:
! ELSE...
	mov	1958,r13		! source line 1958
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
	mov	1958,r13		! source line 1958
	mov	"\0\0SE",r10
!   _temp_905 = &strBuffer
	add	r14,-132,r1
	store	r1,[r14+-32]
!   _temp_906 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_905  sizeInBytes=4
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
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! END IF...
_Label_904:
! IF STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_907
	load	[r14+-136],r1
	cmp	r1,r0
	be	_Label_907
	jmp	_Label_908
_Label_907:
! THEN...
	mov	1962,r13		! source line 1962
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_908:
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_910 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_909 = *_temp_910  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_909) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_911 = _temp_909 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_911 [fileDescriptorIndex ] into _temp_912
!     make sure index expr is >= 0
	load	[r14+-108],r2
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
!   Data Move: *_temp_912 = openFile  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorIndex  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_913
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_914
	.word	8
	.word	4
	.word	_Label_915
	.word	-12
	.word	4
	.word	_Label_916
	.word	-16
	.word	4
	.word	_Label_917
	.word	-20
	.word	4
	.word	_Label_918
	.word	-24
	.word	4
	.word	_Label_919
	.word	-28
	.word	4
	.word	_Label_920
	.word	-32
	.word	4
	.word	_Label_921
	.word	-36
	.word	4
	.word	_Label_922
	.word	-40
	.word	4
	.word	_Label_923
	.word	-44
	.word	4
	.word	_Label_924
	.word	-48
	.word	4
	.word	_Label_925
	.word	-52
	.word	4
	.word	_Label_926
	.word	-56
	.word	4
	.word	_Label_927
	.word	-60
	.word	4
	.word	_Label_928
	.word	-64
	.word	4
	.word	_Label_929
	.word	-68
	.word	4
	.word	_Label_930
	.word	-72
	.word	4
	.word	_Label_931
	.word	-76
	.word	4
	.word	_Label_932
	.word	-80
	.word	4
	.word	_Label_933
	.word	-84
	.word	4
	.word	_Label_934
	.word	-88
	.word	4
	.word	_Label_935
	.word	-92
	.word	4
	.word	_Label_936
	.word	-96
	.word	4
	.word	_Label_937
	.word	-100
	.word	4
	.word	_Label_938
	.word	-104
	.word	4
	.word	_Label_939
	.word	-108
	.word	4
	.word	_Label_940
	.word	-132
	.word	24
	.word	_Label_941
	.word	-136
	.word	4
	.word	0
_Label_913:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_914:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_937:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_938:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_939:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_940:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_941:
	.byte	'P'
	.ascii	"openFile\0"
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
	mov	109,r1
_Label_4231:
	push	r0
	sub	r1,1,r1
	bne	_Label_4231
	mov	1972,r13		! source line 1972
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_946		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_946
	jmp	_Label_942
_Label_946:
!   if fileDesc <= 9 then goto _Label_945		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_945
	jmp	_Label_942
_Label_945:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_949 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-376]
!   Data Move: _temp_948 = *_temp_949  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_948) then goto _runtimeErrorNullPointer
	load	[r14+-380],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_950 = _temp_948 + 124
	load	[r14+-380],r1
	add	r1,124,r1
	store	r1,[r14+-372]
!   Move address of _temp_950 [fileDesc ] into _temp_951
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-372],r1
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
	store	r2,[r14+-368]
!   Data Move: _temp_947 = *_temp_951  (sizeInBytes=4)
	load	[r14+-368],r1
	load	[r1],r1
	store	r1,[r14+-384]
!   if intIsZero (_temp_947) then goto _Label_942
	load	[r14+-384],r1
	cmp	r1,r0
	be	_Label_942
!	jmp	_Label_944
_Label_944:
!   if sizeInBytes >= 0 then goto _Label_943		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_943
!	jmp	_Label_942
_Label_942:
! THEN...
	mov	1981,r13		! source line 1981
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_943:
! IF STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_957 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-352]
!   Data Move: _temp_956 = *_temp_957  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   if intIsZero (_temp_956) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = _temp_956 + 124
	load	[r14+-356],r1
	add	r1,124,r1
	store	r1,[r14+-348]
!   Move address of _temp_958 [fileDesc ] into _temp_959
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-348],r1
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
	store	r2,[r14+-344]
!   Data Move: _temp_955 = *_temp_959  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-360]
!   if intIsZero (_temp_955) then goto _runtimeErrorNullPointer
	load	[r14+-360],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_960 = _temp_955 + 12
	load	[r14+-360],r1
	add	r1,12,r1
	store	r1,[r14+-340]
!   Data Move: _temp_954 = *_temp_960  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if _temp_954 != 2 then goto _Label_953		(int)
	load	[r14+-364],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_953
!	jmp	_Label_952
_Label_952:
! THEN...
	mov	1986,r13		! source line 1986
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-404]
! FOR STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_965 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-336]
!   Calculate and save the FOR-LOOP ending value
!   _temp_966 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_965  (sizeInBytes=4)
	load	[r14+-336],r1
	store	r1,[r14+-424]
_Label_961:
!   Perform the FOR-LOOP termination test
!   if i > _temp_966 then goto _Label_964		
	load	[r14+-424],r1
	load	[r14+-332],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_964
_Label_962:
	mov	1988,r13		! source line 1988
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0AS",r10
!   _temp_967 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-328]
!   virtPage = _temp_967 div 8192		(int)
	load	[r14+-328],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_972		(int)
	load	[r14+-396],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_972
	jmp	_Label_968
_Label_972:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-312]
!   Data Move: _temp_975 = *_temp_976  (sizeInBytes=4)
	load	[r14+-312],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_975) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_977 = _temp_975 + 32
	load	[r14+-316],r1
	add	r1,32,r1
	store	r1,[r14+-308]
!   _temp_978 = _temp_977 + 4
	load	[r14+-308],r1
	add	r1,4,r1
	store	r1,[r14+-304]
!   Data Move: _temp_974 = *_temp_978  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   _temp_973 = _temp_974 - 1		(int)
	load	[r14+-320],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
!   if virtPage <= _temp_973 then goto _Label_971		(int)
	load	[r14+-396],r1
	load	[r14+-324],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_971
	jmp	_Label_968
_Label_971:
	mov	1993,r13		! source line 1993
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-296]
!   Data Move: _temp_980 = *_temp_981  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_980) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = _temp_980 + 32
	load	[r14+-300],r1
	add	r1,32,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_979  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_983 = _temp_979 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_983 then goto _Label_970 else goto _Label_968
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_968
	jmp	_Label_970
_Label_970:
	mov	1993,r13		! source line 1993
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_985 = *_temp_986  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_985) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = _temp_985 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_984  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_988 = _temp_984 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_988 then goto _Label_969 else goto _Label_968
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_968
	jmp	_Label_969
_Label_968:
! THEN...
	mov	1994,r13		! source line 1994
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-404],r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_969:
! ASSIGNMENT STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-392],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-268]
!   Data Move: _temp_990 = *_temp_991  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_990) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_992 = _temp_990 + 32
	load	[r14+-272],r1
	add	r1,32,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_989  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
!   destAddr = _temp_989 + offset		(int)
	load	[r14+-276],r1
	load	[r14+-400],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0AS",r10
	mov	1999,r13		! source line 1999
	mov	"\0\0SE",r10
!   _temp_993 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-260]
!   Send message GetChar
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=character  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
! IF STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0IF",r10
!   _temp_996 = character XOR 13		(bool)
	loadb	[r14+-25],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_996 then goto _Label_995 else goto _Label_994
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_994
	jmp	_Label_995
_Label_994:
! THEN...
	mov	2002,r13		! source line 2002
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   character = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-25]
! END IF...
_Label_995:
! IF STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0IF",r10
!   _temp_999 = charToInt (character)
	loadb	[r14+-25],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-256]
!   if _temp_999 != 4 then goto _Label_998		(int)
	load	[r14+-256],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_998
!	jmp	_Label_997
_Label_997:
! THEN...
	mov	2006,r13		! source line 2006
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0BR",r10
	jmp	_Label_964
! END IF...
_Label_998:
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = character  (sizeInBytes=1)
	loadb	[r14+-25],r1
	load	[r14+-420],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-404],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! IF STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1002 = *destAddr  (sizeInBytes=1)
	load	[r14+-420],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   _temp_1003 = _temp_1002 XOR 10		(bool)
	loadb	[r14+-18],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1003 then goto _Label_1001 else goto _Label_1000
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1000
	jmp	_Label_1001
_Label_1000:
! THEN...
	mov	2013,r13		! source line 2013
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0BR",r10
	jmp	_Label_964
! END IF...
_Label_1001:
! ASSIGNMENT STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_963:
!   i = i + 1
	load	[r14+-424],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-424]
	jmp	_Label_961
! END FOR
_Label_964:
! RETURN STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-404],r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_953:
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-392],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-392],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1005 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1004 = *_temp_1005  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1004) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1006 = _temp_1004 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_1006 [fileDesc ] into _temp_1007
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: file = *_temp_1007  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-388],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1008 = file + 16
	load	[r14+-388],r1
	add	r1,16,r1
	store	r1,[r14+-236]
!   Data Move: nextPosInFile = *_temp_1008  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-388],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1010 = file + 20
	load	[r14+-388],r1
	add	r1,20,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1009 = *_temp_1010  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_1009) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1011 = _temp_1009 + 24
	load	[r14+-232],r1
	add	r1,24,r1
	store	r1,[r14+-224]
!   Data Move: fileSize = *_temp_1011  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-404]
! WHILE STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0WH",r10
_Label_1012:
!	jmp	_Label_1013
_Label_1013:
	mov	2033,r13		! source line 2033
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-400],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! IF STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0IF",r10
!   _temp_1017 = nextPosInFile + chunkSize		(int)
	load	[r14+-408],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
!   if _temp_1017 <= fileSize then goto _Label_1016		(int)
	load	[r14+-220],r1
	load	[r14+-416],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1016
!	jmp	_Label_1015
_Label_1015:
! THEN...
	mov	2036,r13		! source line 2036
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-416],r1
	load	[r14+-408],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1016:
! IF STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0IF",r10
!   _temp_1020 = copiedSoFar + chunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1020 <= sizeInBytes then goto _Label_1019		(int)
	load	[r14+-216],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1019
!	jmp	_Label_1018
_Label_1018:
! THEN...
	mov	2039,r13		! source line 2039
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-404],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1019:
! IF STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1022		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1022
!	jmp	_Label_1021
_Label_1021:
! THEN...
	mov	2042,r13		! source line 2042
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0BR",r10
	jmp	_Label_1014
! END IF...
_Label_1022:
! IF STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1027		(int)
	load	[r14+-396],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1027
	jmp	_Label_1023
_Label_1027:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1030 = *_temp_1031  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_1030) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1032 = _temp_1030 + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-196]
!   _temp_1033 = _temp_1032 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1029 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_1028 = _temp_1029 - 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if virtPage <= _temp_1028 then goto _Label_1026		(int)
	load	[r14+-396],r1
	load	[r14+-212],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1026
	jmp	_Label_1023
_Label_1026:
	mov	2046,r13		! source line 2046
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1036 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1035 = *_temp_1036  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1035) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _temp_1035 + 32
	load	[r14+-188],r1
	add	r1,32,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1034  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1038 = _temp_1034 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1038 then goto _Label_1025 else goto _Label_1023
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1023
	jmp	_Label_1025
_Label_1025:
	mov	2046,r13		! source line 2046
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1041 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1040 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1040) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1042 = _temp_1040 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1039  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1043 = _temp_1039 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1043 then goto _Label_1024 else goto _Label_1023
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1023
	jmp	_Label_1024
_Label_1023:
! THEN...
	mov	2047,r13		! source line 2047
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1024:
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-408],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-396],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! IF STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1045		(int)
	load	[r14+-404],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1045
!	jmp	_Label_1044
_Label_1044:
! THEN...
	mov	2056,r13		! source line 2056
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0BR",r10
	jmp	_Label_1014
! END IF...
_Label_1045:
! END WHILE...
	jmp	_Label_1012
_Label_1014:
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-392]
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-392],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-392],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1047 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1046 = *_temp_1047  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1046) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = _temp_1046 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1048 [fileDesc ] into _temp_1049
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   Data Move: file = *_temp_1049  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-388],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1050 = file + 16
	load	[r14+-388],r1
	add	r1,16,r1
	store	r1,[r14+-148]
!   Data Move: nextPosInFile = *_temp_1050  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-388],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1052 = file + 20
	load	[r14+-388],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1051 = *_temp_1052  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1051) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _temp_1051 + 24
	load	[r14+-144],r1
	add	r1,24,r1
	store	r1,[r14+-136]
!   Data Move: fileSize = *_temp_1053  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-404]
! WHILE STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0WH",r10
_Label_1054:
!	jmp	_Label_1055
_Label_1055:
	mov	2071,r13		! source line 2071
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-400],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! IF STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0IF",r10
!   _temp_1059 = nextPosInFile + chunkSize		(int)
	load	[r14+-408],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   if _temp_1059 <= fileSize then goto _Label_1058		(int)
	load	[r14+-132],r1
	load	[r14+-416],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1058
!	jmp	_Label_1057
_Label_1057:
! THEN...
	mov	2074,r13		! source line 2074
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-416],r1
	load	[r14+-408],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1058:
! IF STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0IF",r10
!   _temp_1062 = copiedSoFar + chunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1062 <= sizeInBytes then goto _Label_1061		(int)
	load	[r14+-128],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1061
!	jmp	_Label_1060
_Label_1060:
! THEN...
	mov	2077,r13		! source line 2077
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-404],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! END IF...
_Label_1061:
! IF STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1064		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1064
!	jmp	_Label_1063
_Label_1063:
! THEN...
	mov	2080,r13		! source line 2080
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0BR",r10
	jmp	_Label_1056
! END IF...
_Label_1064:
! IF STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1069		(int)
	load	[r14+-396],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1069
	jmp	_Label_1065
_Label_1069:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1072 = *_temp_1073  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1072) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1074 = _temp_1072 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_1075 = _temp_1074 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1071 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_1070 = _temp_1071 - 1		(int)
	load	[r14+-120],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if virtPage <= _temp_1070 then goto _Label_1068		(int)
	load	[r14+-396],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1068
	jmp	_Label_1065
_Label_1068:
	mov	2084,r13		! source line 2084
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1078 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1077 = *_temp_1078  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1077) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1079 = _temp_1077 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1076  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1080 = _temp_1076 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1080 then goto _Label_1067 else goto _Label_1065
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1065
	jmp	_Label_1067
_Label_1067:
	mov	2084,r13		! source line 2084
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1082 = *_temp_1083  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1082) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1084 = _temp_1082 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1081  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1085 = _temp_1081 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1085 then goto _Label_1066 else goto _Label_1065
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1065
	jmp	_Label_1066
_Label_1065:
! THEN...
	mov	2085,r13		! source line 2085
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1066:
! SEND STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1087 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1086 = *_temp_1087  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1086) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1088 = _temp_1086 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1090 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1089 = *_temp_1090  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1089) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1091 = _temp_1089 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
	mov	2091,r13		! source line 2091
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1094 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1093 = *_temp_1094  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1093) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1095 = _temp_1093 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1092  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1092 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-400],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
	mov	2092,r13		! source line 2092
	mov	"\0\0SE",r10
!   _temp_1096 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-420],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-408],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-404],r1
	load	[r14+-412],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-396],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! IF STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1098		(int)
	load	[r14+-404],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1098
!	jmp	_Label_1097
_Label_1097:
! THEN...
	mov	2100,r13		! source line 2100
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0BR",r10
	jmp	_Label_1056
! END IF...
_Label_1098:
! END WHILE...
	jmp	_Label_1054
_Label_1056:
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-388],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = file + 16
	load	[r14+-388],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1099 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-408],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-404],r1
	store	r1,[r14+8]
	add	r15,440,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1100
	.word	12		! total size of parameters
	.word	436		! frame size = 436
	.word	_Label_1101
	.word	8
	.word	4
	.word	_Label_1102
	.word	12
	.word	4
	.word	_Label_1103
	.word	16
	.word	4
	.word	_Label_1104
	.word	-32
	.word	4
	.word	_Label_1105
	.word	-36
	.word	4
	.word	_Label_1106
	.word	-40
	.word	4
	.word	_Label_1107
	.word	-44
	.word	4
	.word	_Label_1108
	.word	-48
	.word	4
	.word	_Label_1109
	.word	-52
	.word	4
	.word	_Label_1110
	.word	-56
	.word	4
	.word	_Label_1111
	.word	-60
	.word	4
	.word	_Label_1112
	.word	-64
	.word	4
	.word	_Label_1113
	.word	-68
	.word	4
	.word	_Label_1114
	.word	-72
	.word	4
	.word	_Label_1115
	.word	-76
	.word	4
	.word	_Label_1116
	.word	-9
	.word	1
	.word	_Label_1117
	.word	-80
	.word	4
	.word	_Label_1118
	.word	-84
	.word	4
	.word	_Label_1119
	.word	-88
	.word	4
	.word	_Label_1120
	.word	-10
	.word	1
	.word	_Label_1121
	.word	-11
	.word	1
	.word	_Label_1122
	.word	-92
	.word	4
	.word	_Label_1123
	.word	-96
	.word	4
	.word	_Label_1124
	.word	-100
	.word	4
	.word	_Label_1125
	.word	-12
	.word	1
	.word	_Label_1126
	.word	-104
	.word	4
	.word	_Label_1127
	.word	-108
	.word	4
	.word	_Label_1128
	.word	-112
	.word	4
	.word	_Label_1129
	.word	-116
	.word	4
	.word	_Label_1130
	.word	-120
	.word	4
	.word	_Label_1131
	.word	-124
	.word	4
	.word	_Label_1132
	.word	-128
	.word	4
	.word	_Label_1133
	.word	-132
	.word	4
	.word	_Label_1134
	.word	-136
	.word	4
	.word	_Label_1135
	.word	-140
	.word	4
	.word	_Label_1136
	.word	-144
	.word	4
	.word	_Label_1137
	.word	-148
	.word	4
	.word	_Label_1138
	.word	-152
	.word	4
	.word	_Label_1139
	.word	-156
	.word	4
	.word	_Label_1140
	.word	-160
	.word	4
	.word	_Label_1141
	.word	-164
	.word	4
	.word	_Label_1142
	.word	-13
	.word	1
	.word	_Label_1143
	.word	-168
	.word	4
	.word	_Label_1144
	.word	-172
	.word	4
	.word	_Label_1145
	.word	-176
	.word	4
	.word	_Label_1146
	.word	-14
	.word	1
	.word	_Label_1147
	.word	-15
	.word	1
	.word	_Label_1148
	.word	-180
	.word	4
	.word	_Label_1149
	.word	-184
	.word	4
	.word	_Label_1150
	.word	-188
	.word	4
	.word	_Label_1151
	.word	-16
	.word	1
	.word	_Label_1152
	.word	-192
	.word	4
	.word	_Label_1153
	.word	-196
	.word	4
	.word	_Label_1154
	.word	-200
	.word	4
	.word	_Label_1155
	.word	-204
	.word	4
	.word	_Label_1156
	.word	-208
	.word	4
	.word	_Label_1157
	.word	-212
	.word	4
	.word	_Label_1158
	.word	-216
	.word	4
	.word	_Label_1159
	.word	-220
	.word	4
	.word	_Label_1160
	.word	-224
	.word	4
	.word	_Label_1161
	.word	-228
	.word	4
	.word	_Label_1162
	.word	-232
	.word	4
	.word	_Label_1163
	.word	-236
	.word	4
	.word	_Label_1164
	.word	-240
	.word	4
	.word	_Label_1165
	.word	-244
	.word	4
	.word	_Label_1166
	.word	-248
	.word	4
	.word	_Label_1167
	.word	-252
	.word	4
	.word	_Label_1168
	.word	-17
	.word	1
	.word	_Label_1169
	.word	-18
	.word	1
	.word	_Label_1170
	.word	-256
	.word	4
	.word	_Label_1171
	.word	-19
	.word	1
	.word	_Label_1172
	.word	-260
	.word	4
	.word	_Label_1173
	.word	-264
	.word	4
	.word	_Label_1174
	.word	-268
	.word	4
	.word	_Label_1175
	.word	-272
	.word	4
	.word	_Label_1176
	.word	-276
	.word	4
	.word	_Label_1177
	.word	-20
	.word	1
	.word	_Label_1178
	.word	-280
	.word	4
	.word	_Label_1179
	.word	-284
	.word	4
	.word	_Label_1180
	.word	-288
	.word	4
	.word	_Label_1181
	.word	-21
	.word	1
	.word	_Label_1182
	.word	-22
	.word	1
	.word	_Label_1183
	.word	-292
	.word	4
	.word	_Label_1184
	.word	-296
	.word	4
	.word	_Label_1185
	.word	-300
	.word	4
	.word	_Label_1186
	.word	-23
	.word	1
	.word	_Label_1187
	.word	-304
	.word	4
	.word	_Label_1188
	.word	-308
	.word	4
	.word	_Label_1189
	.word	-312
	.word	4
	.word	_Label_1190
	.word	-316
	.word	4
	.word	_Label_1191
	.word	-320
	.word	4
	.word	_Label_1192
	.word	-324
	.word	4
	.word	_Label_1193
	.word	-328
	.word	4
	.word	_Label_1194
	.word	-332
	.word	4
	.word	_Label_1195
	.word	-336
	.word	4
	.word	_Label_1196
	.word	-340
	.word	4
	.word	_Label_1197
	.word	-344
	.word	4
	.word	_Label_1198
	.word	-348
	.word	4
	.word	_Label_1199
	.word	-352
	.word	4
	.word	_Label_1200
	.word	-356
	.word	4
	.word	_Label_1201
	.word	-360
	.word	4
	.word	_Label_1202
	.word	-364
	.word	4
	.word	_Label_1203
	.word	-368
	.word	4
	.word	_Label_1204
	.word	-372
	.word	4
	.word	_Label_1205
	.word	-376
	.word	4
	.word	_Label_1206
	.word	-380
	.word	4
	.word	_Label_1207
	.word	-384
	.word	4
	.word	_Label_1208
	.word	-388
	.word	4
	.word	_Label_1209
	.word	-392
	.word	4
	.word	_Label_1210
	.word	-396
	.word	4
	.word	_Label_1211
	.word	-400
	.word	4
	.word	_Label_1212
	.word	-404
	.word	4
	.word	_Label_1213
	.word	-408
	.word	4
	.word	_Label_1214
	.word	-412
	.word	4
	.word	_Label_1215
	.word	-416
	.word	4
	.word	_Label_1216
	.word	-420
	.word	4
	.word	_Label_1217
	.word	-424
	.word	4
	.word	_Label_1218
	.word	-24
	.word	1
	.word	_Label_1219
	.word	-25
	.word	1
	.word	0
_Label_1100:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1101:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1102:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1103:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1116:
	.byte	'C'
	.ascii	"_temp_1085\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1120:
	.byte	'C'
	.ascii	"_temp_1081\0"
	.align
_Label_1121:
	.byte	'C'
	.ascii	"_temp_1080\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1125:
	.byte	'C'
	.ascii	"_temp_1076\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1142:
	.byte	'C'
	.ascii	"_temp_1043\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1146:
	.byte	'C'
	.ascii	"_temp_1039\0"
	.align
_Label_1147:
	.byte	'C'
	.ascii	"_temp_1038\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1151:
	.byte	'C'
	.ascii	"_temp_1034\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1168:
	.byte	'C'
	.ascii	"_temp_1003\0"
	.align
_Label_1169:
	.byte	'C'
	.ascii	"_temp_1002\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1171:
	.byte	'C'
	.ascii	"_temp_996\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1177:
	.byte	'C'
	.ascii	"_temp_988\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1181:
	.byte	'C'
	.ascii	"_temp_984\0"
	.align
_Label_1182:
	.byte	'C'
	.ascii	"_temp_983\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1186:
	.byte	'C'
	.ascii	"_temp_979\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_947\0"
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
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1218:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1219:
	.byte	'C'
	.ascii	"character\0"
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
	mov	122,r1
_Label_4232:
	push	r0
	sub	r1,1,r1
	bne	_Label_4232
	mov	2111,r13		! source line 2111
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1224		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1224
	jmp	_Label_1220
_Label_1224:
!   if fileDesc <= 9 then goto _Label_1223		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1223
	jmp	_Label_1220
_Label_1223:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1227 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-424]
!   Data Move: _temp_1226 = *_temp_1227  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if intIsZero (_temp_1226) then goto _runtimeErrorNullPointer
	load	[r14+-428],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1228 = _temp_1226 + 124
	load	[r14+-428],r1
	add	r1,124,r1
	store	r1,[r14+-420]
!   Move address of _temp_1228 [fileDesc ] into _temp_1229
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   Data Move: _temp_1225 = *_temp_1229  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-432]
!   if intIsZero (_temp_1225) then goto _Label_1220
	load	[r14+-432],r1
	cmp	r1,r0
	be	_Label_1220
!	jmp	_Label_1222
_Label_1222:
!   if sizeInBytes >= 0 then goto _Label_1221		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1221
!	jmp	_Label_1220
_Label_1220:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1221:
! IF STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1235 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-400]
!   Data Move: _temp_1234 = *_temp_1235  (sizeInBytes=4)
	load	[r14+-400],r1
	load	[r1],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_1234) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1236 = _temp_1234 + 124
	load	[r14+-404],r1
	add	r1,124,r1
	store	r1,[r14+-396]
!   Move address of _temp_1236 [fileDesc ] into _temp_1237
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-396],r1
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
	store	r2,[r14+-392]
!   Data Move: _temp_1233 = *_temp_1237  (sizeInBytes=4)
	load	[r14+-392],r1
	load	[r1],r1
	store	r1,[r14+-408]
!   if intIsZero (_temp_1233) then goto _runtimeErrorNullPointer
	load	[r14+-408],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = _temp_1233 + 12
	load	[r14+-408],r1
	add	r1,12,r1
	store	r1,[r14+-388]
!   Data Move: _temp_1232 = *_temp_1238  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-412]
!   if _temp_1232 != 2 then goto _Label_1231		(int)
	load	[r14+-412],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1231
!	jmp	_Label_1230
_Label_1230:
! THEN...
	mov	2126,r13		! source line 2126
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
!   tempBuffer = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-476]
! FOR STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1243 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-384]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1244 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1243  (sizeInBytes=4)
	load	[r14+-384],r1
	store	r1,[r14+-472]
_Label_1239:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1244 then goto _Label_1242		
	load	[r14+-472],r1
	load	[r14+-380],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1242
_Label_1240:
	mov	2128,r13		! source line 2128
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   _temp_1245 = tempBuffer		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-376]
!   virtPage = _temp_1245 div 8192		(int)
	load	[r14+-376],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   virtAddr = tempBuffer		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-440]
! IF STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1250		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1250
	jmp	_Label_1246
_Label_1250:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1254 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1253 = *_temp_1254  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if intIsZero (_temp_1253) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1255 = _temp_1253 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-356]
!   _temp_1256 = _temp_1255 + 4
	load	[r14+-356],r1
	add	r1,4,r1
	store	r1,[r14+-352]
!   Data Move: _temp_1252 = *_temp_1256  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-368]
!   _temp_1251 = _temp_1252 - 1		(int)
	load	[r14+-368],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
!   if virtPage <= _temp_1251 then goto _Label_1249		(int)
	load	[r14+-444],r1
	load	[r14+-372],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1249
	jmp	_Label_1246
_Label_1249:
	mov	2133,r13		! source line 2133
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1259 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-344]
!   Data Move: _temp_1258 = *_temp_1259  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_1258) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1260 = _temp_1258 + 32
	load	[r14+-348],r1
	add	r1,32,r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-340],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1257  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
!   _temp_1261 = _temp_1257 XOR 0		(bool)
	loadb	[r14+-25],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-24]
!   if _temp_1261 then goto _Label_1248 else goto _Label_1246
	loadb	[r14+-24],r1
	cmp	r1,0
	be	_Label_1246
	jmp	_Label_1248
_Label_1248:
	mov	2133,r13		! source line 2133
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1264 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-332]
!   Data Move: _temp_1263 = *_temp_1264  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_1263) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1265 = _temp_1263 + 32
	load	[r14+-336],r1
	add	r1,32,r1
	store	r1,[r14+-328]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-328],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1262  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1266 = _temp_1262 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1266 then goto _Label_1247 else goto _Label_1246
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1246
	jmp	_Label_1247
_Label_1246:
! THEN...
	mov	2134,r13		! source line 2134
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1247:
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   tempBuffer = tempBuffer + 1		(int)
	load	[r14+-476],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
!   Increment the FOR-LOOP index variable and jump back
_Label_1241:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1239
! END FOR
_Label_1242:
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
! FOR STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1271 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-324]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1272 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1271  (sizeInBytes=4)
	load	[r14+-324],r1
	store	r1,[r14+-472]
_Label_1267:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1272 then goto _Label_1270		
	load	[r14+-472],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1270
_Label_1268:
	mov	2142,r13		! source line 2142
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   _temp_1273 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-316]
!   virtPage = _temp_1273 div 8192		(int)
	load	[r14+-316],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-440]
! IF STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1278		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1278
	jmp	_Label_1274
_Label_1278:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1282 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1281 = *_temp_1282  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   if intIsZero (_temp_1281) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1283 = _temp_1281 + 32
	load	[r14+-304],r1
	add	r1,32,r1
	store	r1,[r14+-296]
!   _temp_1284 = _temp_1283 + 4
	load	[r14+-296],r1
	add	r1,4,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1280 = *_temp_1284  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   _temp_1279 = _temp_1280 - 1		(int)
	load	[r14+-308],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-312]
!   if virtPage <= _temp_1279 then goto _Label_1277		(int)
	load	[r14+-444],r1
	load	[r14+-312],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1277
	jmp	_Label_1274
_Label_1277:
	mov	2147,r13		! source line 2147
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1287 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-284]
!   Data Move: _temp_1286 = *_temp_1287  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_1286) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1288 = _temp_1286 + 32
	load	[r14+-288],r1
	add	r1,32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1285  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1289 = _temp_1285 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1289 then goto _Label_1276 else goto _Label_1274
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1274
	jmp	_Label_1276
_Label_1276:
	mov	2147,r13		! source line 2147
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1292 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1291 = *_temp_1292  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1291) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1293 = _temp_1291 + 32
	load	[r14+-276],r1
	add	r1,32,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1290  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1294 = _temp_1290 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1294 then goto _Label_1275 else goto _Label_1274
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1274
	jmp	_Label_1275
_Label_1274:
! THEN...
	mov	2148,r13		! source line 2148
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1275:
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-440],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
	mov	2152,r13		! source line 2152
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1297 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1296 = *_temp_1297  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1296) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1298 = _temp_1296 + 32
	load	[r14+-260],r1
	add	r1,32,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1295  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
!   destAddr = _temp_1295 + offset		(int)
	load	[r14+-264],r1
	load	[r14+-448],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-468],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: character = *destAddr  (sizeInBytes=1)
	load	[r14+-468],r1
	loadb	[r1],r1
	storeb	r1,[r14+-27]
! IF STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0IF",r10
!   _temp_1301 = character XOR 10		(bool)
	loadb	[r14+-27],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1301 then goto _Label_1300 else goto _Label_1299
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1299
	jmp	_Label_1300
_Label_1299:
! THEN...
	mov	2156,r13		! source line 2156
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_1302 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1300:
! SEND STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   _temp_1303 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=12  value=character  sizeInBytes=1
	loadb	[r14+-27],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-452],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1269:
!   i = i + 1
	load	[r14+-472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
	jmp	_Label_1267
! END FOR
_Label_1270:
! RETURN STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1231:
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-440],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-440],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1305 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1304 = *_temp_1305  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1304) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1306 = _temp_1304 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_1306 [fileDesc ] into _temp_1307
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-228]
!   Data Move: file = *_temp_1307  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1308 = file + 16
	load	[r14+-436],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_1308  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1310 = file + 20
	load	[r14+-436],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1309 = *_temp_1310  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1309) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1311 = _temp_1309 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: fileSize = *_temp_1311  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
! WHILE STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0WH",r10
_Label_1312:
!	jmp	_Label_1313
_Label_1313:
	mov	2178,r13		! source line 2178
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! IF STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0IF",r10
!   _temp_1317 = nextPosInFile + chunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1317 <= fileSize then goto _Label_1316		(int)
	load	[r14+-208],r1
	load	[r14+-464],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1316
!	jmp	_Label_1315
_Label_1315:
! THEN...
	mov	2181,r13		! source line 2181
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-464],r1
	load	[r14+-456],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! END IF...
_Label_1316:
! IF STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0IF",r10
!   _temp_1320 = copiedSoFar + chunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1320 <= sizeInBytes then goto _Label_1319		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1319
!	jmp	_Label_1318
_Label_1318:
! THEN...
	mov	2184,r13		! source line 2184
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-452],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! END IF...
_Label_1319:
! IF STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1322		(int)
	load	[r14+-460],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1322
!	jmp	_Label_1321
_Label_1321:
! THEN...
	mov	2187,r13		! source line 2187
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0BR",r10
	jmp	_Label_1314
! END IF...
_Label_1322:
! IF STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1327		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1327
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
	store	r1,[r14+-188]
!   Data Move: _temp_1330 = *_temp_1331  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1330) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = _temp_1330 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1333 = _temp_1332 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1329 = *_temp_1333  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1328 = _temp_1329 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1328 then goto _Label_1326		(int)
	load	[r14+-444],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1326
	jmp	_Label_1323
_Label_1326:
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1336 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1335 = *_temp_1336  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1335) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1337 = _temp_1335 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1334  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1338 = _temp_1334 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1338 then goto _Label_1325 else goto _Label_1323
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1323
	jmp	_Label_1325
_Label_1325:
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1341 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1340 = *_temp_1341  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1340) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1342 = _temp_1340 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1339  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1343 = _temp_1339 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1343 then goto _Label_1324 else goto _Label_1323
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1323
	jmp	_Label_1324
_Label_1323:
! THEN...
	mov	2192,r13		! source line 2192
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1324:
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-444],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! IF STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1345		(int)
	load	[r14+-452],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1345
!	jmp	_Label_1344
_Label_1344:
! THEN...
	mov	2201,r13		! source line 2201
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0BR",r10
	jmp	_Label_1314
! END IF...
_Label_1345:
! END WHILE...
	jmp	_Label_1312
_Label_1314:
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-440]
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-440],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-440],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1347 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1346 = *_temp_1347  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1346) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1348 = _temp_1346 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1348 [fileDesc ] into _temp_1349
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: file = *_temp_1349  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1350 = file + 16
	load	[r14+-436],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1350  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1352 = file + 20
	load	[r14+-436],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1351 = *_temp_1352  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1351) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1353 = _temp_1351 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1353  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
! WHILE STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0WH",r10
_Label_1354:
!	jmp	_Label_1355
_Label_1355:
	mov	2216,r13		! source line 2216
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! IF STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0IF",r10
!   _temp_1359 = nextPosInFile + chunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1359 <= fileSize then goto _Label_1358		(int)
	load	[r14+-120],r1
	load	[r14+-464],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1358
!	jmp	_Label_1357
_Label_1357:
! THEN...
	mov	2219,r13		! source line 2219
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-464],r1
	load	[r14+-456],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! END IF...
_Label_1358:
! IF STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0IF",r10
!   _temp_1362 = copiedSoFar + chunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1362 <= sizeInBytes then goto _Label_1361		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1361
!	jmp	_Label_1360
_Label_1360:
! THEN...
	mov	2222,r13		! source line 2222
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-452],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! END IF...
_Label_1361:
! IF STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1364		(int)
	load	[r14+-460],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1364
!	jmp	_Label_1363
_Label_1363:
! THEN...
	mov	2225,r13		! source line 2225
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0BR",r10
	jmp	_Label_1356
! END IF...
_Label_1364:
! IF STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1369		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1369
	jmp	_Label_1365
_Label_1369:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1373 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1372 = *_temp_1373  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1372) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1374 = _temp_1372 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1375 = _temp_1374 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1371 = *_temp_1375  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1370 = _temp_1371 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1370 then goto _Label_1368		(int)
	load	[r14+-444],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1368
	jmp	_Label_1365
_Label_1368:
	mov	2229,r13		! source line 2229
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1378 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1377 = *_temp_1378  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1377) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1379 = _temp_1377 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1376  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1380 = _temp_1376 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1380 then goto _Label_1367 else goto _Label_1365
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1365
	jmp	_Label_1367
_Label_1367:
	mov	2229,r13		! source line 2229
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1383 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1382 = *_temp_1383  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1382) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _temp_1382 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1381  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1385 = _temp_1381 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1385 then goto _Label_1366 else goto _Label_1365
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1365
	jmp	_Label_1366
_Label_1365:
! THEN...
	mov	2230,r13		! source line 2230
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1366:
! SEND STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1387 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1386 = *_temp_1387  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1386) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1388 = _temp_1386 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1390 = *_temp_1391  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1390) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _temp_1390 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1389  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1389 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-448],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
	mov	2236,r13		! source line 2236
	mov	"\0\0SE",r10
!   _temp_1393 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-468],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-460],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-26]
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-452],r1
	load	[r14+-460],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-444],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! IF STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1395		(int)
	load	[r14+-452],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1395
!	jmp	_Label_1394
_Label_1394:
! THEN...
	mov	2244,r13		! source line 2244
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0BR",r10
	jmp	_Label_1356
! END IF...
_Label_1395:
! END WHILE...
	jmp	_Label_1354
_Label_1356:
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1396 = file + 16
	load	[r14+-436],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1396 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-456],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+8]
	add	r15,492,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1397
	.word	12		! total size of parameters
	.word	488		! frame size = 488
	.word	_Label_1398
	.word	8
	.word	4
	.word	_Label_1399
	.word	12
	.word	4
	.word	_Label_1400
	.word	16
	.word	4
	.word	_Label_1401
	.word	-32
	.word	4
	.word	_Label_1402
	.word	-36
	.word	4
	.word	_Label_1403
	.word	-40
	.word	4
	.word	_Label_1404
	.word	-44
	.word	4
	.word	_Label_1405
	.word	-48
	.word	4
	.word	_Label_1406
	.word	-52
	.word	4
	.word	_Label_1407
	.word	-56
	.word	4
	.word	_Label_1408
	.word	-60
	.word	4
	.word	_Label_1409
	.word	-64
	.word	4
	.word	_Label_1410
	.word	-9
	.word	1
	.word	_Label_1411
	.word	-68
	.word	4
	.word	_Label_1412
	.word	-72
	.word	4
	.word	_Label_1413
	.word	-76
	.word	4
	.word	_Label_1414
	.word	-10
	.word	1
	.word	_Label_1415
	.word	-11
	.word	1
	.word	_Label_1416
	.word	-80
	.word	4
	.word	_Label_1417
	.word	-84
	.word	4
	.word	_Label_1418
	.word	-88
	.word	4
	.word	_Label_1419
	.word	-12
	.word	1
	.word	_Label_1420
	.word	-92
	.word	4
	.word	_Label_1421
	.word	-96
	.word	4
	.word	_Label_1422
	.word	-100
	.word	4
	.word	_Label_1423
	.word	-104
	.word	4
	.word	_Label_1424
	.word	-108
	.word	4
	.word	_Label_1425
	.word	-112
	.word	4
	.word	_Label_1426
	.word	-116
	.word	4
	.word	_Label_1427
	.word	-120
	.word	4
	.word	_Label_1428
	.word	-124
	.word	4
	.word	_Label_1429
	.word	-128
	.word	4
	.word	_Label_1430
	.word	-132
	.word	4
	.word	_Label_1431
	.word	-136
	.word	4
	.word	_Label_1432
	.word	-140
	.word	4
	.word	_Label_1433
	.word	-144
	.word	4
	.word	_Label_1434
	.word	-148
	.word	4
	.word	_Label_1435
	.word	-152
	.word	4
	.word	_Label_1436
	.word	-13
	.word	1
	.word	_Label_1437
	.word	-156
	.word	4
	.word	_Label_1438
	.word	-160
	.word	4
	.word	_Label_1439
	.word	-164
	.word	4
	.word	_Label_1440
	.word	-14
	.word	1
	.word	_Label_1441
	.word	-15
	.word	1
	.word	_Label_1442
	.word	-168
	.word	4
	.word	_Label_1443
	.word	-172
	.word	4
	.word	_Label_1444
	.word	-176
	.word	4
	.word	_Label_1445
	.word	-16
	.word	1
	.word	_Label_1446
	.word	-180
	.word	4
	.word	_Label_1447
	.word	-184
	.word	4
	.word	_Label_1448
	.word	-188
	.word	4
	.word	_Label_1449
	.word	-192
	.word	4
	.word	_Label_1450
	.word	-196
	.word	4
	.word	_Label_1451
	.word	-200
	.word	4
	.word	_Label_1452
	.word	-204
	.word	4
	.word	_Label_1453
	.word	-208
	.word	4
	.word	_Label_1454
	.word	-212
	.word	4
	.word	_Label_1455
	.word	-216
	.word	4
	.word	_Label_1456
	.word	-220
	.word	4
	.word	_Label_1457
	.word	-224
	.word	4
	.word	_Label_1458
	.word	-228
	.word	4
	.word	_Label_1459
	.word	-232
	.word	4
	.word	_Label_1460
	.word	-236
	.word	4
	.word	_Label_1461
	.word	-240
	.word	4
	.word	_Label_1462
	.word	-244
	.word	4
	.word	_Label_1463
	.word	-248
	.word	4
	.word	_Label_1464
	.word	-17
	.word	1
	.word	_Label_1465
	.word	-252
	.word	4
	.word	_Label_1466
	.word	-256
	.word	4
	.word	_Label_1467
	.word	-260
	.word	4
	.word	_Label_1468
	.word	-264
	.word	4
	.word	_Label_1469
	.word	-18
	.word	1
	.word	_Label_1470
	.word	-268
	.word	4
	.word	_Label_1471
	.word	-272
	.word	4
	.word	_Label_1472
	.word	-276
	.word	4
	.word	_Label_1473
	.word	-19
	.word	1
	.word	_Label_1474
	.word	-20
	.word	1
	.word	_Label_1475
	.word	-280
	.word	4
	.word	_Label_1476
	.word	-284
	.word	4
	.word	_Label_1477
	.word	-288
	.word	4
	.word	_Label_1478
	.word	-21
	.word	1
	.word	_Label_1479
	.word	-292
	.word	4
	.word	_Label_1480
	.word	-296
	.word	4
	.word	_Label_1481
	.word	-300
	.word	4
	.word	_Label_1482
	.word	-304
	.word	4
	.word	_Label_1483
	.word	-308
	.word	4
	.word	_Label_1484
	.word	-312
	.word	4
	.word	_Label_1485
	.word	-316
	.word	4
	.word	_Label_1486
	.word	-320
	.word	4
	.word	_Label_1487
	.word	-324
	.word	4
	.word	_Label_1488
	.word	-22
	.word	1
	.word	_Label_1489
	.word	-328
	.word	4
	.word	_Label_1490
	.word	-332
	.word	4
	.word	_Label_1491
	.word	-336
	.word	4
	.word	_Label_1492
	.word	-23
	.word	1
	.word	_Label_1493
	.word	-24
	.word	1
	.word	_Label_1494
	.word	-340
	.word	4
	.word	_Label_1495
	.word	-344
	.word	4
	.word	_Label_1496
	.word	-348
	.word	4
	.word	_Label_1497
	.word	-25
	.word	1
	.word	_Label_1498
	.word	-352
	.word	4
	.word	_Label_1499
	.word	-356
	.word	4
	.word	_Label_1500
	.word	-360
	.word	4
	.word	_Label_1501
	.word	-364
	.word	4
	.word	_Label_1502
	.word	-368
	.word	4
	.word	_Label_1503
	.word	-372
	.word	4
	.word	_Label_1504
	.word	-376
	.word	4
	.word	_Label_1505
	.word	-380
	.word	4
	.word	_Label_1506
	.word	-384
	.word	4
	.word	_Label_1507
	.word	-388
	.word	4
	.word	_Label_1508
	.word	-392
	.word	4
	.word	_Label_1509
	.word	-396
	.word	4
	.word	_Label_1510
	.word	-400
	.word	4
	.word	_Label_1511
	.word	-404
	.word	4
	.word	_Label_1512
	.word	-408
	.word	4
	.word	_Label_1513
	.word	-412
	.word	4
	.word	_Label_1514
	.word	-416
	.word	4
	.word	_Label_1515
	.word	-420
	.word	4
	.word	_Label_1516
	.word	-424
	.word	4
	.word	_Label_1517
	.word	-428
	.word	4
	.word	_Label_1518
	.word	-432
	.word	4
	.word	_Label_1519
	.word	-436
	.word	4
	.word	_Label_1520
	.word	-440
	.word	4
	.word	_Label_1521
	.word	-444
	.word	4
	.word	_Label_1522
	.word	-448
	.word	4
	.word	_Label_1523
	.word	-452
	.word	4
	.word	_Label_1524
	.word	-456
	.word	4
	.word	_Label_1525
	.word	-460
	.word	4
	.word	_Label_1526
	.word	-464
	.word	4
	.word	_Label_1527
	.word	-468
	.word	4
	.word	_Label_1528
	.word	-472
	.word	4
	.word	_Label_1529
	.word	-26
	.word	1
	.word	_Label_1530
	.word	-27
	.word	1
	.word	_Label_1531
	.word	-476
	.word	4
	.word	0
_Label_1397:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1398:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1399:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1400:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1410:
	.byte	'C'
	.ascii	"_temp_1385\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1414:
	.byte	'C'
	.ascii	"_temp_1381\0"
	.align
_Label_1415:
	.byte	'C'
	.ascii	"_temp_1380\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1419:
	.byte	'C'
	.ascii	"_temp_1376\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1436:
	.byte	'C'
	.ascii	"_temp_1343\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1440:
	.byte	'C'
	.ascii	"_temp_1339\0"
	.align
_Label_1441:
	.byte	'C'
	.ascii	"_temp_1338\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1445:
	.byte	'C'
	.ascii	"_temp_1334\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1464:
	.byte	'C'
	.ascii	"_temp_1301\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1469:
	.byte	'C'
	.ascii	"_temp_1294\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1473:
	.byte	'C'
	.ascii	"_temp_1290\0"
	.align
_Label_1474:
	.byte	'C'
	.ascii	"_temp_1289\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1478:
	.byte	'C'
	.ascii	"_temp_1285\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1488:
	.byte	'C'
	.ascii	"_temp_1266\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1492:
	.byte	'C'
	.ascii	"_temp_1262\0"
	.align
_Label_1493:
	.byte	'C'
	.ascii	"_temp_1261\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1497:
	.byte	'C'
	.ascii	"_temp_1257\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1519:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_1520:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1521:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1522:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1523:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1524:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1525:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1526:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1527:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1528:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1529:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1530:
	.byte	'C'
	.ascii	"character\0"
	.align
_Label_1531:
	.byte	'P'
	.ascii	"tempBuffer\0"
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
_Label_4233:
	push	r0
	sub	r1,1,r1
	bne	_Label_4233
	mov	2255,r13		! source line 2255
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0SE",r10
!   _temp_1532 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1533 = _temp_1532 + 4
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
	mov	2260,r13		! source line 2260
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1539		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1539
	jmp	_Label_1534
_Label_1539:
!   if fileDesc <= 9 then goto _Label_1538		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1538
	jmp	_Label_1534
_Label_1538:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1542 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1541 = *_temp_1542  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1541) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1543 = _temp_1541 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1543 [fileDesc ] into _temp_1544
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
!   Data Move: _temp_1540 = *_temp_1544  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1540) then goto _Label_1534
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1534
!	jmp	_Label_1537
_Label_1537:
!   if newCurrentPos >= -1 then goto _Label_1536		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1536
	jmp	_Label_1534
_Label_1536:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1549 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1548 = *_temp_1549  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1548) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1550 = _temp_1548 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1550 [fileDesc ] into _temp_1551
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
!   Data Move: _temp_1547 = *_temp_1551  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1547) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1552 = _temp_1547 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1546 = *_temp_1552  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1546) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1553 = _temp_1546 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1545 = *_temp_1553  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1545 then goto _Label_1535		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1535
!	jmp	_Label_1534
_Label_1534:
! THEN...
	mov	2261,r13		! source line 2261
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0SE",r10
!   _temp_1554 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1555 = _temp_1554 + 4
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
	mov	2262,r13		! source line 2262
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1535:
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1557 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1556 = *_temp_1557  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1556) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1558 = _temp_1556 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1558 [fileDesc ] into _temp_1559
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
!   Data Move: file = *_temp_1559  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1561		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1561
!	jmp	_Label_1560
_Label_1560:
! THEN...
	mov	2268,r13		! source line 2268
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1562 = file + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1565 = file + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1564 = *_temp_1565  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1564) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1566 = _temp_1564 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1563 = *_temp_1566  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1562 = _temp_1563  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0SE",r10
!   _temp_1567 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1568 = _temp_1567 + 4
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
	mov	2270,r13		! source line 2270
	mov	"\0\0RE",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1571 = file + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1570 = *_temp_1571  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1570) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1572 = _temp_1570 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1569 = *_temp_1572  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1569  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1561:
! ASSIGNMENT STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1573 = file + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1573 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   _temp_1574 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1575 = _temp_1574 + 4
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
	mov	2275,r13		! source line 2275
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
	.word	_Label_1576
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1577
	.word	8
	.word	4
	.word	_Label_1578
	.word	12
	.word	4
	.word	_Label_1579
	.word	-12
	.word	4
	.word	_Label_1580
	.word	-16
	.word	4
	.word	_Label_1581
	.word	-20
	.word	4
	.word	_Label_1582
	.word	-24
	.word	4
	.word	_Label_1583
	.word	-28
	.word	4
	.word	_Label_1584
	.word	-32
	.word	4
	.word	_Label_1585
	.word	-36
	.word	4
	.word	_Label_1586
	.word	-40
	.word	4
	.word	_Label_1587
	.word	-44
	.word	4
	.word	_Label_1588
	.word	-48
	.word	4
	.word	_Label_1589
	.word	-52
	.word	4
	.word	_Label_1590
	.word	-56
	.word	4
	.word	_Label_1591
	.word	-60
	.word	4
	.word	_Label_1592
	.word	-64
	.word	4
	.word	_Label_1593
	.word	-68
	.word	4
	.word	_Label_1594
	.word	-72
	.word	4
	.word	_Label_1595
	.word	-76
	.word	4
	.word	_Label_1596
	.word	-80
	.word	4
	.word	_Label_1597
	.word	-84
	.word	4
	.word	_Label_1598
	.word	-88
	.word	4
	.word	_Label_1599
	.word	-92
	.word	4
	.word	_Label_1600
	.word	-96
	.word	4
	.word	_Label_1601
	.word	-100
	.word	4
	.word	_Label_1602
	.word	-104
	.word	4
	.word	_Label_1603
	.word	-108
	.word	4
	.word	_Label_1604
	.word	-112
	.word	4
	.word	_Label_1605
	.word	-116
	.word	4
	.word	_Label_1606
	.word	-120
	.word	4
	.word	_Label_1607
	.word	-124
	.word	4
	.word	_Label_1608
	.word	-128
	.word	4
	.word	_Label_1609
	.word	-132
	.word	4
	.word	_Label_1610
	.word	-136
	.word	4
	.word	_Label_1611
	.word	-140
	.word	4
	.word	_Label_1612
	.word	-144
	.word	4
	.word	_Label_1613
	.word	-148
	.word	4
	.word	_Label_1614
	.word	-152
	.word	4
	.word	_Label_1615
	.word	-156
	.word	4
	.word	0
_Label_1576:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1577:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"newCurrentPos\0"
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
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1615:
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
_Label_4234:
	push	r0
	sub	r1,1,r1
	bne	_Label_4234
	mov	2280,r13		! source line 2280
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1619		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1619
	jmp	_Label_1616
_Label_1619:
!   if fileDesc <= 9 then goto _Label_1618		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1618
	jmp	_Label_1616
_Label_1618:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1621 = *_temp_1622  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1621) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1623 = _temp_1621 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1623 [fileDesc ] into _temp_1624
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
!   Data Move: _temp_1620 = *_temp_1624  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1620) then goto _Label_1616
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1616
	jmp	_Label_1617
_Label_1616:
	jmp	_Label_1625
_Label_1617:
! ELSE...
	mov	2284,r13		! source line 2284
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1628 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1627 = *_temp_1628  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1627) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1629 = _temp_1627 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1629 [fileDesc ] into _temp_1630
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
!   Data Move: _temp_1626 = *_temp_1630  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1631 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1626  sizeInBytes=4
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
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1633 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1632 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1632) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1634 = _temp_1632 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1634 [fileDesc ] into _temp_1635
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
!   Data Move: *_temp_1635 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1625:
! RETURN STATEMENT...
	mov	2281,r13		! source line 2281
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
	.word	_Label_1636
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1637
	.word	8
	.word	4
	.word	_Label_1638
	.word	-12
	.word	4
	.word	_Label_1639
	.word	-16
	.word	4
	.word	_Label_1640
	.word	-20
	.word	4
	.word	_Label_1641
	.word	-24
	.word	4
	.word	_Label_1642
	.word	-28
	.word	4
	.word	_Label_1643
	.word	-32
	.word	4
	.word	_Label_1644
	.word	-36
	.word	4
	.word	_Label_1645
	.word	-40
	.word	4
	.word	_Label_1646
	.word	-44
	.word	4
	.word	_Label_1647
	.word	-48
	.word	4
	.word	_Label_1648
	.word	-52
	.word	4
	.word	_Label_1649
	.word	-56
	.word	4
	.word	_Label_1650
	.word	-60
	.word	4
	.word	_Label_1651
	.word	-64
	.word	4
	.word	_Label_1652
	.word	-68
	.word	4
	.word	0
_Label_1636:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_193_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4235:
	push	r0
	sub	r1,1,r1
	bne	_Label_4235
	mov	2877,r13		! source line 2877
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1653 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1653  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
!   _temp_1654 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1654) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1656 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1656) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1655 = *_temp_1656  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1654 = _temp_1655  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0AS",r10
!   _temp_1657 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1657) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1659 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1659) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1658 = *_temp_1659  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1657 = _temp_1658  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0AS",r10
!   _temp_1660 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1660) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1662 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1662) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1661 = *_temp_1662  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1660 = _temp_1661  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_193_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1663
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1664
	.word	8
	.word	4
	.word	_Label_1665
	.word	12
	.word	4
	.word	_Label_1666
	.word	-16
	.word	4
	.word	_Label_1667
	.word	-9
	.word	1
	.word	_Label_1668
	.word	-20
	.word	4
	.word	_Label_1669
	.word	-24
	.word	4
	.word	_Label_1670
	.word	-10
	.word	1
	.word	_Label_1671
	.word	-28
	.word	4
	.word	_Label_1672
	.word	-32
	.word	4
	.word	_Label_1673
	.word	-11
	.word	1
	.word	_Label_1674
	.word	-36
	.word	4
	.word	_Label_1675
	.word	-12
	.word	1
	.word	_Label_1676
	.word	-40
	.word	4
	.word	_Label_1677
	.word	-44
	.word	4
	.word	0
_Label_1663:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1664:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1665:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1667:
	.byte	'C'
	.ascii	"_temp_1661\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1670:
	.byte	'C'
	.ascii	"_temp_1658\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1673:
	.byte	'C'
	.ascii	"_temp_1655\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1675:
	.byte	'C'
	.ascii	"_temp_1653\0"
	.align
_Label_1676:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1677:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_192_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_printFCB,r1
	push	r1
	mov	3,r1
_Label_4236:
	push	r0
	sub	r1,1,r1
	bne	_Label_4236
	mov	2887,r13		! source line 2887
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1679 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1678 = *_temp_1679  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2888,r13		! source line 2888
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_printFCB:
	.word	_sourceFileName
	.word	_Label_1680
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1681
	.word	8
	.word	4
	.word	_Label_1682
	.word	-12
	.word	4
	.word	_Label_1683
	.word	-16
	.word	4
	.word	0
_Label_1680:
	.ascii	"printFCB\0"
	.align
_Label_1681:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_191_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_printOpen,r1
	push	r1
	mov	4,r1
_Label_4237:
	push	r0
	sub	r1,1,r1
	bne	_Label_4237
	mov	2892,r13		! source line 2892
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1684 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2893,r13		! source line 2893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1685 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2894,r13		! source line 2894
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1686 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2895,r13		! source line 2895
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2896,r13		! source line 2896
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
	mov	2896,r13		! source line 2896
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_printOpen:
	.word	_sourceFileName
	.word	_Label_1687
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1688
	.word	8
	.word	4
	.word	_Label_1689
	.word	-12
	.word	4
	.word	_Label_1690
	.word	-16
	.word	4
	.word	_Label_1691
	.word	-20
	.word	4
	.word	0
_Label_1687:
	.ascii	"printOpen\0"
	.align
_Label_1688:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_190_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_4238:
	push	r0
	sub	r1,1,r1
	bne	_Label_4238
	mov	3159,r13		! source line 3159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3160,r13		! source line 3160
	mov	"\0\0SE",r10
!   _temp_1692 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	3160,r13		! source line 3160
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_1693
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1694
	.word	8
	.word	4
	.word	_Label_1695
	.word	-12
	.word	4
	.word	0
_Label_1693:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1694:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1696
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1696:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1697
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1697:
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
_Label_4239:
	push	r0
	sub	r1,1,r1
	bne	_Label_4239
	mov	272,r13		! source line 272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1699		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1699
!	jmp	_Label_1698
_Label_1698:
! THEN...
	mov	274,r13		! source line 274
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1700 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	274,r13		! source line 274
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1699:
! ASSIGNMENT STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	277,r13		! source line 277
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
	mov	277,r13		! source line 277
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
	.word	_Label_1702
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1703
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1704
	.word	12
	.word	4
	.word	_Label_1705
	.word	-12
	.word	4
	.word	_Label_1706
	.word	-16
	.word	4
	.word	0
_Label_1702:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1703:
	.ascii	"Pself\0"
	.align
_Label_1704:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1700\0"
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
_Label_4240:
	push	r0
	sub	r1,1,r1
	bne	_Label_4240
	mov	282,r13		! source line 282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1708		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1708
!	jmp	_Label_1707
_Label_1707:
! THEN...
	mov	288,r13		! source line 288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1709 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1709  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	288,r13		! source line 288
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1708:
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
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
	mov	291,r13		! source line 291
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1711		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1711
!	jmp	_Label_1710
_Label_1710:
! THEN...
	mov	292,r13		! source line 292
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0AS",r10
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_1712 = &waitingThreads
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
	mov	293,r13		! source line 293
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1713 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1713 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0SE",r10
!   _temp_1714 = &_P_Kernel_readyList
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
_Label_1711:
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	296,r13		! source line 296
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
	.word	_Label_1715
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1717
	.word	-12
	.word	4
	.word	_Label_1718
	.word	-16
	.word	4
	.word	_Label_1719
	.word	-20
	.word	4
	.word	_Label_1720
	.word	-24
	.word	4
	.word	_Label_1721
	.word	-28
	.word	4
	.word	_Label_1722
	.word	-32
	.word	4
	.word	0
_Label_1715:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1716:
	.ascii	"Pself\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1721:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1722:
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
_Label_4241:
	push	r0
	sub	r1,1,r1
	bne	_Label_4241
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1724		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1724
!	jmp	_Label_1723
_Label_1723:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1725 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1725  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1724:
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
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
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1727		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1727
!	jmp	_Label_1726
_Label_1726:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1728 = &waitingThreads
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
	mov	311,r13		! source line 311
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
_Label_1727:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
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
	.word	_Label_1729
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1730
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1731
	.word	-12
	.word	4
	.word	_Label_1732
	.word	-16
	.word	4
	.word	_Label_1733
	.word	-20
	.word	4
	.word	0
_Label_1729:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1730:
	.ascii	"Pself\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1733:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1734
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1734:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1735
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1735:
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
_Label_4242:
	push	r0
	sub	r1,1,r1
	bne	_Label_4242
	mov	336,r13		! source line 336
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	337,r13		! source line 337
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
	mov	337,r13		! source line 337
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
	.word	_Label_1737
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1738
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1739
	.word	-12
	.word	4
	.word	0
_Label_1737:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1738:
	.ascii	"Pself\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1736\0"
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
_Label_4243:
	push	r0
	sub	r1,1,r1
	bne	_Label_4243
	mov	342,r13		! source line 342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1741		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1741
!	jmp	_Label_1740
_Label_1740:
! THEN...
	mov	346,r13		! source line 346
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1742 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1742  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	346,r13		! source line 346
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1741:
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1746		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1746
!   _temp_1745 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1747
_Label_1746:
!   _temp_1745 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1747:
!   if _temp_1745 then goto _Label_1744 else goto _Label_1743
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1743
	jmp	_Label_1744
_Label_1743:
! THEN...
	mov	350,r13		! source line 350
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1748
_Label_1744:
! ELSE...
	mov	352,r13		! source line 352
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0SE",r10
!   _temp_1749 = &waitingThreads
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
	mov	353,r13		! source line 353
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
_Label_1748:
! ASSIGNMENT STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	355,r13		! source line 355
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
	.word	_Label_1750
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1751
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1752
	.word	-16
	.word	4
	.word	_Label_1753
	.word	-9
	.word	1
	.word	_Label_1754
	.word	-20
	.word	4
	.word	_Label_1755
	.word	-24
	.word	4
	.word	0
_Label_1750:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1751:
	.ascii	"Pself\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1753:
	.byte	'C'
	.ascii	"_temp_1745\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1755:
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
_Label_4244:
	push	r0
	sub	r1,1,r1
	bne	_Label_4244
	mov	360,r13		! source line 360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1757		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1757
!	jmp	_Label_1756
_Label_1756:
! THEN...
	mov	365,r13		! source line 365
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1758 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1758  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	365,r13		! source line 365
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1757:
! ASSIGNMENT STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	367,r13		! source line 367
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0AS",r10
	mov	368,r13		! source line 368
	mov	"\0\0SE",r10
!   _temp_1759 = &waitingThreads
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
	mov	369,r13		! source line 369
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1761		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1761
!	jmp	_Label_1760
_Label_1760:
! THEN...
	mov	370,r13		! source line 370
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1762 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1762 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0SE",r10
!   _temp_1763 = &_P_Kernel_readyList
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
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1764
_Label_1761:
! ELSE...
	mov	374,r13		! source line 374
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1764:
! ASSIGNMENT STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	376,r13		! source line 376
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	376,r13		! source line 376
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
	.word	_Label_1765
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1767
	.word	-12
	.word	4
	.word	_Label_1768
	.word	-16
	.word	4
	.word	_Label_1769
	.word	-20
	.word	4
	.word	_Label_1770
	.word	-24
	.word	4
	.word	_Label_1771
	.word	-28
	.word	4
	.word	_Label_1772
	.word	-32
	.word	4
	.word	0
_Label_1765:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1766:
	.ascii	"Pself\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1771:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1772:
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
_Label_4245:
	push	r0
	sub	r1,1,r1
	bne	_Label_4245
	mov	381,r13		! source line 381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1775		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1775
!	jmp	_Label_1774
_Label_1774:
!   _temp_1773 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1776
_Label_1775:
!   _temp_1773 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1776:
!   ReturnResult: _temp_1773  (sizeInBytes=1)
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
	.word	_Label_1777
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1778
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1779
	.word	-9
	.word	1
	.word	0
_Label_1777:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1778:
	.ascii	"Pself\0"
	.align
_Label_1779:
	.byte	'C'
	.ascii	"_temp_1773\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1780
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1780:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1781
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1781:
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
_Label_4246:
	push	r0
	sub	r1,1,r1
	bne	_Label_4246
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	423,r13		! source line 423
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
	mov	423,r13		! source line 423
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
	.word	_Label_1783
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1785
	.word	-12
	.word	4
	.word	0
_Label_1783:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1784:
	.ascii	"Pself\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1782\0"
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
_Label_4247:
	push	r0
	sub	r1,1,r1
	bne	_Label_4247
	mov	428,r13		! source line 428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
	mov	431,r13		! source line 431
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
!   Retrieve Result: targetName=_temp_1788  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1788 then goto _Label_1787 else goto _Label_1786
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1786
	jmp	_Label_1787
_Label_1786:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1789 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1789  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	432,r13		! source line 432
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1787:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	435,r13		! source line 435
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
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_1790 = &waitingThreads
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
	mov	437,r13		! source line 437
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
	mov	438,r13		! source line 438
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
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	439,r13		! source line 439
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
	.word	_Label_1791
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1792
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1793
	.word	12
	.word	4
	.word	_Label_1794
	.word	-16
	.word	4
	.word	_Label_1795
	.word	-20
	.word	4
	.word	_Label_1796
	.word	-9
	.word	1
	.word	_Label_1797
	.word	-24
	.word	4
	.word	0
_Label_1791:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1792:
	.ascii	"Pself\0"
	.align
_Label_1793:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1796:
	.byte	'C'
	.ascii	"_temp_1788\0"
	.align
_Label_1797:
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
_Label_4248:
	push	r0
	sub	r1,1,r1
	bne	_Label_4248
	mov	444,r13		! source line 444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0IF",r10
	mov	448,r13		! source line 448
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
!   Retrieve Result: targetName=_temp_1800  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1800 then goto _Label_1799 else goto _Label_1798
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1798
	jmp	_Label_1799
_Label_1798:
! THEN...
	mov	449,r13		! source line 449
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1801 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1801  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	449,r13		! source line 449
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1799:
! ASSIGNMENT STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	451,r13		! source line 451
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
	mov	452,r13		! source line 452
	mov	"\0\0SE",r10
!   _temp_1802 = &waitingThreads
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
	mov	453,r13		! source line 453
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1804		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1804
!	jmp	_Label_1803
_Label_1803:
! THEN...
	mov	454,r13		! source line 454
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1805 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1805 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0SE",r10
!   _temp_1806 = &_P_Kernel_readyList
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
_Label_1804:
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	457,r13		! source line 457
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
	.word	_Label_1807
	.word	8		! total size of parameters
	.word	36		! frame size = 36
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
	.word	_Label_1815
	.word	-32
	.word	4
	.word	_Label_1816
	.word	-36
	.word	4
	.word	0
_Label_1807:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1808:
	.ascii	"Pself\0"
	.align
_Label_1809:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1805\0"
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
_Label_1815:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1816:
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
_Label_4249:
	push	r0
	sub	r1,1,r1
	bne	_Label_4249
	mov	462,r13		! source line 462
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0IF",r10
	mov	466,r13		! source line 466
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
!   Retrieve Result: targetName=_temp_1819  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1819 then goto _Label_1818 else goto _Label_1817
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1817
	jmp	_Label_1818
_Label_1817:
! THEN...
	mov	467,r13		! source line 467
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1820 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1820  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	467,r13		! source line 467
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1818:
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	469,r13		! source line 469
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0WH",r10
_Label_1821:
!	jmp	_Label_1822
_Label_1822:
	mov	470,r13		! source line 470
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
	mov	471,r13		! source line 471
	mov	"\0\0SE",r10
!   _temp_1824 = &waitingThreads
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
	mov	472,r13		! source line 472
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1825
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1825
	jmp	_Label_1826
_Label_1825:
! THEN...
	mov	473,r13		! source line 473
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0BR",r10
	jmp	_Label_1823
! END IF...
_Label_1826:
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1827 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1827 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0SE",r10
!   _temp_1828 = &_P_Kernel_readyList
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
	jmp	_Label_1821
_Label_1823:
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	478,r13		! source line 478
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
	.word	_Label_1829
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1831
	.word	12
	.word	4
	.word	_Label_1832
	.word	-16
	.word	4
	.word	_Label_1833
	.word	-20
	.word	4
	.word	_Label_1834
	.word	-24
	.word	4
	.word	_Label_1835
	.word	-28
	.word	4
	.word	_Label_1836
	.word	-9
	.word	1
	.word	_Label_1837
	.word	-32
	.word	4
	.word	_Label_1838
	.word	-36
	.word	4
	.word	0
_Label_1829:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1830:
	.ascii	"Pself\0"
	.align
_Label_1831:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1836:
	.byte	'C'
	.ascii	"_temp_1819\0"
	.align
_Label_1837:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1838:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1839
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
_Label_1839:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1840
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1840:
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
_Label_4250:
	push	r0
	sub	r1,1,r1
	bne	_Label_4250
	mov	489,r13		! source line 489
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_1841 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1841) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1841 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_1842 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1842 [0 ] into _temp_1843
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
!   Data Move: *_temp_1843 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_1844 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1844 [999 ] into _temp_1845
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
!   Data Move: *_temp_1845 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_1846 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1846 [999 ] into _temp_1847
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
!   stackTop = _temp_1847		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   _temp_1848 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1850 = &_temp_1849
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1850 = _temp_1850 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1852:
!   Data Move: *_temp_1850 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1850 = _temp_1850 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1851 = _temp_1851 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1851) then goto _Label_1852
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1852
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1853 = &_temp_1849
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4251
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4251:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1848 = *_temp_1853  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4252:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4252
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   _temp_1854 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1856 = &_temp_1855
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1856 = _temp_1856 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1858:
!   Data Move: *_temp_1856 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1856 = _temp_1856 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1857 = _temp_1857 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1857) then goto _Label_1858
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1858
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1859 = &_temp_1855
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4253
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4253:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1854 = *_temp_1859  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4254:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4254
! RETURN STATEMENT...
	mov	503,r13		! source line 503
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
	.word	_Label_1860
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1862
	.word	12
	.word	4
	.word	_Label_1863
	.word	-12
	.word	4
	.word	_Label_1864
	.word	-16
	.word	4
	.word	_Label_1865
	.word	-20
	.word	4
	.word	_Label_1866
	.word	-84
	.word	64
	.word	_Label_1867
	.word	-88
	.word	4
	.word	_Label_1868
	.word	-92
	.word	4
	.word	_Label_1869
	.word	-96
	.word	4
	.word	_Label_1870
	.word	-100
	.word	4
	.word	_Label_1871
	.word	-156
	.word	56
	.word	_Label_1872
	.word	-160
	.word	4
	.word	_Label_1873
	.word	-164
	.word	4
	.word	_Label_1874
	.word	-168
	.word	4
	.word	_Label_1875
	.word	-172
	.word	4
	.word	_Label_1876
	.word	-176
	.word	4
	.word	_Label_1877
	.word	-180
	.word	4
	.word	_Label_1878
	.word	-184
	.word	4
	.word	_Label_1879
	.word	-188
	.word	4
	.word	0
_Label_1860:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1861:
	.ascii	"Pself\0"
	.align
_Label_1862:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1841\0"
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
_Label_4255:
	push	r0
	sub	r1,1,r1
	bne	_Label_4255
	mov	508,r13		! source line 508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	519,r13		! source line 519
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
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
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1880 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1880  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1882 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1881  sizeInBytes=4
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
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	527,r13		! source line 527
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
	.word	_Label_1883
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1884
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1885
	.word	12
	.word	4
	.word	_Label_1886
	.word	16
	.word	4
	.word	_Label_1887
	.word	-12
	.word	4
	.word	_Label_1888
	.word	-16
	.word	4
	.word	_Label_1889
	.word	-20
	.word	4
	.word	_Label_1890
	.word	-24
	.word	4
	.word	_Label_1891
	.word	-28
	.word	4
	.word	0
_Label_1883:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1884:
	.ascii	"Pself\0"
	.align
_Label_1885:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1886:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1890:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1891:
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
_Label_4256:
	push	r0
	sub	r1,1,r1
	bne	_Label_4256
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1894 == _P_Kernel_currentThread then goto _Label_1893		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1893
!	jmp	_Label_1892
_Label_1892:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1895 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	549,r13		! source line 549
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1893:
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	551,r13		! source line 551
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0AS",r10
	mov	555,r13		! source line 555
	mov	"\0\0SE",r10
!   _temp_1896 = &_P_Kernel_readyList
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
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1898		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1898
!	jmp	_Label_1897
_Label_1897:
! THEN...
	mov	560,r13		! source line 560
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1900		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1900
!	jmp	_Label_1899
_Label_1899:
! THEN...
	mov	561,r13		! source line 561
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1901 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1901  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	561,r13		! source line 561
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1900:
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1903 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1902  sizeInBytes=4
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
	mov	565,r13		! source line 565
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1898:
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	567,r13		! source line 567
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	567,r13		! source line 567
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
	.word	_Label_1904
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1906
	.word	-12
	.word	4
	.word	_Label_1907
	.word	-16
	.word	4
	.word	_Label_1908
	.word	-20
	.word	4
	.word	_Label_1909
	.word	-24
	.word	4
	.word	_Label_1910
	.word	-28
	.word	4
	.word	_Label_1911
	.word	-32
	.word	4
	.word	_Label_1912
	.word	-36
	.word	4
	.word	_Label_1913
	.word	-40
	.word	4
	.word	_Label_1914
	.word	-44
	.word	4
	.word	0
_Label_1904:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1905:
	.ascii	"Pself\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1912:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1913:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1914:
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
_Label_4257:
	push	r0
	sub	r1,1,r1
	bne	_Label_4257
	mov	572,r13		! source line 572
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1916		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1916
!	jmp	_Label_1915
_Label_1915:
! THEN...
	mov	585,r13		! source line 585
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1917 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1917  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	585,r13		! source line 585
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1916:
! IF STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1920 == _P_Kernel_currentThread then goto _Label_1919		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1919
!	jmp	_Label_1918
_Label_1918:
! THEN...
	mov	589,r13		! source line 589
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1921 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1921  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	589,r13		! source line 589
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1919:
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0AS",r10
	mov	595,r13		! source line 595
	mov	"\0\0SE",r10
!   _temp_1922 = &_P_Kernel_readyList
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
	mov	596,r13		! source line 596
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1923
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1923
	jmp	_Label_1924
_Label_1923:
! THEN...
	mov	597,r13		! source line 597
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1925 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1925  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	597,r13		! source line 597
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1924:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	599,r13		! source line 599
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
	.word	_Label_1926
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1927
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_1926:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1927:
	.ascii	"Pself\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1933:
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
_Label_4258:
	push	r0
	sub	r1,1,r1
	bne	_Label_4258
	mov	604,r13		! source line 604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   _temp_1937 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1937 [0 ] into _temp_1938
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
!   Data Move: _temp_1936 = *_temp_1938  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1936 == 606348324 then goto _Label_1935		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1935
!	jmp	_Label_1934
_Label_1934:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1939 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1939  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	611,r13		! source line 611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1940
_Label_1935:
! ELSE...
	mov	612,r13		! source line 612
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0IF",r10
!   _temp_1944 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1944 [999 ] into _temp_1945
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
!   Data Move: _temp_1943 = *_temp_1945  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1943 == 606348324 then goto _Label_1942		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1942
!	jmp	_Label_1941
_Label_1941:
! THEN...
	mov	613,r13		! source line 613
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1946 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1946  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	613,r13		! source line 613
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1942:
! END IF...
_Label_1940:
! RETURN STATEMENT...
	mov	610,r13		! source line 610
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
	.word	_Label_1947
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1949
	.word	-12
	.word	4
	.word	_Label_1950
	.word	-16
	.word	4
	.word	_Label_1951
	.word	-20
	.word	4
	.word	_Label_1952
	.word	-24
	.word	4
	.word	_Label_1953
	.word	-28
	.word	4
	.word	_Label_1954
	.word	-32
	.word	4
	.word	_Label_1955
	.word	-36
	.word	4
	.word	_Label_1956
	.word	-40
	.word	4
	.word	0
_Label_1947:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1948:
	.ascii	"Pself\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1936\0"
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
_Label_4259:
	push	r0
	sub	r1,1,r1
	bne	_Label_4259
	mov	619,r13		! source line 619
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1957 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1957  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1958 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1958  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1959  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1960 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1960  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1961 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1961  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	632,r13		! source line 632
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1966 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1967 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1966  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1962:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1967 then goto _Label_1965		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1965
_Label_1963:
	mov	632,r13		! source line 632
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1968 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1968  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1969 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1970 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1972 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1972 [i ] into _temp_1973
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
!   Data Move: _temp_1971 = *_temp_1973  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1971  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1974 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1976 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1976 [i ] into _temp_1977
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
!   Data Move: _temp_1975 = *_temp_1977  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1975  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1978 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1964:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1962
! END FOR
_Label_1965:
! CALL STATEMENT...
!   _temp_1979 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-116]
!   _temp_1980 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1979  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1980  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1981 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-108]
!   _temp_1983 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1983 [0 ] into _temp_1984
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
!   _temp_1982 = _temp_1984		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1981  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1982  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	643,r13		! source line 643
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1987
	cmp	r1,2
	be	_Label_1988
	cmp	r1,3
	be	_Label_1989
	cmp	r1,4
	be	_Label_1990
	cmp	r1,5
	be	_Label_1991
	jmp	_Label_1985
! CASE 1...
_Label_1987:
! CALL STATEMENT...
!   _temp_1992 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1992  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0BR",r10
	jmp	_Label_1986
! CASE 2...
_Label_1988:
! CALL STATEMENT...
!   _temp_1993 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1993  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0BR",r10
	jmp	_Label_1986
! CASE 3...
_Label_1989:
! CALL STATEMENT...
!   _temp_1994 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1994  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0BR",r10
	jmp	_Label_1986
! CASE 4...
_Label_1990:
! CALL STATEMENT...
!   _temp_1995 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1995  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0BR",r10
	jmp	_Label_1986
! CASE 5...
_Label_1991:
! CALL STATEMENT...
!   _temp_1996 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_1986
! DEFAULT CASE...
_Label_1985:
! CALL STATEMENT...
!   _temp_1997 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1997  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	660,r13		! source line 660
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1986:
! CALL STATEMENT...
!   _temp_1998 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1998  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1999 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1999  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2004 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2005 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2004  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2000:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2005 then goto _Label_2003		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2003
_Label_2001:
	mov	666,r13		! source line 666
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2006 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2007 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2007  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2008 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2008  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2010 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2010 [i ] into _temp_2011
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
!   Data Move: _temp_2009 = *_temp_2011  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2012 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2012  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2014 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2014 [i ] into _temp_2015
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
!   Data Move: _temp_2013 = *_temp_2015  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2016 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2002:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2000
! END FOR
_Label_2003:
! ASSIGNMENT STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	675,r13		! source line 675
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
	.word	_Label_2017
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2018
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2019
	.word	-12
	.word	4
	.word	_Label_2020
	.word	-16
	.word	4
	.word	_Label_2021
	.word	-20
	.word	4
	.word	_Label_2022
	.word	-24
	.word	4
	.word	_Label_2023
	.word	-28
	.word	4
	.word	_Label_2024
	.word	-32
	.word	4
	.word	_Label_2025
	.word	-36
	.word	4
	.word	_Label_2026
	.word	-40
	.word	4
	.word	_Label_2027
	.word	-44
	.word	4
	.word	_Label_2028
	.word	-48
	.word	4
	.word	_Label_2029
	.word	-52
	.word	4
	.word	_Label_2030
	.word	-56
	.word	4
	.word	_Label_2031
	.word	-60
	.word	4
	.word	_Label_2032
	.word	-64
	.word	4
	.word	_Label_2033
	.word	-68
	.word	4
	.word	_Label_2034
	.word	-72
	.word	4
	.word	_Label_2035
	.word	-76
	.word	4
	.word	_Label_2036
	.word	-80
	.word	4
	.word	_Label_2037
	.word	-84
	.word	4
	.word	_Label_2038
	.word	-88
	.word	4
	.word	_Label_2039
	.word	-92
	.word	4
	.word	_Label_2040
	.word	-96
	.word	4
	.word	_Label_2041
	.word	-100
	.word	4
	.word	_Label_2042
	.word	-104
	.word	4
	.word	_Label_2043
	.word	-108
	.word	4
	.word	_Label_2044
	.word	-112
	.word	4
	.word	_Label_2045
	.word	-116
	.word	4
	.word	_Label_2046
	.word	-120
	.word	4
	.word	_Label_2047
	.word	-124
	.word	4
	.word	_Label_2048
	.word	-128
	.word	4
	.word	_Label_2049
	.word	-132
	.word	4
	.word	_Label_2050
	.word	-136
	.word	4
	.word	_Label_2051
	.word	-140
	.word	4
	.word	_Label_2052
	.word	-144
	.word	4
	.word	_Label_2053
	.word	-148
	.word	4
	.word	_Label_2054
	.word	-152
	.word	4
	.word	_Label_2055
	.word	-156
	.word	4
	.word	_Label_2056
	.word	-160
	.word	4
	.word	_Label_2057
	.word	-164
	.word	4
	.word	_Label_2058
	.word	-168
	.word	4
	.word	_Label_2059
	.word	-172
	.word	4
	.word	_Label_2060
	.word	-176
	.word	4
	.word	_Label_2061
	.word	-180
	.word	4
	.word	_Label_2062
	.word	-184
	.word	4
	.word	_Label_2063
	.word	-188
	.word	4
	.word	_Label_2064
	.word	-192
	.word	4
	.word	_Label_2065
	.word	-196
	.word	4
	.word	0
_Label_2017:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2018:
	.ascii	"Pself\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_2064:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2065:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2066
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2066:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2067
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2067:
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
_Label_4260:
	push	r0
	sub	r1,1,r1
	bne	_Label_4260
	mov	730,r13		! source line 730
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0AS",r10
!   _temp_2068 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2070 = &_temp_2069
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2070 = _temp_2070 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2072 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4261:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4261
!   _temp_2072 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2074:
!   Data Move: *_temp_2070 = _temp_2072  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4262:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4262
!   _temp_2070 = _temp_2070 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2071 = _temp_2071 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2071) then goto _Label_2074
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2074
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2075 = &_temp_2069
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4263
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4263:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2068 = *_temp_2075  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4264:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4264
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
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
	mov	740,r13		! source line 740
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
	mov	741,r13		! source line 741
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
	mov	742,r13		! source line 742
	mov	"\0\0SE",r10
!   _temp_2079 = &threadManagerLock
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
	mov	743,r13		! source line 743
	mov	"\0\0SE",r10
!   _temp_2080 = &aThreadBecameFree
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
	mov	744,r13		! source line 744
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2085 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2086 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2085  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_2081:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2086 then goto _Label_2084		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2084
_Label_2082:
	mov	744,r13		! source line 744
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_2087 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-48]
!   _temp_2088 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2088 [i ] into _temp_2089
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
!   Prepare Argument: offset=12  value=_temp_2087  sizeInBytes=4
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
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   _temp_2090 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2090 [i ] into _temp_2091
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
!   _temp_2092 = _temp_2091 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2092 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_2094 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2094 [i ] into _temp_2095
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
!   _temp_2093 = _temp_2095		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2096 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2093  sizeInBytes=4
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
_Label_2083:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_2081
! END FOR
_Label_2084:
! RETURN STATEMENT...
	mov	744,r13		! source line 744
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
	.word	_Label_2097
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_2098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2099
	.word	-12
	.word	4
	.word	_Label_2100
	.word	-16
	.word	4
	.word	_Label_2101
	.word	-20
	.word	4
	.word	_Label_2102
	.word	-24
	.word	4
	.word	_Label_2103
	.word	-28
	.word	4
	.word	_Label_2104
	.word	-32
	.word	4
	.word	_Label_2105
	.word	-36
	.word	4
	.word	_Label_2106
	.word	-40
	.word	4
	.word	_Label_2107
	.word	-44
	.word	4
	.word	_Label_2108
	.word	-48
	.word	4
	.word	_Label_2109
	.word	-52
	.word	4
	.word	_Label_2110
	.word	-56
	.word	4
	.word	_Label_2111
	.word	-60
	.word	4
	.word	_Label_2112
	.word	-64
	.word	4
	.word	_Label_2113
	.word	-68
	.word	4
	.word	_Label_2114
	.word	-72
	.word	4
	.word	_Label_2115
	.word	-76
	.word	4
	.word	_Label_2116
	.word	-80
	.word	4
	.word	_Label_2117
	.word	-84
	.word	4
	.word	_Label_2118
	.word	-4248
	.word	4164
	.word	_Label_2119
	.word	-4252
	.word	4
	.word	_Label_2120
	.word	-4256
	.word	4
	.word	_Label_2121
	.word	-45900
	.word	41644
	.word	_Label_2122
	.word	-45904
	.word	4
	.word	_Label_2123
	.word	-45908
	.word	4
	.word	0
_Label_2097:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2098:
	.ascii	"Pself\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2123:
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
_Label_4265:
	push	r0
	sub	r1,1,r1
	bne	_Label_4265
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_2124 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2124  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2129 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2130 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2129  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2125:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2130 then goto _Label_2128		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2128
_Label_2126:
	mov	762,r13		! source line 762
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2131 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2131  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2132 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2132  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2134 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2134 [i ] into _temp_2135
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
!   _temp_2133 = _temp_2135		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2133  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CA",r10
	call	_function_197_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2127:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2125
! END FOR
_Label_2128:
! CALL STATEMENT...
!   _temp_2136 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2136  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_2137 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2138 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2137  sizeInBytes=4
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
	mov	770,r13		! source line 770
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	771,r13		! source line 771
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
	.word	_Label_2139
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2140
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2141
	.word	-12
	.word	4
	.word	_Label_2142
	.word	-16
	.word	4
	.word	_Label_2143
	.word	-20
	.word	4
	.word	_Label_2144
	.word	-24
	.word	4
	.word	_Label_2145
	.word	-28
	.word	4
	.word	_Label_2146
	.word	-32
	.word	4
	.word	_Label_2147
	.word	-36
	.word	4
	.word	_Label_2148
	.word	-40
	.word	4
	.word	_Label_2149
	.word	-44
	.word	4
	.word	_Label_2150
	.word	-48
	.word	4
	.word	_Label_2151
	.word	-52
	.word	4
	.word	_Label_2152
	.word	-56
	.word	4
	.word	_Label_2153
	.word	-60
	.word	4
	.word	0
_Label_2139:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2140:
	.ascii	"Pself\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2152:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2153:
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
_Label_4266:
	push	r0
	sub	r1,1,r1
	bne	_Label_4266
	mov	776,r13		! source line 776
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_2154 = &threadManagerLock
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
	mov	784,r13		! source line 784
	mov	"\0\0WH",r10
_Label_2155:
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_2158 = &freeList
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
!   if result==true then goto _Label_2156 else goto _Label_2157
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2157
	jmp	_Label_2156
_Label_2156:
	mov	784,r13		! source line 784
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_2159 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2160 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2159  sizeInBytes=4
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
	jmp	_Label_2155
_Label_2157:
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_2161 = &freeList
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
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2162 = threadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2162 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2163 = &threadManagerLock
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
	mov	790,r13		! source line 790
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
	.word	_Label_2164
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2165
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2166
	.word	-12
	.word	4
	.word	_Label_2167
	.word	-16
	.word	4
	.word	_Label_2168
	.word	-20
	.word	4
	.word	_Label_2169
	.word	-24
	.word	4
	.word	_Label_2170
	.word	-28
	.word	4
	.word	_Label_2171
	.word	-32
	.word	4
	.word	_Label_2172
	.word	-36
	.word	4
	.word	_Label_2173
	.word	-40
	.word	4
	.word	0
_Label_2164:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2165:
	.ascii	"Pself\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2173:
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
_Label_4267:
	push	r0
	sub	r1,1,r1
	bne	_Label_4267
	mov	795,r13		! source line 795
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0SE",r10
!   _temp_2174 = &threadManagerLock
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
	mov	801,r13		! source line 801
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2175 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2175 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_2176 = &freeList
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
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_2177 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2178 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2177  sizeInBytes=4
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
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_2179 = &threadManagerLock
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
	mov	804,r13		! source line 804
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
	.word	_Label_2180
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2182
	.word	12
	.word	4
	.word	_Label_2183
	.word	-12
	.word	4
	.word	_Label_2184
	.word	-16
	.word	4
	.word	_Label_2185
	.word	-20
	.word	4
	.word	_Label_2186
	.word	-24
	.word	4
	.word	_Label_2187
	.word	-28
	.word	4
	.word	_Label_2188
	.word	-32
	.word	4
	.word	0
_Label_2180:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2181:
	.ascii	"Pself\0"
	.align
_Label_2182:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2189
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2189:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2190
	.word	_sourceFileName
	.word	214		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2190:
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
_Label_4268:
	push	r0
	sub	r1,1,r1
	bne	_Label_4268
	mov	817,r13		! source line 817
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_4269:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4269
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0SE",r10
!   _temp_2192 = &addrSpace
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
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   _temp_2193 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2195 = &_temp_2194
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2195 = _temp_2195 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2197:
!   Data Move: *_temp_2195 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2195 = _temp_2195 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2196 = _temp_2196 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2196) then goto _Label_2197
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2197
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2198 = &_temp_2194
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4270
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4270:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2193 = *_temp_2198  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4271:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4271
! RETURN STATEMENT...
	mov	824,r13		! source line 824
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
	.word	_Label_2199
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2200
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2201
	.word	-12
	.word	4
	.word	_Label_2202
	.word	-16
	.word	4
	.word	_Label_2203
	.word	-20
	.word	4
	.word	_Label_2204
	.word	-64
	.word	44
	.word	_Label_2205
	.word	-68
	.word	4
	.word	_Label_2206
	.word	-72
	.word	4
	.word	_Label_2207
	.word	-76
	.word	4
	.word	0
_Label_2199:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2200:
	.ascii	"Pself\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2191\0"
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
	mov	14,r1
_Label_4272:
	push	r0
	sub	r1,1,r1
	bne	_Label_4272
	mov	831,r13		! source line 831
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2208) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	837,r13		! source line 837
	mov	"\0\0SE",r10
!   _temp_2209 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Send message Print
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2210 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2210  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CA",r10
	call	_function_197_ThreadPrintShort
! CALL STATEMENT...
!   _temp_2211 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2211  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2216 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2217 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2216  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-60]
_Label_2212:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2217 then goto _Label_2215		
	load	[r14+-60],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2215
_Label_2213:
	mov	843,r13		! source line 843
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0IF",r10
!   _temp_2221 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_2221 [i ] into _temp_2222
!     make sure index expr is >= 0
	load	[r14+-60],r2
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
!   Data Move: _temp_2220 = *_temp_2222  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2220 == 0 then goto _Label_2219		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2219
!	jmp	_Label_2218
_Label_2218:
! THEN...
	mov	845,r13		! source line 845
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0SE",r10
!   _temp_2224 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_2224 [i ] into _temp_2225
!     make sure index expr is >= 0
	load	[r14+-60],r2
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
!   Data Move: _temp_2223 = *_temp_2225  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2223) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! END IF...
_Label_2219:
!   Increment the FOR-LOOP index variable and jump back
_Label_2214:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2212
! END FOR
_Label_2215:
! CALL STATEMENT...
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2226
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2228
	.word	-12
	.word	4
	.word	_Label_2229
	.word	-16
	.word	4
	.word	_Label_2230
	.word	-20
	.word	4
	.word	_Label_2231
	.word	-24
	.word	4
	.word	_Label_2232
	.word	-28
	.word	4
	.word	_Label_2233
	.word	-32
	.word	4
	.word	_Label_2234
	.word	-36
	.word	4
	.word	_Label_2235
	.word	-40
	.word	4
	.word	_Label_2236
	.word	-44
	.word	4
	.word	_Label_2237
	.word	-48
	.word	4
	.word	_Label_2238
	.word	-52
	.word	4
	.word	_Label_2239
	.word	-56
	.word	4
	.word	_Label_2240
	.word	-60
	.word	4
	.word	0
_Label_2226:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2227:
	.ascii	"Pself\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2240:
	.byte	'I'
	.ascii	"i\0"
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
_Label_4273:
	push	r0
	sub	r1,1,r1
	bne	_Label_4273
	mov	854,r13		! source line 854
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2241 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2241  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2242  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2243 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2243  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2244 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2244  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2246		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2246
!	jmp	_Label_2245
_Label_2245:
! THEN...
	mov	864,r13		! source line 864
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2247 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2247  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2248
_Label_2246:
! ELSE...
	mov	865,r13		! source line 865
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2250		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2250
!	jmp	_Label_2249
_Label_2249:
! THEN...
	mov	866,r13		! source line 866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2251 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2251  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2252
_Label_2250:
! ELSE...
	mov	867,r13		! source line 867
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2254		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2254
!	jmp	_Label_2253
_Label_2253:
! THEN...
	mov	868,r13		! source line 868
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2255 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2255  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2256
_Label_2254:
! ELSE...
	mov	870,r13		! source line 870
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2257 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2257  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	870,r13		! source line 870
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2256:
! END IF...
_Label_2252:
! END IF...
_Label_2248:
! CALL STATEMENT...
!   _temp_2258 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2258  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2259 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2259  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	876,r13		! source line 876
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
	.word	_Label_2260
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	_Label_2270
	.word	-44
	.word	4
	.word	_Label_2271
	.word	-48
	.word	4
	.word	0
_Label_2260:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
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
	.ascii	"_temp_2255\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2272
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
_Label_2272:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2273
	.word	_sourceFileName
	.word	234		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2273:
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
_Label_4274:
	push	r0
	sub	r1,1,r1
	bne	_Label_4274
	mov	887,r13		! source line 887
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
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
	mov	894,r13		! source line 894
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
	mov	895,r13		! source line 895
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
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   _temp_2277 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1940]
!   NEW ARRAY Constructor...
!   _temp_2279 = &_temp_2278
	add	r14,-1936,r1
	store	r1,[r14+-252]
!   _temp_2279 = _temp_2279 + 4
	load	[r14+-252],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2281 = zeros  (sizeInBytes=168)
	add	r14,-244,r4
	mov	42,r3
_Label_4275:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4275
!   _temp_2281 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-244]
	mov	10,r1
	store	r1,[r14+-248]
_Label_2283:
!   Data Move: *_temp_2279 = _temp_2281  (sizeInBytes=168)
	add	r14,-244,r5
	load	[r14+-252],r4
	mov	42,r3
_Label_4276:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4276
!   _temp_2279 = _temp_2279 + 168
	load	[r14+-252],r1
	add	r1,168,r1
	store	r1,[r14+-252]
!   _temp_2280 = _temp_2280 + -1
	load	[r14+-248],r1
	add	r1,-1,r1
	store	r1,[r14+-248]
!   if intNotZero (_temp_2280) then goto _Label_2283
	load	[r14+-248],r1
	cmp	r1,r0
	bne	_Label_2283
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1936]
!   _temp_2284 = &_temp_2278
	add	r14,-1936,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	load	[r14+-1940],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4277
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4277:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2277 = *_temp_2284  (sizeInBytes=1684)
	load	[r14+-72],r5
	load	[r14+-1940],r4
	mov	421,r3
_Label_4278:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4278
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
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
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
!   _temp_2286 = &processManagerLock
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
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_2287 = &aProcessBecameFree
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
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_2288 = &aProcessDied
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
	mov	901,r13		! source line 901
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2293 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2294 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2293  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1956]
_Label_2289:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2294 then goto _Label_2292		
	load	[r14+-1956],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2292
_Label_2290:
	mov	901,r13		! source line 901
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_2295 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2295 [i ] into _temp_2296
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
	mov	903,r13		! source line 903
	mov	"\0\0AS",r10
!   _temp_2297 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2297 [i ] into _temp_2298
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
!   _temp_2299 = _temp_2298 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2299 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_2301 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2301 [i ] into _temp_2302
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
!   _temp_2300 = _temp_2302		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2303 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2300  sizeInBytes=4
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
_Label_2291:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2289
! END FOR
_Label_2292:
! ASSIGNMENT STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1752]
! RETURN STATEMENT...
	mov	906,r13		! source line 906
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
	.word	_Label_2304
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2305
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2318
	.word	-60
	.word	4
	.word	_Label_2319
	.word	-64
	.word	4
	.word	_Label_2320
	.word	-68
	.word	4
	.word	_Label_2321
	.word	-72
	.word	4
	.word	_Label_2322
	.word	-76
	.word	4
	.word	_Label_2323
	.word	-244
	.word	168
	.word	_Label_2324
	.word	-248
	.word	4
	.word	_Label_2325
	.word	-252
	.word	4
	.word	_Label_2326
	.word	-1936
	.word	1684
	.word	_Label_2327
	.word	-1940
	.word	4
	.word	_Label_2328
	.word	-1944
	.word	4
	.word	_Label_2329
	.word	-1948
	.word	4
	.word	_Label_2330
	.word	-1952
	.word	4
	.word	_Label_2331
	.word	-1956
	.word	4
	.word	0
_Label_2304:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2305:
	.ascii	"Pself\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2331:
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
_Label_4279:
	push	r0
	sub	r1,1,r1
	bne	_Label_4279
	mov	911,r13		! source line 911
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2332 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2337 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2338 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2337  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2333:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2338 then goto _Label_2336		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2336
_Label_2334:
	mov	920,r13		! source line 920
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2339 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2340 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2340  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_2341 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2341 [i ] into _temp_2342
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
_Label_2335:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2333
! END FOR
_Label_2336:
! CALL STATEMENT...
!   _temp_2343 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2343  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0SE",r10
!   _temp_2344 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2345 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2344  sizeInBytes=4
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
	mov	928,r13		! source line 928
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	929,r13		! source line 929
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
	.word	_Label_2346
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2348
	.word	-12
	.word	4
	.word	_Label_2349
	.word	-16
	.word	4
	.word	_Label_2350
	.word	-20
	.word	4
	.word	_Label_2351
	.word	-24
	.word	4
	.word	_Label_2352
	.word	-28
	.word	4
	.word	_Label_2353
	.word	-32
	.word	4
	.word	_Label_2354
	.word	-36
	.word	4
	.word	_Label_2355
	.word	-40
	.word	4
	.word	_Label_2356
	.word	-44
	.word	4
	.word	_Label_2357
	.word	-48
	.word	4
	.word	_Label_2358
	.word	-52
	.word	4
	.word	_Label_2359
	.word	-56
	.word	4
	.word	0
_Label_2346:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2347:
	.ascii	"Pself\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2358:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2359:
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
_Label_4280:
	push	r0
	sub	r1,1,r1
	bne	_Label_4280
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	941,r13		! source line 941
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2360 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2360  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2365 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2366 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2365  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2361:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2366 then goto _Label_2364		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2364
_Label_2362:
	mov	943,r13		! source line 943
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2367 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2367  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0SE",r10
!   _temp_2368 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2368 [i ] into _temp_2369
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
_Label_2363:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2361
! END FOR
_Label_2364:
! CALL STATEMENT...
!   _temp_2370 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0SE",r10
!   _temp_2371 = _function_196_PrintObjectAddr
	set	_function_196_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2372 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2371  sizeInBytes=4
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
	mov	950,r13		! source line 950
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	951,r13		! source line 951
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
	.word	_Label_2373
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2375
	.word	-12
	.word	4
	.word	_Label_2376
	.word	-16
	.word	4
	.word	_Label_2377
	.word	-20
	.word	4
	.word	_Label_2378
	.word	-24
	.word	4
	.word	_Label_2379
	.word	-28
	.word	4
	.word	_Label_2380
	.word	-32
	.word	4
	.word	_Label_2381
	.word	-36
	.word	4
	.word	_Label_2382
	.word	-40
	.word	4
	.word	_Label_2383
	.word	-44
	.word	4
	.word	_Label_2384
	.word	-48
	.word	4
	.word	_Label_2385
	.word	-52
	.word	4
	.word	0
_Label_2373:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2374:
	.ascii	"Pself\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2384:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2385:
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
_Label_4281:
	push	r0
	sub	r1,1,r1
	bne	_Label_4281
	mov	956,r13		! source line 956
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0SE",r10
!   _temp_2386 = &processManagerLock
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
	mov	964,r13		! source line 964
	mov	"\0\0WH",r10
_Label_2387:
	mov	964,r13		! source line 964
	mov	"\0\0SE",r10
!   _temp_2390 = &freeList
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
!   if result==true then goto _Label_2388 else goto _Label_2389
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2389
	jmp	_Label_2388
_Label_2388:
	mov	964,r13		! source line 964
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2391 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2392 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2391  sizeInBytes=4
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
	jmp	_Label_2387
_Label_2389:
! ASSIGNMENT STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0AS",r10
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_2393 = &freeList
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
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2394 = processPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2394 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
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
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   if intIsZero (processPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2395 = processPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2395 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_2396 = &processManagerLock
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
	mov	972,r13		! source line 972
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
	.word	_Label_2397
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2398
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2399
	.word	-12
	.word	4
	.word	_Label_2400
	.word	-16
	.word	4
	.word	_Label_2401
	.word	-20
	.word	4
	.word	_Label_2402
	.word	-24
	.word	4
	.word	_Label_2403
	.word	-28
	.word	4
	.word	_Label_2404
	.word	-32
	.word	4
	.word	_Label_2405
	.word	-36
	.word	4
	.word	_Label_2406
	.word	-40
	.word	4
	.word	_Label_2407
	.word	-44
	.word	4
	.word	0
_Label_2397:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2398:
	.ascii	"Pself\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2407:
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
_Label_4282:
	push	r0
	sub	r1,1,r1
	bne	_Label_4282
	mov	977,r13		! source line 977
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2408 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2408  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	982,r13		! source line 982
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_2409 = &processManagerLock
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
	mov	984,r13		! source line 984
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2410 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2410 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_2411 = &freeList
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
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_2412 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2413 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2412  sizeInBytes=4
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
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_2414 = &processManagerLock
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
	mov	987,r13		! source line 987
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
	.word	_Label_2415
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2416
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2417
	.word	12
	.word	4
	.word	_Label_2418
	.word	-12
	.word	4
	.word	_Label_2419
	.word	-16
	.word	4
	.word	_Label_2420
	.word	-20
	.word	4
	.word	_Label_2421
	.word	-24
	.word	4
	.word	_Label_2422
	.word	-28
	.word	4
	.word	_Label_2423
	.word	-32
	.word	4
	.word	_Label_2424
	.word	-36
	.word	4
	.word	0
_Label_2415:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2416:
	.ascii	"Pself\0"
	.align
_Label_2417:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2408\0"
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
_Label_4283:
	push	r0
	sub	r1,1,r1
	bne	_Label_4283
	mov	992,r13		! source line 992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0SE",r10
!   _temp_2425 = &processManagerLock
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
	mov	998,r13		! source line 998
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2430 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-176]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2431 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-172]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2430  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+-184]
_Label_2426:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2431 then goto _Label_2429		
	load	[r14+-184],r1
	load	[r14+-172],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2429
_Label_2427:
	mov	998,r13		! source line 998
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0IF",r10
!   _temp_2436 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Move address of _temp_2436 [i ] into _temp_2437
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
!   _temp_2438 = _temp_2437 + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   Data Move: _temp_2435 = *_temp_2438  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2440 = PCB + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_2439 = *_temp_2440  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if _temp_2435 != _temp_2439 then goto _Label_2433		(int)
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bne	_Label_2433
!	jmp	_Label_2434
_Label_2434:
!   _temp_2442 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-140]
!   Move address of _temp_2442 [i ] into _temp_2443
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
!   _temp_2444 = _temp_2443 + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_2441 = *_temp_2444  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if _temp_2441 != 2 then goto _Label_2433		(int)
	load	[r14+-144],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2433
!	jmp	_Label_2432
_Label_2432:
! THEN...
	mov	1000,r13		! source line 1000
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   _temp_2445 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Move address of _temp_2445 [i ] into _temp_2446
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
!   _temp_2447 = _temp_2446 + 20
	load	[r14+-124],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_2447 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-120],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_2449 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_2449 [i ] into _temp_2450
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
!   _temp_2448 = _temp_2450		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-116]
!   _temp_2451 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2448  sizeInBytes=4
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
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2452 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-100]
!   _temp_2453 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_2452  sizeInBytes=4
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
_Label_2433:
!   Increment the FOR-LOOP index variable and jump back
_Label_2428:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_2426
! END FOR
_Label_2429:
! FOR STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2458 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2459 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2458  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-184]
_Label_2454:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2459 then goto _Label_2457		
	load	[r14+-184],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2457
_Label_2455:
	mov	1006,r13		! source line 1006
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0IF",r10
!   _temp_2464 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_2464 [i ] into _temp_2465
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
!   _temp_2466 = _temp_2465 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2463 = *_temp_2466  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2468 = PCB + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2467 = *_temp_2468  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2463 != _temp_2467 then goto _Label_2461		(int)
	load	[r14+-84],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bne	_Label_2461
!	jmp	_Label_2462
_Label_2462:
!   _temp_2470 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2470 [i ] into _temp_2471
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
!   _temp_2472 = _temp_2471 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2469 = *_temp_2472  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_2469 != 1 then goto _Label_2461		(int)
	load	[r14+-60],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2461
!	jmp	_Label_2460
_Label_2460:
! THEN...
	mov	1008,r13		! source line 1008
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2473 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2473 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_2474 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2475 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2474  sizeInBytes=4
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
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_2476 = &processManagerLock
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
	mov	1011,r13		! source line 1011
	mov	"\0\0RE",r10
	add	r15,188,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2461:
!   Increment the FOR-LOOP index variable and jump back
_Label_2456:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_2454
! END FOR
_Label_2457:
! ASSIGNMENT STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2477 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2477 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_2478 = &freeList
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
	mov	1017,r13		! source line 1017
	mov	"\0\0SE",r10
!   _temp_2479 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2480 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2479  sizeInBytes=4
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
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_2481 = &processManagerLock
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
	mov	1019,r13		! source line 1019
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
	.word	_Label_2482
	.word	8		! total size of parameters
	.word	184		! frame size = 184
	.word	_Label_2483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2484
	.word	12
	.word	4
	.word	_Label_2485
	.word	-12
	.word	4
	.word	_Label_2486
	.word	-16
	.word	4
	.word	_Label_2487
	.word	-20
	.word	4
	.word	_Label_2488
	.word	-24
	.word	4
	.word	_Label_2489
	.word	-28
	.word	4
	.word	_Label_2490
	.word	-32
	.word	4
	.word	_Label_2491
	.word	-36
	.word	4
	.word	_Label_2492
	.word	-40
	.word	4
	.word	_Label_2493
	.word	-44
	.word	4
	.word	_Label_2494
	.word	-48
	.word	4
	.word	_Label_2495
	.word	-52
	.word	4
	.word	_Label_2496
	.word	-56
	.word	4
	.word	_Label_2497
	.word	-60
	.word	4
	.word	_Label_2498
	.word	-64
	.word	4
	.word	_Label_2499
	.word	-68
	.word	4
	.word	_Label_2500
	.word	-72
	.word	4
	.word	_Label_2501
	.word	-76
	.word	4
	.word	_Label_2502
	.word	-80
	.word	4
	.word	_Label_2503
	.word	-84
	.word	4
	.word	_Label_2504
	.word	-88
	.word	4
	.word	_Label_2505
	.word	-92
	.word	4
	.word	_Label_2506
	.word	-96
	.word	4
	.word	_Label_2507
	.word	-100
	.word	4
	.word	_Label_2508
	.word	-104
	.word	4
	.word	_Label_2509
	.word	-108
	.word	4
	.word	_Label_2510
	.word	-112
	.word	4
	.word	_Label_2511
	.word	-116
	.word	4
	.word	_Label_2512
	.word	-120
	.word	4
	.word	_Label_2513
	.word	-124
	.word	4
	.word	_Label_2514
	.word	-128
	.word	4
	.word	_Label_2515
	.word	-132
	.word	4
	.word	_Label_2516
	.word	-136
	.word	4
	.word	_Label_2517
	.word	-140
	.word	4
	.word	_Label_2518
	.word	-144
	.word	4
	.word	_Label_2519
	.word	-148
	.word	4
	.word	_Label_2520
	.word	-152
	.word	4
	.word	_Label_2521
	.word	-156
	.word	4
	.word	_Label_2522
	.word	-160
	.word	4
	.word	_Label_2523
	.word	-164
	.word	4
	.word	_Label_2524
	.word	-168
	.word	4
	.word	_Label_2525
	.word	-172
	.word	4
	.word	_Label_2526
	.word	-176
	.word	4
	.word	_Label_2527
	.word	-180
	.word	4
	.word	_Label_2528
	.word	-184
	.word	4
	.word	0
_Label_2482:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2483:
	.ascii	"Pself\0"
	.align
_Label_2484:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2528:
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
_Label_4284:
	push	r0
	sub	r1,1,r1
	bne	_Label_4284
	mov	1026,r13		! source line 1026
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_2529 = &processManagerLock
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
	mov	1032,r13		! source line 1032
	mov	"\0\0WH",r10
_Label_2530:
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2534 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2533 = *_temp_2534  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2533 == 2 then goto _Label_2532		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2532
!	jmp	_Label_2531
_Label_2531:
	mov	1032,r13		! source line 1032
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_2535 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2536 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2535  sizeInBytes=4
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
	jmp	_Label_2530
_Label_2532:
! ASSIGNMENT STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2537 = PCB + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exit_status = *_temp_2537  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2538 = PCB + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2538 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0SE",r10
!   _temp_2539 = &freeList
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
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_2540 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2541 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2540  sizeInBytes=4
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
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_2542 = &processManagerLock
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
	mov	1042,r13		! source line 1042
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
	.word	_Label_2543
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2545
	.word	12
	.word	4
	.word	_Label_2546
	.word	-12
	.word	4
	.word	_Label_2547
	.word	-16
	.word	4
	.word	_Label_2548
	.word	-20
	.word	4
	.word	_Label_2549
	.word	-24
	.word	4
	.word	_Label_2550
	.word	-28
	.word	4
	.word	_Label_2551
	.word	-32
	.word	4
	.word	_Label_2552
	.word	-36
	.word	4
	.word	_Label_2553
	.word	-40
	.word	4
	.word	_Label_2554
	.word	-44
	.word	4
	.word	_Label_2555
	.word	-48
	.word	4
	.word	_Label_2556
	.word	-52
	.word	4
	.word	_Label_2557
	.word	-56
	.word	4
	.word	0
_Label_2543:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2544:
	.ascii	"Pself\0"
	.align
_Label_2545:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2557:
	.byte	'I'
	.ascii	"exit_status\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2558
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2558:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2559
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2559:
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
_Label_4285:
	push	r0
	sub	r1,1,r1
	bne	_Label_4285
	mov	1086,r13		! source line 1086
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2560 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2560  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1092,r13		! source line 1092
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
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
	mov	1094,r13		! source line 1094
	mov	"\0\0SE",r10
!   _temp_2562 = &framesInUse
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
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
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
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   _temp_2564 = &frameManagerLock
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
	mov	1098,r13		! source line 1098
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
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_2566 = &newFramesAvailable
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
	mov	1105,r13		! source line 1105
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2571 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2572 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2571  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2567:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2572 then goto _Label_2570		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2570
_Label_2568:
	mov	1105,r13		! source line 1105
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2575 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2575) then goto _Label_2574
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2574
!	jmp	_Label_2573
_Label_2573:
! THEN...
	mov	1109,r13		! source line 1109
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2576 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2576  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1109,r13		! source line 1109
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2574:
!   Increment the FOR-LOOP index variable and jump back
_Label_2569:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2567
! END FOR
_Label_2570:
! RETURN STATEMENT...
	mov	1105,r13		! source line 1105
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
	.word	_Label_2577
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2578
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2579
	.word	-12
	.word	4
	.word	_Label_2580
	.word	-16
	.word	4
	.word	_Label_2581
	.word	-20
	.word	4
	.word	_Label_2582
	.word	-24
	.word	4
	.word	_Label_2583
	.word	-28
	.word	4
	.word	_Label_2584
	.word	-32
	.word	4
	.word	_Label_2585
	.word	-36
	.word	4
	.word	_Label_2586
	.word	-40
	.word	4
	.word	_Label_2587
	.word	-44
	.word	4
	.word	_Label_2588
	.word	-48
	.word	4
	.word	_Label_2589
	.word	-52
	.word	4
	.word	_Label_2590
	.word	-56
	.word	4
	.word	0
_Label_2577:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2578:
	.ascii	"Pself\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2590:
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
_Label_4286:
	push	r0
	sub	r1,1,r1
	bne	_Label_4286
	mov	1116,r13		! source line 1116
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_2591 = &frameManagerLock
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
!   _temp_2592 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2592  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2593 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2593  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1122,r13		! source line 1122
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2594 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2594  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_2595 = &framesInUse
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
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_2596 = &frameManagerLock
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
	mov	1125,r13		! source line 1125
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
	.word	_Label_2597
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2599
	.word	-12
	.word	4
	.word	_Label_2600
	.word	-16
	.word	4
	.word	_Label_2601
	.word	-20
	.word	4
	.word	_Label_2602
	.word	-24
	.word	4
	.word	_Label_2603
	.word	-28
	.word	4
	.word	_Label_2604
	.word	-32
	.word	4
	.word	0
_Label_2597:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2598:
	.ascii	"Pself\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2591\0"
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
_Label_4287:
	push	r0
	sub	r1,1,r1
	bne	_Label_4287
	mov	1130,r13		! source line 1130
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_2605 = &frameManagerLock
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
	mov	1141,r13		! source line 1141
	mov	"\0\0WH",r10
_Label_2606:
!   if numberFreeFrames >= 1 then goto _Label_2608		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2608
!	jmp	_Label_2607
_Label_2607:
	mov	1141,r13		! source line 1141
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
!   _temp_2609 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2610 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2609  sizeInBytes=4
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
	jmp	_Label_2606
_Label_2608:
! ASSIGNMENT STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0AS",r10
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_2611 = &framesInUse
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
	mov	1147,r13		! source line 1147
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
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_2612 = &frameManagerLock
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
	mov	1153,r13		! source line 1153
	mov	"\0\0AS",r10
!   _temp_2613 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2613		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1155,r13		! source line 1155
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
	.word	_Label_2614
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2616
	.word	-12
	.word	4
	.word	_Label_2617
	.word	-16
	.word	4
	.word	_Label_2618
	.word	-20
	.word	4
	.word	_Label_2619
	.word	-24
	.word	4
	.word	_Label_2620
	.word	-28
	.word	4
	.word	_Label_2621
	.word	-32
	.word	4
	.word	_Label_2622
	.word	-36
	.word	4
	.word	_Label_2623
	.word	-40
	.word	4
	.word	0
_Label_2614:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2615:
	.ascii	"Pself\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2622:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2623:
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
_Label_4288:
	push	r0
	sub	r1,1,r1
	bne	_Label_4288
	mov	1160,r13		! source line 1160
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_2624 = &frameManagerLock
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
	mov	1163,r13		! source line 1163
	mov	"\0\0WH",r10
_Label_2625:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2627		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2627
!	jmp	_Label_2626
_Label_2626:
	mov	1163,r13		! source line 1163
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_2628 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2629 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2628  sizeInBytes=4
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
	jmp	_Label_2625
_Label_2627:
! FOR STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2634 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2635 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2634  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2630:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2635 then goto _Label_2633		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2633
_Label_2631:
	mov	1166,r13		! source line 1166
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_2636 = &framesInUse
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
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
!   _temp_2637 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2637		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1169,r13		! source line 1169
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
_Label_2632:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2630
! END FOR
_Label_2633:
! ASSIGNMENT STATEMENT...
	mov	1171,r13		! source line 1171
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
	mov	1172,r13		! source line 1172
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2638 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2638 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_2639 = &frameManagerLock
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
	mov	1173,r13		! source line 1173
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
	.word	_Label_2640
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2642
	.word	12
	.word	4
	.word	_Label_2643
	.word	16
	.word	4
	.word	_Label_2644
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_2650
	.word	-36
	.word	4
	.word	_Label_2651
	.word	-40
	.word	4
	.word	_Label_2652
	.word	-44
	.word	4
	.word	_Label_2653
	.word	-48
	.word	4
	.word	_Label_2654
	.word	-52
	.word	4
	.word	_Label_2655
	.word	-56
	.word	4
	.word	0
_Label_2640:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2641:
	.ascii	"Pself\0"
	.align
_Label_2642:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2643:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
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
	.ascii	"_temp_2629\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2653:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2654:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2655:
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
_Label_4289:
	push	r0
	sub	r1,1,r1
	bne	_Label_4289
	mov	1178,r13		! source line 1178
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
!   _temp_2656 = &frameManagerLock
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
	mov	1184,r13		! source line 1184
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2661 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2664 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2663 = *_temp_2664  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2662 = _temp_2663 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2661  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2657:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2662 then goto _Label_2660		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2660
_Label_2658:
	mov	1184,r13		! source line 1184
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0AS",r10
	mov	1185,r13		! source line 1185
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
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   _temp_2665 = frameAddr - 1048576		(int)
	load	[r14+-68],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitIndex = _temp_2665 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   _temp_2666 = &framesInUse
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
_Label_2659:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2657
! END FOR
_Label_2660:
! ASSIGNMENT STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2668 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2667 = *_temp_2668  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2667		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
!   _temp_2669 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2670 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2669  sizeInBytes=4
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
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_2671 = &frameManagerLock
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
	mov	1191,r13		! source line 1191
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
	.word	_Label_2672
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2673
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2674
	.word	12
	.word	4
	.word	_Label_2675
	.word	-12
	.word	4
	.word	_Label_2676
	.word	-16
	.word	4
	.word	_Label_2677
	.word	-20
	.word	4
	.word	_Label_2678
	.word	-24
	.word	4
	.word	_Label_2679
	.word	-28
	.word	4
	.word	_Label_2680
	.word	-32
	.word	4
	.word	_Label_2681
	.word	-36
	.word	4
	.word	_Label_2682
	.word	-40
	.word	4
	.word	_Label_2683
	.word	-44
	.word	4
	.word	_Label_2684
	.word	-48
	.word	4
	.word	_Label_2685
	.word	-52
	.word	4
	.word	_Label_2686
	.word	-56
	.word	4
	.word	_Label_2687
	.word	-60
	.word	4
	.word	_Label_2688
	.word	-64
	.word	4
	.word	_Label_2689
	.word	-68
	.word	4
	.word	0
_Label_2672:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2673:
	.ascii	"Pself\0"
	.align
_Label_2674:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2687:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"bitIndex\0"
	.align
_Label_2689:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2690
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
_Label_2690:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2691
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2691:
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
_Label_4290:
	push	r0
	sub	r1,1,r1
	bne	_Label_4290
	mov	1201,r13		! source line 1201
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   _temp_2692 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2694 = &_temp_2693
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2694 = _temp_2694 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2696:
!   Data Move: *_temp_2694 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2694 = _temp_2694 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2695 = _temp_2695 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2695) then goto _Label_2696
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2696
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2697 = &_temp_2693
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4291
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4291:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2692 = *_temp_2697  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4292:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4292
! RETURN STATEMENT...
	mov	1206,r13		! source line 1206
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
	.word	_Label_2698
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2700
	.word	-12
	.word	4
	.word	_Label_2701
	.word	-16
	.word	4
	.word	_Label_2702
	.word	-20
	.word	4
	.word	_Label_2703
	.word	-104
	.word	84
	.word	_Label_2704
	.word	-108
	.word	4
	.word	0
_Label_2698:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2699:
	.ascii	"Pself\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2692\0"
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
_Label_4293:
	push	r0
	sub	r1,1,r1
	bne	_Label_4293
	mov	1211,r13		! source line 1211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2705 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2705  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2706 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2706  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2711 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2712 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2711  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2707:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2712 then goto _Label_2710		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2710
_Label_2708:
	mov	1218,r13		! source line 1218
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2713 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2713  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2715 [i ] into _temp_2716
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
!   _temp_2714 = _temp_2716		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2714  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2717 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2717  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2719 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2719 [i ] into _temp_2720
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
!   Data Move: _temp_2718 = *_temp_2720  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2718  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2721 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2721  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2722 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2722  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2723 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2723  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2725) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2724  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2724  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2726 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2726  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0IF",r10
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2730) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2729  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2729) then goto _Label_2728
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2728
!	jmp	_Label_2727
_Label_2727:
! THEN...
	mov	1229,r13		! source line 1229
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2732) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2731  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2731  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2733
_Label_2728:
! ELSE...
	mov	1231,r13		! source line 1231
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2734 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2734  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2733:
! CALL STATEMENT...
!   _temp_2735 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2735  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0IF",r10
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2738) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2736 else goto _Label_2737
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2737
	jmp	_Label_2736
_Label_2736:
! THEN...
	mov	1235,r13		! source line 1235
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2739 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2739  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2740
_Label_2737:
! ELSE...
	mov	1237,r13		! source line 1237
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2741 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2741  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2740:
! CALL STATEMENT...
!   _temp_2742 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2742  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0IF",r10
	mov	1240,r13		! source line 1240
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2745) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2743 else goto _Label_2744
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2744
	jmp	_Label_2743
_Label_2743:
! THEN...
	mov	1241,r13		! source line 1241
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2746 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2746  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2747
_Label_2744:
! ELSE...
	mov	1243,r13		! source line 1243
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2748 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2748  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2747:
! CALL STATEMENT...
!   _temp_2749 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2749  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0IF",r10
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2752) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2750 else goto _Label_2751
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2751
	jmp	_Label_2750
_Label_2750:
! THEN...
	mov	1247,r13		! source line 1247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2753 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2753  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2754
_Label_2751:
! ELSE...
	mov	1249,r13		! source line 1249
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2755 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2755  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2754:
! CALL STATEMENT...
!   _temp_2756 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2756  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0IF",r10
	mov	1252,r13		! source line 1252
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2759) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2757 else goto _Label_2758
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2758
	jmp	_Label_2757
_Label_2757:
! THEN...
	mov	1253,r13		! source line 1253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2760 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2760  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2761
_Label_2758:
! ELSE...
	mov	1255,r13		! source line 1255
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2762 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2762  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2761:
! CALL STATEMENT...
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2709:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2707
! END FOR
_Label_2710:
! RETURN STATEMENT...
	mov	1218,r13		! source line 1218
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
	.word	_Label_2763
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2765
	.word	-12
	.word	4
	.word	_Label_2766
	.word	-16
	.word	4
	.word	_Label_2767
	.word	-20
	.word	4
	.word	_Label_2768
	.word	-24
	.word	4
	.word	_Label_2769
	.word	-28
	.word	4
	.word	_Label_2770
	.word	-32
	.word	4
	.word	_Label_2771
	.word	-36
	.word	4
	.word	_Label_2772
	.word	-40
	.word	4
	.word	_Label_2773
	.word	-44
	.word	4
	.word	_Label_2774
	.word	-48
	.word	4
	.word	_Label_2775
	.word	-52
	.word	4
	.word	_Label_2776
	.word	-56
	.word	4
	.word	_Label_2777
	.word	-60
	.word	4
	.word	_Label_2778
	.word	-64
	.word	4
	.word	_Label_2779
	.word	-68
	.word	4
	.word	_Label_2780
	.word	-72
	.word	4
	.word	_Label_2781
	.word	-76
	.word	4
	.word	_Label_2782
	.word	-80
	.word	4
	.word	_Label_2783
	.word	-84
	.word	4
	.word	_Label_2784
	.word	-88
	.word	4
	.word	_Label_2785
	.word	-92
	.word	4
	.word	_Label_2786
	.word	-96
	.word	4
	.word	_Label_2787
	.word	-100
	.word	4
	.word	_Label_2788
	.word	-104
	.word	4
	.word	_Label_2789
	.word	-108
	.word	4
	.word	_Label_2790
	.word	-112
	.word	4
	.word	_Label_2791
	.word	-116
	.word	4
	.word	_Label_2792
	.word	-120
	.word	4
	.word	_Label_2793
	.word	-124
	.word	4
	.word	_Label_2794
	.word	-128
	.word	4
	.word	_Label_2795
	.word	-132
	.word	4
	.word	_Label_2796
	.word	-136
	.word	4
	.word	_Label_2797
	.word	-140
	.word	4
	.word	_Label_2798
	.word	-144
	.word	4
	.word	_Label_2799
	.word	-148
	.word	4
	.word	_Label_2800
	.word	-152
	.word	4
	.word	_Label_2801
	.word	-156
	.word	4
	.word	_Label_2802
	.word	-160
	.word	4
	.word	_Label_2803
	.word	-164
	.word	4
	.word	_Label_2804
	.word	-168
	.word	4
	.word	0
_Label_2763:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2764:
	.ascii	"Pself\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2804:
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
_Label_4294:
	push	r0
	sub	r1,1,r1
	bne	_Label_4294
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0RE",r10
!   _temp_2807 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2807 [entry ] into _temp_2808
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
!   Data Move: _temp_2806 = *_temp_2808  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2805 = _temp_2806 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2805  (sizeInBytes=4)
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
	.word	_Label_2809
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2811
	.word	12
	.word	4
	.word	_Label_2812
	.word	-12
	.word	4
	.word	_Label_2813
	.word	-16
	.word	4
	.word	_Label_2814
	.word	-20
	.word	4
	.word	_Label_2815
	.word	-24
	.word	4
	.word	0
_Label_2809:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2810:
	.ascii	"Pself\0"
	.align
_Label_2811:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2805\0"
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
_Label_4295:
	push	r0
	sub	r1,1,r1
	bne	_Label_4295
	mov	1273,r13		! source line 1273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0RE",r10
!   _temp_2818 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2818 [entry ] into _temp_2819
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
!   Data Move: _temp_2817 = *_temp_2819  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2816 = _temp_2817 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2816  (sizeInBytes=4)
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
	.word	_Label_2820
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2822
	.word	12
	.word	4
	.word	_Label_2823
	.word	-12
	.word	4
	.word	_Label_2824
	.word	-16
	.word	4
	.word	_Label_2825
	.word	-20
	.word	4
	.word	_Label_2826
	.word	-24
	.word	4
	.word	0
_Label_2820:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2821:
	.ascii	"Pself\0"
	.align
_Label_2822:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2816\0"
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
_Label_4296:
	push	r0
	sub	r1,1,r1
	bne	_Label_4296
	mov	1282,r13		! source line 1282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0AS",r10
!   _temp_2827 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2827 [entry ] into _temp_2828
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
!   _temp_2832 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2832 [entry ] into _temp_2833
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
!   Data Move: _temp_2831 = *_temp_2833  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2830 = _temp_2831 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2829 = _temp_2830 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2828 = _temp_2829  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1287,r13		! source line 1287
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
	.word	_Label_2834
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2836
	.word	12
	.word	4
	.word	_Label_2837
	.word	16
	.word	4
	.word	_Label_2838
	.word	-12
	.word	4
	.word	_Label_2839
	.word	-16
	.word	4
	.word	_Label_2840
	.word	-20
	.word	4
	.word	_Label_2841
	.word	-24
	.word	4
	.word	_Label_2842
	.word	-28
	.word	4
	.word	_Label_2843
	.word	-32
	.word	4
	.word	_Label_2844
	.word	-36
	.word	4
	.word	0
_Label_2834:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2835:
	.ascii	"Pself\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2827\0"
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
_Label_4297:
	push	r0
	sub	r1,1,r1
	bne	_Label_4297
	mov	1292,r13		! source line 1292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0RE",r10
!   _temp_2848 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2848 [entry ] into _temp_2849
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
!   Data Move: _temp_2847 = *_temp_2849  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2846 = _temp_2847 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2846) then goto _Label_2850
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2850
!   _temp_2845 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2851
_Label_2850:
!   _temp_2845 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2851:
!   ReturnResult: _temp_2845  (sizeInBytes=1)
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
	.word	_Label_2852
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2854
	.word	12
	.word	4
	.word	_Label_2855
	.word	-16
	.word	4
	.word	_Label_2856
	.word	-20
	.word	4
	.word	_Label_2857
	.word	-24
	.word	4
	.word	_Label_2858
	.word	-28
	.word	4
	.word	_Label_2859
	.word	-9
	.word	1
	.word	0
_Label_2852:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2853:
	.ascii	"Pself\0"
	.align
_Label_2854:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2859:
	.byte	'C'
	.ascii	"_temp_2845\0"
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
_Label_4298:
	push	r0
	sub	r1,1,r1
	bne	_Label_4298
	mov	1301,r13		! source line 1301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0RE",r10
!   _temp_2863 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2863 [entry ] into _temp_2864
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
!   Data Move: _temp_2862 = *_temp_2864  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2861 = _temp_2862 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2861) then goto _Label_2865
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2865
!   _temp_2860 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2866
_Label_2865:
!   _temp_2860 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2866:
!   ReturnResult: _temp_2860  (sizeInBytes=1)
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
	.word	_Label_2867
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2869
	.word	12
	.word	4
	.word	_Label_2870
	.word	-16
	.word	4
	.word	_Label_2871
	.word	-20
	.word	4
	.word	_Label_2872
	.word	-24
	.word	4
	.word	_Label_2873
	.word	-28
	.word	4
	.word	_Label_2874
	.word	-9
	.word	1
	.word	0
_Label_2867:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2868:
	.ascii	"Pself\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2874:
	.byte	'C'
	.ascii	"_temp_2860\0"
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
_Label_4299:
	push	r0
	sub	r1,1,r1
	bne	_Label_4299
	mov	1310,r13		! source line 1310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0RE",r10
!   _temp_2878 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2878 [entry ] into _temp_2879
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
!   Data Move: _temp_2877 = *_temp_2879  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2876 = _temp_2877 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2876) then goto _Label_2880
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2880
!   _temp_2875 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2881
_Label_2880:
!   _temp_2875 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2881:
!   ReturnResult: _temp_2875  (sizeInBytes=1)
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
	.word	_Label_2882
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2884
	.word	12
	.word	4
	.word	_Label_2885
	.word	-16
	.word	4
	.word	_Label_2886
	.word	-20
	.word	4
	.word	_Label_2887
	.word	-24
	.word	4
	.word	_Label_2888
	.word	-28
	.word	4
	.word	_Label_2889
	.word	-9
	.word	1
	.word	0
_Label_2882:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2883:
	.ascii	"Pself\0"
	.align
_Label_2884:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2889:
	.byte	'C'
	.ascii	"_temp_2875\0"
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
_Label_4300:
	push	r0
	sub	r1,1,r1
	bne	_Label_4300
	mov	1319,r13		! source line 1319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0RE",r10
!   _temp_2893 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2893 [entry ] into _temp_2894
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
!   Data Move: _temp_2892 = *_temp_2894  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2891 = _temp_2892 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2891) then goto _Label_2895
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2895
!   _temp_2890 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2896
_Label_2895:
!   _temp_2890 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2896:
!   ReturnResult: _temp_2890  (sizeInBytes=1)
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
	.word	_Label_2897
	.word	8		! total size of parameters
	.word	20		! frame size = 20
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
	.word	-9
	.word	1
	.word	0
_Label_2897:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2898:
	.ascii	"Pself\0"
	.align
_Label_2899:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2904:
	.byte	'C'
	.ascii	"_temp_2890\0"
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
_Label_4301:
	push	r0
	sub	r1,1,r1
	bne	_Label_4301
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
!   _temp_2905 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2905 [entry ] into _temp_2906
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
!   _temp_2909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2909 [entry ] into _temp_2910
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
!   Data Move: _temp_2908 = *_temp_2910  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2907 = _temp_2908 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2906 = _temp_2907  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1332,r13		! source line 1332
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
	.word	_Label_2911
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2913
	.word	12
	.word	4
	.word	_Label_2914
	.word	-12
	.word	4
	.word	_Label_2915
	.word	-16
	.word	4
	.word	_Label_2916
	.word	-20
	.word	4
	.word	_Label_2917
	.word	-24
	.word	4
	.word	_Label_2918
	.word	-28
	.word	4
	.word	_Label_2919
	.word	-32
	.word	4
	.word	0
_Label_2911:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2912:
	.ascii	"Pself\0"
	.align
_Label_2913:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2905\0"
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
_Label_4302:
	push	r0
	sub	r1,1,r1
	bne	_Label_4302
	mov	1337,r13		! source line 1337
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   _temp_2920 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2920 [entry ] into _temp_2921
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
!   _temp_2924 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2924 [entry ] into _temp_2925
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
!   Data Move: _temp_2923 = *_temp_2925  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2922 = _temp_2923 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2921 = _temp_2922  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1341,r13		! source line 1341
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
	.word	_Label_2926
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2928
	.word	12
	.word	4
	.word	_Label_2929
	.word	-12
	.word	4
	.word	_Label_2930
	.word	-16
	.word	4
	.word	_Label_2931
	.word	-20
	.word	4
	.word	_Label_2932
	.word	-24
	.word	4
	.word	_Label_2933
	.word	-28
	.word	4
	.word	_Label_2934
	.word	-32
	.word	4
	.word	0
_Label_2926:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2927:
	.ascii	"Pself\0"
	.align
_Label_2928:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2920\0"
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
_Label_4303:
	push	r0
	sub	r1,1,r1
	bne	_Label_4303
	mov	1346,r13		! source line 1346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0AS",r10
!   _temp_2935 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2935 [entry ] into _temp_2936
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
!   _temp_2939 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2939 [entry ] into _temp_2940
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
!   Data Move: _temp_2938 = *_temp_2940  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2937 = _temp_2938 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2936 = _temp_2937  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1350,r13		! source line 1350
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
	.word	_Label_2941
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2943
	.word	12
	.word	4
	.word	_Label_2944
	.word	-12
	.word	4
	.word	_Label_2945
	.word	-16
	.word	4
	.word	_Label_2946
	.word	-20
	.word	4
	.word	_Label_2947
	.word	-24
	.word	4
	.word	_Label_2948
	.word	-28
	.word	4
	.word	_Label_2949
	.word	-32
	.word	4
	.word	0
_Label_2941:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2942:
	.ascii	"Pself\0"
	.align
_Label_2943:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2935\0"
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
_Label_4304:
	push	r0
	sub	r1,1,r1
	bne	_Label_4304
	mov	1355,r13		! source line 1355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0AS",r10
!   _temp_2950 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2950 [entry ] into _temp_2951
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
!   _temp_2954 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2954 [entry ] into _temp_2955
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
!   Data Move: _temp_2953 = *_temp_2955  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2952 = _temp_2953 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2951 = _temp_2952  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1359,r13		! source line 1359
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
	.word	_Label_2956
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2958
	.word	12
	.word	4
	.word	_Label_2959
	.word	-12
	.word	4
	.word	_Label_2960
	.word	-16
	.word	4
	.word	_Label_2961
	.word	-20
	.word	4
	.word	_Label_2962
	.word	-24
	.word	4
	.word	_Label_2963
	.word	-28
	.word	4
	.word	_Label_2964
	.word	-32
	.word	4
	.word	0
_Label_2956:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2957:
	.ascii	"Pself\0"
	.align
_Label_2958:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2950\0"
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
_Label_4305:
	push	r0
	sub	r1,1,r1
	bne	_Label_4305
	mov	1364,r13		! source line 1364
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0AS",r10
!   _temp_2965 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2965 [entry ] into _temp_2966
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
!   _temp_2969 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2969 [entry ] into _temp_2970
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
!   Data Move: _temp_2968 = *_temp_2970  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2967 = _temp_2968 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2966 = _temp_2967  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1368,r13		! source line 1368
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
	.word	_Label_2971
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2973
	.word	12
	.word	4
	.word	_Label_2974
	.word	-12
	.word	4
	.word	_Label_2975
	.word	-16
	.word	4
	.word	_Label_2976
	.word	-20
	.word	4
	.word	_Label_2977
	.word	-24
	.word	4
	.word	_Label_2978
	.word	-28
	.word	4
	.word	_Label_2979
	.word	-32
	.word	4
	.word	0
_Label_2971:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2972:
	.ascii	"Pself\0"
	.align
_Label_2973:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2965\0"
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
_Label_4306:
	push	r0
	sub	r1,1,r1
	bne	_Label_4306
	mov	1373,r13		! source line 1373
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0AS",r10
!   _temp_2980 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2980 [entry ] into _temp_2981
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
!   _temp_2984 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2984 [entry ] into _temp_2985
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
!   Data Move: _temp_2983 = *_temp_2985  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2982 = _temp_2983 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2981 = _temp_2982  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
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
	.word	_Label_2986
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2987
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2988
	.word	12
	.word	4
	.word	_Label_2989
	.word	-12
	.word	4
	.word	_Label_2990
	.word	-16
	.word	4
	.word	_Label_2991
	.word	-20
	.word	4
	.word	_Label_2992
	.word	-24
	.word	4
	.word	_Label_2993
	.word	-28
	.word	4
	.word	_Label_2994
	.word	-32
	.word	4
	.word	0
_Label_2986:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2987:
	.ascii	"Pself\0"
	.align
_Label_2988:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2980\0"
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
_Label_4307:
	push	r0
	sub	r1,1,r1
	bne	_Label_4307
	mov	1382,r13		! source line 1382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0AS",r10
!   _temp_2995 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2995 [entry ] into _temp_2996
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
!   _temp_2999 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2999 [entry ] into _temp_3000
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
!   Data Move: _temp_2998 = *_temp_3000  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2997 = _temp_2998 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2996 = _temp_2997  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1386,r13		! source line 1386
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
	.word	_Label_3001
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3003
	.word	12
	.word	4
	.word	_Label_3004
	.word	-12
	.word	4
	.word	_Label_3005
	.word	-16
	.word	4
	.word	_Label_3006
	.word	-20
	.word	4
	.word	_Label_3007
	.word	-24
	.word	4
	.word	_Label_3008
	.word	-28
	.word	4
	.word	_Label_3009
	.word	-32
	.word	4
	.word	0
_Label_3001:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3002:
	.ascii	"Pself\0"
	.align
_Label_3003:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2995\0"
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
_Label_4308:
	push	r0
	sub	r1,1,r1
	bne	_Label_4308
	mov	1391,r13		! source line 1391
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   _temp_3010 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3010 [entry ] into _temp_3011
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
!   _temp_3014 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3014 [entry ] into _temp_3015
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
!   Data Move: _temp_3013 = *_temp_3015  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3012 = _temp_3013 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3011 = _temp_3012  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1395,r13		! source line 1395
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
	.word	_Label_3016
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3018
	.word	12
	.word	4
	.word	_Label_3019
	.word	-12
	.word	4
	.word	_Label_3020
	.word	-16
	.word	4
	.word	_Label_3021
	.word	-20
	.word	4
	.word	_Label_3022
	.word	-24
	.word	4
	.word	_Label_3023
	.word	-28
	.word	4
	.word	_Label_3024
	.word	-32
	.word	4
	.word	0
_Label_3016:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3017:
	.ascii	"Pself\0"
	.align
_Label_3018:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3010\0"
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
_Label_4309:
	push	r0
	sub	r1,1,r1
	bne	_Label_4309
	mov	1400,r13		! source line 1400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3026 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3026 [0 ] into _temp_3027
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
!   _temp_3025 = _temp_3027		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3028 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3025  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3028  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
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
	.word	_Label_3029
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3031
	.word	-12
	.word	4
	.word	_Label_3032
	.word	-16
	.word	4
	.word	_Label_3033
	.word	-20
	.word	4
	.word	_Label_3034
	.word	-24
	.word	4
	.word	0
_Label_3029:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3030:
	.ascii	"Pself\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3025\0"
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
_Label_4310:
	push	r0
	sub	r1,1,r1
	bne	_Label_4310
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3035
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3035
	jmp	_Label_3036
_Label_3035:
! THEN...
	mov	1427,r13		! source line 1427
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3037
_Label_3036:
! ELSE...
	mov	1428,r13		! source line 1428
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3039		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3039
!	jmp	_Label_3038
_Label_3038:
! THEN...
	mov	1429,r13		! source line 1429
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3039:
! END IF...
_Label_3037:
! ASSIGNMENT STATEMENT...
	mov	1431,r13		! source line 1431
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
	mov	1432,r13		! source line 1432
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
	mov	1435,r13		! source line 1435
	mov	"\0\0WH",r10
_Label_3040:
!	jmp	_Label_3041
_Label_3041:
	mov	1435,r13		! source line 1435
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3044		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3044
!	jmp	_Label_3043
_Label_3043:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3045 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3045  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1437,r13		! source line 1437
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3044:
! IF STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0IF",r10
	mov	1440,r13		! source line 1440
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3049) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3048  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3048 then goto _Label_3047 else goto _Label_3046
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3046
	jmp	_Label_3047
_Label_3046:
! THEN...
	mov	1441,r13		! source line 1441
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3050 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3050  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3047:
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
	mov	1444,r13		! source line 1444
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3052) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3051  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3051 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0WH",r10
_Label_3053:
!   if offset >= 8192 then goto _Label_3055		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3055
!	jmp	_Label_3054
_Label_3054:
	mov	1446,r13		! source line 1446
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3056 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3056  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3058		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3058
!	jmp	_Label_3057
_Label_3057:
! THEN...
	mov	1455,r13		! source line 1455
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3058:
! END WHILE...
	jmp	_Label_3053
_Label_3055:
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_3040
_Label_3042:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3059
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3060
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3061
	.word	12
	.word	4
	.word	_Label_3062
	.word	16
	.word	4
	.word	_Label_3063
	.word	20
	.word	4
	.word	_Label_3064
	.word	-9
	.word	1
	.word	_Label_3065
	.word	-16
	.word	4
	.word	_Label_3066
	.word	-20
	.word	4
	.word	_Label_3067
	.word	-24
	.word	4
	.word	_Label_3068
	.word	-28
	.word	4
	.word	_Label_3069
	.word	-10
	.word	1
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
	.word	0
_Label_3059:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3060:
	.ascii	"Pself\0"
	.align
_Label_3061:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3062:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3063:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3064:
	.byte	'C'
	.ascii	"_temp_3056\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3069:
	.byte	'C'
	.ascii	"_temp_3048\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3071:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3072:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3073:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3074:
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
_Label_4311:
	push	r0
	sub	r1,1,r1
	bne	_Label_4311
	mov	1465,r13		! source line 1465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3075
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3075
	jmp	_Label_3076
_Label_3075:
! THEN...
	mov	1477,r13		! source line 1477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3077
_Label_3076:
! ELSE...
	mov	1478,r13		! source line 1478
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3079		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3079
!	jmp	_Label_3078
_Label_3078:
! THEN...
	mov	1479,r13		! source line 1479
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3079:
! END IF...
_Label_3077:
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
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
	mov	1482,r13		! source line 1482
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
	mov	1483,r13		! source line 1483
	mov	"\0\0WH",r10
_Label_3080:
!	jmp	_Label_3081
_Label_3081:
	mov	1483,r13		! source line 1483
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3086		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3086
	jmp	_Label_3083
_Label_3086:
	mov	1485,r13		! source line 1485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3088) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3087  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3087 then goto _Label_3085 else goto _Label_3083
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3083
	jmp	_Label_3085
_Label_3085:
	mov	1486,r13		! source line 1486
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3090) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3089  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3089 then goto _Label_3084 else goto _Label_3083
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3083
	jmp	_Label_3084
_Label_3083:
! THEN...
	mov	1487,r13		! source line 1487
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3084:
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
	mov	1489,r13		! source line 1489
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3092) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3091  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3091 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0WH",r10
_Label_3093:
!   if offset >= 8192 then goto _Label_3095		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3095
!	jmp	_Label_3094
_Label_3094:
	mov	1490,r13		! source line 1490
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3096 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3096  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3098		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3098
!	jmp	_Label_3097
_Label_3097:
! THEN...
	mov	1497,r13		! source line 1497
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3098:
! END WHILE...
	jmp	_Label_3093
_Label_3095:
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_3080
_Label_3082:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3099
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3100
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3101
	.word	12
	.word	4
	.word	_Label_3102
	.word	16
	.word	4
	.word	_Label_3103
	.word	20
	.word	4
	.word	_Label_3104
	.word	-9
	.word	1
	.word	_Label_3105
	.word	-16
	.word	4
	.word	_Label_3106
	.word	-20
	.word	4
	.word	_Label_3107
	.word	-24
	.word	4
	.word	_Label_3108
	.word	-10
	.word	1
	.word	_Label_3109
	.word	-28
	.word	4
	.word	_Label_3110
	.word	-11
	.word	1
	.word	_Label_3111
	.word	-32
	.word	4
	.word	_Label_3112
	.word	-36
	.word	4
	.word	_Label_3113
	.word	-40
	.word	4
	.word	_Label_3114
	.word	-44
	.word	4
	.word	0
_Label_3099:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3100:
	.ascii	"Pself\0"
	.align
_Label_3101:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3102:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3103:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3104:
	.byte	'C'
	.ascii	"_temp_3096\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3108:
	.byte	'C'
	.ascii	"_temp_3089\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3110:
	.byte	'C'
	.ascii	"_temp_3087\0"
	.align
_Label_3111:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3112:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3114:
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
_Label_4312:
	push	r0
	sub	r1,1,r1
	bne	_Label_4312
	mov	1507,r13		! source line 1507
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0IF",r10
	mov	1531,r13		! source line 1531
	mov	"\0\0SE",r10
!   _temp_3118 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3119) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3118  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3117  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3117 >= 4 then goto _Label_3116		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3116
!	jmp	_Label_3115
_Label_3115:
! THEN...
	mov	1534,r13		! source line 1534
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3116:
! IF STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3121		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3121
!	jmp	_Label_3120
_Label_3120:
! THEN...
	mov	1539,r13		! source line 1539
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3121:
! ASSIGNMENT STATEMENT...
	mov	1542,r13		! source line 1542
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
	mov	1544,r13		! source line 1544
	mov	"\0\0RE",r10
	mov	1544,r13		! source line 1544
	mov	"\0\0SE",r10
!   _temp_3124 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3123 = _temp_3124 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3125 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3126) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3123  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3125  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3122  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3122  (sizeInBytes=4)
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
	.word	_Label_3127
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3128
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3129
	.word	12
	.word	4
	.word	_Label_3130
	.word	16
	.word	4
	.word	_Label_3131
	.word	20
	.word	4
	.word	_Label_3132
	.word	-12
	.word	4
	.word	_Label_3133
	.word	-16
	.word	4
	.word	_Label_3134
	.word	-20
	.word	4
	.word	_Label_3135
	.word	-24
	.word	4
	.word	_Label_3136
	.word	-28
	.word	4
	.word	_Label_3137
	.word	-32
	.word	4
	.word	_Label_3138
	.word	-36
	.word	4
	.word	_Label_3139
	.word	-40
	.word	4
	.word	_Label_3140
	.word	-44
	.word	4
	.word	0
_Label_3127:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3128:
	.ascii	"Pself\0"
	.align
_Label_3129:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3130:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3131:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3140:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3141
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3141:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3142
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3142:
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
_Label_4313:
	push	r0
	sub	r1,1,r1
	bne	_Label_4313
	mov	2313,r13		! source line 2313
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3143 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3143  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2314,r13		! source line 2314
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
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
	mov	2322,r13		! source line 2322
	mov	"\0\0SE",r10
!   _temp_3145 = &semUsedInSynchMethods
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
	mov	2323,r13		! source line 2323
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
	mov	2324,r13		! source line 2324
	mov	"\0\0SE",r10
!   _temp_3147 = &diskBusy
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
	mov	2324,r13		! source line 2324
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
	.word	_Label_3148
	.word	4		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_3148:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
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
_Label_4314:
	push	r0
	sub	r1,1,r1
	bne	_Label_4314
	mov	2329,r13		! source line 2329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0SE",r10
!   _temp_3155 = &diskBusy
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
	mov	2343,r13		! source line 2343
	mov	"\0\0WH",r10
_Label_3156:
!	jmp	_Label_3157
_Label_3157:
	mov	2343,r13		! source line 2343
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0SE",r10
!   _temp_3159 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3160) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3159  sizeInBytes=4
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
	mov	2347,r13		! source line 2347
	mov	"\0\0SE",r10
!   _temp_3161 = &semUsedInSynchMethods
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
	mov	2350,r13		! source line 2350
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3170 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3164
	cmp	r1,2
	be	_Label_3165
	cmp	r1,3
	be	_Label_3166
	cmp	r1,4
	be	_Label_3167
	cmp	r1,5
	be	_Label_3168
	cmp	r1,6
	be	_Label_3169
	jmp	_Label_3162
! CASE 1...
_Label_3164:
! SEND STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0SE",r10
!   _temp_3171 = &diskBusy
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
	mov	2353,r13		! source line 2353
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3165:
! CALL STATEMENT...
!   _temp_3172 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3172  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2355,r13		! source line 2355
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3166:
! CALL STATEMENT...
!   _temp_3173 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3173  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2357,r13		! source line 2357
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3167:
! CALL STATEMENT...
!   _temp_3174 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3174  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2359,r13		! source line 2359
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3168:
! BREAK STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0BR",r10
	jmp	_Label_3163
! CASE 6...
_Label_3169:
! CALL STATEMENT...
!   _temp_3175 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3175  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2365,r13		! source line 2365
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3162:
! CALL STATEMENT...
!   _temp_3176 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3176  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2367,r13		! source line 2367
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3163:
! END WHILE...
	jmp	_Label_3156
_Label_3158:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3177
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3178
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3179
	.word	12
	.word	4
	.word	_Label_3180
	.word	16
	.word	4
	.word	_Label_3181
	.word	20
	.word	4
	.word	_Label_3182
	.word	-12
	.word	4
	.word	_Label_3183
	.word	-16
	.word	4
	.word	_Label_3184
	.word	-20
	.word	4
	.word	_Label_3185
	.word	-24
	.word	4
	.word	_Label_3186
	.word	-28
	.word	4
	.word	_Label_3187
	.word	-32
	.word	4
	.word	_Label_3188
	.word	-36
	.word	4
	.word	_Label_3189
	.word	-40
	.word	4
	.word	_Label_3190
	.word	-44
	.word	4
	.word	_Label_3191
	.word	-48
	.word	4
	.word	_Label_3192
	.word	-52
	.word	4
	.word	0
_Label_3177:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3178:
	.ascii	"Pself\0"
	.align
_Label_3179:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3180:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3181:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3155\0"
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
	mov	2376,r13		! source line 2376
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
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
	mov	2395,r13		! source line 2395
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
	mov	2396,r13		! source line 2396
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
	mov	2397,r13		! source line 2397
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
	mov	2397,r13		! source line 2397
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
	.word	_Label_3193
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3194
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3195
	.word	12
	.word	4
	.word	_Label_3196
	.word	16
	.word	4
	.word	_Label_3197
	.word	20
	.word	4
	.word	_Label_3198
	.word	24
	.word	4
	.word	0
_Label_3193:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3194:
	.ascii	"Pself\0"
	.align
_Label_3195:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3196:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3197:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3198:
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
_Label_4315:
	push	r0
	sub	r1,1,r1
	bne	_Label_4315
	mov	2402,r13		! source line 2402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0SE",r10
!   _temp_3199 = &diskBusy
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
	mov	2415,r13		! source line 2415
	mov	"\0\0WH",r10
_Label_3200:
!	jmp	_Label_3201
_Label_3201:
	mov	2415,r13		! source line 2415
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_3203 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3204) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3203  sizeInBytes=4
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
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_3205 = &semUsedInSynchMethods
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
	mov	2421,r13		! source line 2421
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3214 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3208
	cmp	r1,2
	be	_Label_3209
	cmp	r1,3
	be	_Label_3210
	cmp	r1,4
	be	_Label_3211
	cmp	r1,5
	be	_Label_3212
	cmp	r1,6
	be	_Label_3213
	jmp	_Label_3206
! CASE 1...
_Label_3208:
! SEND STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0SE",r10
!   _temp_3215 = &diskBusy
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
	mov	2424,r13		! source line 2424
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3209:
! CALL STATEMENT...
!   _temp_3216 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3216  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2426,r13		! source line 2426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3210:
! CALL STATEMENT...
!   _temp_3217 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3217  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2428,r13		! source line 2428
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3211:
! CALL STATEMENT...
!   _temp_3218 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3218  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2430,r13		! source line 2430
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3212:
! BREAK STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0BR",r10
	jmp	_Label_3207
! CASE 6...
_Label_3213:
! CALL STATEMENT...
!   _temp_3219 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3219  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2436,r13		! source line 2436
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3206:
! CALL STATEMENT...
!   _temp_3220 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3220  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2438,r13		! source line 2438
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3207:
! END WHILE...
	jmp	_Label_3200
_Label_3202:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3221
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3222
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3223
	.word	12
	.word	4
	.word	_Label_3224
	.word	16
	.word	4
	.word	_Label_3225
	.word	20
	.word	4
	.word	_Label_3226
	.word	-12
	.word	4
	.word	_Label_3227
	.word	-16
	.word	4
	.word	_Label_3228
	.word	-20
	.word	4
	.word	_Label_3229
	.word	-24
	.word	4
	.word	_Label_3230
	.word	-28
	.word	4
	.word	_Label_3231
	.word	-32
	.word	4
	.word	_Label_3232
	.word	-36
	.word	4
	.word	_Label_3233
	.word	-40
	.word	4
	.word	_Label_3234
	.word	-44
	.word	4
	.word	_Label_3235
	.word	-48
	.word	4
	.word	_Label_3236
	.word	-52
	.word	4
	.word	0
_Label_3221:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3222:
	.ascii	"Pself\0"
	.align
_Label_3223:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3224:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3225:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3199\0"
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
	mov	2447,r13		! source line 2447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
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
	mov	2465,r13		! source line 2465
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
	mov	2466,r13		! source line 2466
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
	mov	2467,r13		! source line 2467
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
	mov	2467,r13		! source line 2467
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
	.word	_Label_3237
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3238
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3239
	.word	12
	.word	4
	.word	_Label_3240
	.word	16
	.word	4
	.word	_Label_3241
	.word	20
	.word	4
	.word	_Label_3242
	.word	24
	.word	4
	.word	0
_Label_3237:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3238:
	.ascii	"Pself\0"
	.align
_Label_3239:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3240:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3241:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3242:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3243
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
_Label_3243:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3244
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3244:
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
_Label_4316:
	push	r0
	sub	r1,1,r1
	bne	_Label_4316
	mov	2478,r13		! source line 2478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3245 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3245  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2485,r13		! source line 2485
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
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
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_3247 = &fileManagerLock
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
	mov	2490,r13		! source line 2490
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
	mov	2491,r13		! source line 2491
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
	mov	2492,r13		! source line 2492
	mov	"\0\0SE",r10
!   _temp_3250 = &anFCBBecameFree
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
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   _temp_3251 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3253 = &_temp_3252
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3253 = _temp_3253 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3255 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4317:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4317
!   _temp_3255 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3257:
!   Data Move: *_temp_3253 = _temp_3255  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4318:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4318
!   _temp_3253 = _temp_3253 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3254 = _temp_3254 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3254) then goto _Label_3257
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3257
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3258 = &_temp_3252
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4319
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4319:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3251 = *_temp_3258  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4320:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4320
! FOR STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3263 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3264 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3263  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3259:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3264 then goto _Label_3262		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3262
_Label_3260:
	mov	2495,r13		! source line 2495
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   _temp_3265 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3265 [i ] into _temp_3266
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
!   _temp_3267 = _temp_3266 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3267 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0SE",r10
!   _temp_3268 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3268 [i ] into _temp_3269
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
	mov	2498,r13		! source line 2498
	mov	"\0\0SE",r10
!   _temp_3271 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3271 [i ] into _temp_3272
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
!   _temp_3270 = _temp_3272		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3273 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3270  sizeInBytes=4
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
_Label_3261:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3259
! END FOR
_Label_3262:
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
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
	mov	2503,r13		! source line 2503
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
	mov	2504,r13		! source line 2504
	mov	"\0\0SE",r10
!   _temp_3276 = &anOpenFileBecameFree
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
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   _temp_3277 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3279 = &_temp_3278
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3279 = _temp_3279 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3281 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4321:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4321
!   _temp_3281 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3283:
!   Data Move: *_temp_3279 = _temp_3281  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4322:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4322
!   _temp_3279 = _temp_3279 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3280 = _temp_3280 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3280) then goto _Label_3283
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3283
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3284 = &_temp_3278
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4323
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4323:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3277 = *_temp_3284  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4324:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4324
! FOR STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3289 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3290 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3289  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3285:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3290 then goto _Label_3288		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3288
_Label_3286:
	mov	2507,r13		! source line 2507
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   _temp_3291 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3291 [i ] into _temp_3292
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
!   _temp_3293 = _temp_3292 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3293 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   _temp_3295 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3295 [i ] into _temp_3296
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
!   _temp_3294 = _temp_3296		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3297 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3294  sizeInBytes=4
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
_Label_3287:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3285
! END FOR
_Label_3288:
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4325:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4325
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   _temp_3299 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3300 = _temp_3299 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3300 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
	mov	2519,r13		! source line 2519
	mov	"\0\0SE",r10
!   _temp_3301 = &_P_Kernel_frameManager
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
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
!   _temp_3302 = &_P_Kernel_diskDriver
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
	mov	2520,r13		! source line 2520
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
	.word	_Label_3303
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3305
	.word	-12
	.word	4
	.word	_Label_3306
	.word	-16
	.word	4
	.word	_Label_3307
	.word	-20
	.word	4
	.word	_Label_3308
	.word	-24
	.word	4
	.word	_Label_3309
	.word	-28
	.word	4
	.word	_Label_3310
	.word	-32
	.word	4
	.word	_Label_3311
	.word	-36
	.word	4
	.word	_Label_3312
	.word	-40
	.word	4
	.word	_Label_3313
	.word	-44
	.word	4
	.word	_Label_3314
	.word	-48
	.word	4
	.word	_Label_3315
	.word	-52
	.word	4
	.word	_Label_3316
	.word	-56
	.word	4
	.word	_Label_3317
	.word	-60
	.word	4
	.word	_Label_3318
	.word	-64
	.word	4
	.word	_Label_3319
	.word	-68
	.word	4
	.word	_Label_3320
	.word	-72
	.word	4
	.word	_Label_3321
	.word	-100
	.word	28
	.word	_Label_3322
	.word	-104
	.word	4
	.word	_Label_3323
	.word	-108
	.word	4
	.word	_Label_3324
	.word	-392
	.word	284
	.word	_Label_3325
	.word	-396
	.word	4
	.word	_Label_3326
	.word	-400
	.word	4
	.word	_Label_3327
	.word	-404
	.word	4
	.word	_Label_3328
	.word	-408
	.word	4
	.word	_Label_3329
	.word	-412
	.word	4
	.word	_Label_3330
	.word	-416
	.word	4
	.word	_Label_3331
	.word	-420
	.word	4
	.word	_Label_3332
	.word	-424
	.word	4
	.word	_Label_3333
	.word	-428
	.word	4
	.word	_Label_3334
	.word	-432
	.word	4
	.word	_Label_3335
	.word	-436
	.word	4
	.word	_Label_3336
	.word	-440
	.word	4
	.word	_Label_3337
	.word	-444
	.word	4
	.word	_Label_3338
	.word	-448
	.word	4
	.word	_Label_3339
	.word	-452
	.word	4
	.word	_Label_3340
	.word	-456
	.word	4
	.word	_Label_3341
	.word	-460
	.word	4
	.word	_Label_3342
	.word	-500
	.word	40
	.word	_Label_3343
	.word	-504
	.word	4
	.word	_Label_3344
	.word	-508
	.word	4
	.word	_Label_3345
	.word	-912
	.word	404
	.word	_Label_3346
	.word	-916
	.word	4
	.word	_Label_3347
	.word	-920
	.word	4
	.word	_Label_3348
	.word	-924
	.word	4
	.word	_Label_3349
	.word	-928
	.word	4
	.word	_Label_3350
	.word	-932
	.word	4
	.word	_Label_3351
	.word	-936
	.word	4
	.word	_Label_3352
	.word	-940
	.word	4
	.word	_Label_3353
	.word	-944
	.word	4
	.word	0
_Label_3303:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3304:
	.ascii	"Pself\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3353:
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
_Label_4326:
	push	r0
	sub	r1,1,r1
	bne	_Label_4326
	mov	2527,r13		! source line 2527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0SE",r10
!   _temp_3354 = &fileManagerLock
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
!   _temp_3355 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3355  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2530,r13		! source line 2530
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3360 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3361 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3360  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3356:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3361 then goto _Label_3359		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3359
_Label_3357:
	mov	2531,r13		! source line 2531
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3362 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3362  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2532,r13		! source line 2532
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2533,r13		! source line 2533
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3363 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3363  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2534,r13		! source line 2534
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   _temp_3364 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3364 [i ] into _temp_3365
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
_Label_3358:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3356
! END FOR
_Label_3359:
! CALL STATEMENT...
!   _temp_3366 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3366  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2537,r13		! source line 2537
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
!   _temp_3367 = _function_192_printFCB
	set	_function_192_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3368 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3367  sizeInBytes=4
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
	mov	2539,r13		! source line 2539
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3369 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3369  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2540,r13		! source line 2540
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3374 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3375 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3374  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3370:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3375 then goto _Label_3373		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3373
_Label_3371:
	mov	2541,r13		! source line 2541
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3376 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3376  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2542,r13		! source line 2542
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2543,r13		! source line 2543
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3377 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3377  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2544,r13		! source line 2544
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3379 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3379 [i ] into _temp_3380
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
!   _temp_3378 = _temp_3380		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3378  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3381 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3381  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   _temp_3382 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3382 [i ] into _temp_3383
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
_Label_3372:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3370
! END FOR
_Label_3373:
! CALL STATEMENT...
!   _temp_3384 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3384  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2549,r13		! source line 2549
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   _temp_3385 = _function_191_printOpen
	set	_function_191_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3386 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3385  sizeInBytes=4
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
	mov	2551,r13		! source line 2551
	mov	"\0\0SE",r10
!   _temp_3387 = &fileManagerLock
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
	mov	2551,r13		! source line 2551
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
	.word	_Label_3388
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3390
	.word	-12
	.word	4
	.word	_Label_3391
	.word	-16
	.word	4
	.word	_Label_3392
	.word	-20
	.word	4
	.word	_Label_3393
	.word	-24
	.word	4
	.word	_Label_3394
	.word	-28
	.word	4
	.word	_Label_3395
	.word	-32
	.word	4
	.word	_Label_3396
	.word	-36
	.word	4
	.word	_Label_3397
	.word	-40
	.word	4
	.word	_Label_3398
	.word	-44
	.word	4
	.word	_Label_3399
	.word	-48
	.word	4
	.word	_Label_3400
	.word	-52
	.word	4
	.word	_Label_3401
	.word	-56
	.word	4
	.word	_Label_3402
	.word	-60
	.word	4
	.word	_Label_3403
	.word	-64
	.word	4
	.word	_Label_3404
	.word	-68
	.word	4
	.word	_Label_3405
	.word	-72
	.word	4
	.word	_Label_3406
	.word	-76
	.word	4
	.word	_Label_3407
	.word	-80
	.word	4
	.word	_Label_3408
	.word	-84
	.word	4
	.word	_Label_3409
	.word	-88
	.word	4
	.word	_Label_3410
	.word	-92
	.word	4
	.word	_Label_3411
	.word	-96
	.word	4
	.word	_Label_3412
	.word	-100
	.word	4
	.word	_Label_3413
	.word	-104
	.word	4
	.word	_Label_3414
	.word	-108
	.word	4
	.word	_Label_3415
	.word	-112
	.word	4
	.word	_Label_3416
	.word	-116
	.word	4
	.word	0
_Label_3388:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3389:
	.ascii	"Pself\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3367\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3366\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3416:
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
_Label_4327:
	push	r0
	sub	r1,1,r1
	bne	_Label_4327
	mov	2556,r13		! source line 2556
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_3417 = &_P_Kernel_fileManager
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
	mov	2573,r13		! source line 2573
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3418
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3418
	jmp	_Label_3419
_Label_3418:
! THEN...
	mov	2574,r13		! source line 2574
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3419:
! SEND STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
!   _temp_3420 = &fileManagerLock
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
	mov	2579,r13		! source line 2579
	mov	"\0\0WH",r10
_Label_3421:
	mov	2579,r13		! source line 2579
	mov	"\0\0SE",r10
!   _temp_3424 = &openFileFreeList
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
!   if result==true then goto _Label_3422 else goto _Label_3423
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3423
	jmp	_Label_3422
_Label_3422:
	mov	2579,r13		! source line 2579
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0SE",r10
!   _temp_3425 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3426 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3425  sizeInBytes=4
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
	jmp	_Label_3421
_Label_3423:
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
	mov	2582,r13		! source line 2582
	mov	"\0\0SE",r10
!   _temp_3427 = &openFileFreeList
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
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3428 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3428 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3429 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3429 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3430 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3430 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_3431 = &fileManagerLock
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
	mov	2592,r13		! source line 2592
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
	.word	_Label_3432
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3433
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3434
	.word	12
	.word	4
	.word	_Label_3435
	.word	-12
	.word	4
	.word	_Label_3436
	.word	-16
	.word	4
	.word	_Label_3437
	.word	-20
	.word	4
	.word	_Label_3438
	.word	-24
	.word	4
	.word	_Label_3439
	.word	-28
	.word	4
	.word	_Label_3440
	.word	-32
	.word	4
	.word	_Label_3441
	.word	-36
	.word	4
	.word	_Label_3442
	.word	-40
	.word	4
	.word	_Label_3443
	.word	-44
	.word	4
	.word	_Label_3444
	.word	-48
	.word	4
	.word	_Label_3445
	.word	-52
	.word	4
	.word	_Label_3446
	.word	-56
	.word	4
	.word	0
_Label_3432:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3433:
	.ascii	"Pself\0"
	.align
_Label_3434:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3445:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3446:
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
_Label_4328:
	push	r0
	sub	r1,1,r1
	bne	_Label_4328
	mov	2597,r13		! source line 2597
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
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
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3448		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3448
!	jmp	_Label_3447
_Label_3447:
! THEN...
	mov	2628,r13		! source line 2628
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3449 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3449  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2628,r13		! source line 2628
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3448:
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
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
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2634,r13		! source line 2634
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
	mov	2635,r13		! source line 2635
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0WH",r10
_Label_3450:
!   if numFiles <= 0 then goto _Label_3452		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3452
!	jmp	_Label_3451
_Label_3451:
	mov	2638,r13		! source line 2638
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3453 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3453  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2639,r13		! source line 2639
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3454 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3454  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2641,r13		! source line 2641
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3455 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3455  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CA",r10
	call	_function_193_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3459 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3459 then goto _Label_3457		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3457
!	jmp	_Label_3458
_Label_3458:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3461
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
!   _temp_3460 = _temp_3461		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3460  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2646,r13		! source line 2646
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3456 else goto _Label_3457
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3457
	jmp	_Label_3456
_Label_3456:
! THEN...
	mov	2647,r13		! source line 2647
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0BR",r10
	jmp	_Label_3452
! END IF...
_Label_3457:
! ASSIGNMENT STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3450
_Label_3452:
! IF STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3463		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3463
!	jmp	_Label_3462
_Label_3462:
! THEN...
	mov	2655,r13		! source line 2655
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3463:
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_3464 = &fileManagerLock
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
	mov	2660,r13		! source line 2660
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3469 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3470 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3469  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3465:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3470 then goto _Label_3468		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3468
_Label_3466:
	mov	2660,r13		! source line 2660
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   _temp_3471 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3471 [i ] into _temp_3472
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
!   fcb = _temp_3472		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3476 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3475 = *_temp_3476  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3475 != start then goto _Label_3474		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3474
!	jmp	_Label_3473
_Label_3473:
! THEN...
	mov	2663,r13		! source line 2663
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3477 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3480 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3479 = *_temp_3480  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3478 = _temp_3479 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3477 = _temp_3478  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0SE",r10
!   _temp_3481 = &fileManagerLock
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
	mov	2665,r13		! source line 2665
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3474:
!   Increment the FOR-LOOP index variable and jump back
_Label_3467:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3465
! END FOR
_Label_3468:
! WHILE STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0WH",r10
_Label_3482:
	mov	2670,r13		! source line 2670
	mov	"\0\0SE",r10
!   _temp_3485 = &fcbFreeList
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
!   if result==true then goto _Label_3483 else goto _Label_3484
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3484
	jmp	_Label_3483
_Label_3483:
	mov	2670,r13		! source line 2670
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0SE",r10
!   _temp_3486 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3487 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3486  sizeInBytes=4
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
	jmp	_Label_3482
_Label_3484:
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   _temp_3488 = &fcbFreeList
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
	mov	2676,r13		! source line 2676
	mov	"\0\0SE",r10
!   _temp_3489 = &fileManagerLock
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
	mov	2679,r13		! source line 2679
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3490 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3490 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3491 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3491 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3492 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3492 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3497 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3496 = *_temp_3497  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3496 < 0 then goto _Label_3495		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3495
	jmp	_Label_3493
_Label_3495:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3498 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3498 ) then goto _Label_3494		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3494
!	jmp	_Label_3493
_Label_3493:
! THEN...
	mov	2683,r13		! source line 2683
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3499 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2683,r13		! source line 2683
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3494:
! RETURN STATEMENT...
	mov	2685,r13		! source line 2685
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
	.word	_Label_3500
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3502
	.word	12
	.word	4
	.word	_Label_3503
	.word	-12
	.word	4
	.word	_Label_3504
	.word	-16
	.word	4
	.word	_Label_3505
	.word	-20
	.word	4
	.word	_Label_3506
	.word	-24
	.word	4
	.word	_Label_3507
	.word	-28
	.word	4
	.word	_Label_3508
	.word	-32
	.word	4
	.word	_Label_3509
	.word	-36
	.word	4
	.word	_Label_3510
	.word	-40
	.word	4
	.word	_Label_3511
	.word	-44
	.word	4
	.word	_Label_3512
	.word	-48
	.word	4
	.word	_Label_3513
	.word	-52
	.word	4
	.word	_Label_3514
	.word	-56
	.word	4
	.word	_Label_3515
	.word	-60
	.word	4
	.word	_Label_3516
	.word	-64
	.word	4
	.word	_Label_3517
	.word	-68
	.word	4
	.word	_Label_3518
	.word	-72
	.word	4
	.word	_Label_3519
	.word	-76
	.word	4
	.word	_Label_3520
	.word	-80
	.word	4
	.word	_Label_3521
	.word	-84
	.word	4
	.word	_Label_3522
	.word	-88
	.word	4
	.word	_Label_3523
	.word	-92
	.word	4
	.word	_Label_3524
	.word	-96
	.word	4
	.word	_Label_3525
	.word	-100
	.word	4
	.word	_Label_3526
	.word	-104
	.word	4
	.word	_Label_3527
	.word	-108
	.word	4
	.word	_Label_3528
	.word	-112
	.word	4
	.word	_Label_3529
	.word	-116
	.word	4
	.word	_Label_3530
	.word	-120
	.word	4
	.word	_Label_3531
	.word	-124
	.word	4
	.word	_Label_3532
	.word	-128
	.word	4
	.word	_Label_3533
	.word	-132
	.word	4
	.word	_Label_3534
	.word	-136
	.word	4
	.word	_Label_3535
	.word	-140
	.word	4
	.word	_Label_3536
	.word	-144
	.word	4
	.word	_Label_3537
	.word	-148
	.word	4
	.word	_Label_3538
	.word	-152
	.word	4
	.word	_Label_3539
	.word	-156
	.word	4
	.word	_Label_3540
	.word	-160
	.word	4
	.word	0
_Label_3500:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3501:
	.ascii	"Pself\0"
	.align
_Label_3502:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3503:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3504:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3505:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3506:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3507:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3508:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3509:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3514:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3515:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3516:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3454\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3453\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3449\0"
	.align
_Label_3534:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3535:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3536:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3537:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3538:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3539:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3540:
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
_Label_4329:
	push	r0
	sub	r1,1,r1
	bne	_Label_4329
	mov	2698,r13		! source line 2698
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0IF",r10
!   _temp_3543 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3543 then goto _Label_3542		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3542
!	jmp	_Label_3541
_Label_3541:
! THEN...
	mov	2701,r13		! source line 2701
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3542:
! SEND STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0SE",r10
!   _temp_3544 = &fileManagerLock
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
	mov	2704,r13		! source line 2704
	mov	"\0\0SE",r10
!   _temp_3545 = &_P_Kernel_fileManager
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
	mov	2705,r13		! source line 2705
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3546 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3546  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3547 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3550 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3549 = *_temp_3550  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3548 = _temp_3549 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3547 = _temp_3548  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3554 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3553 = *_temp_3554  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3553 > 0 then goto _Label_3552		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3552
!	jmp	_Label_3551
_Label_3551:
! THEN...
	mov	2708,r13		! source line 2708
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0SE",r10
!   _temp_3555 = &openFileFreeList
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
	mov	2709,r13		! source line 2709
	mov	"\0\0SE",r10
!   _temp_3556 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3557 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3556  sizeInBytes=4
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
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3558 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3561 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3560 = *_temp_3561  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3559 = _temp_3560 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3558 = _temp_3559  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3565 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3564 = *_temp_3565  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3564 > 0 then goto _Label_3563		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3563
!	jmp	_Label_3562
_Label_3562:
! THEN...
	mov	2712,r13		! source line 2712
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0SE",r10
!   _temp_3566 = &fcbFreeList
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
	mov	2713,r13		! source line 2713
	mov	"\0\0SE",r10
!   _temp_3567 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3568 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3567  sizeInBytes=4
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
_Label_3563:
! END IF...
_Label_3552:
! SEND STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0SE",r10
!   _temp_3569 = &fileManagerLock
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
	mov	2716,r13		! source line 2716
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
	.word	_Label_3570
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3572
	.word	12
	.word	4
	.word	_Label_3573
	.word	-12
	.word	4
	.word	_Label_3574
	.word	-16
	.word	4
	.word	_Label_3575
	.word	-20
	.word	4
	.word	_Label_3576
	.word	-24
	.word	4
	.word	_Label_3577
	.word	-28
	.word	4
	.word	_Label_3578
	.word	-32
	.word	4
	.word	_Label_3579
	.word	-36
	.word	4
	.word	_Label_3580
	.word	-40
	.word	4
	.word	_Label_3581
	.word	-44
	.word	4
	.word	_Label_3582
	.word	-48
	.word	4
	.word	_Label_3583
	.word	-52
	.word	4
	.word	_Label_3584
	.word	-56
	.word	4
	.word	_Label_3585
	.word	-60
	.word	4
	.word	_Label_3586
	.word	-64
	.word	4
	.word	_Label_3587
	.word	-68
	.word	4
	.word	_Label_3588
	.word	-72
	.word	4
	.word	_Label_3589
	.word	-76
	.word	4
	.word	_Label_3590
	.word	-80
	.word	4
	.word	_Label_3591
	.word	-84
	.word	4
	.word	_Label_3592
	.word	-88
	.word	4
	.word	_Label_3593
	.word	-92
	.word	4
	.word	_Label_3594
	.word	-96
	.word	4
	.word	_Label_3595
	.word	-100
	.word	4
	.word	_Label_3596
	.word	-104
	.word	4
	.word	0
_Label_3570:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3571:
	.ascii	"Pself\0"
	.align
_Label_3572:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3569\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3584:
	.byte	'?'
	.ascii	"_temp_3556\0"
	.align
_Label_3585:
	.byte	'?'
	.ascii	"_temp_3555\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3553\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3545\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3596:
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
_Label_4330:
	push	r0
	sub	r1,1,r1
	bne	_Label_4330
	mov	2721,r13		! source line 2721
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3600 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3599 = *_temp_3600  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3599) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3601 = _temp_3599 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3601 ) then goto _Label_3598		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3598
!	jmp	_Label_3597
_Label_3597:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3606 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3605 = *_temp_3606  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3605) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3607 = _temp_3605 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3604 = *_temp_3607  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3604 >= 0 then goto _Label_3603		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3603
!	jmp	_Label_3602
_Label_3602:
! THEN...
	mov	2728,r13		! source line 2728
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3608 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3608  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2728,r13		! source line 2728
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3603:
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3610 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3609 = *_temp_3610  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3609) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3611 = _temp_3609 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3611 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3615 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3614 = *_temp_3615  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3614) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3616 = _temp_3614 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3613 = *_temp_3616  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3619 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3618 = *_temp_3619  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3618) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3620 = _temp_3618 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3617 = *_temp_3620  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3612 = _temp_3613 + _temp_3617		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3623 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3622 = *_temp_3623  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3622) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3624 = _temp_3622 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3621 = *_temp_3624  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3625 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3612  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3621  sizeInBytes=4
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
_Label_3598:
! RETURN STATEMENT...
	mov	2726,r13		! source line 2726
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
	.word	_Label_3626
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3628
	.word	12
	.word	4
	.word	_Label_3629
	.word	-12
	.word	4
	.word	_Label_3630
	.word	-16
	.word	4
	.word	_Label_3631
	.word	-20
	.word	4
	.word	_Label_3632
	.word	-24
	.word	4
	.word	_Label_3633
	.word	-28
	.word	4
	.word	_Label_3634
	.word	-32
	.word	4
	.word	_Label_3635
	.word	-36
	.word	4
	.word	_Label_3636
	.word	-40
	.word	4
	.word	_Label_3637
	.word	-44
	.word	4
	.word	_Label_3638
	.word	-48
	.word	4
	.word	_Label_3639
	.word	-52
	.word	4
	.word	_Label_3640
	.word	-56
	.word	4
	.word	_Label_3641
	.word	-60
	.word	4
	.word	_Label_3642
	.word	-64
	.word	4
	.word	_Label_3643
	.word	-68
	.word	4
	.word	_Label_3644
	.word	-72
	.word	4
	.word	_Label_3645
	.word	-76
	.word	4
	.word	_Label_3646
	.word	-80
	.word	4
	.word	_Label_3647
	.word	-84
	.word	4
	.word	_Label_3648
	.word	-88
	.word	4
	.word	_Label_3649
	.word	-92
	.word	4
	.word	_Label_3650
	.word	-96
	.word	4
	.word	_Label_3651
	.word	-100
	.word	4
	.word	_Label_3652
	.word	-104
	.word	4
	.word	_Label_3653
	.word	-108
	.word	4
	.word	0
_Label_3626:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3627:
	.ascii	"Pself\0"
	.align
_Label_3628:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3623\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3620\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3617\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3612\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3599\0"
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
_Label_4331:
	push	r0
	sub	r1,1,r1
	bne	_Label_4331
	mov	2740,r13		! source line 2740
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0SE",r10
!   _temp_3654 = &fileManagerLock
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
	mov	2756,r13		! source line 2756
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3660		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3660
!   _temp_3659 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3661
_Label_3660:
!   _temp_3659 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3661:
!   if _temp_3659 then goto _Label_3658 else goto _Label_3655
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3655
	jmp	_Label_3658
_Label_3658:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3664 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3663 = *_temp_3664  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3663 == 0 then goto _Label_3665		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3665
!   _temp_3662 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3666
_Label_3665:
!   _temp_3662 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3666:
!   if _temp_3662 then goto _Label_3657 else goto _Label_3655
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3655
	jmp	_Label_3657
_Label_3657:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3669 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3668 = *_temp_3669  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3668) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3670 = _temp_3668 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3667 = *_temp_3670  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3667 >= 0 then goto _Label_3656		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3656
!	jmp	_Label_3655
_Label_3655:
! THEN...
	mov	2757,r13		! source line 2757
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3671 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3671  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2757,r13		! source line 2757
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3656:
! ASSIGNMENT STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3672 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3672  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0WH",r10
_Label_3673:
!   if numBytes <= 0 then goto _Label_3675		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3675
!	jmp	_Label_3674
_Label_3674:
	mov	2760,r13		! source line 2760
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
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
	mov	2770,r13		! source line 2770
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
	mov	2774,r13		! source line 2774
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3679 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3678 = *_temp_3679  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3678 == sector then goto _Label_3677		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3677
!	jmp	_Label_3676
_Label_3676:
! THEN...
	mov	2775,r13		! source line 2775
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3680) then goto _runtimeErrorNullPointer
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
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3683 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3682 = *_temp_3683  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3681 = sector + _temp_3682		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3685 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3684 = *_temp_3685  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3686 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3681  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3684  sizeInBytes=4
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
	mov	2780,r13		! source line 2780
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3687 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3687 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3688 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3688 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3677:
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3690 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3689 = *_temp_3690  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3689 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0AS",r10
!   _temp_3691 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3691  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2784,r13		! source line 2784
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
	mov	2788,r13		! source line 2788
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3673
_Label_3675:
! SEND STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0SE",r10
!   _temp_3692 = &fileManagerLock
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
	mov	2799,r13		! source line 2799
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
	.word	_Label_3693
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3694
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3695
	.word	12
	.word	4
	.word	_Label_3696
	.word	16
	.word	4
	.word	_Label_3697
	.word	20
	.word	4
	.word	_Label_3698
	.word	24
	.word	4
	.word	_Label_3699
	.word	-16
	.word	4
	.word	_Label_3700
	.word	-20
	.word	4
	.word	_Label_3701
	.word	-24
	.word	4
	.word	_Label_3702
	.word	-28
	.word	4
	.word	_Label_3703
	.word	-32
	.word	4
	.word	_Label_3704
	.word	-36
	.word	4
	.word	_Label_3705
	.word	-40
	.word	4
	.word	_Label_3706
	.word	-44
	.word	4
	.word	_Label_3707
	.word	-48
	.word	4
	.word	_Label_3708
	.word	-52
	.word	4
	.word	_Label_3709
	.word	-56
	.word	4
	.word	_Label_3710
	.word	-60
	.word	4
	.word	_Label_3711
	.word	-64
	.word	4
	.word	_Label_3712
	.word	-68
	.word	4
	.word	_Label_3713
	.word	-72
	.word	4
	.word	_Label_3714
	.word	-76
	.word	4
	.word	_Label_3715
	.word	-80
	.word	4
	.word	_Label_3716
	.word	-84
	.word	4
	.word	_Label_3717
	.word	-88
	.word	4
	.word	_Label_3718
	.word	-92
	.word	4
	.word	_Label_3719
	.word	-96
	.word	4
	.word	_Label_3720
	.word	-100
	.word	4
	.word	_Label_3721
	.word	-104
	.word	4
	.word	_Label_3722
	.word	-9
	.word	1
	.word	_Label_3723
	.word	-10
	.word	1
	.word	_Label_3724
	.word	-108
	.word	4
	.word	_Label_3725
	.word	-112
	.word	4
	.word	_Label_3726
	.word	-116
	.word	4
	.word	_Label_3727
	.word	-120
	.word	4
	.word	_Label_3728
	.word	-124
	.word	4
	.word	_Label_3729
	.word	-128
	.word	4
	.word	0
_Label_3693:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3694:
	.ascii	"Pself\0"
	.align
_Label_3695:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3696:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3697:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3698:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3699:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3700:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3701:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3702:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3722:
	.byte	'C'
	.ascii	"_temp_3662\0"
	.align
_Label_3723:
	.byte	'C'
	.ascii	"_temp_3659\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3725:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3726:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3727:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3728:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3729:
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
_Label_4332:
	push	r0
	sub	r1,1,r1
	bne	_Label_4332
	mov	2804,r13		! source line 2804
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0SE",r10
!   _temp_3730 = &fileManagerLock
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
	mov	2821,r13		! source line 2821
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3736		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3736
!   _temp_3735 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3737
_Label_3736:
!   _temp_3735 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3737:
!   if _temp_3735 then goto _Label_3734 else goto _Label_3731
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3731
	jmp	_Label_3734
_Label_3734:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3740 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3739 = *_temp_3740  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3739 == 0 then goto _Label_3741		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3741
!   _temp_3738 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3742
_Label_3741:
!   _temp_3738 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3742:
!   if _temp_3738 then goto _Label_3733 else goto _Label_3731
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3731
	jmp	_Label_3733
_Label_3733:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3745 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3744 = *_temp_3745  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3744) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3746 = _temp_3744 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3743 = *_temp_3746  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3743 >= 0 then goto _Label_3732		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3732
!	jmp	_Label_3731
_Label_3731:
! THEN...
	mov	2822,r13		! source line 2822
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3747 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3747  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2822,r13		! source line 2822
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3732:
! ASSIGNMENT STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3748 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3748  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0WH",r10
_Label_3749:
!   if numBytes <= 0 then goto _Label_3751		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3751
!	jmp	_Label_3750
_Label_3750:
	mov	2825,r13		! source line 2825
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2834,r13		! source line 2834
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
	mov	2835,r13		! source line 2835
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
	mov	2839,r13		! source line 2839
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3755 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3754 = *_temp_3755  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3754 == sector then goto _Label_3753		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3753
!	jmp	_Label_3752
_Label_3752:
! THEN...
	mov	2841,r13		! source line 2841
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3756) then goto _runtimeErrorNullPointer
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
_Label_3753:
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3758 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3757 = *_temp_3758  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3757 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0AS",r10
!   _temp_3759 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3759  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3763 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3762 = *_temp_3763  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3762 != sector then goto _Label_3761		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3761
!	jmp	_Label_3760
_Label_3760:
	jmp	_Label_3764
_Label_3761:
! ELSE...
	mov	2847,r13		! source line 2847
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3767
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3767
	jmp	_Label_3766
_Label_3767:
!   if bytesToMove != 8192 then goto _Label_3766		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3766
!	jmp	_Label_3765
_Label_3765:
	jmp	_Label_3768
_Label_3766:
! ELSE...
	mov	2851,r13		! source line 2851
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3771 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3770 = *_temp_3771  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3769 = sector + _temp_3770		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3773 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3772 = *_temp_3773  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3774 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3769  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3772  sizeInBytes=4
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
_Label_3768:
! END IF...
_Label_3764:
! ASSIGNMENT STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3775 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3775 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3776 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3776 = 1  (sizeInBytes=1)
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
	mov	2860,r13		! source line 2860
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3749
_Label_3751:
! SEND STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0SE",r10
!   _temp_3777 = &fileManagerLock
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
	mov	2872,r13		! source line 2872
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
	.word	_Label_3778
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3780
	.word	12
	.word	4
	.word	_Label_3781
	.word	16
	.word	4
	.word	_Label_3782
	.word	20
	.word	4
	.word	_Label_3783
	.word	24
	.word	4
	.word	_Label_3784
	.word	-16
	.word	4
	.word	_Label_3785
	.word	-20
	.word	4
	.word	_Label_3786
	.word	-24
	.word	4
	.word	_Label_3787
	.word	-28
	.word	4
	.word	_Label_3788
	.word	-32
	.word	4
	.word	_Label_3789
	.word	-36
	.word	4
	.word	_Label_3790
	.word	-40
	.word	4
	.word	_Label_3791
	.word	-44
	.word	4
	.word	_Label_3792
	.word	-48
	.word	4
	.word	_Label_3793
	.word	-52
	.word	4
	.word	_Label_3794
	.word	-56
	.word	4
	.word	_Label_3795
	.word	-60
	.word	4
	.word	_Label_3796
	.word	-64
	.word	4
	.word	_Label_3797
	.word	-68
	.word	4
	.word	_Label_3798
	.word	-72
	.word	4
	.word	_Label_3799
	.word	-76
	.word	4
	.word	_Label_3800
	.word	-80
	.word	4
	.word	_Label_3801
	.word	-84
	.word	4
	.word	_Label_3802
	.word	-88
	.word	4
	.word	_Label_3803
	.word	-92
	.word	4
	.word	_Label_3804
	.word	-96
	.word	4
	.word	_Label_3805
	.word	-100
	.word	4
	.word	_Label_3806
	.word	-104
	.word	4
	.word	_Label_3807
	.word	-108
	.word	4
	.word	_Label_3808
	.word	-112
	.word	4
	.word	_Label_3809
	.word	-9
	.word	1
	.word	_Label_3810
	.word	-10
	.word	1
	.word	_Label_3811
	.word	-116
	.word	4
	.word	_Label_3812
	.word	-120
	.word	4
	.word	_Label_3813
	.word	-124
	.word	4
	.word	_Label_3814
	.word	-128
	.word	4
	.word	_Label_3815
	.word	-132
	.word	4
	.word	_Label_3816
	.word	-136
	.word	4
	.word	0
_Label_3778:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3779:
	.ascii	"Pself\0"
	.align
_Label_3780:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3781:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3782:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3783:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3787:
	.byte	'?'
	.ascii	"_temp_3774\0"
	.align
_Label_3788:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3789:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3790:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3791:
	.byte	'?'
	.ascii	"_temp_3770\0"
	.align
_Label_3792:
	.byte	'?'
	.ascii	"_temp_3769\0"
	.align
_Label_3793:
	.byte	'?'
	.ascii	"_temp_3763\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3762\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3759\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3758\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3801:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3747\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3805:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3806:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3807:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3808:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3809:
	.byte	'C'
	.ascii	"_temp_3738\0"
	.align
_Label_3810:
	.byte	'C'
	.ascii	"_temp_3735\0"
	.align
_Label_3811:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3812:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3813:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3814:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3815:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3816:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3817
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3817:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3818
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3818:
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
_Label_4333:
	push	r0
	sub	r1,1,r1
	bne	_Label_4333
	mov	2908,r13		! source line 2908
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
	mov	2910,r13		! source line 2910
	mov	"\0\0SE",r10
!   _temp_3819 = &_P_Kernel_frameManager
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
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2913,r13		! source line 2913
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
	.word	_Label_3820
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3822
	.word	-12
	.word	4
	.word	0
_Label_3820:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3821:
	.ascii	"Pself\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3819\0"
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
_Label_4334:
	push	r0
	sub	r1,1,r1
	bne	_Label_4334
	mov	2918,r13		! source line 2918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3823 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3823  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2919,r13		! source line 2919
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2920,r13		! source line 2920
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3824 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3824  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2922,r13		! source line 2922
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3825 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3825  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2923,r13		! source line 2923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2924,r13		! source line 2924
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3826 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3826  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2925,r13		! source line 2925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2926,r13		! source line 2926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3827 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3827  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2927,r13		! source line 2927
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2928,r13		! source line 2928
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3828 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3828  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2929,r13		! source line 2929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2931,r13		! source line 2931
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
	.word	_Label_3829
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3831
	.word	-12
	.word	4
	.word	_Label_3832
	.word	-16
	.word	4
	.word	_Label_3833
	.word	-20
	.word	4
	.word	_Label_3834
	.word	-24
	.word	4
	.word	_Label_3835
	.word	-28
	.word	4
	.word	_Label_3836
	.word	-32
	.word	4
	.word	0
_Label_3829:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3830:
	.ascii	"Pself\0"
	.align
_Label_3831:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3832:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3833:
	.byte	'?'
	.ascii	"_temp_3826\0"
	.align
_Label_3834:
	.byte	'?'
	.ascii	"_temp_3825\0"
	.align
_Label_3835:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3836:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3837
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3837:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3838
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3838:
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
_Label_4335:
	push	r0
	sub	r1,1,r1
	bne	_Label_4335
	mov	2942,r13		! source line 2942
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3839 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3839  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2943,r13		! source line 2943
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2944,r13		! source line 2944
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3840 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3840  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3842		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3842
!	jmp	_Label_3841
_Label_3841:
! THEN...
	mov	2947,r13		! source line 2947
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2947,r13		! source line 2947
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
	jmp	_Label_3843
_Label_3842:
! ELSE...
	mov	2949,r13		! source line 2949
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3844 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3844  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2949,r13		! source line 2949
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3843:
! RETURN STATEMENT...
	mov	2946,r13		! source line 2946
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
	.word	_Label_3845
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3847
	.word	-12
	.word	4
	.word	_Label_3848
	.word	-16
	.word	4
	.word	_Label_3849
	.word	-20
	.word	4
	.word	0
_Label_3845:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3846:
	.ascii	"Pself\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3844\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3839\0"
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
_Label_4336:
	push	r0
	sub	r1,1,r1
	bne	_Label_4336
	mov	2955,r13		! source line 2955
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0SE",r10
!   _temp_3850 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3851 = _temp_3850 + 4
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
	mov	2966,r13		! source line 2966
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2967,r13		! source line 2967
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
	mov	2968,r13		! source line 2968
	mov	"\0\0SE",r10
!   _temp_3852 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3853 = _temp_3852 + 4
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
	mov	2969,r13		! source line 2969
	mov	"\0\0RE",r10
	mov	2969,r13		! source line 2969
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3856 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3855  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3854  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3854  (sizeInBytes=1)
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
	.word	_Label_3857
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3859
	.word	12
	.word	4
	.word	_Label_3860
	.word	16
	.word	4
	.word	_Label_3861
	.word	-16
	.word	4
	.word	_Label_3862
	.word	-20
	.word	4
	.word	_Label_3863
	.word	-9
	.word	1
	.word	_Label_3864
	.word	-24
	.word	4
	.word	_Label_3865
	.word	-28
	.word	4
	.word	_Label_3866
	.word	-32
	.word	4
	.word	_Label_3867
	.word	-36
	.word	4
	.word	_Label_3868
	.word	-40
	.word	4
	.word	0
_Label_3857:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3858:
	.ascii	"Pself\0"
	.align
_Label_3859:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3860:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3856\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3855\0"
	.align
_Label_3863:
	.byte	'C'
	.ascii	"_temp_3854\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3852\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3851\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3850\0"
	.align
_Label_3868:
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
_Label_4337:
	push	r0
	sub	r1,1,r1
	bne	_Label_4337
	mov	2974,r13		! source line 2974
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2979,r13		! source line 2979
	mov	"\0\0IF",r10
	mov	2979,r13		! source line 2979
	mov	"\0\0SE",r10
!   _temp_3872 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3873) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3872  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3871  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3871 then goto _Label_3870 else goto _Label_3869
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3869
	jmp	_Label_3870
_Label_3869:
! THEN...
	mov	2980,r13		! source line 2980
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3874 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3874  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2980,r13		! source line 2980
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3870:
! RETURN STATEMENT...
	mov	2982,r13		! source line 2982
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
	.word	_Label_3875
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3877
	.word	-16
	.word	4
	.word	_Label_3878
	.word	-20
	.word	4
	.word	_Label_3879
	.word	-24
	.word	4
	.word	_Label_3880
	.word	-9
	.word	1
	.word	_Label_3881
	.word	-28
	.word	4
	.word	0
_Label_3875:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3876:
	.ascii	"Pself\0"
	.align
_Label_3877:
	.byte	'?'
	.ascii	"_temp_3874\0"
	.align
_Label_3878:
	.byte	'?'
	.ascii	"_temp_3873\0"
	.align
_Label_3879:
	.byte	'?'
	.ascii	"_temp_3872\0"
	.align
_Label_3880:
	.byte	'C'
	.ascii	"_temp_3871\0"
	.align
_Label_3881:
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
_Label_4338:
	push	r0
	sub	r1,1,r1
	bne	_Label_4338
	mov	2987,r13		! source line 2987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3885 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3884 = *_temp_3885  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3884) then goto _Label_3883
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3883
!	jmp	_Label_3882
_Label_3882:
! THEN...
	mov	3014,r13		! source line 3014
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3886 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3886  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3014,r13		! source line 3014
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3883:
! IF STATEMENT...
	mov	3018,r13		! source line 3018
	mov	"\0\0IF",r10
	mov	3018,r13		! source line 3018
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3890) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3889  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3889 == 1112300152 then goto _Label_3888		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3888
!	jmp	_Label_3887
_Label_3887:
! THEN...
	mov	3019,r13		! source line 3019
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3891 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3891  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3019,r13		! source line 3019
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3888:
! ASSIGNMENT STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0AS",r10
	mov	3024,r13		! source line 3024
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3892) then goto _runtimeErrorNullPointer
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
	mov	3025,r13		! source line 3025
	mov	"\0\0AS",r10
	mov	3025,r13		! source line 3025
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3893) then goto _runtimeErrorNullPointer
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
	mov	3026,r13		! source line 3026
	mov	"\0\0AS",r10
	mov	3026,r13		! source line 3026
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3894) then goto _runtimeErrorNullPointer
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
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
	mov	3027,r13		! source line 3027
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3895) then goto _runtimeErrorNullPointer
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
	mov	3028,r13		! source line 3028
	mov	"\0\0AS",r10
	mov	3028,r13		! source line 3028
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3896) then goto _runtimeErrorNullPointer
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
	mov	3029,r13		! source line 3029
	mov	"\0\0AS",r10
	mov	3029,r13		! source line 3029
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3897) then goto _runtimeErrorNullPointer
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
	mov	3032,r13		! source line 3032
	mov	"\0\0IF",r10
!   _temp_3900 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3900) then goto _Label_3899
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3899
!	jmp	_Label_3898
_Label_3898:
! THEN...
	mov	3033,r13		! source line 3033
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3901 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3901  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3033,r13		! source line 3033
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3899:
! ASSIGNMENT STATEMENT...
	mov	3036,r13		! source line 3036
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
	mov	3040,r13		! source line 3040
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3903
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3903
!	jmp	_Label_3902
_Label_3902:
! THEN...
	mov	3041,r13		! source line 3041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3904 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3904  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3041,r13		! source line 3041
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3903:
! IF STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0IF",r10
!   _temp_3907 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3907) then goto _Label_3906
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3906
!	jmp	_Label_3905
_Label_3905:
! THEN...
	mov	3047,r13		! source line 3047
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3908 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3908  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3047,r13		! source line 3047
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3906:
! IF STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0IF",r10
!   _temp_3911 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3911 then goto _Label_3910		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3910
!	jmp	_Label_3909
_Label_3909:
! THEN...
	mov	3051,r13		! source line 3051
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3912 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3912  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3051,r13		! source line 3051
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3910:
! ASSIGNMENT STATEMENT...
	mov	3054,r13		! source line 3054
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
	mov	3057,r13		! source line 3057
	mov	"\0\0IF",r10
!   _temp_3915 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3915) then goto _Label_3914
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3914
!	jmp	_Label_3913
_Label_3913:
! THEN...
	mov	3058,r13		! source line 3058
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3916 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3916  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3058,r13		! source line 3058
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3914:
! IF STATEMENT...
	mov	3061,r13		! source line 3061
	mov	"\0\0IF",r10
!   _temp_3919 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3919 then goto _Label_3918		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3918
!	jmp	_Label_3917
_Label_3917:
! THEN...
	mov	3062,r13		! source line 3062
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3920 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3920  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3062,r13		! source line 3062
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3918:
! ASSIGNMENT STATEMENT...
	mov	3065,r13		! source line 3065
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
	mov	3068,r13		! source line 3068
	mov	"\0\0AS",r10
!   _temp_3923 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3922 = _temp_3923 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3921 = _temp_3922 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3921 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3925		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3925
!	jmp	_Label_3924
_Label_3924:
! THEN...
	mov	3084,r13		! source line 3084
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3926 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3926  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3084,r13		! source line 3084
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3927 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3927  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3085,r13		! source line 3085
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3928 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3928  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3086,r13		! source line 3086
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3087,r13		! source line 3087
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3925:
! SEND STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0SE",r10
!   _temp_3929 = &_P_Kernel_frameManager
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
	mov	3095,r13		! source line 3095
	mov	"\0\0IF",r10
	mov	3095,r13		! source line 3095
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3933) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3932  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3932 == 707406378 then goto _Label_3931		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3931
!	jmp	_Label_3930
_Label_3930:
! THEN...
	mov	3096,r13		! source line 3096
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3934 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3934  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3096,r13		! source line 3096
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0SE",r10
!   _temp_3935 = &_P_Kernel_frameManager
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
	mov	3098,r13		! source line 3098
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3931:
! ASSIGNMENT STATEMENT...
	mov	3102,r13		! source line 3102
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
	mov	3103,r13		! source line 3103
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3940 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3941 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3940  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3936:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3941 then goto _Label_3939		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3939
_Label_3937:
	mov	3103,r13		! source line 3103
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0AS",r10
	mov	3104,r13		! source line 3104
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
	mov	3107,r13		! source line 3107
	mov	"\0\0IF",r10
	mov	3107,r13		! source line 3107
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3945) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3944  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3944 then goto _Label_3943 else goto _Label_3942
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3942
	jmp	_Label_3943
_Label_3942:
! THEN...
	mov	3108,r13		! source line 3108
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3946 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3946  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3108,r13		! source line 3108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3109,r13		! source line 3109
	mov	"\0\0SE",r10
!   _temp_3947 = &_P_Kernel_frameManager
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
	mov	3110,r13		! source line 3110
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3943:
! SEND STATEMENT...
	mov	3112,r13		! source line 3112
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
	mov	3113,r13		! source line 3113
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3938:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3936
! END FOR
_Label_3939:
! IF STATEMENT...
	mov	3117,r13		! source line 3117
	mov	"\0\0IF",r10
	mov	3117,r13		! source line 3117
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3951) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3950  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3950 == 707406378 then goto _Label_3949		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3949
!	jmp	_Label_3948
_Label_3948:
! THEN...
	mov	3118,r13		! source line 3118
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3952 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3952  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3118,r13		! source line 3118
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0SE",r10
!   _temp_3953 = &_P_Kernel_frameManager
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
	mov	3120,r13		! source line 3120
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3949:
! FOR STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3958 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3959 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3958  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3954:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3959 then goto _Label_3957		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3957
_Label_3955:
	mov	3124,r13		! source line 3124
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0AS",r10
	mov	3125,r13		! source line 3125
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
	mov	3128,r13		! source line 3128
	mov	"\0\0IF",r10
	mov	3128,r13		! source line 3128
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3963) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3962  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3962 then goto _Label_3961 else goto _Label_3960
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3960
	jmp	_Label_3961
_Label_3960:
! THEN...
	mov	3129,r13		! source line 3129
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3964 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3964  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3129,r13		! source line 3129
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0SE",r10
!   _temp_3965 = &_P_Kernel_frameManager
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
	mov	3131,r13		! source line 3131
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3961:
! ASSIGNMENT STATEMENT...
	mov	3133,r13		! source line 3133
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3956:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3954
! END FOR
_Label_3957:
! IF STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0IF",r10
	mov	3137,r13		! source line 3137
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3969) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3968  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3968 == 707406378 then goto _Label_3967		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3967
!	jmp	_Label_3966
_Label_3966:
! THEN...
	mov	3138,r13		! source line 3138
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3970 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3970  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3138,r13		! source line 3138
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0SE",r10
!   _temp_3971 = &_P_Kernel_frameManager
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
	mov	3140,r13		! source line 3140
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3967:
! ASSIGNMENT STATEMENT...
	mov	3144,r13		! source line 3144
	mov	"\0\0AS",r10
	mov	3144,r13		! source line 3144
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
	mov	3148,r13		! source line 3148
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3151,r13		! source line 3151
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
	.word	_Label_3972
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3973
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3974
	.word	12
	.word	4
	.word	_Label_3975
	.word	-16
	.word	4
	.word	_Label_3976
	.word	-20
	.word	4
	.word	_Label_3977
	.word	-24
	.word	4
	.word	_Label_3978
	.word	-28
	.word	4
	.word	_Label_3979
	.word	-32
	.word	4
	.word	_Label_3980
	.word	-36
	.word	4
	.word	_Label_3981
	.word	-40
	.word	4
	.word	_Label_3982
	.word	-9
	.word	1
	.word	_Label_3983
	.word	-44
	.word	4
	.word	_Label_3984
	.word	-48
	.word	4
	.word	_Label_3985
	.word	-52
	.word	4
	.word	_Label_3986
	.word	-56
	.word	4
	.word	_Label_3987
	.word	-60
	.word	4
	.word	_Label_3988
	.word	-64
	.word	4
	.word	_Label_3989
	.word	-68
	.word	4
	.word	_Label_3990
	.word	-72
	.word	4
	.word	_Label_3991
	.word	-76
	.word	4
	.word	_Label_3992
	.word	-10
	.word	1
	.word	_Label_3993
	.word	-80
	.word	4
	.word	_Label_3994
	.word	-84
	.word	4
	.word	_Label_3995
	.word	-88
	.word	4
	.word	_Label_3996
	.word	-92
	.word	4
	.word	_Label_3997
	.word	-96
	.word	4
	.word	_Label_3998
	.word	-100
	.word	4
	.word	_Label_3999
	.word	-104
	.word	4
	.word	_Label_4000
	.word	-108
	.word	4
	.word	_Label_4001
	.word	-112
	.word	4
	.word	_Label_4002
	.word	-116
	.word	4
	.word	_Label_4003
	.word	-120
	.word	4
	.word	_Label_4004
	.word	-124
	.word	4
	.word	_Label_4005
	.word	-128
	.word	4
	.word	_Label_4006
	.word	-132
	.word	4
	.word	_Label_4007
	.word	-136
	.word	4
	.word	_Label_4008
	.word	-140
	.word	4
	.word	_Label_4009
	.word	-144
	.word	4
	.word	_Label_4010
	.word	-148
	.word	4
	.word	_Label_4011
	.word	-152
	.word	4
	.word	_Label_4012
	.word	-156
	.word	4
	.word	_Label_4013
	.word	-160
	.word	4
	.word	_Label_4014
	.word	-164
	.word	4
	.word	_Label_4015
	.word	-168
	.word	4
	.word	_Label_4016
	.word	-172
	.word	4
	.word	_Label_4017
	.word	-176
	.word	4
	.word	_Label_4018
	.word	-180
	.word	4
	.word	_Label_4019
	.word	-184
	.word	4
	.word	_Label_4020
	.word	-188
	.word	4
	.word	_Label_4021
	.word	-192
	.word	4
	.word	_Label_4022
	.word	-196
	.word	4
	.word	_Label_4023
	.word	-200
	.word	4
	.word	_Label_4024
	.word	-204
	.word	4
	.word	_Label_4025
	.word	-208
	.word	4
	.word	_Label_4026
	.word	-212
	.word	4
	.word	_Label_4027
	.word	-216
	.word	4
	.word	_Label_4028
	.word	-220
	.word	4
	.word	_Label_4029
	.word	-224
	.word	4
	.word	_Label_4030
	.word	-228
	.word	4
	.word	_Label_4031
	.word	-232
	.word	4
	.word	_Label_4032
	.word	-236
	.word	4
	.word	_Label_4033
	.word	-240
	.word	4
	.word	_Label_4034
	.word	-244
	.word	4
	.word	_Label_4035
	.word	-248
	.word	4
	.word	_Label_4036
	.word	-252
	.word	4
	.word	_Label_4037
	.word	-256
	.word	4
	.word	_Label_4038
	.word	-260
	.word	4
	.word	_Label_4039
	.word	-264
	.word	4
	.word	_Label_4040
	.word	-268
	.word	4
	.word	0
_Label_3972:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3973:
	.ascii	"Pself\0"
	.align
_Label_3974:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3975:
	.byte	'?'
	.ascii	"_temp_3971\0"
	.align
_Label_3976:
	.byte	'?'
	.ascii	"_temp_3970\0"
	.align
_Label_3977:
	.byte	'?'
	.ascii	"_temp_3969\0"
	.align
_Label_3978:
	.byte	'?'
	.ascii	"_temp_3968\0"
	.align
_Label_3979:
	.byte	'?'
	.ascii	"_temp_3965\0"
	.align
_Label_3980:
	.byte	'?'
	.ascii	"_temp_3964\0"
	.align
_Label_3981:
	.byte	'?'
	.ascii	"_temp_3963\0"
	.align
_Label_3982:
	.byte	'C'
	.ascii	"_temp_3962\0"
	.align
_Label_3983:
	.byte	'?'
	.ascii	"_temp_3959\0"
	.align
_Label_3984:
	.byte	'?'
	.ascii	"_temp_3958\0"
	.align
_Label_3985:
	.byte	'?'
	.ascii	"_temp_3953\0"
	.align
_Label_3986:
	.byte	'?'
	.ascii	"_temp_3952\0"
	.align
_Label_3987:
	.byte	'?'
	.ascii	"_temp_3951\0"
	.align
_Label_3988:
	.byte	'?'
	.ascii	"_temp_3950\0"
	.align
_Label_3989:
	.byte	'?'
	.ascii	"_temp_3947\0"
	.align
_Label_3990:
	.byte	'?'
	.ascii	"_temp_3946\0"
	.align
_Label_3991:
	.byte	'?'
	.ascii	"_temp_3945\0"
	.align
_Label_3992:
	.byte	'C'
	.ascii	"_temp_3944\0"
	.align
_Label_3993:
	.byte	'?'
	.ascii	"_temp_3941\0"
	.align
_Label_3994:
	.byte	'?'
	.ascii	"_temp_3940\0"
	.align
_Label_3995:
	.byte	'?'
	.ascii	"_temp_3935\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3934\0"
	.align
_Label_3997:
	.byte	'?'
	.ascii	"_temp_3933\0"
	.align
_Label_3998:
	.byte	'?'
	.ascii	"_temp_3932\0"
	.align
_Label_3999:
	.byte	'?'
	.ascii	"_temp_3929\0"
	.align
_Label_4000:
	.byte	'?'
	.ascii	"_temp_3928\0"
	.align
_Label_4001:
	.byte	'?'
	.ascii	"_temp_3927\0"
	.align
_Label_4002:
	.byte	'?'
	.ascii	"_temp_3926\0"
	.align
_Label_4003:
	.byte	'?'
	.ascii	"_temp_3923\0"
	.align
_Label_4004:
	.byte	'?'
	.ascii	"_temp_3922\0"
	.align
_Label_4005:
	.byte	'?'
	.ascii	"_temp_3921\0"
	.align
_Label_4006:
	.byte	'?'
	.ascii	"_temp_3920\0"
	.align
_Label_4007:
	.byte	'?'
	.ascii	"_temp_3919\0"
	.align
_Label_4008:
	.byte	'?'
	.ascii	"_temp_3916\0"
	.align
_Label_4009:
	.byte	'?'
	.ascii	"_temp_3915\0"
	.align
_Label_4010:
	.byte	'?'
	.ascii	"_temp_3912\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_3911\0"
	.align
_Label_4012:
	.byte	'?'
	.ascii	"_temp_3908\0"
	.align
_Label_4013:
	.byte	'?'
	.ascii	"_temp_3907\0"
	.align
_Label_4014:
	.byte	'?'
	.ascii	"_temp_3904\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_4018:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_4019:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_4020:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_4021:
	.byte	'?'
	.ascii	"_temp_3893\0"
	.align
_Label_4022:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_4023:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_4024:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_4025:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_4026:
	.byte	'?'
	.ascii	"_temp_3886\0"
	.align
_Label_4027:
	.byte	'?'
	.ascii	"_temp_3885\0"
	.align
_Label_4028:
	.byte	'?'
	.ascii	"_temp_3884\0"
	.align
_Label_4029:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4030:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4031:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4032:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4033:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4034:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4035:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4036:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4037:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4038:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4039:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4040:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_4041
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_3	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_2	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_4041:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4042
	.word	_sourceFileName
	.word	398		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_4042:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	35,r1
_Label_4339:
	push	r0
	sub	r1,1,r1
	bne	_Label_4339
	mov	3170,r13		! source line 3170
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4043 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4043  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3174,r13		! source line 3174
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3175,r13		! source line 3175
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 0		(1 byte)
	mov	0,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3177,r13		! source line 3177
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3178,r13		! source line 3178
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0AS",r10
!   _temp_4044 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-128]
!   NEW ARRAY Constructor...
!   _temp_4046 = &_temp_4045
	add	r14,-124,r1
	store	r1,[r14+-108]
!   _temp_4046 = _temp_4046 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
	mov	10,r1
	store	r1,[r14+-104]
_Label_4048:
!   Data Move: *_temp_4046 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-108],r2
	storeb	r1,[r2]
!   _temp_4046 = _temp_4046 + 1
	load	[r14+-108],r1
	add	r1,1,r1
	store	r1,[r14+-108]
!   _temp_4047 = _temp_4047 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_4047) then goto _Label_4048
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_4048
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-124]
!   _temp_4049 = &_temp_4045
	add	r14,-124,r1
	store	r1,[r14+-100]
!   make sure array has size 10
	load	[r14+-128],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4340
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4340:
!   make sure array has size 10
	load	[r14+-100],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4044 = *_temp_4049  (sizeInBytes=16)
	load	[r14+-100],r5
	load	[r14+-128],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3181,r13		! source line 3181
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3182,r13		! source line 3182
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3183,r13		! source line 3183
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0AS",r10
!   _temp_4050 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-96]
!   NEW ARRAY Constructor...
!   _temp_4052 = &_temp_4051
	add	r14,-92,r1
	store	r1,[r14+-76]
!   _temp_4052 = _temp_4052 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Next value...
	mov	10,r1
	store	r1,[r14+-72]
_Label_4054:
!   Data Move: *_temp_4052 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-76],r2
	storeb	r1,[r2]
!   _temp_4052 = _temp_4052 + 1
	load	[r14+-76],r1
	add	r1,1,r1
	store	r1,[r14+-76]
!   _temp_4053 = _temp_4053 + -1
	load	[r14+-72],r1
	add	r1,-1,r1
	store	r1,[r14+-72]
!   if intNotZero (_temp_4053) then goto _Label_4054
	load	[r14+-72],r1
	cmp	r1,r0
	bne	_Label_4054
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-92]
!   _temp_4055 = &_temp_4051
	add	r14,-92,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-96],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4341
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4341:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4050 = *_temp_4055  (sizeInBytes=16)
	load	[r14+-68],r5
	load	[r14+-96],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3186,r13		! source line 3186
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3187,r13		! source line 3187
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3190,r13		! source line 3190
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0SE",r10
!   _temp_4057 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3193,r13		! source line 3193
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	3194,r13		! source line 3194
	mov	"\0\0SE",r10
!   _temp_4059 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3196,r13		! source line 3196
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	3197,r13		! source line 3197
	mov	"\0\0SE",r10
!   _temp_4061 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
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
	mov	3199,r13		! source line 3199
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	3200,r13		! source line 3200
	mov	"\0\0SE",r10
!   _temp_4063 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3202,r13		! source line 3202
	mov	"\0\0AS",r10
	mov	3202,r13		! source line 3202
	mov	"\0\0SE",r10
!   _temp_4064 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-32]
!   Send message GetANewThread
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! SEND STATEMENT...
	mov	3203,r13		! source line 3203
	mov	"\0\0SE",r10
!   _temp_4065 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-28]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4065  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3204,r13		! source line 3204
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4066 = newThread + 76
	load	[r14+-136],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4066 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3205,r13		! source line 3205
	mov	"\0\0AS",r10
!   _temp_4067 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
	load	[r14+-136],r1
	load	[r1],r1
	set	_P_Kernel_Thread,r2
	cmp	r1,r2
	bne	_runtimeErrorWrongObject2
!   Data Move: *_temp_4067 = *newThread  (sizeInBytes=4164)
	load	[r14+-136],r5
	load	[r14+-20],r4
	mov	1041,r3
_Label_4342:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4342
! SEND STATEMENT...
	mov	3206,r13		! source line 3206
	mov	"\0\0SE",r10
!   _temp_4068 = _function_190_SerialHandlerFunction
	set	_function_190_SerialHandlerFunction,r1
	store	r1,[r14+-16]
!   _temp_4069 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_4068  sizeInBytes=4
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
	mov	3208,r13		! source line 3208
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3208,r13		! source line 3208
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_4070
	.word	4		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_4071
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4072
	.word	-12
	.word	4
	.word	_Label_4073
	.word	-16
	.word	4
	.word	_Label_4074
	.word	-20
	.word	4
	.word	_Label_4075
	.word	-24
	.word	4
	.word	_Label_4076
	.word	-28
	.word	4
	.word	_Label_4077
	.word	-32
	.word	4
	.word	_Label_4078
	.word	-36
	.word	4
	.word	_Label_4079
	.word	-40
	.word	4
	.word	_Label_4080
	.word	-44
	.word	4
	.word	_Label_4081
	.word	-48
	.word	4
	.word	_Label_4082
	.word	-52
	.word	4
	.word	_Label_4083
	.word	-56
	.word	4
	.word	_Label_4084
	.word	-60
	.word	4
	.word	_Label_4085
	.word	-64
	.word	4
	.word	_Label_4086
	.word	-68
	.word	4
	.word	_Label_4087
	.word	-72
	.word	4
	.word	_Label_4088
	.word	-76
	.word	4
	.word	_Label_4089
	.word	-92
	.word	16
	.word	_Label_4090
	.word	-96
	.word	4
	.word	_Label_4091
	.word	-100
	.word	4
	.word	_Label_4092
	.word	-104
	.word	4
	.word	_Label_4093
	.word	-108
	.word	4
	.word	_Label_4094
	.word	-124
	.word	16
	.word	_Label_4095
	.word	-128
	.word	4
	.word	_Label_4096
	.word	-132
	.word	4
	.word	_Label_4097
	.word	-136
	.word	4
	.word	0
_Label_4070:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4071:
	.ascii	"Pself\0"
	.align
_Label_4072:
	.byte	'?'
	.ascii	"_temp_4069\0"
	.align
_Label_4073:
	.byte	'?'
	.ascii	"_temp_4068\0"
	.align
_Label_4074:
	.byte	'?'
	.ascii	"_temp_4067\0"
	.align
_Label_4075:
	.byte	'?'
	.ascii	"_temp_4066\0"
	.align
_Label_4076:
	.byte	'?'
	.ascii	"_temp_4065\0"
	.align
_Label_4077:
	.byte	'?'
	.ascii	"_temp_4064\0"
	.align
_Label_4078:
	.byte	'?'
	.ascii	"_temp_4063\0"
	.align
_Label_4079:
	.byte	'?'
	.ascii	"_temp_4062\0"
	.align
_Label_4080:
	.byte	'?'
	.ascii	"_temp_4061\0"
	.align
_Label_4081:
	.byte	'?'
	.ascii	"_temp_4060\0"
	.align
_Label_4082:
	.byte	'?'
	.ascii	"_temp_4059\0"
	.align
_Label_4083:
	.byte	'?'
	.ascii	"_temp_4058\0"
	.align
_Label_4084:
	.byte	'?'
	.ascii	"_temp_4057\0"
	.align
_Label_4085:
	.byte	'?'
	.ascii	"_temp_4056\0"
	.align
_Label_4086:
	.byte	'?'
	.ascii	"_temp_4055\0"
	.align
_Label_4087:
	.byte	'?'
	.ascii	"_temp_4053\0"
	.align
_Label_4088:
	.byte	'?'
	.ascii	"_temp_4052\0"
	.align
_Label_4089:
	.byte	'?'
	.ascii	"_temp_4051\0"
	.align
_Label_4090:
	.byte	'?'
	.ascii	"_temp_4050\0"
	.align
_Label_4091:
	.byte	'?'
	.ascii	"_temp_4049\0"
	.align
_Label_4092:
	.byte	'?'
	.ascii	"_temp_4047\0"
	.align
_Label_4093:
	.byte	'?'
	.ascii	"_temp_4046\0"
	.align
_Label_4094:
	.byte	'?'
	.ascii	"_temp_4045\0"
	.align
_Label_4095:
	.byte	'?'
	.ascii	"_temp_4044\0"
	.align
_Label_4096:
	.byte	'?'
	.ascii	"_temp_4043\0"
	.align
_Label_4097:
	.byte	'P'
	.ascii	"newThread\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	10,r1
_Label_4343:
	push	r0
	sub	r1,1,r1
	bne	_Label_4343
	mov	3214,r13		! source line 3214
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3218,r13		! source line 3218
	mov	"\0\0SE",r10
!   _temp_4098 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3220,r13		! source line 3220
	mov	"\0\0WH",r10
_Label_4099:
!   if intIsZero (getBufferSize) then goto _Label_4100
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_4100
	jmp	_Label_4101
_Label_4100:
	mov	3220,r13		! source line 3220
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3221,r13		! source line 3221
	mov	"\0\0SE",r10
!   _temp_4102 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_4103 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_4102  sizeInBytes=4
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
	jmp	_Label_4099
_Label_4101:
! ASSIGNMENT STATEMENT...
	mov	3224,r13		! source line 3224
	mov	"\0\0AS",r10
!   _temp_4104 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_4104 [getBufferNextOut ] into _temp_4105
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
	store	r2,[r14+-24]
!   Data Move: character = *_temp_4105  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3225,r13		! source line 3225
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3226,r13		! source line 3226
	mov	"\0\0AS",r10
!   _temp_4106 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_4106 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0SE",r10
!   _temp_4107 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3229,r13		! source line 3229
	mov	"\0\0RE",r10
!   ReturnResult: character  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_4108
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_4109
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4110
	.word	-16
	.word	4
	.word	_Label_4111
	.word	-20
	.word	4
	.word	_Label_4112
	.word	-24
	.word	4
	.word	_Label_4113
	.word	-28
	.word	4
	.word	_Label_4114
	.word	-32
	.word	4
	.word	_Label_4115
	.word	-36
	.word	4
	.word	_Label_4116
	.word	-40
	.word	4
	.word	_Label_4117
	.word	-9
	.word	1
	.word	0
_Label_4108:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_4109:
	.ascii	"Pself\0"
	.align
_Label_4110:
	.byte	'?'
	.ascii	"_temp_4107\0"
	.align
_Label_4111:
	.byte	'?'
	.ascii	"_temp_4106\0"
	.align
_Label_4112:
	.byte	'?'
	.ascii	"_temp_4105\0"
	.align
_Label_4113:
	.byte	'?'
	.ascii	"_temp_4104\0"
	.align
_Label_4114:
	.byte	'?'
	.ascii	"_temp_4103\0"
	.align
_Label_4115:
	.byte	'?'
	.ascii	"_temp_4102\0"
	.align
_Label_4116:
	.byte	'?'
	.ascii	"_temp_4098\0"
	.align
_Label_4117:
	.byte	'C'
	.ascii	"character\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	8,r1
_Label_4344:
	push	r0
	sub	r1,1,r1
	bne	_Label_4344
	mov	3234,r13		! source line 3234
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3235,r13		! source line 3235
	mov	"\0\0SE",r10
!   _temp_4118 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3236,r13		! source line 3236
	mov	"\0\0SE",r10
!   _temp_4119 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3238,r13		! source line 3238
	mov	"\0\0AS",r10
!   _temp_4120 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_4120 [putBufferNextIn ] into _temp_4121
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
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
	store	r2,[r14+-24]
!   Data Move: *_temp_4121 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3239,r13		! source line 3239
	mov	"\0\0AS",r10
!   _temp_4122 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_4122 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3242,r13		! source line 3242
	mov	"\0\0SE",r10
!   _temp_4123 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3243,r13		! source line 3243
	mov	"\0\0SE",r10
!   _temp_4124 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
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
	mov	3243,r13		! source line 3243
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_4125
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4127
	.word	12
	.word	1
	.word	_Label_4128
	.word	-12
	.word	4
	.word	_Label_4129
	.word	-16
	.word	4
	.word	_Label_4130
	.word	-20
	.word	4
	.word	_Label_4131
	.word	-24
	.word	4
	.word	_Label_4132
	.word	-28
	.word	4
	.word	_Label_4133
	.word	-32
	.word	4
	.word	_Label_4134
	.word	-36
	.word	4
	.word	0
_Label_4125:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_4126:
	.ascii	"Pself\0"
	.align
_Label_4127:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_4128:
	.byte	'?'
	.ascii	"_temp_4124\0"
	.align
_Label_4129:
	.byte	'?'
	.ascii	"_temp_4123\0"
	.align
_Label_4130:
	.byte	'?'
	.ascii	"_temp_4122\0"
	.align
_Label_4131:
	.byte	'?'
	.ascii	"_temp_4121\0"
	.align
_Label_4132:
	.byte	'?'
	.ascii	"_temp_4120\0"
	.align
_Label_4133:
	.byte	'?'
	.ascii	"_temp_4119\0"
	.align
_Label_4134:
	.byte	'?'
	.ascii	"_temp_4118\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	24,r1
_Label_4345:
	push	r0
	sub	r1,1,r1
	bne	_Label_4345
	mov	3248,r13		! source line 3248
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3253,r13		! source line 3253
	mov	"\0\0WH",r10
_Label_4135:
!	jmp	_Label_4136
_Label_4136:
	mov	3253,r13		! source line 3253
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3254,r13		! source line 3254
	mov	"\0\0SE",r10
!   _temp_4138 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-92]
!   Send message Down
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3255,r13		! source line 3255
	mov	"\0\0AS",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: statusRegister = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0IF",r10
!   _temp_4141 = statusRegister AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
!   if _temp_4141 <= 0 then goto _Label_4140		(int)
	load	[r14+-88],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4140
!	jmp	_Label_4139
_Label_4139:
! THEN...
	mov	3259,r13		! source line 3259
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3259,r13		! source line 3259
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4142 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   inputCharacter = intToChar (_temp_4142)
	load	[r14+-84],r1
	storeb	r1,[r14+-9]
! IF STATEMENT...
	mov	3261,r13		! source line 3261
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_4144		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_4144
!	jmp	_Label_4143
_Label_4143:
! THEN...
	mov	3262,r13		! source line 3262
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4145 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4145  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3262,r13		! source line 3262
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4146 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_4146  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3263,r13		! source line 3263
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_4147
_Label_4144:
! ELSE...
	mov	3266,r13		! source line 3266
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3266,r13		! source line 3266
	mov	"\0\0SE",r10
!   _temp_4148 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3268,r13		! source line 3268
	mov	"\0\0AS",r10
!   _temp_4149 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_4149 [getBufferNextIn ] into _temp_4150
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
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
	store	r2,[r14+-64]
!   Data Move: *_temp_4150 = inputCharacter  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3269,r13		! source line 3269
	mov	"\0\0AS",r10
!   _temp_4151 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_4151 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3270,r13		! source line 3270
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3272,r13		! source line 3272
	mov	"\0\0SE",r10
!   _temp_4152 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_4153 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_4152  sizeInBytes=4
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
! SEND STATEMENT...
	mov	3273,r13		! source line 3273
	mov	"\0\0SE",r10
!   _temp_4154 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4147:
! END IF...
_Label_4140:
! IF STATEMENT...
	mov	3278,r13		! source line 3278
	mov	"\0\0IF",r10
!   _temp_4157 = statusRegister AND 2		(int)
	load	[r14+-96],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_4157 <= 0 then goto _Label_4156		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4156
!	jmp	_Label_4155
_Label_4155:
! THEN...
	mov	3279,r13		! source line 3279
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3279,r13		! source line 3279
	mov	"\0\0SE",r10
!   _temp_4158 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3281,r13		! source line 3281
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_4160		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4160
!	jmp	_Label_4159
_Label_4159:
! THEN...
	mov	3282,r13		! source line 3282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3282,r13		! source line 3282
	mov	"\0\0AS",r10
!   _temp_4161 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_4161 [putBufferNextOut ] into _temp_4162
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: inputCharacter = *_temp_4162  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3284,r13		! source line 3284
	mov	"\0\0AS",r10
!   _temp_4163 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   putBufferNextOut = _temp_4163 rem 10		(int)
	load	[r14+-28],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3285,r13		! source line 3285
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3286,r13		! source line 3286
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4164 = charToInt (inputCharacter)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: *serial_data_word_address = _temp_4164  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3288,r13		! source line 3288
	mov	"\0\0SE",r10
!   _temp_4165 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4160:
! SEND STATEMENT...
	mov	3291,r13		! source line 3291
	mov	"\0\0SE",r10
!   _temp_4166 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4156:
! END WHILE...
	jmp	_Label_4135
_Label_4137:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4167
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_4168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4169
	.word	-16
	.word	4
	.word	_Label_4170
	.word	-20
	.word	4
	.word	_Label_4171
	.word	-24
	.word	4
	.word	_Label_4172
	.word	-28
	.word	4
	.word	_Label_4173
	.word	-32
	.word	4
	.word	_Label_4174
	.word	-36
	.word	4
	.word	_Label_4175
	.word	-40
	.word	4
	.word	_Label_4176
	.word	-44
	.word	4
	.word	_Label_4177
	.word	-48
	.word	4
	.word	_Label_4178
	.word	-52
	.word	4
	.word	_Label_4179
	.word	-56
	.word	4
	.word	_Label_4180
	.word	-60
	.word	4
	.word	_Label_4181
	.word	-64
	.word	4
	.word	_Label_4182
	.word	-68
	.word	4
	.word	_Label_4183
	.word	-72
	.word	4
	.word	_Label_4184
	.word	-76
	.word	4
	.word	_Label_4185
	.word	-80
	.word	4
	.word	_Label_4186
	.word	-84
	.word	4
	.word	_Label_4187
	.word	-88
	.word	4
	.word	_Label_4188
	.word	-92
	.word	4
	.word	_Label_4189
	.word	-96
	.word	4
	.word	_Label_4190
	.word	-9
	.word	1
	.word	0
_Label_4167:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4168:
	.ascii	"Pself\0"
	.align
_Label_4169:
	.byte	'?'
	.ascii	"_temp_4166\0"
	.align
_Label_4170:
	.byte	'?'
	.ascii	"_temp_4165\0"
	.align
_Label_4171:
	.byte	'?'
	.ascii	"_temp_4164\0"
	.align
_Label_4172:
	.byte	'?'
	.ascii	"_temp_4163\0"
	.align
_Label_4173:
	.byte	'?'
	.ascii	"_temp_4162\0"
	.align
_Label_4174:
	.byte	'?'
	.ascii	"_temp_4161\0"
	.align
_Label_4175:
	.byte	'?'
	.ascii	"_temp_4158\0"
	.align
_Label_4176:
	.byte	'?'
	.ascii	"_temp_4157\0"
	.align
_Label_4177:
	.byte	'?'
	.ascii	"_temp_4154\0"
	.align
_Label_4178:
	.byte	'?'
	.ascii	"_temp_4153\0"
	.align
_Label_4179:
	.byte	'?'
	.ascii	"_temp_4152\0"
	.align
_Label_4180:
	.byte	'?'
	.ascii	"_temp_4151\0"
	.align
_Label_4181:
	.byte	'?'
	.ascii	"_temp_4150\0"
	.align
_Label_4182:
	.byte	'?'
	.ascii	"_temp_4149\0"
	.align
_Label_4183:
	.byte	'?'
	.ascii	"_temp_4148\0"
	.align
_Label_4184:
	.byte	'?'
	.ascii	"_temp_4146\0"
	.align
_Label_4185:
	.byte	'?'
	.ascii	"_temp_4145\0"
	.align
_Label_4186:
	.byte	'?'
	.ascii	"_temp_4142\0"
	.align
_Label_4187:
	.byte	'?'
	.ascii	"_temp_4141\0"
	.align
_Label_4188:
	.byte	'?'
	.ascii	"_temp_4138\0"
	.align
_Label_4189:
	.byte	'I'
	.ascii	"statusRegister\0"
	.align
_Label_4190:
	.byte	'C'
	.ascii	"inputCharacter\0"
	.align
