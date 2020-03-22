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
	.export	_P_Kernel_ResumeChildAfterFork
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
_StringConst_200:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_199:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_198:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_197:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_196:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_195:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_194:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_193:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_192:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_191:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_190:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_189:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_188:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_187:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_186:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_185:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_184:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_183:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_182:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_181:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_180:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_179:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_178:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_177:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_176:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_175:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_174:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_173:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_172:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_171:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_170:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_169:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_168:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_167:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_166:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_165:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_164:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_163:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_162:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_161:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_160:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_159:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_158:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_157:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_156:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_155:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_154:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_153:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_152:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_151:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_150:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_149:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_148:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_147:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_144:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_141:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_138:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_135:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_134:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_133:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_132:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_131:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_129:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_128:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_127:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_126:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_125:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_124:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_123:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_122:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_121:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_120:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_117:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_116:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_113:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_112:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_111:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_110:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_109:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_108:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_107:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_106:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_105:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_104:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_103:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_102:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_101:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_100:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_99:
	.word	3			! length
	.ascii	"Xxx"
	.align
_StringConst_98:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_97:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_96:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_95:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_94:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_93:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_90:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_89:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_88:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_87:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_86:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_85:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_84:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_83:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_82:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_81:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_80:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_79:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_78:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_77:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_76:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_75:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_74:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_73:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_72:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_70:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_69:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_68:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_67:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_66:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_65:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_64:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_63:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_62:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_61:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_60:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_59:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_58:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_57:
	.word	4			! length
	.ascii	"Test"
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	27			! length
	.ascii	"Handle_Sys_Close invoked! \n"
	.align
_StringConst_54:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_53:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_52:
	.word	26			! length
	.ascii	"Handle_Sys_Seek invoked! \n"
	.align
_StringConst_51:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_50:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_49:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_48:
	.word	27			! length
	.ascii	"Handle_Sys_Write invoked! \n"
	.align
_StringConst_47:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_46:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_45:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_44:
	.word	26			! length
	.ascii	"Handle_Sys_Read invoked! \n"
	.align
_StringConst_43:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_42:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_41:
	.word	26			! length
	.ascii	"Handle_Sys_Open invoked! \n"
	.align
_StringConst_40:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_38:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked! \n"
	.align
_StringConst_37:
	.word	17			! length
	.ascii	"cant found child\n"
	.align
_StringConst_36:
	.word	12			! length
	.ascii	"found child\n"
	.align
_StringConst_35:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_34:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_33:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_32:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_31:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_30:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_29:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_23:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
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
	set	0x6344a4a6,r4		! myHashVal = 1665442982
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
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_211 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
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
	mov	17,r13		! source line 17
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
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3352:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3352
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_215 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_216 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
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
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_217 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_218 = _temp_217 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_218 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3353:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3353
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_220 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_221 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_220  sizeInBytes=4
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
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_222 = _function_208_IdleFunction
	set	_function_208_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_223 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_222  sizeInBytes=4
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
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
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
	.word	_Label_224
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_225
	.word	-12
	.word	4
	.word	_Label_226
	.word	-16
	.word	4
	.word	_Label_227
	.word	-20
	.word	4
	.word	_Label_228
	.word	-24
	.word	4
	.word	_Label_229
	.word	-28
	.word	4
	.word	_Label_230
	.word	-32
	.word	4
	.word	_Label_231
	.word	-36
	.word	4
	.word	_Label_232
	.word	-40
	.word	4
	.word	_Label_233
	.word	-44
	.word	4
	.word	_Label_234
	.word	-48
	.word	4
	.word	_Label_235
	.word	-52
	.word	4
	.word	_Label_236
	.word	-56
	.word	4
	.word	_Label_237
	.word	-60
	.word	4
	.word	0
_Label_224:
	.ascii	"InitializeScheduler\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_208_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_238:
!	jmp	_Label_239
_Label_239:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_243 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_241 else goto _Label_242
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_242
	jmp	_Label_241
_Label_241:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_244
_Label_242:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
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
_Label_244:
! END WHILE...
	jmp	_Label_238
_Label_240:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_IdleFunction:
	.word	_sourceFileName
	.word	_Label_245
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_246
	.word	8
	.word	4
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	0
_Label_245:
	.ascii	"IdleFunction\0"
	.align
_Label_246:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_248:
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
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
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_251 ) then goto _Label_250		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_250
!	jmp	_Label_249
_Label_249:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_253 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_253 [0 ] into _temp_254
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
!   _temp_252 = _temp_254		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_250:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_255 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_255 = 3  (sizeInBytes=4)
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
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_256:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_260 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_259  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_259 then goto _Label_258 else goto _Label_257
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_257
	jmp	_Label_258
_Label_257:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_261 = &_P_Kernel_threadsToBeDestroyed
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
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_262 = &_P_Kernel_threadManager
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
	jmp	_Label_256
_Label_258:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_265 ) then goto _Label_264		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_264
!	jmp	_Label_263
_Label_263:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_267 [0 ] into _temp_268
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
!   _temp_266 = _temp_268		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_270 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_269 = *_temp_270  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_269) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = _temp_269 + 32
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
_Label_264:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
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
	.word	_Label_272
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_273
	.word	8
	.word	4
	.word	_Label_274
	.word	-16
	.word	4
	.word	_Label_275
	.word	-20
	.word	4
	.word	_Label_276
	.word	-24
	.word	4
	.word	_Label_277
	.word	-28
	.word	4
	.word	_Label_278
	.word	-32
	.word	4
	.word	_Label_279
	.word	-36
	.word	4
	.word	_Label_280
	.word	-40
	.word	4
	.word	_Label_281
	.word	-44
	.word	4
	.word	_Label_282
	.word	-48
	.word	4
	.word	_Label_283
	.word	-52
	.word	4
	.word	_Label_284
	.word	-9
	.word	1
	.word	_Label_285
	.word	-56
	.word	4
	.word	_Label_286
	.word	-60
	.word	4
	.word	_Label_287
	.word	-64
	.word	4
	.word	_Label_288
	.word	-68
	.word	4
	.word	_Label_289
	.word	-72
	.word	4
	.word	_Label_290
	.word	-76
	.word	4
	.word	_Label_291
	.word	-80
	.word	4
	.word	0
_Label_272:
	.ascii	"Run\0"
	.align
_Label_273:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_284:
	.byte	'C'
	.ascii	"_temp_259\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_291:
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_292 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_293 = _function_207_ThreadPrintShort
	set	_function_207_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_294 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_293  sizeInBytes=4
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
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
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
	.word	_Label_295
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_296
	.word	-12
	.word	4
	.word	_Label_297
	.word	-16
	.word	4
	.word	_Label_298
	.word	-20
	.word	4
	.word	_Label_299
	.word	-24
	.word	4
	.word	0
_Label_295:
	.ascii	"PrintReadyList\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_299:
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_300 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_300  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_301 = *_temp_302  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_303 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
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
	.word	_Label_304
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_305
	.word	-12
	.word	4
	.word	_Label_306
	.word	-16
	.word	4
	.word	_Label_307
	.word	-20
	.word	4
	.word	_Label_308
	.word	-24
	.word	4
	.word	_Label_309
	.word	-28
	.word	4
	.word	_Label_310
	.word	-32
	.word	4
	.word	0
_Label_304:
	.ascii	"ThreadStartMain\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_309:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_310:
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_311 = &_P_Kernel_threadsToBeDestroyed
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
	mov	149,r13		! source line 149
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
!   _temp_312 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
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
	.word	_Label_313
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_314
	.word	-12
	.word	4
	.word	_Label_315
	.word	-16
	.word	4
	.word	_Label_316
	.word	-20
	.word	4
	.word	0
_Label_313:
	.ascii	"ThreadFinish\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_316:
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_317 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_319		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_319
!	jmp	_Label_318
_Label_318:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_320 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_319:
! CALL STATEMENT...
!   _temp_323 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_324 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_325 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
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
	.word	_Label_326
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_327
	.word	8
	.word	4
	.word	_Label_328
	.word	-12
	.word	4
	.word	_Label_329
	.word	-16
	.word	4
	.word	_Label_330
	.word	-20
	.word	4
	.word	_Label_331
	.word	-24
	.word	4
	.word	_Label_332
	.word	-28
	.word	4
	.word	_Label_333
	.word	-32
	.word	4
	.word	_Label_334
	.word	-36
	.word	4
	.word	_Label_335
	.word	-40
	.word	4
	.word	0
_Label_326:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_327:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_335:
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_337		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_337
!	jmp	_Label_336
_Label_336:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_338
_Label_337:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_338:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
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
	.word	_Label_339
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_340
	.word	8
	.word	4
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_339:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_340:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_341:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_207_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	640,r13		! source line 640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_345		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_345
!   _temp_344 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_346
_Label_345:
!   _temp_344 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_346:
!   if _temp_344 then goto _Label_343 else goto _Label_342
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_342
	jmp	_Label_343
_Label_342:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_347 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_343:
! CALL STATEMENT...
!   _temp_348 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_351 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	655,r13		! source line 655
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_354
	cmp	r1,2
	be	_Label_355
	cmp	r1,3
	be	_Label_356
	cmp	r1,4
	be	_Label_357
	cmp	r1,5
	be	_Label_358
	jmp	_Label_352
! CASE 1...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 2...
_Label_355:
! CALL STATEMENT...
!   _temp_362 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 3...
_Label_356:
! CALL STATEMENT...
!   _temp_363 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 4...
_Label_357:
! CALL STATEMENT...
!   _temp_364 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 5...
_Label_358:
! CALL STATEMENT...
!   _temp_365 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_353
! DEFAULT CASE...
_Label_352:
! CALL STATEMENT...
!   _temp_366 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	672,r13		! source line 672
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_353:
! CALL STATEMENT...
!   _temp_367 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_368 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_369 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_370
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_371
	.word	8
	.word	4
	.word	_Label_372
	.word	-16
	.word	4
	.word	_Label_373
	.word	-20
	.word	4
	.word	_Label_374
	.word	-24
	.word	4
	.word	_Label_375
	.word	-28
	.word	4
	.word	_Label_376
	.word	-32
	.word	4
	.word	_Label_377
	.word	-36
	.word	4
	.word	_Label_378
	.word	-40
	.word	4
	.word	_Label_379
	.word	-44
	.word	4
	.word	_Label_380
	.word	-48
	.word	4
	.word	_Label_381
	.word	-52
	.word	4
	.word	_Label_382
	.word	-56
	.word	4
	.word	_Label_383
	.word	-60
	.word	4
	.word	_Label_384
	.word	-64
	.word	4
	.word	_Label_385
	.word	-68
	.word	4
	.word	_Label_386
	.word	-72
	.word	4
	.word	_Label_387
	.word	-76
	.word	4
	.word	_Label_388
	.word	-9
	.word	1
	.word	_Label_389
	.word	-80
	.word	4
	.word	0
_Label_370:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_371:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_388:
	.byte	'C'
	.ascii	"_temp_344\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_206_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	1060,r13		! source line 1060
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_390 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1064,r13		! source line 1064
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1065,r13		! source line 1065
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_391
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_392
	.word	8
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	0
_Label_391:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_392:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_390\0"
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
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
	mov	1070,r13		! source line 1070
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_394 = *_temp_395  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_394) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = _temp_394 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_396 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1087,r13		! source line 1087
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_398 = *_temp_399  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_398) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = _temp_398 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_397 = _temp_400		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_401 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_397  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_402 = *_temp_403  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_404 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_402  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_406 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_405 = *_temp_406  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_405) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _temp_405 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_407 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_408 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_408 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_409 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_409 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1099,r13		! source line 1099
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1099,r13		! source line 1099
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
	.word	_Label_410
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_411
	.word	8
	.word	4
	.word	_Label_412
	.word	-12
	.word	4
	.word	_Label_413
	.word	-16
	.word	4
	.word	_Label_414
	.word	-20
	.word	4
	.word	_Label_415
	.word	-24
	.word	4
	.word	_Label_416
	.word	-28
	.word	4
	.word	_Label_417
	.word	-32
	.word	4
	.word	_Label_418
	.word	-36
	.word	4
	.word	_Label_419
	.word	-40
	.word	4
	.word	_Label_420
	.word	-44
	.word	4
	.word	_Label_421
	.word	-48
	.word	4
	.word	_Label_422
	.word	-52
	.word	4
	.word	_Label_423
	.word	-56
	.word	4
	.word	_Label_424
	.word	-60
	.word	4
	.word	_Label_425
	.word	-64
	.word	4
	.word	_Label_426
	.word	-68
	.word	4
	.word	_Label_427
	.word	-72
	.word	4
	.word	_Label_428
	.word	-76
	.word	4
	.word	0
_Label_410:
	.ascii	"ProcessFinish\0"
	.align
_Label_411:
	.byte	'I'
	.ascii	"exitStatus\0"
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
	.ascii	"_temp_398\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"oldIntStat\0"
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
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
	mov	1603,r13		! source line 1603
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1615,r13		! source line 1615
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
	mov	1616,r13		! source line 1616
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1616,r13		! source line 1616
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
	.word	_Label_429
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_429:
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
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
	mov	1621,r13		! source line 1621
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0IF",r10
!   _temp_433 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_434 = _temp_433 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_432 = *_temp_434  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_432 == 0 then goto _Label_431		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_431
!	jmp	_Label_430
_Label_430:
! THEN...
	mov	1636,r13		! source line 1636
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0SE",r10
!   _temp_436 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_437 = _temp_436 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_435 = *_temp_437  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_435) then goto _runtimeErrorNullPointer
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
_Label_431:
! RETURN STATEMENT...
	mov	1635,r13		! source line 1635
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
	.word	_Label_438
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_439
	.word	-12
	.word	4
	.word	_Label_440
	.word	-16
	.word	4
	.word	_Label_441
	.word	-20
	.word	4
	.word	_Label_442
	.word	-24
	.word	4
	.word	_Label_443
	.word	-28
	.word	4
	.word	_Label_444
	.word	-32
	.word	4
	.word	0
_Label_438:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_432\0"
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
	mov	1643,r13		! source line 1643
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1652,r13		! source line 1652
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
	.word	_Label_445
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_445:
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
	mov	1657,r13		! source line 1657
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_446 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1664,r13		! source line 1664
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
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
	.word	_Label_447
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_448
	.word	-12
	.word	4
	.word	0
_Label_447:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_446\0"
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
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
	mov	1669,r13		! source line 1669
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_449 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1676,r13		! source line 1676
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1676,r13		! source line 1676
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
	.word	_Label_450
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_451
	.word	-12
	.word	4
	.word	0
_Label_450:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_449\0"
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	1681,r13		! source line 1681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_452 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
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
	.word	_Label_453
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_454
	.word	-12
	.word	4
	.word	0
_Label_453:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_452\0"
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	1693,r13		! source line 1693
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_455 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1700,r13		! source line 1700
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
	.word	_Label_456
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_457
	.word	-12
	.word	4
	.word	0
_Label_456:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_455\0"
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	1705,r13		! source line 1705
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_458 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1712,r13		! source line 1712
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
	.word	_Label_459
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_460
	.word	-12
	.word	4
	.word	0
_Label_459:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_458\0"
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
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	1717,r13		! source line 1717
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_461 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1724,r13		! source line 1724
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
	.word	_Label_462
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_463
	.word	-12
	.word	4
	.word	0
_Label_462:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_461\0"
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	1729,r13		! source line 1729
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_464 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1736,r13		! source line 1736
	mov	"\0\0CA",r10
	call	_function_205_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1736,r13		! source line 1736
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
	.word	_Label_465
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_466
	.word	-12
	.word	4
	.word	0
_Label_465:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_205_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	1741,r13		! source line 1741
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_467 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1747,r13		! source line 1747
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_468 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_472 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_471 = *_temp_472  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_471 == 0 then goto _Label_470		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_470
!	jmp	_Label_469
_Label_469:
! THEN...
	mov	1752,r13		! source line 1752
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_474 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_473 = *_temp_474  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_473) then goto _runtimeErrorNullPointer
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
	jmp	_Label_475
_Label_470:
! ELSE...
	mov	1754,r13		! source line 1754
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_476 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_476  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_475:
! SEND STATEMENT...
	mov	1756,r13		! source line 1756
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
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_477
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_478
	.word	8
	.word	4
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
	.word	_Label_485
	.word	-36
	.word	4
	.word	0
_Label_477:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_478:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_467\0"
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1767,r13		! source line 1767
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1788,r13		! source line 1788
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3375
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_486
_Label_3375:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_486
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_486
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_500,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_500:
	jmp	_Label_492	! 1:	
	jmp	_Label_499	! 2:	
	jmp	_Label_489	! 3:	
	jmp	_Label_488	! 4:	
	jmp	_Label_491	! 5:	
	jmp	_Label_490	! 6:	
	jmp	_Label_493	! 7:	
	jmp	_Label_494	! 8:	
	jmp	_Label_495	! 9:	
	jmp	_Label_496	! 10:	
	jmp	_Label_497	! 11:	
	jmp	_Label_498	! 12:	
! CASE 4...
_Label_488:
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0RE",r10
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_501  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_501  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_489:
! CALL STATEMENT...
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_490:
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_502  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_502  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_491:
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_503  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_503  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_492:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_493:
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_504  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_504  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_494:
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_505  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_505  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_495:
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
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
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_506  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_506  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_496:
! RETURN STATEMENT...
	mov	1808,r13		! source line 1808
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
	mov	1808,r13		! source line 1808
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_507  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_507  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_497:
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_508  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_508  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_498:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_499:
! CALL STATEMENT...
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_486:
! CALL STATEMENT...
!   _temp_509 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1819,r13		! source line 1819
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_510 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1821,r13		! source line 1821
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_487:
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
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
	.word	_Label_511
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_512
	.word	8
	.word	4
	.word	_Label_513
	.word	12
	.word	4
	.word	_Label_514
	.word	16
	.word	4
	.word	_Label_515
	.word	20
	.word	4
	.word	_Label_516
	.word	24
	.word	4
	.word	_Label_517
	.word	-12
	.word	4
	.word	_Label_518
	.word	-16
	.word	4
	.word	_Label_519
	.word	-20
	.word	4
	.word	_Label_520
	.word	-24
	.word	4
	.word	_Label_521
	.word	-28
	.word	4
	.word	_Label_522
	.word	-32
	.word	4
	.word	_Label_523
	.word	-36
	.word	4
	.word	_Label_524
	.word	-40
	.word	4
	.word	_Label_525
	.word	-44
	.word	4
	.word	_Label_526
	.word	-48
	.word	4
	.word	0
_Label_511:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_512:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_513:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_514:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_515:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_516:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_501\0"
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	1828,r13		! source line 1828
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1834,r13		! source line 1834
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
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
	.word	_Label_527
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_528
	.word	8
	.word	4
	.word	0
_Label_527:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_528:
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	1839,r13		! source line 1839
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_529 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1842,r13		! source line 1842
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1842,r13		! source line 1842
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
	.word	_Label_530
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_531
	.word	-12
	.word	4
	.word	0
_Label_530:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_529\0"
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	1848,r13		! source line 1848
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1851,r13		! source line 1851
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
	mov	1851,r13		! source line 1851
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
	.word	_Label_532
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_532:
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
	mov	49,r1
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	1856,r13		! source line 1856
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0AS",r10
	mov	1872,r13		! source line 1872
	mov	"\0\0SE",r10
!   _temp_533 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-168]
!   Send message GetANewProcess
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0AS",r10
	mov	1873,r13		! source line 1873
	mov	"\0\0SE",r10
!   _temp_534 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-164]
!   Send message GetANewThread
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_535 = newPCB + 24
	load	[r14+-176],r1
	add	r1,24,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_535 = newTh  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r14+-160],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_536 = newPCB + 16
	load	[r14+-176],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_538 = *_temp_539  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_538) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = _temp_538 + 12
	load	[r14+-148],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_537 = *_temp_540  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_536 = _temp_537  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r14+-156],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_541 = newTh + 4160
	load	[r14+-172],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: *_temp_541 = newPCB  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r14+-136],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_542 = newTh + 76
	load	[r14+-172],r1
	add	r1,76,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_542 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-132],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_544 = newTh + 4096
	load	[r14+-172],r1
	add	r1,4096,r1
	store	r1,[r14+-124]
!   Move address of _temp_544 [0 ] into _temp_545
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_543 = _temp_545		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_546 = newTh + 68
	load	[r14+-172],r1
	add	r1,68,r1
	store	r1,[r14+-116]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_548 = newTh + 88
	load	[r14+-172],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   Move address of _temp_548 [999 ] into _temp_549
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   _temp_547 = _temp_549		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-112]
!   Data Move: *_temp_546 = _temp_547  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-116],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_551 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_550 = *_temp_551  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_550) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_552 = _temp_550 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   _temp_553 = _temp_552 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: numpages = *_temp_553  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-188]
! SEND STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_555 = newPCB + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_554 = _temp_555		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-84]
!   _temp_556 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_554  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numpages  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-180]
! WHILE STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0WH",r10
_Label_557:
!   if i >= numpages then goto _Label_559		(int)
	load	[r14+-180],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_559
!	jmp	_Label_558
_Label_558:
	mov	1889,r13		! source line 1889
	mov	"\0\0WB",r10
! CALL STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_561 = newPCB + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
	mov	1890,r13		! source line 1890
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_563 = *_temp_564  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_563) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = _temp_563 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_562  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_560  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_562  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1890,r13		! source line 1890
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0IF",r10
	mov	1891,r13		! source line 1891
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_569 = *_temp_570  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_569) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = _temp_569 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_568  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_572 = _temp_568 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_572 then goto _Label_567 else goto _Label_566
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_566
	jmp	_Label_567
_Label_566:
! THEN...
	mov	1892,r13		! source line 1892
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = newPCB + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_574
_Label_567:
! ELSE...
	mov	1893,r13		! source line 1893
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0IF",r10
	mov	1893,r13		! source line 1893
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_578 = *_temp_579  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_578) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_580 = _temp_578 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_577  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_581 = _temp_577 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_581 then goto _Label_576 else goto _Label_575
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_575
	jmp	_Label_576
_Label_575:
! THEN...
	mov	1894,r13		! source line 1894
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = newPCB + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_576:
! END IF...
_Label_574:
! ASSIGNMENT STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-180]
! END WHILE...
	jmp	_Label_557
_Label_559:
! ASSIGNMENT STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldPCint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! SEND STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   _temp_583 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-16]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_583  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldPCint  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_584
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_585
	.word	-16
	.word	4
	.word	_Label_586
	.word	-20
	.word	4
	.word	_Label_587
	.word	-9
	.word	1
	.word	_Label_588
	.word	-24
	.word	4
	.word	_Label_589
	.word	-28
	.word	4
	.word	_Label_590
	.word	-32
	.word	4
	.word	_Label_591
	.word	-10
	.word	1
	.word	_Label_592
	.word	-36
	.word	4
	.word	_Label_593
	.word	-11
	.word	1
	.word	_Label_594
	.word	-40
	.word	4
	.word	_Label_595
	.word	-44
	.word	4
	.word	_Label_596
	.word	-48
	.word	4
	.word	_Label_597
	.word	-12
	.word	1
	.word	_Label_598
	.word	-52
	.word	4
	.word	_Label_599
	.word	-56
	.word	4
	.word	_Label_600
	.word	-60
	.word	4
	.word	_Label_601
	.word	-64
	.word	4
	.word	_Label_602
	.word	-68
	.word	4
	.word	_Label_603
	.word	-72
	.word	4
	.word	_Label_604
	.word	-76
	.word	4
	.word	_Label_605
	.word	-80
	.word	4
	.word	_Label_606
	.word	-84
	.word	4
	.word	_Label_607
	.word	-88
	.word	4
	.word	_Label_608
	.word	-92
	.word	4
	.word	_Label_609
	.word	-96
	.word	4
	.word	_Label_610
	.word	-100
	.word	4
	.word	_Label_611
	.word	-104
	.word	4
	.word	_Label_612
	.word	-108
	.word	4
	.word	_Label_613
	.word	-112
	.word	4
	.word	_Label_614
	.word	-116
	.word	4
	.word	_Label_615
	.word	-120
	.word	4
	.word	_Label_616
	.word	-124
	.word	4
	.word	_Label_617
	.word	-128
	.word	4
	.word	_Label_618
	.word	-132
	.word	4
	.word	_Label_619
	.word	-136
	.word	4
	.word	_Label_620
	.word	-140
	.word	4
	.word	_Label_621
	.word	-144
	.word	4
	.word	_Label_622
	.word	-148
	.word	4
	.word	_Label_623
	.word	-152
	.word	4
	.word	_Label_624
	.word	-156
	.word	4
	.word	_Label_625
	.word	-160
	.word	4
	.word	_Label_626
	.word	-164
	.word	4
	.word	_Label_627
	.word	-168
	.word	4
	.word	_Label_628
	.word	-172
	.word	4
	.word	_Label_629
	.word	-176
	.word	4
	.word	_Label_630
	.word	-180
	.word	4
	.word	_Label_631
	.word	-184
	.word	4
	.word	_Label_632
	.word	-188
	.word	4
	.word	_Label_633
	.word	-192
	.word	4
	.word	0
_Label_584:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_587:
	.byte	'C'
	.ascii	"_temp_581\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_591:
	.byte	'C'
	.ascii	"_temp_577\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_593:
	.byte	'C'
	.ascii	"_temp_572\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_597:
	.byte	'C'
	.ascii	"_temp_568\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_628:
	.byte	'P'
	.ascii	"newTh\0"
	.align
_Label_629:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_630:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_631:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"numpages\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"oldPCint\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_P_Kernel_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	1907,r13		! source line 1907
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1913,r13		! source line 1913
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_634 = *_temp_635  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_634) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _temp_634 + 32
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
!   _temp_638 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_638 [0 ] into _temp_639
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
!   _temp_637 = _temp_639		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_640 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_641 [14 ] into _temp_642
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
!   Data Move: initUserStackTop = *_temp_642  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_643 [999 ] into _temp_644
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
!   initSystemStackTop = _temp_644		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=userPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_645
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_646
	.word	8
	.word	4
	.word	_Label_647
	.word	-12
	.word	4
	.word	_Label_648
	.word	-16
	.word	4
	.word	_Label_649
	.word	-20
	.word	4
	.word	_Label_650
	.word	-24
	.word	4
	.word	_Label_651
	.word	-28
	.word	4
	.word	_Label_652
	.word	-32
	.word	4
	.word	_Label_653
	.word	-36
	.word	4
	.word	_Label_654
	.word	-40
	.word	4
	.word	_Label_655
	.word	-44
	.word	4
	.word	_Label_656
	.word	-48
	.word	4
	.word	_Label_657
	.word	-52
	.word	4
	.word	_Label_658
	.word	-56
	.word	4
	.word	_Label_659
	.word	-60
	.word	4
	.word	_Label_660
	.word	-64
	.word	4
	.word	0
_Label_645:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_646:
	.byte	'I'
	.ascii	"userPC\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_659:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_660:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-116]
! WHILE STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0WH",r10
_Label_661:
!   if i >= 10 then goto _Label_663		(int)
	load	[r14+-116],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_663
!	jmp	_Label_662
_Label_662:
	mov	1939,r13		! source line 1939
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0IF",r10
!   _temp_669 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_670 = _temp_669 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Move address of _temp_670 [i ] into _temp_671
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   _temp_672 = _temp_671 + 12
	load	[r14+-100],r1
	add	r1,12,r1
	store	r1,[r14+-96]
!   Data Move: _temp_668 = *_temp_672  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if processID != _temp_668 then goto _Label_665		(int)
	load	[r14+8],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bne	_Label_665
!	jmp	_Label_667
_Label_667:
!   _temp_674 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_675 = _temp_674 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Move address of _temp_675 [i ] into _temp_676
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   _temp_677 = _temp_676 + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_673 = *_temp_677  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if _temp_673 == 3 then goto _Label_665		(int)
	load	[r14+-92],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_665
!	jmp	_Label_666
_Label_666:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_680 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_679 = *_temp_680  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_679) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_681 = _temp_679 + 12
	load	[r14+-68],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Data Move: _temp_678 = *_temp_681  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_683 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-52]
!   _temp_684 = _temp_683 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Move address of _temp_684 [i ] into _temp_685
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_686 = _temp_685 + 16
	load	[r14+-44],r1
	add	r1,16,r1
	store	r1,[r14+-40]
!   Data Move: _temp_682 = *_temp_686  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_678 != _temp_682 then goto _Label_665		(int)
	load	[r14+-72],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bne	_Label_665
!	jmp	_Label_664
_Label_664:
! THEN...
	mov	1942,r13		! source line 1942
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_687 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_687  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1942,r13		! source line 1942
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0AS",r10
	mov	1943,r13		! source line 1943
	mov	"\0\0SE",r10
!   _temp_689 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   _temp_690 = _temp_689 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Move address of _temp_690 [i ] into _temp_691
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   _temp_688 = _temp_691		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-32]
!   _temp_692 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_688  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=returnStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0RE",r10
!   ReturnResult: returnStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_665:
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-116],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! END WHILE...
	jmp	_Label_661
_Label_663:
! CALL STATEMENT...
!   _temp_693 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1950,r13		! source line 1950
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
	.word	_Label_694
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_695
	.word	8
	.word	4
	.word	_Label_696
	.word	-12
	.word	4
	.word	_Label_697
	.word	-16
	.word	4
	.word	_Label_698
	.word	-20
	.word	4
	.word	_Label_699
	.word	-24
	.word	4
	.word	_Label_700
	.word	-28
	.word	4
	.word	_Label_701
	.word	-32
	.word	4
	.word	_Label_702
	.word	-36
	.word	4
	.word	_Label_703
	.word	-40
	.word	4
	.word	_Label_704
	.word	-44
	.word	4
	.word	_Label_705
	.word	-48
	.word	4
	.word	_Label_706
	.word	-52
	.word	4
	.word	_Label_707
	.word	-56
	.word	4
	.word	_Label_708
	.word	-60
	.word	4
	.word	_Label_709
	.word	-64
	.word	4
	.word	_Label_710
	.word	-68
	.word	4
	.word	_Label_711
	.word	-72
	.word	4
	.word	_Label_712
	.word	-76
	.word	4
	.word	_Label_713
	.word	-80
	.word	4
	.word	_Label_714
	.word	-84
	.word	4
	.word	_Label_715
	.word	-88
	.word	4
	.word	_Label_716
	.word	-92
	.word	4
	.word	_Label_717
	.word	-96
	.word	4
	.word	_Label_718
	.word	-100
	.word	4
	.word	_Label_719
	.word	-104
	.word	4
	.word	_Label_720
	.word	-108
	.word	4
	.word	_Label_721
	.word	-112
	.word	4
	.word	_Label_722
	.word	-116
	.word	4
	.word	_Label_723
	.word	-120
	.word	4
	.word	0
_Label_694:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_695:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_722:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"returnStatus\0"
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
	mov	65,r1
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	1955,r13		! source line 1955
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3383:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3383
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! SEND STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0SE",r10
!   _temp_725 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-108]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
	mov	1971,r13		! source line 1971
	mov	"\0\0SE",r10
!   _temp_726 = &strBuffer
	add	r14,-252,r1
	store	r1,[r14+-104]
!   _temp_727 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_729 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_728 = *_temp_729  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_728) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_730 = _temp_728 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_726  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_727  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_732		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_732
!	jmp	_Label_731
_Label_731:
! THEN...
	mov	1974,r13		! source line 1974
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_732:
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
	mov	1976,r13		! source line 1976
	mov	"\0\0SE",r10
!   _temp_733 = &strBuffer
	add	r14,-252,r1
	store	r1,[r14+-84]
!   _temp_734 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_733  sizeInBytes=4
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
!   Retrieve Result: targetName=pOF  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! IF STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0IF",r10
!   if pOF == 0 then goto _Label_738		(int)
	load	[r14+-208],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_738
!   _temp_737 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_739
_Label_738:
!   _temp_737 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_739:
!   if _temp_737 then goto _Label_736 else goto _Label_735
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_735
	jmp	_Label_736
_Label_735:
! THEN...
	mov	1979,r13		! source line 1979
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_736:
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
	mov	1982,r13		! source line 1982
	mov	"\0\0SE",r10
!   _temp_740 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (pOF) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_740  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-208],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_742		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_742
!	jmp	_Label_741
_Label_741:
! THEN...
	mov	1984,r13		! source line 1984
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_742:
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_744 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_743 = *_temp_744  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_743) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_745 = _temp_743 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_745 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3384:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3384
! SEND STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_748 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_747 = *_temp_748  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_747) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_749 = _temp_747 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_746 = _temp_749		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_750 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_746  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0SE",r10
!   _temp_751 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=pOF  sizeInBytes=4
	load	[r14+-208],r1
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
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
!   _temp_753 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_754 = _temp_753 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_752 = *_temp_754  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_752 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_755 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_755 [999 ] into _temp_756
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_756		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_757 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_757 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+8]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_758
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_759
	.word	8
	.word	4
	.word	_Label_760
	.word	-16
	.word	4
	.word	_Label_761
	.word	-20
	.word	4
	.word	_Label_762
	.word	-24
	.word	4
	.word	_Label_763
	.word	-28
	.word	4
	.word	_Label_764
	.word	-32
	.word	4
	.word	_Label_765
	.word	-36
	.word	4
	.word	_Label_766
	.word	-40
	.word	4
	.word	_Label_767
	.word	-44
	.word	4
	.word	_Label_768
	.word	-48
	.word	4
	.word	_Label_769
	.word	-52
	.word	4
	.word	_Label_770
	.word	-56
	.word	4
	.word	_Label_771
	.word	-60
	.word	4
	.word	_Label_772
	.word	-64
	.word	4
	.word	_Label_773
	.word	-68
	.word	4
	.word	_Label_774
	.word	-72
	.word	4
	.word	_Label_775
	.word	-76
	.word	4
	.word	_Label_776
	.word	-9
	.word	1
	.word	_Label_777
	.word	-80
	.word	4
	.word	_Label_778
	.word	-84
	.word	4
	.word	_Label_779
	.word	-88
	.word	4
	.word	_Label_780
	.word	-92
	.word	4
	.word	_Label_781
	.word	-96
	.word	4
	.word	_Label_782
	.word	-100
	.word	4
	.word	_Label_783
	.word	-104
	.word	4
	.word	_Label_784
	.word	-108
	.word	4
	.word	_Label_785
	.word	-112
	.word	4
	.word	_Label_786
	.word	-204
	.word	92
	.word	_Label_787
	.word	-208
	.word	4
	.word	_Label_788
	.word	-212
	.word	4
	.word	_Label_789
	.word	-216
	.word	4
	.word	_Label_790
	.word	-220
	.word	4
	.word	_Label_791
	.word	-224
	.word	4
	.word	_Label_792
	.word	-228
	.word	4
	.word	_Label_793
	.word	-252
	.word	24
	.word	0
_Label_758:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_759:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_776:
	.byte	'C'
	.ascii	"_temp_737\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_786:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_787:
	.byte	'P'
	.ascii	"pOF\0"
	.align
_Label_788:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_789:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_790:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_791:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_792:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_793:
	.byte	'A'
	.ascii	"strBuffer\0"
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	2002,r13		! source line 2002
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_794 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_795 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_796 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_797 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
	mov	2012,r13		! source line 2012
	mov	"\0\0SE",r10
!   _temp_798 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-32]
!   _temp_799 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_801 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_800 = *_temp_801  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_800) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_802 = _temp_800 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_798  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_799  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_803 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2013,r13		! source line 2013
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2014,r13		! source line 2014
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
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
	.word	_Label_804
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_805
	.word	8
	.word	4
	.word	_Label_806
	.word	-12
	.word	4
	.word	_Label_807
	.word	-16
	.word	4
	.word	_Label_808
	.word	-20
	.word	4
	.word	_Label_809
	.word	-24
	.word	4
	.word	_Label_810
	.word	-28
	.word	4
	.word	_Label_811
	.word	-32
	.word	4
	.word	_Label_812
	.word	-36
	.word	4
	.word	_Label_813
	.word	-40
	.word	4
	.word	_Label_814
	.word	-44
	.word	4
	.word	_Label_815
	.word	-48
	.word	4
	.word	_Label_816
	.word	-72
	.word	24
	.word	_Label_817
	.word	-76
	.word	4
	.word	0
_Label_804:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_805:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_816:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_817:
	.byte	'I'
	.ascii	"ret\0"
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	2021,r13		! source line 2021
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_818 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2026,r13		! source line 2026
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_819 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_819  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_820 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_820  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_821 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_821  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
	mov	2031,r13		! source line 2031
	mov	"\0\0SE",r10
!   _temp_822 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-32]
!   _temp_823 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_825 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_824 = *_temp_825  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_824) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_826 = _temp_824 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_822  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_823  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_827 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_827  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2035,r13		! source line 2035
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
	.word	_Label_828
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_829
	.word	8
	.word	4
	.word	_Label_830
	.word	-12
	.word	4
	.word	_Label_831
	.word	-16
	.word	4
	.word	_Label_832
	.word	-20
	.word	4
	.word	_Label_833
	.word	-24
	.word	4
	.word	_Label_834
	.word	-28
	.word	4
	.word	_Label_835
	.word	-32
	.word	4
	.word	_Label_836
	.word	-36
	.word	4
	.word	_Label_837
	.word	-40
	.word	4
	.word	_Label_838
	.word	-44
	.word	4
	.word	_Label_839
	.word	-48
	.word	4
	.word	_Label_840
	.word	-72
	.word	24
	.word	_Label_841
	.word	-76
	.word	4
	.word	0
_Label_828:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_829:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_840:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_841:
	.byte	'I'
	.ascii	"ret\0"
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	2040,r13		! source line 2040
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   _temp_842 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_843 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_845 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_844 = *_temp_845  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_844) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _temp_844 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_842  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_843  sizeInBytes=4
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
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_847 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2046,r13		! source line 2046
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_848 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2047,r13		! source line 2047
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2048,r13		! source line 2048
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2049,r13		! source line 2049
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_849 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_850 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2052,r13		! source line 2052
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_851 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2053,r13		! source line 2053
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2057,r13		! source line 2057
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
	.word	_Label_852
	.word	12		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_853
	.word	8
	.word	4
	.word	_Label_854
	.word	12
	.word	4
	.word	_Label_855
	.word	16
	.word	4
	.word	_Label_856
	.word	-12
	.word	4
	.word	_Label_857
	.word	-16
	.word	4
	.word	_Label_858
	.word	-20
	.word	4
	.word	_Label_859
	.word	-24
	.word	4
	.word	_Label_860
	.word	-28
	.word	4
	.word	_Label_861
	.word	-32
	.word	4
	.word	_Label_862
	.word	-36
	.word	4
	.word	_Label_863
	.word	-40
	.word	4
	.word	_Label_864
	.word	-44
	.word	4
	.word	_Label_865
	.word	-48
	.word	4
	.word	_Label_866
	.word	-72
	.word	24
	.word	_Label_867
	.word	-76
	.word	4
	.word	0
_Label_852:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_853:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_854:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_855:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_866:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_867:
	.byte	'I'
	.ascii	"ret\0"
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	2062,r13		! source line 2062
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   _temp_868 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_869 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_871 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_870 = *_temp_871  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_870) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_872 = _temp_870 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_868  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_869  sizeInBytes=4
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
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_873 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2068,r13		! source line 2068
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_874 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2069,r13		! source line 2069
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2070,r13		! source line 2070
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2071,r13		! source line 2071
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_875 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2072,r13		! source line 2072
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_876 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2074,r13		! source line 2074
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_877 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2075,r13		! source line 2075
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2077,r13		! source line 2077
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2078,r13		! source line 2078
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
	.word	_Label_878
	.word	12		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_879
	.word	8
	.word	4
	.word	_Label_880
	.word	12
	.word	4
	.word	_Label_881
	.word	16
	.word	4
	.word	_Label_882
	.word	-12
	.word	4
	.word	_Label_883
	.word	-16
	.word	4
	.word	_Label_884
	.word	-20
	.word	4
	.word	_Label_885
	.word	-24
	.word	4
	.word	_Label_886
	.word	-28
	.word	4
	.word	_Label_887
	.word	-32
	.word	4
	.word	_Label_888
	.word	-36
	.word	4
	.word	_Label_889
	.word	-40
	.word	4
	.word	_Label_890
	.word	-44
	.word	4
	.word	_Label_891
	.word	-48
	.word	4
	.word	_Label_892
	.word	-72
	.word	24
	.word	_Label_893
	.word	-76
	.word	4
	.word	0
_Label_878:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_879:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_880:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_881:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_892:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_893:
	.byte	'I'
	.ascii	"ret\0"
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	2083,r13		! source line 2083
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_894 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2085,r13		! source line 2085
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_895 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2086,r13		! source line 2086
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2087,r13		! source line 2087
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2088,r13		! source line 2088
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_896 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2089,r13		! source line 2089
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2090,r13		! source line 2090
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2091,r13		! source line 2091
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2094,r13		! source line 2094
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
	.word	_Label_897
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_898
	.word	8
	.word	4
	.word	_Label_899
	.word	12
	.word	4
	.word	_Label_900
	.word	-12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-20
	.word	4
	.word	0
_Label_897:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_898:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_899:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_894\0"
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	2100,r13		! source line 2100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_903 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_903  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2102,r13		! source line 2102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_904 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_904  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2103,r13		! source line 2103
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2104,r13		! source line 2104
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2105,r13		! source line 2105
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2105,r13		! source line 2105
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
	.word	_Label_905
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_906
	.word	8
	.word	4
	.word	_Label_907
	.word	-12
	.word	4
	.word	_Label_908
	.word	-16
	.word	4
	.word	0
_Label_905:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_906:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_903\0"
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	2111,r13		! source line 2111
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
	mov	2115,r13		! source line 2115
	mov	"\0\0SE",r10
!   _temp_909 = &_P_Kernel_threadManager
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
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0SE",r10
!   _temp_910 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_910  sizeInBytes=4
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
	mov	2117,r13		! source line 2117
	mov	"\0\0SE",r10
!   _temp_911 = _function_204_StartUserProcess
	set	_function_204_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_912 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_911  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_912  sizeInBytes=4
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
	mov	2117,r13		! source line 2117
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
	.word	_Label_913
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_914
	.word	-12
	.word	4
	.word	_Label_915
	.word	-16
	.word	4
	.word	_Label_916
	.word	-20
	.word	4
	.word	_Label_917
	.word	-24
	.word	4
	.word	_Label_918
	.word	-28
	.word	4
	.word	0
_Label_913:
	.ascii	"InitFirstProcess\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_918:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_204_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	2122,r13		! source line 2122
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
	mov	2133,r13		! source line 2133
	mov	"\0\0SE",r10
!   _temp_919 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_920 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_920 = pPCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_921 = pPCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_921 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
	mov	2136,r13		! source line 2136
	mov	"\0\0SE",r10
!   _temp_922 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-56]
!   _temp_923 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_922  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pOF  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
	mov	2137,r13		! source line 2137
	mov	"\0\0SE",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_925 = pPCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_924 = _temp_925		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (pOF) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_924  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0SE",r10
!   _temp_926 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=pOF  sizeInBytes=4
	load	[r14+-76],r1
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
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = pPCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_929 = _temp_928 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_927 = *_temp_929  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_927 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_930 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_930 [999 ] into _temp_931
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_931		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2143,r13		! source line 2143
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0SE",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_932 = pPCB + 32
	load	[r14+-72],r1
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
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_933 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_933 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Call the function
	mov	2150,r13		! source line 2150
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_934
	.word	0		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_935
	.word	-12
	.word	4
	.word	_Label_936
	.word	-16
	.word	4
	.word	_Label_937
	.word	-20
	.word	4
	.word	_Label_938
	.word	-24
	.word	4
	.word	_Label_939
	.word	-28
	.word	4
	.word	_Label_940
	.word	-32
	.word	4
	.word	_Label_941
	.word	-36
	.word	4
	.word	_Label_942
	.word	-40
	.word	4
	.word	_Label_943
	.word	-44
	.word	4
	.word	_Label_944
	.word	-48
	.word	4
	.word	_Label_945
	.word	-52
	.word	4
	.word	_Label_946
	.word	-56
	.word	4
	.word	_Label_947
	.word	-60
	.word	4
	.word	_Label_948
	.word	-64
	.word	4
	.word	_Label_949
	.word	-68
	.word	4
	.word	_Label_950
	.word	-72
	.word	4
	.word	_Label_951
	.word	-76
	.word	4
	.word	_Label_952
	.word	-80
	.word	4
	.word	_Label_953
	.word	-84
	.word	4
	.word	_Label_954
	.word	-88
	.word	4
	.word	_Label_955
	.word	-92
	.word	4
	.word	0
_Label_934:
	.ascii	"StartUserProcess\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_950:
	.byte	'P'
	.ascii	"pPCB\0"
	.align
_Label_951:
	.byte	'P'
	.ascii	"pOF\0"
	.align
_Label_952:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_953:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_954:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_955:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_203_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	2741,r13		! source line 2741
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_956 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_956  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0AS",r10
!   _temp_957 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_957) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_959 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_959) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_958 = *_temp_959  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_957 = _temp_958  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0AS",r10
!   _temp_960 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_960) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_962 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_962) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_961 = *_temp_962  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_960 = _temp_961  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   _temp_963 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_963) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_965 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_965) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_964 = *_temp_965  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_963 = _temp_964  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_966
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_967
	.word	8
	.word	4
	.word	_Label_968
	.word	12
	.word	4
	.word	_Label_969
	.word	-16
	.word	4
	.word	_Label_970
	.word	-9
	.word	1
	.word	_Label_971
	.word	-20
	.word	4
	.word	_Label_972
	.word	-24
	.word	4
	.word	_Label_973
	.word	-10
	.word	1
	.word	_Label_974
	.word	-28
	.word	4
	.word	_Label_975
	.word	-32
	.word	4
	.word	_Label_976
	.word	-11
	.word	1
	.word	_Label_977
	.word	-36
	.word	4
	.word	_Label_978
	.word	-12
	.word	1
	.word	_Label_979
	.word	-40
	.word	4
	.word	_Label_980
	.word	-44
	.word	4
	.word	0
_Label_966:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_967:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_968:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_970:
	.byte	'C'
	.ascii	"_temp_964\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_973:
	.byte	'C'
	.ascii	"_temp_961\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_976:
	.byte	'C'
	.ascii	"_temp_958\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_978:
	.byte	'C'
	.ascii	"_temp_956\0"
	.align
_Label_979:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_980:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_202_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_printFCB,r1
	push	r1
	mov	3,r1
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	2751,r13		! source line 2751
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_981 = *_temp_982  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2752,r13		! source line 2752
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2753,r13		! source line 2753
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_printFCB:
	.word	_sourceFileName
	.word	_Label_983
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_984
	.word	8
	.word	4
	.word	_Label_985
	.word	-12
	.word	4
	.word	_Label_986
	.word	-16
	.word	4
	.word	0
_Label_983:
	.ascii	"printFCB\0"
	.align
_Label_984:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_201_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_printOpen,r1
	push	r1
	mov	4,r1
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	2756,r13		! source line 2756
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_987 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2757,r13		! source line 2757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_988 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_988  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2758,r13		! source line 2758
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_989 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2759,r13		! source line 2759
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2760,r13		! source line 2760
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
	mov	2760,r13		! source line 2760
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_printOpen:
	.word	_sourceFileName
	.word	_Label_990
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_991
	.word	8
	.word	4
	.word	_Label_992
	.word	-12
	.word	4
	.word	_Label_993
	.word	-16
	.word	4
	.word	_Label_994
	.word	-20
	.word	4
	.word	0
_Label_990:
	.ascii	"printOpen\0"
	.align
_Label_991:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_995
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_995:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_996
	.word	_sourceFileName
	.word	128		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_996:
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_998		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_998
!	jmp	_Label_997
_Label_997:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_999 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_998:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
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
	mov	235,r13		! source line 235
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
	.word	_Label_1001
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1003
	.word	12
	.word	4
	.word	_Label_1004
	.word	-12
	.word	4
	.word	_Label_1005
	.word	-16
	.word	4
	.word	0
_Label_1001:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1002:
	.ascii	"Pself\0"
	.align
_Label_1003:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_999\0"
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1007		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1007
!	jmp	_Label_1006
_Label_1006:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1008 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1007:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
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
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1010		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1010
!	jmp	_Label_1009
_Label_1009:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1011 = &waitingThreads
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
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1012 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1012 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1013 = &_P_Kernel_readyList
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
_Label_1010:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
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
	.word	_Label_1014
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1016
	.word	-12
	.word	4
	.word	_Label_1017
	.word	-16
	.word	4
	.word	_Label_1018
	.word	-20
	.word	4
	.word	_Label_1019
	.word	-24
	.word	4
	.word	_Label_1020
	.word	-28
	.word	4
	.word	_Label_1021
	.word	-32
	.word	4
	.word	0
_Label_1014:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1015:
	.ascii	"Pself\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1020:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1021:
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
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1023		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1023
!	jmp	_Label_1022
_Label_1022:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1024 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1023:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
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
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1026		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1026
!	jmp	_Label_1025
_Label_1025:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1027 = &waitingThreads
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
	mov	269,r13		! source line 269
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
_Label_1026:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
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
	.word	_Label_1028
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1030
	.word	-12
	.word	4
	.word	_Label_1031
	.word	-16
	.word	4
	.word	_Label_1032
	.word	-20
	.word	4
	.word	0
_Label_1028:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1029:
	.ascii	"Pself\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1032:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1033
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1033:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1034
	.word	_sourceFileName
	.word	141		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1034:
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
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
	mov	295,r13		! source line 295
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
	.word	_Label_1036
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	-12
	.word	4
	.word	0
_Label_1036:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1035\0"
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1040		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1040:
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
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1045		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1045
!   _temp_1044 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1046
_Label_1045:
!   _temp_1044 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1046:
!   if _temp_1044 then goto _Label_1043 else goto _Label_1042
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1042
	jmp	_Label_1043
_Label_1042:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1047
_Label_1043:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1048 = &waitingThreads
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
_Label_1047:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
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
	.word	_Label_1049
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1051
	.word	-16
	.word	4
	.word	_Label_1052
	.word	-9
	.word	1
	.word	_Label_1053
	.word	-20
	.word	4
	.word	_Label_1054
	.word	-24
	.word	4
	.word	0
_Label_1049:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1050:
	.ascii	"Pself\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1052:
	.byte	'C'
	.ascii	"_temp_1044\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1054:
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1056		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1056
!	jmp	_Label_1055
_Label_1055:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1057 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1056:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_1058 = &waitingThreads
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
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1060		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1060
!	jmp	_Label_1059
_Label_1059:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1061 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1061 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1062 = &_P_Kernel_readyList
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
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1063
_Label_1060:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1063:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
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
	.word	_Label_1064
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1066
	.word	-12
	.word	4
	.word	_Label_1067
	.word	-16
	.word	4
	.word	_Label_1068
	.word	-20
	.word	4
	.word	_Label_1069
	.word	-24
	.word	4
	.word	_Label_1070
	.word	-28
	.word	4
	.word	_Label_1071
	.word	-32
	.word	4
	.word	0
_Label_1064:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1065:
	.ascii	"Pself\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1070:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1071:
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1074		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1074
!	jmp	_Label_1073
_Label_1073:
!   _temp_1072 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1075
_Label_1074:
!   _temp_1072 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1075:
!   ReturnResult: _temp_1072  (sizeInBytes=1)
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
	.word	_Label_1076
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1078
	.word	-9
	.word	1
	.word	0
_Label_1076:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1077:
	.ascii	"Pself\0"
	.align
_Label_1078:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1079
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1079:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1080
	.word	_sourceFileName
	.word	155		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1080:
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
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
	mov	381,r13		! source line 381
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
	.word	_Label_1082
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1083
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1084
	.word	-12
	.word	4
	.word	0
_Label_1082:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1083:
	.ascii	"Pself\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1081\0"
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
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
!   Retrieve Result: targetName=_temp_1087  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1087 then goto _Label_1086 else goto _Label_1085
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1085
	jmp	_Label_1086
_Label_1085:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1088 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1086:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
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
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_1089 = &waitingThreads
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
	mov	395,r13		! source line 395
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
	mov	396,r13		! source line 396
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
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
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
	.word	_Label_1090
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1092
	.word	12
	.word	4
	.word	_Label_1093
	.word	-16
	.word	4
	.word	_Label_1094
	.word	-20
	.word	4
	.word	_Label_1095
	.word	-9
	.word	1
	.word	_Label_1096
	.word	-24
	.word	4
	.word	0
_Label_1090:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1091:
	.ascii	"Pself\0"
	.align
_Label_1092:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1095:
	.byte	'C'
	.ascii	"_temp_1087\0"
	.align
_Label_1096:
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
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
!   Retrieve Result: targetName=_temp_1099  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1099 then goto _Label_1098 else goto _Label_1097
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1097
	jmp	_Label_1098
_Label_1097:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1100 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1098:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_1101 = &waitingThreads
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
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1103		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1103
!	jmp	_Label_1102
_Label_1102:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1104 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1104 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1105 = &_P_Kernel_readyList
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
_Label_1103:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
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
	.word	_Label_1106
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1107
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1108
	.word	12
	.word	4
	.word	_Label_1109
	.word	-16
	.word	4
	.word	_Label_1110
	.word	-20
	.word	4
	.word	_Label_1111
	.word	-24
	.word	4
	.word	_Label_1112
	.word	-28
	.word	4
	.word	_Label_1113
	.word	-9
	.word	1
	.word	_Label_1114
	.word	-32
	.word	4
	.word	_Label_1115
	.word	-36
	.word	4
	.word	0
_Label_1106:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1107:
	.ascii	"Pself\0"
	.align
_Label_1108:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1113:
	.byte	'C'
	.ascii	"_temp_1099\0"
	.align
_Label_1114:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1115:
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
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
!   Retrieve Result: targetName=_temp_1118  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1118 then goto _Label_1117 else goto _Label_1116
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1116
	jmp	_Label_1117
_Label_1116:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1119 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1119  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1117:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_1120:
!	jmp	_Label_1121
_Label_1121:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_1123 = &waitingThreads
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
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1124
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1124
	jmp	_Label_1125
_Label_1124:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_1122
! END IF...
_Label_1125:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1126 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_1127 = &_P_Kernel_readyList
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
	jmp	_Label_1120
_Label_1122:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
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
	.word	_Label_1128
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1130
	.word	12
	.word	4
	.word	_Label_1131
	.word	-16
	.word	4
	.word	_Label_1132
	.word	-20
	.word	4
	.word	_Label_1133
	.word	-24
	.word	4
	.word	_Label_1134
	.word	-28
	.word	4
	.word	_Label_1135
	.word	-9
	.word	1
	.word	_Label_1136
	.word	-32
	.word	4
	.word	_Label_1137
	.word	-36
	.word	4
	.word	0
_Label_1128:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1129:
	.ascii	"Pself\0"
	.align
_Label_1130:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1135:
	.byte	'C'
	.ascii	"_temp_1118\0"
	.align
_Label_1136:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1137:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1138
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
_Label_1138:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1139
	.word	_sourceFileName
	.word	168		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1139:
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   _temp_1140 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1140) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1140 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_1141 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1141 [0 ] into _temp_1142
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
!   Data Move: *_temp_1142 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1143 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1143 [999 ] into _temp_1144
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
!   Data Move: *_temp_1144 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1145 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1145 [999 ] into _temp_1146
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
!   stackTop = _temp_1146		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1147 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1149 = &_temp_1148
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1149 = _temp_1149 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1151:
!   Data Move: *_temp_1149 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1149 = _temp_1149 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1150 = _temp_1150 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1150) then goto _Label_1151
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1151
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1152 = &_temp_1148
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3408
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3408:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1147 = *_temp_1152  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3409:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3409
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1153 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1155 = &_temp_1154
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1155 = _temp_1155 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1157:
!   Data Move: *_temp_1155 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1155 = _temp_1155 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1156 = _temp_1156 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1156) then goto _Label_1157
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1157
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1158 = &_temp_1154
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3410
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3410:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1153 = *_temp_1158  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3411:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3411
! RETURN STATEMENT...
	mov	461,r13		! source line 461
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
	.word	_Label_1159
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1160
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1161
	.word	12
	.word	4
	.word	_Label_1162
	.word	-12
	.word	4
	.word	_Label_1163
	.word	-16
	.word	4
	.word	_Label_1164
	.word	-20
	.word	4
	.word	_Label_1165
	.word	-84
	.word	64
	.word	_Label_1166
	.word	-88
	.word	4
	.word	_Label_1167
	.word	-92
	.word	4
	.word	_Label_1168
	.word	-96
	.word	4
	.word	_Label_1169
	.word	-100
	.word	4
	.word	_Label_1170
	.word	-156
	.word	56
	.word	_Label_1171
	.word	-160
	.word	4
	.word	_Label_1172
	.word	-164
	.word	4
	.word	_Label_1173
	.word	-168
	.word	4
	.word	_Label_1174
	.word	-172
	.word	4
	.word	_Label_1175
	.word	-176
	.word	4
	.word	_Label_1176
	.word	-180
	.word	4
	.word	_Label_1177
	.word	-184
	.word	4
	.word	_Label_1178
	.word	-188
	.word	4
	.word	0
_Label_1159:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1160:
	.ascii	"Pself\0"
	.align
_Label_1161:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1140\0"
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
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
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1179 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1179  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1181 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1180  sizeInBytes=4
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
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	485,r13		! source line 485
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
	.word	_Label_1182
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1184
	.word	12
	.word	4
	.word	_Label_1185
	.word	16
	.word	4
	.word	_Label_1186
	.word	-12
	.word	4
	.word	_Label_1187
	.word	-16
	.word	4
	.word	_Label_1188
	.word	-20
	.word	4
	.word	_Label_1189
	.word	-24
	.word	4
	.word	_Label_1190
	.word	-28
	.word	4
	.word	0
_Label_1182:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1183:
	.ascii	"Pself\0"
	.align
_Label_1184:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1185:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1189:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1190:
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
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1193 == _P_Kernel_currentThread then goto _Label_1192		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1192
!	jmp	_Label_1191
_Label_1191:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1194 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1194  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	507,r13		! source line 507
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1192:
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
	mov	513,r13		! source line 513
	mov	"\0\0SE",r10
!   _temp_1195 = &_P_Kernel_readyList
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
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1197		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1197
!	jmp	_Label_1196
_Label_1196:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1199		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1199
!	jmp	_Label_1198
_Label_1198:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1200 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	519,r13		! source line 519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1199:
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1202 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1201  sizeInBytes=4
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
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1197:
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
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
	.word	_Label_1203
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1204
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1205
	.word	-12
	.word	4
	.word	_Label_1206
	.word	-16
	.word	4
	.word	_Label_1207
	.word	-20
	.word	4
	.word	_Label_1208
	.word	-24
	.word	4
	.word	_Label_1209
	.word	-28
	.word	4
	.word	_Label_1210
	.word	-32
	.word	4
	.word	_Label_1211
	.word	-36
	.word	4
	.word	_Label_1212
	.word	-40
	.word	4
	.word	_Label_1213
	.word	-44
	.word	4
	.word	0
_Label_1203:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1204:
	.ascii	"Pself\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1211:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1212:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1213:
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1215		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1215
!	jmp	_Label_1214
_Label_1214:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1216 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	543,r13		! source line 543
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1215:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1219 == _P_Kernel_currentThread then goto _Label_1218		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1218
!	jmp	_Label_1217
_Label_1217:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1220 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	547,r13		! source line 547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1218:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_1221 = &_P_Kernel_readyList
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
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1222
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1222
	jmp	_Label_1223
_Label_1222:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1224 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	555,r13		! source line 555
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1223:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	557,r13		! source line 557
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
	.word	_Label_1225
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1227
	.word	-12
	.word	4
	.word	_Label_1228
	.word	-16
	.word	4
	.word	_Label_1229
	.word	-20
	.word	4
	.word	_Label_1230
	.word	-24
	.word	4
	.word	_Label_1231
	.word	-28
	.word	4
	.word	_Label_1232
	.word	-32
	.word	4
	.word	0
_Label_1225:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1226:
	.ascii	"Pself\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1232:
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_1236 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1236 [0 ] into _temp_1237
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
!   Data Move: _temp_1235 = *_temp_1237  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1235 == 606348324 then goto _Label_1234		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1234
!	jmp	_Label_1233
_Label_1233:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1238 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	569,r13		! source line 569
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1239
_Label_1234:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1243 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1243 [999 ] into _temp_1244
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
!   Data Move: _temp_1242 = *_temp_1244  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1242 == 606348324 then goto _Label_1241		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1241
!	jmp	_Label_1240
_Label_1240:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1245 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1245  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1241:
! END IF...
_Label_1239:
! RETURN STATEMENT...
	mov	568,r13		! source line 568
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
	.word	_Label_1246
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1247
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1248
	.word	-12
	.word	4
	.word	_Label_1249
	.word	-16
	.word	4
	.word	_Label_1250
	.word	-20
	.word	4
	.word	_Label_1251
	.word	-24
	.word	4
	.word	_Label_1252
	.word	-28
	.word	4
	.word	_Label_1253
	.word	-32
	.word	4
	.word	_Label_1254
	.word	-36
	.word	4
	.word	_Label_1255
	.word	-40
	.word	4
	.word	0
_Label_1246:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1247:
	.ascii	"Pself\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1235\0"
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1256 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1257 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1259 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1260 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1265 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1266 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1265  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1261:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1266 then goto _Label_1264		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1264
_Label_1262:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1267 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1268 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1268  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1269 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1271 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1271 [i ] into _temp_1272
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
!   Data Move: _temp_1270 = *_temp_1272  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1270  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1273 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1275 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1275 [i ] into _temp_1276
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
!   Data Move: _temp_1274 = *_temp_1276  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1277 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1263:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1261
! END FOR
_Label_1264:
! CALL STATEMENT...
!   _temp_1278 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-116]
!   _temp_1279 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1279  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1280 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-108]
!   _temp_1282 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1282 [0 ] into _temp_1283
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
!   _temp_1281 = _temp_1283		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1281  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	601,r13		! source line 601
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1286
	cmp	r1,2
	be	_Label_1287
	cmp	r1,3
	be	_Label_1288
	cmp	r1,4
	be	_Label_1289
	cmp	r1,5
	be	_Label_1290
	jmp	_Label_1284
! CASE 1...
_Label_1286:
! CALL STATEMENT...
!   _temp_1291 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_1285
! CASE 2...
_Label_1287:
! CALL STATEMENT...
!   _temp_1292 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_1285
! CASE 3...
_Label_1288:
! CALL STATEMENT...
!   _temp_1293 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_1285
! CASE 4...
_Label_1289:
! CALL STATEMENT...
!   _temp_1294 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_1285
! CASE 5...
_Label_1290:
! CALL STATEMENT...
!   _temp_1295 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_1285
! DEFAULT CASE...
_Label_1284:
! CALL STATEMENT...
!   _temp_1296 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1285:
! CALL STATEMENT...
!   _temp_1297 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1298 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1303 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1304 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1303  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1299:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1304 then goto _Label_1302		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1302
_Label_1300:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1305 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1306 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1307 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1309 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1309 [i ] into _temp_1310
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
!   Data Move: _temp_1308 = *_temp_1310  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1311 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1313 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1313 [i ] into _temp_1314
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
!   Data Move: _temp_1312 = *_temp_1314  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1315 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1301:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1299
! END FOR
_Label_1302:
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	633,r13		! source line 633
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
	.word	_Label_1316
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1317
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1318
	.word	-12
	.word	4
	.word	_Label_1319
	.word	-16
	.word	4
	.word	_Label_1320
	.word	-20
	.word	4
	.word	_Label_1321
	.word	-24
	.word	4
	.word	_Label_1322
	.word	-28
	.word	4
	.word	_Label_1323
	.word	-32
	.word	4
	.word	_Label_1324
	.word	-36
	.word	4
	.word	_Label_1325
	.word	-40
	.word	4
	.word	_Label_1326
	.word	-44
	.word	4
	.word	_Label_1327
	.word	-48
	.word	4
	.word	_Label_1328
	.word	-52
	.word	4
	.word	_Label_1329
	.word	-56
	.word	4
	.word	_Label_1330
	.word	-60
	.word	4
	.word	_Label_1331
	.word	-64
	.word	4
	.word	_Label_1332
	.word	-68
	.word	4
	.word	_Label_1333
	.word	-72
	.word	4
	.word	_Label_1334
	.word	-76
	.word	4
	.word	_Label_1335
	.word	-80
	.word	4
	.word	_Label_1336
	.word	-84
	.word	4
	.word	_Label_1337
	.word	-88
	.word	4
	.word	_Label_1338
	.word	-92
	.word	4
	.word	_Label_1339
	.word	-96
	.word	4
	.word	_Label_1340
	.word	-100
	.word	4
	.word	_Label_1341
	.word	-104
	.word	4
	.word	_Label_1342
	.word	-108
	.word	4
	.word	_Label_1343
	.word	-112
	.word	4
	.word	_Label_1344
	.word	-116
	.word	4
	.word	_Label_1345
	.word	-120
	.word	4
	.word	_Label_1346
	.word	-124
	.word	4
	.word	_Label_1347
	.word	-128
	.word	4
	.word	_Label_1348
	.word	-132
	.word	4
	.word	_Label_1349
	.word	-136
	.word	4
	.word	_Label_1350
	.word	-140
	.word	4
	.word	_Label_1351
	.word	-144
	.word	4
	.word	_Label_1352
	.word	-148
	.word	4
	.word	_Label_1353
	.word	-152
	.word	4
	.word	_Label_1354
	.word	-156
	.word	4
	.word	_Label_1355
	.word	-160
	.word	4
	.word	_Label_1356
	.word	-164
	.word	4
	.word	_Label_1357
	.word	-168
	.word	4
	.word	_Label_1358
	.word	-172
	.word	4
	.word	_Label_1359
	.word	-176
	.word	4
	.word	_Label_1360
	.word	-180
	.word	4
	.word	_Label_1361
	.word	-184
	.word	4
	.word	_Label_1362
	.word	-188
	.word	4
	.word	_Label_1363
	.word	-192
	.word	4
	.word	_Label_1364
	.word	-196
	.word	4
	.word	0
_Label_1316:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1317:
	.ascii	"Pself\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1363:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1364:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1365
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1365:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1366
	.word	_sourceFileName
	.word	195		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1366:
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
	mov	11475,r1
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   _temp_1367 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1369 = &_temp_1368
	set	-45892,r1
	add	r14,r1,r1
	store	r1,[r14+-4248]
!   _temp_1369 = _temp_1369 + 4
	load	[r14+-4248],r1
	add	r1,4,r1
	store	r1,[r14+-4248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1371 = zeros  (sizeInBytes=4164)
	add	r14,-4240,r4
	mov	1041,r3
_Label_3418:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3418
!   _temp_1371 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4240]
	mov	10,r1
	store	r1,[r14+-4244]
_Label_1373:
!   Data Move: *_temp_1369 = _temp_1371  (sizeInBytes=4164)
	add	r14,-4240,r5
	load	[r14+-4248],r4
	mov	1041,r3
_Label_3419:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3419
!   _temp_1369 = _temp_1369 + 4164
	load	[r14+-4248],r1
	add	r1,4164,r1
	store	r1,[r14+-4248]
!   _temp_1370 = _temp_1370 + -1
	load	[r14+-4244],r1
	add	r1,-1,r1
	store	r1,[r14+-4244]
!   if intNotZero (_temp_1370) then goto _Label_1373
	load	[r14+-4244],r1
	cmp	r1,r0
	bne	_Label_1373
!   Initialize the array size...
	mov	10,r1
	set	-45892,r2
	store	r1,[r14+r2]
!   _temp_1374 = &_temp_1368
	set	-45892,r1
	add	r14,r1,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	set	-45896,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3420
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3420:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1367 = *_temp_1374  (sizeInBytes=41644)
	load	[r14+-72],r5
	set	-45896,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3421:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3421
! ASSIGNMENT STATEMENT...
	mov	699,r13		! source line 699
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
	mov	700,r13		! source line 700
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
	mov	701,r13		! source line 701
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
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_1378 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
!   _temp_1379 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	713,r13		! source line 713
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	set	-45900,r2
	store	r1,[r14+r2]
! WHILE STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0WH",r10
_Label_1380:
!   if i >= 10 then goto _Label_1382		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1382
!	jmp	_Label_1381
_Label_1381:
	mov	713,r13		! source line 713
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0SE",r10
!   _temp_1383 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   _temp_1384 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1384 [i ] into _temp_1385
!     make sure index expr is >= 0
	set	-45900,r2
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
!   Prepare Argument: offset=12  value=_temp_1383  sizeInBytes=4
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
	mov	716,r13		! source line 716
	mov	"\0\0AS",r10
!   _temp_1386 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1386 [i ] into _temp_1387
!     make sure index expr is >= 0
	set	-45900,r2
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
!   _temp_1388 = _temp_1387 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1388 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	-45900,r2
	store	r1,[r14+r2]
! END WHILE...
	jmp	_Label_1380
_Label_1382:
! ASSIGNMENT STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	set	-45900,r2
	store	r1,[r14+r2]
! WHILE STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0WH",r10
_Label_1389:
!   if i >= 10 then goto _Label_1391		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1391
!	jmp	_Label_1390
_Label_1390:
	mov	719,r13		! source line 719
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0SE",r10
!   _temp_1393 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1393 [i ] into _temp_1394
!     make sure index expr is >= 0
	set	-45900,r2
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
!   _temp_1392 = _temp_1394		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1395 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1392  sizeInBytes=4
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
! ASSIGNMENT STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	-45900,r2
	store	r1,[r14+r2]
! END WHILE...
	jmp	_Label_1389
_Label_1391:
! RETURN STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0RE",r10
	set	45904,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1396
	.word	4		! total size of parameters
	.word	45900		! frame size = 45900
	.word	_Label_1397
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1398
	.word	-12
	.word	4
	.word	_Label_1399
	.word	-16
	.word	4
	.word	_Label_1400
	.word	-20
	.word	4
	.word	_Label_1401
	.word	-24
	.word	4
	.word	_Label_1402
	.word	-28
	.word	4
	.word	_Label_1403
	.word	-32
	.word	4
	.word	_Label_1404
	.word	-36
	.word	4
	.word	_Label_1405
	.word	-40
	.word	4
	.word	_Label_1406
	.word	-44
	.word	4
	.word	_Label_1407
	.word	-48
	.word	4
	.word	_Label_1408
	.word	-52
	.word	4
	.word	_Label_1409
	.word	-56
	.word	4
	.word	_Label_1410
	.word	-60
	.word	4
	.word	_Label_1411
	.word	-64
	.word	4
	.word	_Label_1412
	.word	-68
	.word	4
	.word	_Label_1413
	.word	-72
	.word	4
	.word	_Label_1414
	.word	-76
	.word	4
	.word	_Label_1415
	.word	-4240
	.word	4164
	.word	_Label_1416
	.word	-4244
	.word	4
	.word	_Label_1417
	.word	-4248
	.word	4
	.word	_Label_1418
	.word	-45892
	.word	41644
	.word	_Label_1419
	.word	-45896
	.word	4
	.word	_Label_1420
	.word	-45900
	.word	4
	.word	0
_Label_1396:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1397:
	.ascii	"Pself\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1420:
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	728,r13		! source line 728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1421 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1421  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1426 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1427 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1426  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1422:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1427 then goto _Label_1425		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1425
_Label_1423:
	mov	737,r13		! source line 737
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1428 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1429 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1429  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1431 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1431 [i ] into _temp_1432
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
!   _temp_1430 = _temp_1432		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_function_207_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1424:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1422
! END FOR
_Label_1425:
! CALL STATEMENT...
!   _temp_1433 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1433  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1434 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1435 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1434  sizeInBytes=4
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
	mov	745,r13		! source line 745
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	746,r13		! source line 746
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
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	_Label_1445
	.word	-40
	.word	4
	.word	_Label_1446
	.word	-44
	.word	4
	.word	_Label_1447
	.word	-48
	.word	4
	.word	_Label_1448
	.word	-52
	.word	4
	.word	_Label_1449
	.word	-56
	.word	4
	.word	_Label_1450
	.word	-60
	.word	4
	.word	0
_Label_1436:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1437:
	.ascii	"Pself\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1449:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1450:
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
	mov	11,r1
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	751,r13		! source line 751
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1451 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	763,r13		! source line 763
	mov	"\0\0WH",r10
_Label_1452:
	mov	763,r13		! source line 763
	mov	"\0\0SE",r10
!   _temp_1456 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1455  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1457 = _temp_1455 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1457 then goto _Label_1454 else goto _Label_1453
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1453
	jmp	_Label_1454
_Label_1453:
	mov	763,r13		! source line 763
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_1458 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1459 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1458  sizeInBytes=4
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
	jmp	_Label_1452
_Label_1454:
! ASSIGNMENT STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0AS",r10
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_1460 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThreadPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   if intIsZero (newThreadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1461 = newThreadPtr + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1461 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_1462 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	772,r13		! source line 772
	mov	"\0\0RE",r10
!   ReturnResult: newThreadPtr  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1463
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1464
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1465
	.word	-16
	.word	4
	.word	_Label_1466
	.word	-20
	.word	4
	.word	_Label_1467
	.word	-24
	.word	4
	.word	_Label_1468
	.word	-28
	.word	4
	.word	_Label_1469
	.word	-32
	.word	4
	.word	_Label_1470
	.word	-9
	.word	1
	.word	_Label_1471
	.word	-36
	.word	4
	.word	_Label_1472
	.word	-10
	.word	1
	.word	_Label_1473
	.word	-40
	.word	4
	.word	_Label_1474
	.word	-44
	.word	4
	.word	0
_Label_1463:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1464:
	.ascii	"Pself\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1470:
	.byte	'C'
	.ascii	"_temp_1457\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1472:
	.byte	'C'
	.ascii	"_temp_1455\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1474:
	.byte	'P'
	.ascii	"newThreadPtr\0"
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
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	777,r13		! source line 777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_1475 = &threadManagerLock
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
	mov	784,r13		! source line 784
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1476 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1476 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1477 = &freeList
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
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_1478 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1479 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1478  sizeInBytes=4
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
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1480 = &threadManagerLock
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
	mov	787,r13		! source line 787
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
	.word	_Label_1481
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1482
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1483
	.word	12
	.word	4
	.word	_Label_1484
	.word	-12
	.word	4
	.word	_Label_1485
	.word	-16
	.word	4
	.word	_Label_1486
	.word	-20
	.word	4
	.word	_Label_1487
	.word	-24
	.word	4
	.word	_Label_1488
	.word	-28
	.word	4
	.word	_Label_1489
	.word	-32
	.word	4
	.word	0
_Label_1481:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1482:
	.ascii	"Pself\0"
	.align
_Label_1483:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1490
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1490:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1491
	.word	_sourceFileName
	.word	216		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1491:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	801,r13		! source line 801
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3426:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3426
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1493 = &addrSpace
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
	mov	805,r13		! source line 805
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
	.word	_Label_1494
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1495
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1496
	.word	-12
	.word	4
	.word	_Label_1497
	.word	-16
	.word	4
	.word	0
_Label_1494:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1495:
	.ascii	"Pself\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1492\0"
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	815,r13		! source line 815
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1498) then goto _runtimeErrorNullPointer
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
	mov	821,r13		! source line 821
	mov	"\0\0SE",r10
!   _temp_1499 = &addrSpace
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
!   _temp_1500 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CA",r10
	call	_function_207_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	833,r13		! source line 833
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
	.word	_Label_1501
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1503
	.word	-12
	.word	4
	.word	_Label_1504
	.word	-16
	.word	4
	.word	_Label_1505
	.word	-20
	.word	4
	.word	0
_Label_1501:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1502:
	.ascii	"Pself\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1498\0"
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
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	838,r13		! source line 838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1506 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1507  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1508 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1509 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1511		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1511
!	jmp	_Label_1510
_Label_1510:
! THEN...
	mov	848,r13		! source line 848
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1512 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1513
_Label_1511:
! ELSE...
	mov	849,r13		! source line 849
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1515		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1515
!	jmp	_Label_1514
_Label_1514:
! THEN...
	mov	850,r13		! source line 850
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1516 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1516  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1517
_Label_1515:
! ELSE...
	mov	851,r13		! source line 851
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1519		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1519
!	jmp	_Label_1518
_Label_1518:
! THEN...
	mov	852,r13		! source line 852
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1520 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1520  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1521
_Label_1519:
! ELSE...
	mov	854,r13		! source line 854
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1522 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	854,r13		! source line 854
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1521:
! END IF...
_Label_1517:
! END IF...
_Label_1513:
! CALL STATEMENT...
!   _temp_1523 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1523  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1524 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	860,r13		! source line 860
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
	.word	_Label_1525
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1527
	.word	-12
	.word	4
	.word	_Label_1528
	.word	-16
	.word	4
	.word	_Label_1529
	.word	-20
	.word	4
	.word	_Label_1530
	.word	-24
	.word	4
	.word	_Label_1531
	.word	-28
	.word	4
	.word	_Label_1532
	.word	-32
	.word	4
	.word	_Label_1533
	.word	-36
	.word	4
	.word	_Label_1534
	.word	-40
	.word	4
	.word	_Label_1535
	.word	-44
	.word	4
	.word	_Label_1536
	.word	-48
	.word	4
	.word	0
_Label_1525:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1526:
	.ascii	"Pself\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1537
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
_Label_1537:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1538
	.word	_sourceFileName
	.word	236		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1538:
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
	mov	366,r1
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	871,r13		! source line 871
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0AS",r10
!   _temp_1539 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1460]
!   NEW ARRAY Constructor...
!   _temp_1541 = &_temp_1540
	add	r14,-1456,r1
	store	r1,[r14+-212]
!   _temp_1541 = _temp_1541 + 4
	load	[r14+-212],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1543 = zeros  (sizeInBytes=124)
	add	r14,-204,r4
	mov	31,r3
_Label_3430:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3430
!   _temp_1543 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-204]
	mov	10,r1
	store	r1,[r14+-208]
_Label_1545:
!   Data Move: *_temp_1541 = _temp_1543  (sizeInBytes=124)
	add	r14,-204,r5
	load	[r14+-212],r4
	mov	31,r3
_Label_3431:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3431
!   _temp_1541 = _temp_1541 + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-212]
!   _temp_1542 = _temp_1542 + -1
	load	[r14+-208],r1
	add	r1,-1,r1
	store	r1,[r14+-208]
!   if intNotZero (_temp_1542) then goto _Label_1545
	load	[r14+-208],r1
	cmp	r1,r0
	bne	_Label_1545
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1456]
!   _temp_1546 = &_temp_1540
	add	r14,-1456,r1
	store	r1,[r14+-76]
!   make sure array has size 10
	load	[r14+-1460],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3432
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3432:
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1539 = *_temp_1546  (sizeInBytes=1244)
	load	[r14+-76],r5
	load	[r14+-1460],r4
	mov	311,r3
_Label_3433:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3433
! ASSIGNMENT STATEMENT...
	mov	880,r13		! source line 880
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
! SEND STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0SE",r10
!   _temp_1548 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	882,r13		! source line 882
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
	mov	883,r13		! source line 883
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
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1551 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	885,r13		! source line 885
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
! SEND STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0SE",r10
!   _temp_1553 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-48]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1464]
! WHILE STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0WH",r10
_Label_1554:
!   if i >= 10 then goto _Label_1556		(int)
	load	[r14+-1464],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1556
!	jmp	_Label_1555
_Label_1555:
	mov	888,r13		! source line 888
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1557 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1557 [i ] into _temp_1558
!     make sure index expr is >= 0
	load	[r14+-1464],r2
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
	mov	890,r13		! source line 890
	mov	"\0\0AS",r10
!   _temp_1559 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1559 [i ] into _temp_1560
!     make sure index expr is >= 0
	load	[r14+-1464],r2
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
!   _temp_1561 = _temp_1560 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1561 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1563 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1563 [i ] into _temp_1564
!     make sure index expr is >= 0
	load	[r14+-1464],r2
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
!   _temp_1562 = _temp_1564		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1565 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1562  sizeInBytes=4
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
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-1464],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1464]
! END WHILE...
	jmp	_Label_1554
_Label_1556:
! RETURN STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0RE",r10
	add	r15,1468,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1566
	.word	4		! total size of parameters
	.word	1464		! frame size = 1464
	.word	_Label_1567
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1568
	.word	-12
	.word	4
	.word	_Label_1569
	.word	-16
	.word	4
	.word	_Label_1570
	.word	-20
	.word	4
	.word	_Label_1571
	.word	-24
	.word	4
	.word	_Label_1572
	.word	-28
	.word	4
	.word	_Label_1573
	.word	-32
	.word	4
	.word	_Label_1574
	.word	-36
	.word	4
	.word	_Label_1575
	.word	-40
	.word	4
	.word	_Label_1576
	.word	-44
	.word	4
	.word	_Label_1577
	.word	-48
	.word	4
	.word	_Label_1578
	.word	-52
	.word	4
	.word	_Label_1579
	.word	-56
	.word	4
	.word	_Label_1580
	.word	-60
	.word	4
	.word	_Label_1581
	.word	-64
	.word	4
	.word	_Label_1582
	.word	-68
	.word	4
	.word	_Label_1583
	.word	-72
	.word	4
	.word	_Label_1584
	.word	-76
	.word	4
	.word	_Label_1585
	.word	-80
	.word	4
	.word	_Label_1586
	.word	-204
	.word	124
	.word	_Label_1587
	.word	-208
	.word	4
	.word	_Label_1588
	.word	-212
	.word	4
	.word	_Label_1589
	.word	-1456
	.word	1244
	.word	_Label_1590
	.word	-1460
	.word	4
	.word	_Label_1591
	.word	-1464
	.word	4
	.word	0
_Label_1566:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1567:
	.ascii	"Pself\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1565\0"
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
	.ascii	"_temp_1558\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1591:
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	898,r13		! source line 898
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1592 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1592  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1597 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1598 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1597  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1593:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1598 then goto _Label_1596		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1596
_Label_1594:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1599 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1599  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1600 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1600  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
!   _temp_1601 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1601 [i ] into _temp_1602
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
_Label_1595:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1593
! END FOR
_Label_1596:
! CALL STATEMENT...
!   _temp_1603 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1603  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0SE",r10
!   _temp_1604 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1605 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1604  sizeInBytes=4
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
	mov	915,r13		! source line 915
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	916,r13		! source line 916
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
	.word	_Label_1606
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1607
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1608
	.word	-12
	.word	4
	.word	_Label_1609
	.word	-16
	.word	4
	.word	_Label_1610
	.word	-20
	.word	4
	.word	_Label_1611
	.word	-24
	.word	4
	.word	_Label_1612
	.word	-28
	.word	4
	.word	_Label_1613
	.word	-32
	.word	4
	.word	_Label_1614
	.word	-36
	.word	4
	.word	_Label_1615
	.word	-40
	.word	4
	.word	_Label_1616
	.word	-44
	.word	4
	.word	_Label_1617
	.word	-48
	.word	4
	.word	_Label_1618
	.word	-52
	.word	4
	.word	_Label_1619
	.word	-56
	.word	4
	.word	0
_Label_1606:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1607:
	.ascii	"Pself\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1618:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1619:
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
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
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1620 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1620  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1625 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1626 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1625  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1621:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1626 then goto _Label_1624		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1624
_Label_1622:
	mov	930,r13		! source line 930
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1627 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1627  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0SE",r10
!   _temp_1628 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1628 [i ] into _temp_1629
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
_Label_1623:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1621
! END FOR
_Label_1624:
! CALL STATEMENT...
!   _temp_1630 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1630  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_1631 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1632 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1631  sizeInBytes=4
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
	mov	937,r13		! source line 937
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	938,r13		! source line 938
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
	.word	_Label_1633
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1634
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1635
	.word	-12
	.word	4
	.word	_Label_1636
	.word	-16
	.word	4
	.word	_Label_1637
	.word	-20
	.word	4
	.word	_Label_1638
	.word	-24
	.word	4
	.word	_Label_1639
	.word	-28
	.word	4
	.word	_Label_1640
	.word	-32
	.word	4
	.word	_Label_1641
	.word	-36
	.word	4
	.word	_Label_1642
	.word	-40
	.word	4
	.word	_Label_1643
	.word	-44
	.word	4
	.word	_Label_1644
	.word	-48
	.word	4
	.word	_Label_1645
	.word	-52
	.word	4
	.word	0
_Label_1633:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1634:
	.ascii	"Pself\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1644:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1645:
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
	mov	15,r1
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1646 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0WH",r10
_Label_1647:
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1651 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1650  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1652 = _temp_1650 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1652 then goto _Label_1649 else goto _Label_1648
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1648
	jmp	_Label_1649
_Label_1648:
	mov	954,r13		! source line 954
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_1653 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1654 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1653  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1647
_Label_1649:
! ASSIGNMENT STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0AS",r10
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1655 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newProcessPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1656 = newProcessPtr + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1656 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1657 = newProcessPtr + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1660 = newProcessPtr + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1659 = *_temp_1660  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1658 = _temp_1659 + 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Data Move: *_temp_1657 = _temp_1658  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1661 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	963,r13		! source line 963
	mov	"\0\0RE",r10
!   ReturnResult: newProcessPtr  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+8]
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1662
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1663
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-24
	.word	4
	.word	_Label_1667
	.word	-28
	.word	4
	.word	_Label_1668
	.word	-32
	.word	4
	.word	_Label_1669
	.word	-36
	.word	4
	.word	_Label_1670
	.word	-40
	.word	4
	.word	_Label_1671
	.word	-44
	.word	4
	.word	_Label_1672
	.word	-48
	.word	4
	.word	_Label_1673
	.word	-9
	.word	1
	.word	_Label_1674
	.word	-52
	.word	4
	.word	_Label_1675
	.word	-10
	.word	1
	.word	_Label_1676
	.word	-56
	.word	4
	.word	_Label_1677
	.word	-60
	.word	4
	.word	0
_Label_1662:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1663:
	.ascii	"Pself\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1673:
	.byte	'C'
	.ascii	"_temp_1652\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1675:
	.byte	'C'
	.ascii	"_temp_1650\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1677:
	.byte	'P'
	.ascii	"newProcessPtr\0"
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1678 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	978,r13		! source line 978
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1679 = &processManagerLock
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
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1680 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1680 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1681 = &freeList
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
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1682 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1683 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1682  sizeInBytes=4
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
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_1684 = &processManagerLock
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
	mov	986,r13		! source line 986
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
	.word	_Label_1685
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1686
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1687
	.word	12
	.word	4
	.word	_Label_1688
	.word	-12
	.word	4
	.word	_Label_1689
	.word	-16
	.word	4
	.word	_Label_1690
	.word	-20
	.word	4
	.word	_Label_1691
	.word	-24
	.word	4
	.word	_Label_1692
	.word	-28
	.word	4
	.word	_Label_1693
	.word	-32
	.word	4
	.word	_Label_1694
	.word	-36
	.word	4
	.word	0
_Label_1685:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1686:
	.ascii	"Pself\0"
	.align
_Label_1687:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1678\0"
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
	mov	61,r1
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	992,r13		! source line 992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0AS",r10
!   pParent = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-244]
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1695 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-236]
!   _temp_1696 = _temp_1695 + 1248
	load	[r14+-236],r1
	add	r1,1248,r1
	store	r1,[r14+-232]
!   Send message Lock
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-240]
! WHILE STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0WH",r10
_Label_1697:
!   if i >= 10 then goto _Label_1699		(int)
	load	[r14+-240],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1699
!	jmp	_Label_1698
_Label_1698:
	mov	1000,r13		! source line 1000
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1704 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1703 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   _temp_1706 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-216]
!   _temp_1707 = _temp_1706 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Move address of _temp_1707 [i ] into _temp_1708
!     make sure index expr is >= 0
	load	[r14+-240],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-212],r1
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
	store	r2,[r14+-208]
!   _temp_1709 = _temp_1708 + 16
	load	[r14+-208],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1705 = *_temp_1709  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if _temp_1703 != _temp_1705 then goto _Label_1701		(int)
	load	[r14+-228],r1
	load	[r14+-220],r2
	cmp	r1,r2
	bne	_Label_1701
!	jmp	_Label_1702
_Label_1702:
!   _temp_1711 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-196]
!   _temp_1712 = _temp_1711 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Move address of _temp_1712 [i ] into _temp_1713
!     make sure index expr is >= 0
	load	[r14+-240],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   _temp_1714 = _temp_1713 + 20
	load	[r14+-188],r1
	add	r1,20,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1710 = *_temp_1714  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if _temp_1710 != 2 then goto _Label_1701		(int)
	load	[r14+-200],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1701
!	jmp	_Label_1700
_Label_1700:
! THEN...
	mov	1004,r13		! source line 1004
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
!   _temp_1715 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-180]
!   _temp_1716 = _temp_1715 + 4
	load	[r14+-180],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Move address of _temp_1716 [i ] into _temp_1717
!     make sure index expr is >= 0
	load	[r14+-240],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   _temp_1718 = _temp_1717 + 20
	load	[r14+-172],r1
	add	r1,20,r1
	store	r1,[r14+-168]
!   Data Move: *_temp_1718 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-168],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_1720 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-160]
!   _temp_1721 = _temp_1720 + 4
	load	[r14+-160],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_1721 [i ] into _temp_1722
!     make sure index expr is >= 0
	load	[r14+-240],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   _temp_1719 = _temp_1722		(4 bytes)
	load	[r14+-152],r1
	store	r1,[r14+-164]
!   _temp_1723 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-148]
!   _temp_1724 = _temp_1723 + 1284
	load	[r14+-148],r1
	add	r1,1284,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1719  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_1726 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_1727 = _temp_1726 + 1248
	load	[r14+-136],r1
	add	r1,1248,r1
	store	r1,[r14+-132]
!   _temp_1725 = _temp_1727		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   _temp_1728 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-128]
!   _temp_1729 = _temp_1728 + 1268
	load	[r14+-128],r1
	add	r1,1268,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=12  value=_temp_1725  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1701:
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1733 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1732 = *_temp_1733  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_1735 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_1736 = _temp_1735 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Move address of _temp_1736 [i ] into _temp_1737
!     make sure index expr is >= 0
	load	[r14+-240],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   _temp_1738 = _temp_1737 + 12
	load	[r14+-100],r1
	add	r1,12,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1734 = *_temp_1738  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1732 != _temp_1734 then goto _Label_1731		(int)
	load	[r14+-120],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bne	_Label_1731
!	jmp	_Label_1730
_Label_1730:
! THEN...
	mov	1013,r13		! source line 1013
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   _temp_1739 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-92]
!   _temp_1740 = _temp_1739 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1740 [i ] into _temp_1741
!     make sure index expr is >= 0
	load	[r14+-240],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   pParent = _temp_1741		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-244]
! END IF...
_Label_1731:
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END WHILE...
	jmp	_Label_1697
_Label_1699:
! IF STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0IF",r10
!   if intIsZero (pParent) then goto _Label_1743
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_1743
!	jmp	_Label_1744
_Label_1744:
!   if intIsZero (pParent) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1746 = pParent + 20
	load	[r14+-244],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1745 = *_temp_1746  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1745 != 1 then goto _Label_1743		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1743
!	jmp	_Label_1742
_Label_1742:
! THEN...
	mov	1019,r13		! source line 1019
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1747 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_1747 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0SE",r10
!   _temp_1749 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_1750 = _temp_1749 + 1248
	load	[r14+-64],r1
	add	r1,1248,r1
	store	r1,[r14+-60]
!   _temp_1748 = _temp_1750		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_1751 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_1752 = _temp_1751 + 1296
	load	[r14+-56],r1
	add	r1,1296,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1748  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_1753
_Label_1743:
! ELSE...
	mov	1023,r13		! source line 1023
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1754 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1754 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_1755 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1756 = _temp_1755 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_1758 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1759 = _temp_1758 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1757 = _temp_1759		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1760 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1761 = _temp_1760 + 1296
	load	[r14+-24],r1
	add	r1,1296,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1757  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1753:
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1762 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1763 = _temp_1762 + 1248
	load	[r14+-16],r1
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
	mov	1028,r13		! source line 1028
	mov	"\0\0RE",r10
	add	r15,248,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_1764
	.word	8		! total size of parameters
	.word	244		! frame size = 244
	.word	_Label_1765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1766
	.word	12
	.word	4
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
	.word	_Label_1773
	.word	-36
	.word	4
	.word	_Label_1774
	.word	-40
	.word	4
	.word	_Label_1775
	.word	-44
	.word	4
	.word	_Label_1776
	.word	-48
	.word	4
	.word	_Label_1777
	.word	-52
	.word	4
	.word	_Label_1778
	.word	-56
	.word	4
	.word	_Label_1779
	.word	-60
	.word	4
	.word	_Label_1780
	.word	-64
	.word	4
	.word	_Label_1781
	.word	-68
	.word	4
	.word	_Label_1782
	.word	-72
	.word	4
	.word	_Label_1783
	.word	-76
	.word	4
	.word	_Label_1784
	.word	-80
	.word	4
	.word	_Label_1785
	.word	-84
	.word	4
	.word	_Label_1786
	.word	-88
	.word	4
	.word	_Label_1787
	.word	-92
	.word	4
	.word	_Label_1788
	.word	-96
	.word	4
	.word	_Label_1789
	.word	-100
	.word	4
	.word	_Label_1790
	.word	-104
	.word	4
	.word	_Label_1791
	.word	-108
	.word	4
	.word	_Label_1792
	.word	-112
	.word	4
	.word	_Label_1793
	.word	-116
	.word	4
	.word	_Label_1794
	.word	-120
	.word	4
	.word	_Label_1795
	.word	-124
	.word	4
	.word	_Label_1796
	.word	-128
	.word	4
	.word	_Label_1797
	.word	-132
	.word	4
	.word	_Label_1798
	.word	-136
	.word	4
	.word	_Label_1799
	.word	-140
	.word	4
	.word	_Label_1800
	.word	-144
	.word	4
	.word	_Label_1801
	.word	-148
	.word	4
	.word	_Label_1802
	.word	-152
	.word	4
	.word	_Label_1803
	.word	-156
	.word	4
	.word	_Label_1804
	.word	-160
	.word	4
	.word	_Label_1805
	.word	-164
	.word	4
	.word	_Label_1806
	.word	-168
	.word	4
	.word	_Label_1807
	.word	-172
	.word	4
	.word	_Label_1808
	.word	-176
	.word	4
	.word	_Label_1809
	.word	-180
	.word	4
	.word	_Label_1810
	.word	-184
	.word	4
	.word	_Label_1811
	.word	-188
	.word	4
	.word	_Label_1812
	.word	-192
	.word	4
	.word	_Label_1813
	.word	-196
	.word	4
	.word	_Label_1814
	.word	-200
	.word	4
	.word	_Label_1815
	.word	-204
	.word	4
	.word	_Label_1816
	.word	-208
	.word	4
	.word	_Label_1817
	.word	-212
	.word	4
	.word	_Label_1818
	.word	-216
	.word	4
	.word	_Label_1819
	.word	-220
	.word	4
	.word	_Label_1820
	.word	-224
	.word	4
	.word	_Label_1821
	.word	-228
	.word	4
	.word	_Label_1822
	.word	-232
	.word	4
	.word	_Label_1823
	.word	-236
	.word	4
	.word	_Label_1824
	.word	-240
	.word	4
	.word	_Label_1825
	.word	-244
	.word	4
	.word	0
_Label_1764:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1765:
	.ascii	"Pself\0"
	.align
_Label_1766:
	.byte	'P'
	.ascii	"p\0"
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
	.ascii	"_temp_1761\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1824:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1825:
	.byte	'P'
	.ascii	"pParent\0"
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
	mov	23,r1
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	1034,r13		! source line 1034
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_1826 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1827 = _temp_1826 + 1248
	load	[r14+-88],r1
	add	r1,1248,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0WH",r10
_Label_1828:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1832 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1831 = *_temp_1832  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1831 == 2 then goto _Label_1830		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1830
!	jmp	_Label_1829
_Label_1829:
	mov	1039,r13		! source line 1039
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1834 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_1835 = _temp_1834 + 1248
	load	[r14+-68],r1
	add	r1,1248,r1
	store	r1,[r14+-64]
!   _temp_1833 = _temp_1835		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_1836 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1837 = _temp_1836 + 1296
	load	[r14+-60],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1833  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1828
_Label_1830:
! ASSIGNMENT STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1838 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: pExitStatus = *_temp_1838  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1839 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1839 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_1840 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1841 = _temp_1840 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0SE",r10
!   _temp_1843 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1844 = _temp_1843 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1842 = _temp_1844		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1845 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1846 = _temp_1845 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1842  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0SE",r10
!   _temp_1847 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1848 = _temp_1847 + 1248
	load	[r14+-16],r1
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
	mov	1051,r13		! source line 1051
	mov	"\0\0RE",r10
!   ReturnResult: pExitStatus  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_1849
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1851
	.word	12
	.word	4
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
	.word	_Label_1858
	.word	-36
	.word	4
	.word	_Label_1859
	.word	-40
	.word	4
	.word	_Label_1860
	.word	-44
	.word	4
	.word	_Label_1861
	.word	-48
	.word	4
	.word	_Label_1862
	.word	-52
	.word	4
	.word	_Label_1863
	.word	-56
	.word	4
	.word	_Label_1864
	.word	-60
	.word	4
	.word	_Label_1865
	.word	-64
	.word	4
	.word	_Label_1866
	.word	-68
	.word	4
	.word	_Label_1867
	.word	-72
	.word	4
	.word	_Label_1868
	.word	-76
	.word	4
	.word	_Label_1869
	.word	-80
	.word	4
	.word	_Label_1870
	.word	-84
	.word	4
	.word	_Label_1871
	.word	-88
	.word	4
	.word	_Label_1872
	.word	-92
	.word	4
	.word	0
_Label_1849:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1850:
	.ascii	"Pself\0"
	.align
_Label_1851:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1872:
	.byte	'I'
	.ascii	"pExitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1873
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1873:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1874
	.word	_sourceFileName
	.word	259		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1874:
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	1108,r13		! source line 1108
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1875 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
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
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
!   _temp_1877 = &framesInUse
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
	mov	1117,r13		! source line 1117
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1118,r13		! source line 1118
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
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1879 = &frameManagerLock
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
	mov	1120,r13		! source line 1120
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
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_1881 = &newFramesAvailable
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
	mov	1127,r13		! source line 1127
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1886 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1887 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1886  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1882:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1887 then goto _Label_1885		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1885
_Label_1883:
	mov	1127,r13		! source line 1127
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1890 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1890) then goto _Label_1889
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1889
!	jmp	_Label_1888
_Label_1888:
! THEN...
	mov	1131,r13		! source line 1131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1891 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1131,r13		! source line 1131
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1889:
!   Increment the FOR-LOOP index variable and jump back
_Label_1884:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1882
! END FOR
_Label_1885:
! RETURN STATEMENT...
	mov	1127,r13		! source line 1127
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
	.word	_Label_1892
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1894
	.word	-12
	.word	4
	.word	_Label_1895
	.word	-16
	.word	4
	.word	_Label_1896
	.word	-20
	.word	4
	.word	_Label_1897
	.word	-24
	.word	4
	.word	_Label_1898
	.word	-28
	.word	4
	.word	_Label_1899
	.word	-32
	.word	4
	.word	_Label_1900
	.word	-36
	.word	4
	.word	_Label_1901
	.word	-40
	.word	4
	.word	_Label_1902
	.word	-44
	.word	4
	.word	_Label_1903
	.word	-48
	.word	4
	.word	_Label_1904
	.word	-52
	.word	4
	.word	_Label_1905
	.word	-56
	.word	4
	.word	0
_Label_1892:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1893:
	.ascii	"Pself\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1905:
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	1138,r13		! source line 1138
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
!   _temp_1906 = &frameManagerLock
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
!   _temp_1907 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1907  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1908 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1908  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1144,r13		! source line 1144
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1909 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1909  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_1910 = &framesInUse
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
	mov	1147,r13		! source line 1147
	mov	"\0\0SE",r10
!   _temp_1911 = &frameManagerLock
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
	mov	1147,r13		! source line 1147
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
	.word	_Label_1912
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1913
	.word	4		! size of self
	.word	8		! offset of self
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
_Label_1912:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1913:
	.ascii	"Pself\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1906\0"
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	1152,r13		! source line 1152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
!   _temp_1920 = &frameManagerLock
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
	mov	1163,r13		! source line 1163
	mov	"\0\0WH",r10
_Label_1921:
!   if numberFreeFrames >= 1 then goto _Label_1923		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1923
!	jmp	_Label_1922
_Label_1922:
	mov	1163,r13		! source line 1163
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_1924 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1925 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1924  sizeInBytes=4
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
	jmp	_Label_1921
_Label_1923:
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_1926 = &framesInUse
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
	mov	1169,r13		! source line 1169
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
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_1927 = &frameManagerLock
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
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   _temp_1928 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1928		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1177,r13		! source line 1177
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
	.word	_Label_1929
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1930
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1931
	.word	-12
	.word	4
	.word	_Label_1932
	.word	-16
	.word	4
	.word	_Label_1933
	.word	-20
	.word	4
	.word	_Label_1934
	.word	-24
	.word	4
	.word	_Label_1935
	.word	-28
	.word	4
	.word	_Label_1936
	.word	-32
	.word	4
	.word	_Label_1937
	.word	-36
	.word	4
	.word	_Label_1938
	.word	-40
	.word	4
	.word	0
_Label_1929:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1930:
	.ascii	"Pself\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1937:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1938:
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	1182,r13		! source line 1182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   _temp_1939 = &frameManagerLock
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
	mov	1192,r13		! source line 1192
	mov	"\0\0WH",r10
_Label_1940:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1942		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1942
!	jmp	_Label_1941
_Label_1941:
	mov	1192,r13		! source line 1192
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1943 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1944 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1943  sizeInBytes=4
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
	jmp	_Label_1940
_Label_1942:
! FOR STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1949 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1950 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1949  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1945:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1950 then goto _Label_1948		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1948
_Label_1946:
	mov	1197,r13		! source line 1197
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0AS",r10
	mov	1199,r13		! source line 1199
	mov	"\0\0SE",r10
!   _temp_1951 = &framesInUse
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
!   Retrieve Result: targetName=freeFrameIdx  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   _temp_1952 = freeFrameIdx * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   freeFrameAddr = 1048576 + _temp_1952		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=freeFrameAddr  sizeInBytes=4
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
_Label_1947:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1945
! END FOR
_Label_1948:
! ASSIGNMENT STATEMENT...
	mov	1209,r13		! source line 1209
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
	mov	1211,r13		! source line 1211
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1953 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1953 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0SE",r10
!   _temp_1954 = &frameManagerLock
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
	mov	1212,r13		! source line 1212
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
	.word	_Label_1955
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1957
	.word	12
	.word	4
	.word	_Label_1958
	.word	16
	.word	4
	.word	_Label_1959
	.word	-12
	.word	4
	.word	_Label_1960
	.word	-16
	.word	4
	.word	_Label_1961
	.word	-20
	.word	4
	.word	_Label_1962
	.word	-24
	.word	4
	.word	_Label_1963
	.word	-28
	.word	4
	.word	_Label_1964
	.word	-32
	.word	4
	.word	_Label_1965
	.word	-36
	.word	4
	.word	_Label_1966
	.word	-40
	.word	4
	.word	_Label_1967
	.word	-44
	.word	4
	.word	_Label_1968
	.word	-48
	.word	4
	.word	_Label_1969
	.word	-52
	.word	4
	.word	_Label_1970
	.word	-56
	.word	4
	.word	0
_Label_1955:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1956:
	.ascii	"Pself\0"
	.align
_Label_1957:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1958:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1968:
	.byte	'I'
	.ascii	"freeFrameIdx\0"
	.align
_Label_1969:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1970:
	.byte	'I'
	.ascii	"freeFrameAddr\0"
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
	mov	15,r1
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	1219,r13		! source line 1219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
!   _temp_1971 = &frameManagerLock
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
! ASSIGNMENT STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1972 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1972  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1977 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1978 = numFramesReturned - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1977  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-60]
_Label_1973:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1978 then goto _Label_1976		
	load	[r14+-60],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1976
_Label_1974:
	mov	1229,r13		! source line 1229
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0AS",r10
	mov	1230,r13		! source line 1230
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
!   Retrieve Result: targetName=returnFrameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0AS",r10
!   _temp_1979 = returnFrameAddr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   returnFrameIdx = _temp_1979 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
!   _temp_1980 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=returnFrameIdx  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1975:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1973
! END FOR
_Label_1976:
! SEND STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_1981 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1982 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1981  sizeInBytes=4
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
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1983 = &frameManagerLock
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
	mov	1238,r13		! source line 1238
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1984
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1986
	.word	12
	.word	4
	.word	_Label_1987
	.word	-12
	.word	4
	.word	_Label_1988
	.word	-16
	.word	4
	.word	_Label_1989
	.word	-20
	.word	4
	.word	_Label_1990
	.word	-24
	.word	4
	.word	_Label_1991
	.word	-28
	.word	4
	.word	_Label_1992
	.word	-32
	.word	4
	.word	_Label_1993
	.word	-36
	.word	4
	.word	_Label_1994
	.word	-40
	.word	4
	.word	_Label_1995
	.word	-44
	.word	4
	.word	_Label_1996
	.word	-48
	.word	4
	.word	_Label_1997
	.word	-52
	.word	4
	.word	_Label_1998
	.word	-56
	.word	4
	.word	_Label_1999
	.word	-60
	.word	4
	.word	0
_Label_1984:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1985:
	.ascii	"Pself\0"
	.align
_Label_1986:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1996:
	.byte	'I'
	.ascii	"returnFrameIdx\0"
	.align
_Label_1997:
	.byte	'I'
	.ascii	"returnFrameAddr\0"
	.align
_Label_1998:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1999:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2000
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
_Label_2000:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2001
	.word	_sourceFileName
	.word	278		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2001:
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	1251,r13		! source line 1251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   _temp_2002 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2004 = &_temp_2003
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2004 = _temp_2004 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2006:
!   Data Move: *_temp_2004 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2004 = _temp_2004 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2005 = _temp_2005 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2005) then goto _Label_2006
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2006
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2007 = &_temp_2003
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3446
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3446:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2002 = *_temp_2007  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3447:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3447
! RETURN STATEMENT...
	mov	1256,r13		! source line 1256
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
	.word	_Label_2008
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2010
	.word	-12
	.word	4
	.word	_Label_2011
	.word	-16
	.word	4
	.word	_Label_2012
	.word	-20
	.word	4
	.word	_Label_2013
	.word	-104
	.word	84
	.word	_Label_2014
	.word	-108
	.word	4
	.word	0
_Label_2008:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2009:
	.ascii	"Pself\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2002\0"
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	1261,r13		! source line 1261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2015 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2016 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2021 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2022 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2021  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2017:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2022 then goto _Label_2020		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2020
_Label_2018:
	mov	1268,r13		! source line 1268
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2023 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2023  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2025 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2025 [i ] into _temp_2026
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
!   _temp_2024 = _temp_2026		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2024  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2027 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2027  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2029 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2029 [i ] into _temp_2030
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
!   Data Move: _temp_2028 = *_temp_2030  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2028  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2031 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2031  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2032 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2032  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2033 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2033  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2035) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2034  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2036 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2036  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0IF",r10
	mov	1278,r13		! source line 1278
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2040) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2039  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2039) then goto _Label_2038
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2038
!	jmp	_Label_2037
_Label_2037:
! THEN...
	mov	1279,r13		! source line 1279
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2042) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2041  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2041  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2043
_Label_2038:
! ELSE...
	mov	1281,r13		! source line 1281
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2044 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2044  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2043:
! CALL STATEMENT...
!   _temp_2045 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2045  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0IF",r10
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2048) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2046 else goto _Label_2047
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2047
	jmp	_Label_2046
_Label_2046:
! THEN...
	mov	1285,r13		! source line 1285
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2049 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2050
_Label_2047:
! ELSE...
	mov	1287,r13		! source line 1287
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2051 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2051  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2050:
! CALL STATEMENT...
!   _temp_2052 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2052  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0IF",r10
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2055) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2053 else goto _Label_2054
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2054
	jmp	_Label_2053
_Label_2053:
! THEN...
	mov	1291,r13		! source line 1291
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2056 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2057
_Label_2054:
! ELSE...
	mov	1293,r13		! source line 1293
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2058 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2057:
! CALL STATEMENT...
!   _temp_2059 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2059  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0IF",r10
	mov	1296,r13		! source line 1296
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2062) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2060 else goto _Label_2061
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2061
	jmp	_Label_2060
_Label_2060:
! THEN...
	mov	1297,r13		! source line 1297
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2063 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2063  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2064
_Label_2061:
! ELSE...
	mov	1299,r13		! source line 1299
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2065 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2065  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2064:
! CALL STATEMENT...
!   _temp_2066 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2066  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0IF",r10
	mov	1302,r13		! source line 1302
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2069) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2067 else goto _Label_2068
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2068
	jmp	_Label_2067
_Label_2067:
! THEN...
	mov	1303,r13		! source line 1303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2070 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2070  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2071
_Label_2068:
! ELSE...
	mov	1305,r13		! source line 1305
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2072 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2072  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1305,r13		! source line 1305
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2071:
! CALL STATEMENT...
!   Call the function
	mov	1307,r13		! source line 1307
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2019:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2017
! END FOR
_Label_2020:
! RETURN STATEMENT...
	mov	1268,r13		! source line 1268
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
	.word	_Label_2073
	.word	4		! total size of parameters
	.word	168		! frame size = 168
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
	.word	_Label_2080
	.word	-32
	.word	4
	.word	_Label_2081
	.word	-36
	.word	4
	.word	_Label_2082
	.word	-40
	.word	4
	.word	_Label_2083
	.word	-44
	.word	4
	.word	_Label_2084
	.word	-48
	.word	4
	.word	_Label_2085
	.word	-52
	.word	4
	.word	_Label_2086
	.word	-56
	.word	4
	.word	_Label_2087
	.word	-60
	.word	4
	.word	_Label_2088
	.word	-64
	.word	4
	.word	_Label_2089
	.word	-68
	.word	4
	.word	_Label_2090
	.word	-72
	.word	4
	.word	_Label_2091
	.word	-76
	.word	4
	.word	_Label_2092
	.word	-80
	.word	4
	.word	_Label_2093
	.word	-84
	.word	4
	.word	_Label_2094
	.word	-88
	.word	4
	.word	_Label_2095
	.word	-92
	.word	4
	.word	_Label_2096
	.word	-96
	.word	4
	.word	_Label_2097
	.word	-100
	.word	4
	.word	_Label_2098
	.word	-104
	.word	4
	.word	_Label_2099
	.word	-108
	.word	4
	.word	_Label_2100
	.word	-112
	.word	4
	.word	_Label_2101
	.word	-116
	.word	4
	.word	_Label_2102
	.word	-120
	.word	4
	.word	_Label_2103
	.word	-124
	.word	4
	.word	_Label_2104
	.word	-128
	.word	4
	.word	_Label_2105
	.word	-132
	.word	4
	.word	_Label_2106
	.word	-136
	.word	4
	.word	_Label_2107
	.word	-140
	.word	4
	.word	_Label_2108
	.word	-144
	.word	4
	.word	_Label_2109
	.word	-148
	.word	4
	.word	_Label_2110
	.word	-152
	.word	4
	.word	_Label_2111
	.word	-156
	.word	4
	.word	_Label_2112
	.word	-160
	.word	4
	.word	_Label_2113
	.word	-164
	.word	4
	.word	_Label_2114
	.word	-168
	.word	4
	.word	0
_Label_2073:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_2070\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2114:
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	1313,r13		! source line 1313
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0RE",r10
!   _temp_2117 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2117 [entry ] into _temp_2118
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
!   Data Move: _temp_2116 = *_temp_2118  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2115 = _temp_2116 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2115  (sizeInBytes=4)
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
	.word	_Label_2119
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2120
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2121
	.word	12
	.word	4
	.word	_Label_2122
	.word	-12
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
	.word	0
_Label_2119:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2120:
	.ascii	"Pself\0"
	.align
_Label_2121:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2118\0"
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	1323,r13		! source line 1323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0RE",r10
!   _temp_2128 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2128 [entry ] into _temp_2129
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
!   Data Move: _temp_2127 = *_temp_2129  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2126 = _temp_2127 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2126  (sizeInBytes=4)
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
	.word	_Label_2130
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2131
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2132
	.word	12
	.word	4
	.word	_Label_2133
	.word	-12
	.word	4
	.word	_Label_2134
	.word	-16
	.word	4
	.word	_Label_2135
	.word	-20
	.word	4
	.word	_Label_2136
	.word	-24
	.word	4
	.word	0
_Label_2130:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2131:
	.ascii	"Pself\0"
	.align
_Label_2132:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2126\0"
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	1332,r13		! source line 1332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0AS",r10
!   _temp_2137 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2137 [entry ] into _temp_2138
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
!   _temp_2142 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2142 [entry ] into _temp_2143
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
!   Data Move: _temp_2141 = *_temp_2143  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2140 = _temp_2141 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2139 = _temp_2140 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2138 = _temp_2139  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1337,r13		! source line 1337
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
	.word	_Label_2144
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2145
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2146
	.word	12
	.word	4
	.word	_Label_2147
	.word	16
	.word	4
	.word	_Label_2148
	.word	-12
	.word	4
	.word	_Label_2149
	.word	-16
	.word	4
	.word	_Label_2150
	.word	-20
	.word	4
	.word	_Label_2151
	.word	-24
	.word	4
	.word	_Label_2152
	.word	-28
	.word	4
	.word	_Label_2153
	.word	-32
	.word	4
	.word	_Label_2154
	.word	-36
	.word	4
	.word	0
_Label_2144:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2145:
	.ascii	"Pself\0"
	.align
_Label_2146:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2147:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2137\0"
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
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0RE",r10
!   _temp_2158 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2158 [entry ] into _temp_2159
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
!   Data Move: _temp_2157 = *_temp_2159  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2156 = _temp_2157 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2156) then goto _Label_2160
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2160
!   _temp_2155 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2161
_Label_2160:
!   _temp_2155 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2161:
!   ReturnResult: _temp_2155  (sizeInBytes=1)
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
	.word	_Label_2162
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2163
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2164
	.word	12
	.word	4
	.word	_Label_2165
	.word	-16
	.word	4
	.word	_Label_2166
	.word	-20
	.word	4
	.word	_Label_2167
	.word	-24
	.word	4
	.word	_Label_2168
	.word	-28
	.word	4
	.word	_Label_2169
	.word	-9
	.word	1
	.word	0
_Label_2162:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2163:
	.ascii	"Pself\0"
	.align
_Label_2164:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2169:
	.byte	'C'
	.ascii	"_temp_2155\0"
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	1351,r13		! source line 1351
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0RE",r10
!   _temp_2173 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2173 [entry ] into _temp_2174
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
!   Data Move: _temp_2172 = *_temp_2174  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2171 = _temp_2172 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2171) then goto _Label_2175
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2175
!   _temp_2170 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2176
_Label_2175:
!   _temp_2170 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2176:
!   ReturnResult: _temp_2170  (sizeInBytes=1)
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
	.word	_Label_2177
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2178
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2179
	.word	12
	.word	4
	.word	_Label_2180
	.word	-16
	.word	4
	.word	_Label_2181
	.word	-20
	.word	4
	.word	_Label_2182
	.word	-24
	.word	4
	.word	_Label_2183
	.word	-28
	.word	4
	.word	_Label_2184
	.word	-9
	.word	1
	.word	0
_Label_2177:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2178:
	.ascii	"Pself\0"
	.align
_Label_2179:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2184:
	.byte	'C'
	.ascii	"_temp_2170\0"
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	1360,r13		! source line 1360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0RE",r10
!   _temp_2188 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2188 [entry ] into _temp_2189
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
!   Data Move: _temp_2187 = *_temp_2189  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2186 = _temp_2187 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2186) then goto _Label_2190
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2190
!   _temp_2185 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2191
_Label_2190:
!   _temp_2185 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2191:
!   ReturnResult: _temp_2185  (sizeInBytes=1)
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
	.word	_Label_2192
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2194
	.word	12
	.word	4
	.word	_Label_2195
	.word	-16
	.word	4
	.word	_Label_2196
	.word	-20
	.word	4
	.word	_Label_2197
	.word	-24
	.word	4
	.word	_Label_2198
	.word	-28
	.word	4
	.word	_Label_2199
	.word	-9
	.word	1
	.word	0
_Label_2192:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2193:
	.ascii	"Pself\0"
	.align
_Label_2194:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2199:
	.byte	'C'
	.ascii	"_temp_2185\0"
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	1369,r13		! source line 1369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0RE",r10
!   _temp_2203 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2203 [entry ] into _temp_2204
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
!   Data Move: _temp_2202 = *_temp_2204  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2201 = _temp_2202 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2201) then goto _Label_2205
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2205
!   _temp_2200 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2206
_Label_2205:
!   _temp_2200 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2206:
!   ReturnResult: _temp_2200  (sizeInBytes=1)
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
	.word	_Label_2207
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2209
	.word	12
	.word	4
	.word	_Label_2210
	.word	-16
	.word	4
	.word	_Label_2211
	.word	-20
	.word	4
	.word	_Label_2212
	.word	-24
	.word	4
	.word	_Label_2213
	.word	-28
	.word	4
	.word	_Label_2214
	.word	-9
	.word	1
	.word	0
_Label_2207:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2208:
	.ascii	"Pself\0"
	.align
_Label_2209:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2214:
	.byte	'C'
	.ascii	"_temp_2200\0"
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
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	1378,r13		! source line 1378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
!   _temp_2215 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2215 [entry ] into _temp_2216
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
!   _temp_2219 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2219 [entry ] into _temp_2220
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
!   Data Move: _temp_2218 = *_temp_2220  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2217 = _temp_2218 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2216 = _temp_2217  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1382,r13		! source line 1382
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
	.word	_Label_2221
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2222
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2223
	.word	12
	.word	4
	.word	_Label_2224
	.word	-12
	.word	4
	.word	_Label_2225
	.word	-16
	.word	4
	.word	_Label_2226
	.word	-20
	.word	4
	.word	_Label_2227
	.word	-24
	.word	4
	.word	_Label_2228
	.word	-28
	.word	4
	.word	_Label_2229
	.word	-32
	.word	4
	.word	0
_Label_2221:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2222:
	.ascii	"Pself\0"
	.align
_Label_2223:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2215\0"
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
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	1387,r13		! source line 1387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   _temp_2230 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2230 [entry ] into _temp_2231
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
!   _temp_2234 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2234 [entry ] into _temp_2235
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
!   Data Move: _temp_2233 = *_temp_2235  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2232 = _temp_2233 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2231 = _temp_2232  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1391,r13		! source line 1391
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
	.word	_Label_2236
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2237
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2238
	.word	12
	.word	4
	.word	_Label_2239
	.word	-12
	.word	4
	.word	_Label_2240
	.word	-16
	.word	4
	.word	_Label_2241
	.word	-20
	.word	4
	.word	_Label_2242
	.word	-24
	.word	4
	.word	_Label_2243
	.word	-28
	.word	4
	.word	_Label_2244
	.word	-32
	.word	4
	.word	0
_Label_2236:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2237:
	.ascii	"Pself\0"
	.align
_Label_2238:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2230\0"
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	1396,r13		! source line 1396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0AS",r10
!   _temp_2245 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2245 [entry ] into _temp_2246
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
!   _temp_2249 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2249 [entry ] into _temp_2250
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
!   Data Move: _temp_2248 = *_temp_2250  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2247 = _temp_2248 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2246 = _temp_2247  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1400,r13		! source line 1400
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
	.word	_Label_2251
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2253
	.word	12
	.word	4
	.word	_Label_2254
	.word	-12
	.word	4
	.word	_Label_2255
	.word	-16
	.word	4
	.word	_Label_2256
	.word	-20
	.word	4
	.word	_Label_2257
	.word	-24
	.word	4
	.word	_Label_2258
	.word	-28
	.word	4
	.word	_Label_2259
	.word	-32
	.word	4
	.word	0
_Label_2251:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2252:
	.ascii	"Pself\0"
	.align
_Label_2253:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2245\0"
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
_Label_3459:
	push	r0
	sub	r1,1,r1
	bne	_Label_3459
	mov	1405,r13		! source line 1405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
!   _temp_2260 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2260 [entry ] into _temp_2261
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
!   _temp_2264 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2264 [entry ] into _temp_2265
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
!   Data Move: _temp_2263 = *_temp_2265  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2262 = _temp_2263 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2261 = _temp_2262  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1409,r13		! source line 1409
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
	.word	_Label_2266
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2267
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2268
	.word	12
	.word	4
	.word	_Label_2269
	.word	-12
	.word	4
	.word	_Label_2270
	.word	-16
	.word	4
	.word	_Label_2271
	.word	-20
	.word	4
	.word	_Label_2272
	.word	-24
	.word	4
	.word	_Label_2273
	.word	-28
	.word	4
	.word	_Label_2274
	.word	-32
	.word	4
	.word	0
_Label_2266:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2267:
	.ascii	"Pself\0"
	.align
_Label_2268:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2260\0"
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
_Label_3460:
	push	r0
	sub	r1,1,r1
	bne	_Label_3460
	mov	1414,r13		! source line 1414
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0AS",r10
!   _temp_2275 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2275 [entry ] into _temp_2276
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
!   _temp_2279 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2279 [entry ] into _temp_2280
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
!   Data Move: _temp_2278 = *_temp_2280  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2277 = _temp_2278 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2276 = _temp_2277  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1418,r13		! source line 1418
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
	.word	_Label_2281
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2282
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2283
	.word	12
	.word	4
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
	.word	_Label_2288
	.word	-28
	.word	4
	.word	_Label_2289
	.word	-32
	.word	4
	.word	0
_Label_2281:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2282:
	.ascii	"Pself\0"
	.align
_Label_2283:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2275\0"
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
_Label_3461:
	push	r0
	sub	r1,1,r1
	bne	_Label_3461
	mov	1423,r13		! source line 1423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
!   _temp_2290 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2290 [entry ] into _temp_2291
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
!   _temp_2294 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2294 [entry ] into _temp_2295
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
!   Data Move: _temp_2293 = *_temp_2295  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2292 = _temp_2293 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2291 = _temp_2292  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
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
	.word	_Label_2296
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2297
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2298
	.word	12
	.word	4
	.word	_Label_2299
	.word	-12
	.word	4
	.word	_Label_2300
	.word	-16
	.word	4
	.word	_Label_2301
	.word	-20
	.word	4
	.word	_Label_2302
	.word	-24
	.word	4
	.word	_Label_2303
	.word	-28
	.word	4
	.word	_Label_2304
	.word	-32
	.word	4
	.word	0
_Label_2296:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2297:
	.ascii	"Pself\0"
	.align
_Label_2298:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2290\0"
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
_Label_3462:
	push	r0
	sub	r1,1,r1
	bne	_Label_3462
	mov	1432,r13		! source line 1432
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0AS",r10
!   _temp_2305 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2305 [entry ] into _temp_2306
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
!   _temp_2309 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2309 [entry ] into _temp_2310
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
!   Data Move: _temp_2308 = *_temp_2310  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2307 = _temp_2308 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2306 = _temp_2307  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1436,r13		! source line 1436
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
	.word	_Label_2311
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2312
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2313
	.word	12
	.word	4
	.word	_Label_2314
	.word	-12
	.word	4
	.word	_Label_2315
	.word	-16
	.word	4
	.word	_Label_2316
	.word	-20
	.word	4
	.word	_Label_2317
	.word	-24
	.word	4
	.word	_Label_2318
	.word	-28
	.word	4
	.word	_Label_2319
	.word	-32
	.word	4
	.word	0
_Label_2311:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2312:
	.ascii	"Pself\0"
	.align
_Label_2313:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2305\0"
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	1441,r13		! source line 1441
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0AS",r10
!   _temp_2320 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2320 [entry ] into _temp_2321
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
!   _temp_2324 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2324 [entry ] into _temp_2325
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
!   Data Move: _temp_2323 = *_temp_2325  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2322 = _temp_2323 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2321 = _temp_2322  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
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
	.word	_Label_2326
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2327
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2328
	.word	12
	.word	4
	.word	_Label_2329
	.word	-12
	.word	4
	.word	_Label_2330
	.word	-16
	.word	4
	.word	_Label_2331
	.word	-20
	.word	4
	.word	_Label_2332
	.word	-24
	.word	4
	.word	_Label_2333
	.word	-28
	.word	4
	.word	_Label_2334
	.word	-32
	.word	4
	.word	0
_Label_2326:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2327:
	.ascii	"Pself\0"
	.align
_Label_2328:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2320\0"
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
_Label_3464:
	push	r0
	sub	r1,1,r1
	bne	_Label_3464
	mov	1450,r13		! source line 1450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2336 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2336 [0 ] into _temp_2337
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
!   _temp_2335 = _temp_2337		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2338 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2335  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2338  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1456,r13		! source line 1456
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
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
	.word	_Label_2339
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2340
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2341
	.word	-12
	.word	4
	.word	_Label_2342
	.word	-16
	.word	4
	.word	_Label_2343
	.word	-20
	.word	4
	.word	_Label_2344
	.word	-24
	.word	4
	.word	0
_Label_2339:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2340:
	.ascii	"Pself\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2335\0"
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
_Label_3465:
	push	r0
	sub	r1,1,r1
	bne	_Label_3465
	mov	1461,r13		! source line 1461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2345
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2345
	jmp	_Label_2346
_Label_2345:
! THEN...
	mov	1477,r13		! source line 1477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2347
_Label_2346:
! ELSE...
	mov	1478,r13		! source line 1478
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2349		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2349
!	jmp	_Label_2348
_Label_2348:
! THEN...
	mov	1479,r13		! source line 1479
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2349:
! END IF...
_Label_2347:
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
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
	mov	1482,r13		! source line 1482
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
	mov	1485,r13		! source line 1485
	mov	"\0\0WH",r10
_Label_2350:
!	jmp	_Label_2351
_Label_2351:
	mov	1485,r13		! source line 1485
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2354		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2354
!	jmp	_Label_2353
_Label_2353:
! THEN...
	mov	1487,r13		! source line 1487
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2355 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2355  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1487,r13		! source line 1487
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2354:
! IF STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0IF",r10
	mov	1490,r13		! source line 1490
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2359) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2358  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2358 then goto _Label_2357 else goto _Label_2356
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2356
	jmp	_Label_2357
_Label_2356:
! THEN...
	mov	1491,r13		! source line 1491
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2360 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2360  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1491,r13		! source line 1491
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2357:
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
	mov	1494,r13		! source line 1494
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2362) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2361  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2361 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0WH",r10
_Label_2363:
!   if offset >= 8192 then goto _Label_2365		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2365
!	jmp	_Label_2364
_Label_2364:
	mov	1496,r13		! source line 1496
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2366 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2366  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2368		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2368
!	jmp	_Label_2367
_Label_2367:
! THEN...
	mov	1505,r13		! source line 1505
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2368:
! END WHILE...
	jmp	_Label_2363
_Label_2365:
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2350
_Label_2352:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2369
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2370
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2371
	.word	12
	.word	4
	.word	_Label_2372
	.word	16
	.word	4
	.word	_Label_2373
	.word	20
	.word	4
	.word	_Label_2374
	.word	-9
	.word	1
	.word	_Label_2375
	.word	-16
	.word	4
	.word	_Label_2376
	.word	-20
	.word	4
	.word	_Label_2377
	.word	-24
	.word	4
	.word	_Label_2378
	.word	-28
	.word	4
	.word	_Label_2379
	.word	-10
	.word	1
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
	.word	0
_Label_2369:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2370:
	.ascii	"Pself\0"
	.align
_Label_2371:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2372:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2373:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2374:
	.byte	'C'
	.ascii	"_temp_2366\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2379:
	.byte	'C'
	.ascii	"_temp_2358\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2381:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2382:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2383:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2384:
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
_Label_3466:
	push	r0
	sub	r1,1,r1
	bne	_Label_3466
	mov	1515,r13		! source line 1515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2385
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2385
	jmp	_Label_2386
_Label_2385:
! THEN...
	mov	1527,r13		! source line 1527
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2387
_Label_2386:
! ELSE...
	mov	1528,r13		! source line 1528
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2389		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2389
!	jmp	_Label_2388
_Label_2388:
! THEN...
	mov	1529,r13		! source line 1529
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2389:
! END IF...
_Label_2387:
! ASSIGNMENT STATEMENT...
	mov	1531,r13		! source line 1531
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
	mov	1532,r13		! source line 1532
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
	mov	1533,r13		! source line 1533
	mov	"\0\0WH",r10
_Label_2390:
!	jmp	_Label_2391
_Label_2391:
	mov	1533,r13		! source line 1533
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2396		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2396
	jmp	_Label_2393
_Label_2396:
	mov	1535,r13		! source line 1535
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2398) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2397  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2397 then goto _Label_2395 else goto _Label_2393
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2393
	jmp	_Label_2395
_Label_2395:
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2400) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2399  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2399 then goto _Label_2394 else goto _Label_2393
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2393
	jmp	_Label_2394
_Label_2393:
! THEN...
	mov	1537,r13		! source line 1537
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2394:
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
	mov	1539,r13		! source line 1539
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2402) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2401  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2401 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0WH",r10
_Label_2403:
!   if offset >= 8192 then goto _Label_2405		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2405
!	jmp	_Label_2404
_Label_2404:
	mov	1540,r13		! source line 1540
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2406 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2406  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2408		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2408
!	jmp	_Label_2407
_Label_2407:
! THEN...
	mov	1547,r13		! source line 1547
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2408:
! END WHILE...
	jmp	_Label_2403
_Label_2405:
! ASSIGNMENT STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2390
_Label_2392:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2409
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2411
	.word	12
	.word	4
	.word	_Label_2412
	.word	16
	.word	4
	.word	_Label_2413
	.word	20
	.word	4
	.word	_Label_2414
	.word	-9
	.word	1
	.word	_Label_2415
	.word	-16
	.word	4
	.word	_Label_2416
	.word	-20
	.word	4
	.word	_Label_2417
	.word	-24
	.word	4
	.word	_Label_2418
	.word	-10
	.word	1
	.word	_Label_2419
	.word	-28
	.word	4
	.word	_Label_2420
	.word	-11
	.word	1
	.word	_Label_2421
	.word	-32
	.word	4
	.word	_Label_2422
	.word	-36
	.word	4
	.word	_Label_2423
	.word	-40
	.word	4
	.word	_Label_2424
	.word	-44
	.word	4
	.word	0
_Label_2409:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2410:
	.ascii	"Pself\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2412:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2414:
	.byte	'C'
	.ascii	"_temp_2406\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2418:
	.byte	'C'
	.ascii	"_temp_2399\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2420:
	.byte	'C'
	.ascii	"_temp_2397\0"
	.align
_Label_2421:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2422:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2423:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2424:
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
_Label_3467:
	push	r0
	sub	r1,1,r1
	bne	_Label_3467
	mov	1557,r13		! source line 1557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0IF",r10
	mov	1581,r13		! source line 1581
	mov	"\0\0SE",r10
!   _temp_2428 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2429) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2428  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2427  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2427 >= 4 then goto _Label_2426		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2426
!	jmp	_Label_2425
_Label_2425:
! THEN...
	mov	1584,r13		! source line 1584
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2426:
! IF STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2431		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2431
!	jmp	_Label_2430
_Label_2430:
! THEN...
	mov	1589,r13		! source line 1589
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2431:
! ASSIGNMENT STATEMENT...
	mov	1592,r13		! source line 1592
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
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
	mov	1594,r13		! source line 1594
	mov	"\0\0SE",r10
!   _temp_2434 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2433 = _temp_2434 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2435 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2436) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2433  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2435  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2432  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2432  (sizeInBytes=4)
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
	.word	_Label_2437
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2439
	.word	12
	.word	4
	.word	_Label_2440
	.word	16
	.word	4
	.word	_Label_2441
	.word	20
	.word	4
	.word	_Label_2442
	.word	-12
	.word	4
	.word	_Label_2443
	.word	-16
	.word	4
	.word	_Label_2444
	.word	-20
	.word	4
	.word	_Label_2445
	.word	-24
	.word	4
	.word	_Label_2446
	.word	-28
	.word	4
	.word	_Label_2447
	.word	-32
	.word	4
	.word	_Label_2448
	.word	-36
	.word	4
	.word	_Label_2449
	.word	-40
	.word	4
	.word	_Label_2450
	.word	-44
	.word	4
	.word	0
_Label_2437:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2438:
	.ascii	"Pself\0"
	.align
_Label_2439:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2440:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2441:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2450:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2451
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2451:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2452
	.word	_sourceFileName
	.word	311		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2452:
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
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	2177,r13		! source line 2177
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2453 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2453  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2178,r13		! source line 2178
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
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
	mov	2186,r13		! source line 2186
	mov	"\0\0SE",r10
!   _temp_2455 = &semUsedInSynchMethods
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
	mov	2187,r13		! source line 2187
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
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   _temp_2457 = &diskBusy
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
	mov	2188,r13		! source line 2188
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
	.word	_Label_2458
	.word	4		! total size of parameters
	.word	28		! frame size = 28
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
	.word	-24
	.word	4
	.word	_Label_2464
	.word	-28
	.word	4
	.word	0
_Label_2458:
	.ascii	"DiskDriver"
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
	.ascii	"_temp_2456\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2453\0"
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
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	2193,r13		! source line 2193
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0SE",r10
!   _temp_2465 = &diskBusy
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
	mov	2207,r13		! source line 2207
	mov	"\0\0WH",r10
_Label_2466:
!	jmp	_Label_2467
_Label_2467:
	mov	2207,r13		! source line 2207
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2469 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2470) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2469  sizeInBytes=4
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
	mov	2211,r13		! source line 2211
	mov	"\0\0SE",r10
!   _temp_2471 = &semUsedInSynchMethods
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
	mov	2214,r13		! source line 2214
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2480 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2474
	cmp	r1,2
	be	_Label_2475
	cmp	r1,3
	be	_Label_2476
	cmp	r1,4
	be	_Label_2477
	cmp	r1,5
	be	_Label_2478
	cmp	r1,6
	be	_Label_2479
	jmp	_Label_2472
! CASE 1...
_Label_2474:
! SEND STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   _temp_2481 = &diskBusy
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
	mov	2217,r13		! source line 2217
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2475:
! CALL STATEMENT...
!   _temp_2482 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2482  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2219,r13		! source line 2219
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2476:
! CALL STATEMENT...
!   _temp_2483 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2483  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2221,r13		! source line 2221
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2477:
! CALL STATEMENT...
!   _temp_2484 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2484  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2223,r13		! source line 2223
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2478:
! BREAK STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0BR",r10
	jmp	_Label_2473
! CASE 6...
_Label_2479:
! CALL STATEMENT...
!   _temp_2485 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2485  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2229,r13		! source line 2229
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2472:
! CALL STATEMENT...
!   _temp_2486 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2486  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2231,r13		! source line 2231
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2473:
! END WHILE...
	jmp	_Label_2466
_Label_2468:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2487
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2488
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2489
	.word	12
	.word	4
	.word	_Label_2490
	.word	16
	.word	4
	.word	_Label_2491
	.word	20
	.word	4
	.word	_Label_2492
	.word	-12
	.word	4
	.word	_Label_2493
	.word	-16
	.word	4
	.word	_Label_2494
	.word	-20
	.word	4
	.word	_Label_2495
	.word	-24
	.word	4
	.word	_Label_2496
	.word	-28
	.word	4
	.word	_Label_2497
	.word	-32
	.word	4
	.word	_Label_2498
	.word	-36
	.word	4
	.word	_Label_2499
	.word	-40
	.word	4
	.word	_Label_2500
	.word	-44
	.word	4
	.word	_Label_2501
	.word	-48
	.word	4
	.word	_Label_2502
	.word	-52
	.word	4
	.word	0
_Label_2487:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2488:
	.ascii	"Pself\0"
	.align
_Label_2489:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2490:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2491:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2465\0"
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
	mov	2240,r13		! source line 2240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
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
	mov	2259,r13		! source line 2259
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
	mov	2260,r13		! source line 2260
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
	mov	2261,r13		! source line 2261
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
	mov	2261,r13		! source line 2261
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
	.word	_Label_2503
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2504
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2505
	.word	12
	.word	4
	.word	_Label_2506
	.word	16
	.word	4
	.word	_Label_2507
	.word	20
	.word	4
	.word	_Label_2508
	.word	24
	.word	4
	.word	0
_Label_2503:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2504:
	.ascii	"Pself\0"
	.align
_Label_2505:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2506:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2507:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2508:
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
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	2266,r13		! source line 2266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0SE",r10
!   _temp_2509 = &diskBusy
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
	mov	2279,r13		! source line 2279
	mov	"\0\0WH",r10
_Label_2510:
!	jmp	_Label_2511
_Label_2511:
	mov	2279,r13		! source line 2279
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0SE",r10
!   _temp_2513 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2514) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2513  sizeInBytes=4
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
	mov	2282,r13		! source line 2282
	mov	"\0\0SE",r10
!   _temp_2515 = &semUsedInSynchMethods
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
	mov	2285,r13		! source line 2285
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2524 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2518
	cmp	r1,2
	be	_Label_2519
	cmp	r1,3
	be	_Label_2520
	cmp	r1,4
	be	_Label_2521
	cmp	r1,5
	be	_Label_2522
	cmp	r1,6
	be	_Label_2523
	jmp	_Label_2516
! CASE 1...
_Label_2518:
! SEND STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_2525 = &diskBusy
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
	mov	2288,r13		! source line 2288
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2519:
! CALL STATEMENT...
!   _temp_2526 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2526  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2290,r13		! source line 2290
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2520:
! CALL STATEMENT...
!   _temp_2527 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2527  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2292,r13		! source line 2292
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2521:
! CALL STATEMENT...
!   _temp_2528 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2528  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2294,r13		! source line 2294
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2522:
! BREAK STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0BR",r10
	jmp	_Label_2517
! CASE 6...
_Label_2523:
! CALL STATEMENT...
!   _temp_2529 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2529  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2300,r13		! source line 2300
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2516:
! CALL STATEMENT...
!   _temp_2530 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2530  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2302,r13		! source line 2302
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2517:
! END WHILE...
	jmp	_Label_2510
_Label_2512:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2531
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2533
	.word	12
	.word	4
	.word	_Label_2534
	.word	16
	.word	4
	.word	_Label_2535
	.word	20
	.word	4
	.word	_Label_2536
	.word	-12
	.word	4
	.word	_Label_2537
	.word	-16
	.word	4
	.word	_Label_2538
	.word	-20
	.word	4
	.word	_Label_2539
	.word	-24
	.word	4
	.word	_Label_2540
	.word	-28
	.word	4
	.word	_Label_2541
	.word	-32
	.word	4
	.word	_Label_2542
	.word	-36
	.word	4
	.word	_Label_2543
	.word	-40
	.word	4
	.word	_Label_2544
	.word	-44
	.word	4
	.word	_Label_2545
	.word	-48
	.word	4
	.word	_Label_2546
	.word	-52
	.word	4
	.word	0
_Label_2531:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2532:
	.ascii	"Pself\0"
	.align
_Label_2533:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2534:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2509\0"
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
	mov	2311,r13		! source line 2311
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2328,r13		! source line 2328
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
	mov	2329,r13		! source line 2329
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
	mov	2330,r13		! source line 2330
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
	mov	2331,r13		! source line 2331
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
	mov	2331,r13		! source line 2331
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
	.word	_Label_2547
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2548
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2549
	.word	12
	.word	4
	.word	_Label_2550
	.word	16
	.word	4
	.word	_Label_2551
	.word	20
	.word	4
	.word	_Label_2552
	.word	24
	.word	4
	.word	0
_Label_2547:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2548:
	.ascii	"Pself\0"
	.align
_Label_2549:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2550:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2551:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2552:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2553
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
_Label_2553:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2554
	.word	_sourceFileName
	.word	334		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2554:
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	2342,r13		! source line 2342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2555 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2555  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2349,r13		! source line 2349
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2350,r13		! source line 2350
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
	mov	2351,r13		! source line 2351
	mov	"\0\0SE",r10
!   _temp_2557 = &fileManagerLock
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
	mov	2354,r13		! source line 2354
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
	mov	2355,r13		! source line 2355
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
	mov	2356,r13		! source line 2356
	mov	"\0\0SE",r10
!   _temp_2560 = &anFCBBecameFree
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
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   _temp_2561 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2563 = &_temp_2562
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2563 = _temp_2563 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2565 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3472:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3472
!   _temp_2565 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2567:
!   Data Move: *_temp_2563 = _temp_2565  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3473:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3473
!   _temp_2563 = _temp_2563 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2564 = _temp_2564 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2564) then goto _Label_2567
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2567
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2568 = &_temp_2562
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3474
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3474:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2561 = *_temp_2568  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3475:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3475
! FOR STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2573 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2574 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2573  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2569:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2574 then goto _Label_2572		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2572
_Label_2570:
	mov	2359,r13		! source line 2359
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0AS",r10
!   _temp_2575 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2575 [i ] into _temp_2576
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
!   _temp_2577 = _temp_2576 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2577 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0SE",r10
!   _temp_2578 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2578 [i ] into _temp_2579
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
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_2581 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2581 [i ] into _temp_2582
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
!   _temp_2580 = _temp_2582		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2583 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2580  sizeInBytes=4
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
_Label_2571:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2569
! END FOR
_Label_2572:
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
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
	mov	2367,r13		! source line 2367
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
	mov	2368,r13		! source line 2368
	mov	"\0\0SE",r10
!   _temp_2586 = &anOpenFileBecameFree
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
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   _temp_2587 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2589 = &_temp_2588
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2589 = _temp_2589 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2591 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3476:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3476
!   _temp_2591 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2593:
!   Data Move: *_temp_2589 = _temp_2591  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3477:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3477
!   _temp_2589 = _temp_2589 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2590 = _temp_2590 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2590) then goto _Label_2593
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2593
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2594 = &_temp_2588
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3478
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3478:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2587 = *_temp_2594  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3479:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3479
! FOR STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2599 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2600 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2599  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2595:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2600 then goto _Label_2598		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2598
_Label_2596:
	mov	2371,r13		! source line 2371
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
!   _temp_2601 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2601 [i ] into _temp_2602
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
!   _temp_2603 = _temp_2602 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2603 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   _temp_2605 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2605 [i ] into _temp_2606
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
!   _temp_2604 = _temp_2606		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2607 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2604  sizeInBytes=4
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
_Label_2597:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2595
! END FOR
_Label_2598:
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3480:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3480
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   _temp_2609 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2610 = _temp_2609 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2610 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
	mov	2383,r13		! source line 2383
	mov	"\0\0SE",r10
!   _temp_2611 = &_P_Kernel_frameManager
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
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   _temp_2612 = &_P_Kernel_diskDriver
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
	mov	2384,r13		! source line 2384
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
	.word	_Label_2613
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2614
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2615
	.word	-12
	.word	4
	.word	_Label_2616
	.word	-16
	.word	4
	.word	_Label_2617
	.word	-20
	.word	4
	.word	_Label_2618
	.word	-24
	.word	4
	.word	_Label_2619
	.word	-28
	.word	4
	.word	_Label_2620
	.word	-32
	.word	4
	.word	_Label_2621
	.word	-36
	.word	4
	.word	_Label_2622
	.word	-40
	.word	4
	.word	_Label_2623
	.word	-44
	.word	4
	.word	_Label_2624
	.word	-48
	.word	4
	.word	_Label_2625
	.word	-52
	.word	4
	.word	_Label_2626
	.word	-56
	.word	4
	.word	_Label_2627
	.word	-60
	.word	4
	.word	_Label_2628
	.word	-64
	.word	4
	.word	_Label_2629
	.word	-68
	.word	4
	.word	_Label_2630
	.word	-72
	.word	4
	.word	_Label_2631
	.word	-100
	.word	28
	.word	_Label_2632
	.word	-104
	.word	4
	.word	_Label_2633
	.word	-108
	.word	4
	.word	_Label_2634
	.word	-392
	.word	284
	.word	_Label_2635
	.word	-396
	.word	4
	.word	_Label_2636
	.word	-400
	.word	4
	.word	_Label_2637
	.word	-404
	.word	4
	.word	_Label_2638
	.word	-408
	.word	4
	.word	_Label_2639
	.word	-412
	.word	4
	.word	_Label_2640
	.word	-416
	.word	4
	.word	_Label_2641
	.word	-420
	.word	4
	.word	_Label_2642
	.word	-424
	.word	4
	.word	_Label_2643
	.word	-428
	.word	4
	.word	_Label_2644
	.word	-432
	.word	4
	.word	_Label_2645
	.word	-436
	.word	4
	.word	_Label_2646
	.word	-440
	.word	4
	.word	_Label_2647
	.word	-444
	.word	4
	.word	_Label_2648
	.word	-448
	.word	4
	.word	_Label_2649
	.word	-452
	.word	4
	.word	_Label_2650
	.word	-456
	.word	4
	.word	_Label_2651
	.word	-460
	.word	4
	.word	_Label_2652
	.word	-500
	.word	40
	.word	_Label_2653
	.word	-504
	.word	4
	.word	_Label_2654
	.word	-508
	.word	4
	.word	_Label_2655
	.word	-912
	.word	404
	.word	_Label_2656
	.word	-916
	.word	4
	.word	_Label_2657
	.word	-920
	.word	4
	.word	_Label_2658
	.word	-924
	.word	4
	.word	_Label_2659
	.word	-928
	.word	4
	.word	_Label_2660
	.word	-932
	.word	4
	.word	_Label_2661
	.word	-936
	.word	4
	.word	_Label_2662
	.word	-940
	.word	4
	.word	_Label_2663
	.word	-944
	.word	4
	.word	0
_Label_2613:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2614:
	.ascii	"Pself\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2663:
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
_Label_3481:
	push	r0
	sub	r1,1,r1
	bne	_Label_3481
	mov	2391,r13		! source line 2391
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0SE",r10
!   _temp_2664 = &fileManagerLock
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
!   _temp_2665 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2394,r13		! source line 2394
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2670 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2671 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2670  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2666:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2671 then goto _Label_2669		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2669
_Label_2667:
	mov	2395,r13		! source line 2395
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2672 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2672  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2396,r13		! source line 2396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2397,r13		! source line 2397
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2673 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2673  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2398,r13		! source line 2398
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0SE",r10
!   _temp_2674 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2674 [i ] into _temp_2675
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
_Label_2668:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2666
! END FOR
_Label_2669:
! CALL STATEMENT...
!   _temp_2676 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2401,r13		! source line 2401
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_2677 = _function_202_printFCB
	set	_function_202_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2678 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2677  sizeInBytes=4
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
	mov	2403,r13		! source line 2403
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2679 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2679  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2404,r13		! source line 2404
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2684 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2685 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2684  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2680:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2685 then goto _Label_2683		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2683
_Label_2681:
	mov	2405,r13		! source line 2405
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2686 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2686  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2406,r13		! source line 2406
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2407,r13		! source line 2407
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2687 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2687  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2408,r13		! source line 2408
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2689 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2689 [i ] into _temp_2690
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
!   _temp_2688 = _temp_2690		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2688  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2409,r13		! source line 2409
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2691 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2691  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2410,r13		! source line 2410
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0SE",r10
!   _temp_2692 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2692 [i ] into _temp_2693
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
_Label_2682:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2680
! END FOR
_Label_2683:
! CALL STATEMENT...
!   _temp_2694 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2694  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2413,r13		! source line 2413
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0SE",r10
!   _temp_2695 = _function_201_printOpen
	set	_function_201_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2696 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2695  sizeInBytes=4
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
	mov	2415,r13		! source line 2415
	mov	"\0\0SE",r10
!   _temp_2697 = &fileManagerLock
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
	mov	2415,r13		! source line 2415
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
	.word	_Label_2698
	.word	4		! total size of parameters
	.word	116		! frame size = 116
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
	.word	-24
	.word	4
	.word	_Label_2704
	.word	-28
	.word	4
	.word	_Label_2705
	.word	-32
	.word	4
	.word	_Label_2706
	.word	-36
	.word	4
	.word	_Label_2707
	.word	-40
	.word	4
	.word	_Label_2708
	.word	-44
	.word	4
	.word	_Label_2709
	.word	-48
	.word	4
	.word	_Label_2710
	.word	-52
	.word	4
	.word	_Label_2711
	.word	-56
	.word	4
	.word	_Label_2712
	.word	-60
	.word	4
	.word	_Label_2713
	.word	-64
	.word	4
	.word	_Label_2714
	.word	-68
	.word	4
	.word	_Label_2715
	.word	-72
	.word	4
	.word	_Label_2716
	.word	-76
	.word	4
	.word	_Label_2717
	.word	-80
	.word	4
	.word	_Label_2718
	.word	-84
	.word	4
	.word	_Label_2719
	.word	-88
	.word	4
	.word	_Label_2720
	.word	-92
	.word	4
	.word	_Label_2721
	.word	-96
	.word	4
	.word	_Label_2722
	.word	-100
	.word	4
	.word	_Label_2723
	.word	-104
	.word	4
	.word	_Label_2724
	.word	-108
	.word	4
	.word	_Label_2725
	.word	-112
	.word	4
	.word	_Label_2726
	.word	-116
	.word	4
	.word	0
_Label_2698:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_2696\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2726:
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
_Label_3482:
	push	r0
	sub	r1,1,r1
	bne	_Label_3482
	mov	2420,r13		! source line 2420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
	mov	2436,r13		! source line 2436
	mov	"\0\0SE",r10
!   _temp_2727 = &_P_Kernel_fileManager
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
	mov	2437,r13		! source line 2437
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2728
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2728
	jmp	_Label_2729
_Label_2728:
! THEN...
	mov	2438,r13		! source line 2438
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2729:
! SEND STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0SE",r10
!   _temp_2730 = &fileManagerLock
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
	mov	2443,r13		! source line 2443
	mov	"\0\0WH",r10
_Label_2731:
	mov	2443,r13		! source line 2443
	mov	"\0\0SE",r10
!   _temp_2734 = &openFileFreeList
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
!   if result==true then goto _Label_2732 else goto _Label_2733
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2733
	jmp	_Label_2732
_Label_2732:
	mov	2443,r13		! source line 2443
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0SE",r10
!   _temp_2735 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2736 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2735  sizeInBytes=4
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
	jmp	_Label_2731
_Label_2733:
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
	mov	2446,r13		! source line 2446
	mov	"\0\0SE",r10
!   _temp_2737 = &openFileFreeList
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
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2738 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2738 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2739 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2739 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2740 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   _temp_2741 = &fileManagerLock
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
	mov	2456,r13		! source line 2456
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
	.word	_Label_2742
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2744
	.word	12
	.word	4
	.word	_Label_2745
	.word	-12
	.word	4
	.word	_Label_2746
	.word	-16
	.word	4
	.word	_Label_2747
	.word	-20
	.word	4
	.word	_Label_2748
	.word	-24
	.word	4
	.word	_Label_2749
	.word	-28
	.word	4
	.word	_Label_2750
	.word	-32
	.word	4
	.word	_Label_2751
	.word	-36
	.word	4
	.word	_Label_2752
	.word	-40
	.word	4
	.word	_Label_2753
	.word	-44
	.word	4
	.word	_Label_2754
	.word	-48
	.word	4
	.word	_Label_2755
	.word	-52
	.word	4
	.word	_Label_2756
	.word	-56
	.word	4
	.word	0
_Label_2742:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2743:
	.ascii	"Pself\0"
	.align
_Label_2744:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2755:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2756:
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
_Label_3483:
	push	r0
	sub	r1,1,r1
	bne	_Label_3483
	mov	2461,r13		! source line 2461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
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
	mov	2490,r13		! source line 2490
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2758		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2758
!	jmp	_Label_2757
_Label_2757:
! THEN...
	mov	2492,r13		! source line 2492
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2759 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2759  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2492,r13		! source line 2492
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2758:
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
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
	mov	2497,r13		! source line 2497
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2498,r13		! source line 2498
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
	mov	2499,r13		! source line 2499
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0WH",r10
_Label_2760:
!   if numFiles <= 0 then goto _Label_2762		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2762
!	jmp	_Label_2761
_Label_2761:
	mov	2502,r13		! source line 2502
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2763 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2763  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2503,r13		! source line 2503
	mov	"\0\0CA",r10
	call	_function_203_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2764 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2764  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2505,r13		! source line 2505
	mov	"\0\0CA",r10
	call	_function_203_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2765 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2765  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2507,r13		! source line 2507
	mov	"\0\0CA",r10
	call	_function_203_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2769 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2769 then goto _Label_2767		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2767
!	jmp	_Label_2768
_Label_2768:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2771
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
!   _temp_2770 = _temp_2771		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2770  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2510,r13		! source line 2510
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2766 else goto _Label_2767
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2767
	jmp	_Label_2766
_Label_2766:
! THEN...
	mov	2511,r13		! source line 2511
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0BR",r10
	jmp	_Label_2762
! END IF...
_Label_2767:
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2760
_Label_2762:
! IF STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2773		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2773
!	jmp	_Label_2772
_Label_2772:
! THEN...
	mov	2519,r13		! source line 2519
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2773:
! SEND STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   _temp_2774 = &fileManagerLock
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
	mov	2524,r13		! source line 2524
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2779 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2780 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2779  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2775:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2780 then goto _Label_2778		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2778
_Label_2776:
	mov	2524,r13		! source line 2524
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
!   _temp_2781 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2781 [i ] into _temp_2782
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
!   fcb = _temp_2782		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2786 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2785 = *_temp_2786  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2785 != start then goto _Label_2784		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2784
!	jmp	_Label_2783
_Label_2783:
! THEN...
	mov	2527,r13		! source line 2527
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2787 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2790 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2789 = *_temp_2790  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2788 = _temp_2789 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2787 = _temp_2788  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_2791 = &fileManagerLock
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
	mov	2529,r13		! source line 2529
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2784:
!   Increment the FOR-LOOP index variable and jump back
_Label_2777:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2775
! END FOR
_Label_2778:
! WHILE STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0WH",r10
_Label_2792:
	mov	2534,r13		! source line 2534
	mov	"\0\0SE",r10
!   _temp_2795 = &fcbFreeList
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
!   if result==true then goto _Label_2793 else goto _Label_2794
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2794
	jmp	_Label_2793
_Label_2793:
	mov	2534,r13		! source line 2534
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   _temp_2796 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2797 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2796  sizeInBytes=4
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
	jmp	_Label_2792
_Label_2794:
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
!   _temp_2798 = &fcbFreeList
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
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
!   _temp_2799 = &fileManagerLock
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
	mov	2543,r13		! source line 2543
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2800 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2800 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2801 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2801 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2802 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2802 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2807 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2806 = *_temp_2807  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2806 < 0 then goto _Label_2805		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2805
	jmp	_Label_2803
_Label_2805:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2808 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2808 ) then goto _Label_2804		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2804
!	jmp	_Label_2803
_Label_2803:
! THEN...
	mov	2547,r13		! source line 2547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2809 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2809  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2547,r13		! source line 2547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2804:
! RETURN STATEMENT...
	mov	2549,r13		! source line 2549
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
	.word	_Label_2810
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2812
	.word	12
	.word	4
	.word	_Label_2813
	.word	-12
	.word	4
	.word	_Label_2814
	.word	-16
	.word	4
	.word	_Label_2815
	.word	-20
	.word	4
	.word	_Label_2816
	.word	-24
	.word	4
	.word	_Label_2817
	.word	-28
	.word	4
	.word	_Label_2818
	.word	-32
	.word	4
	.word	_Label_2819
	.word	-36
	.word	4
	.word	_Label_2820
	.word	-40
	.word	4
	.word	_Label_2821
	.word	-44
	.word	4
	.word	_Label_2822
	.word	-48
	.word	4
	.word	_Label_2823
	.word	-52
	.word	4
	.word	_Label_2824
	.word	-56
	.word	4
	.word	_Label_2825
	.word	-60
	.word	4
	.word	_Label_2826
	.word	-64
	.word	4
	.word	_Label_2827
	.word	-68
	.word	4
	.word	_Label_2828
	.word	-72
	.word	4
	.word	_Label_2829
	.word	-76
	.word	4
	.word	_Label_2830
	.word	-80
	.word	4
	.word	_Label_2831
	.word	-84
	.word	4
	.word	_Label_2832
	.word	-88
	.word	4
	.word	_Label_2833
	.word	-92
	.word	4
	.word	_Label_2834
	.word	-96
	.word	4
	.word	_Label_2835
	.word	-100
	.word	4
	.word	_Label_2836
	.word	-104
	.word	4
	.word	_Label_2837
	.word	-108
	.word	4
	.word	_Label_2838
	.word	-112
	.word	4
	.word	_Label_2839
	.word	-116
	.word	4
	.word	_Label_2840
	.word	-120
	.word	4
	.word	_Label_2841
	.word	-124
	.word	4
	.word	_Label_2842
	.word	-128
	.word	4
	.word	_Label_2843
	.word	-132
	.word	4
	.word	_Label_2844
	.word	-136
	.word	4
	.word	_Label_2845
	.word	-140
	.word	4
	.word	_Label_2846
	.word	-144
	.word	4
	.word	_Label_2847
	.word	-148
	.word	4
	.word	_Label_2848
	.word	-152
	.word	4
	.word	_Label_2849
	.word	-156
	.word	4
	.word	_Label_2850
	.word	-160
	.word	4
	.word	0
_Label_2810:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2811:
	.ascii	"Pself\0"
	.align
_Label_2812:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2844:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2845:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2846:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2847:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2848:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2849:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2850:
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
_Label_3484:
	push	r0
	sub	r1,1,r1
	bne	_Label_3484
	mov	2562,r13		! source line 2562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0IF",r10
!   _temp_2853 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2853 then goto _Label_2852		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2852
!	jmp	_Label_2851
_Label_2851:
! THEN...
	mov	2565,r13		! source line 2565
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2852:
! SEND STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0SE",r10
!   _temp_2854 = &fileManagerLock
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
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_2855 = &_P_Kernel_fileManager
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
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2856 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2856  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2857 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2860 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2859 = *_temp_2860  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2858 = _temp_2859 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2857 = _temp_2858  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2864 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2863 = *_temp_2864  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2863 > 0 then goto _Label_2862		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2862
!	jmp	_Label_2861
_Label_2861:
! THEN...
	mov	2572,r13		! source line 2572
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_2865 = &openFileFreeList
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
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_2866 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2867 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2866  sizeInBytes=4
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
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2868 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2871 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2870 = *_temp_2871  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2869 = _temp_2870 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2868 = _temp_2869  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2875 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2874 = *_temp_2875  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2874 > 0 then goto _Label_2873		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2873
!	jmp	_Label_2872
_Label_2872:
! THEN...
	mov	2576,r13		! source line 2576
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0SE",r10
!   _temp_2876 = &fcbFreeList
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
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   _temp_2877 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2878 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2877  sizeInBytes=4
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
_Label_2873:
! END IF...
_Label_2862:
! SEND STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0SE",r10
!   _temp_2879 = &fileManagerLock
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
	mov	2580,r13		! source line 2580
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
	.word	_Label_2880
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2882
	.word	12
	.word	4
	.word	_Label_2883
	.word	-12
	.word	4
	.word	_Label_2884
	.word	-16
	.word	4
	.word	_Label_2885
	.word	-20
	.word	4
	.word	_Label_2886
	.word	-24
	.word	4
	.word	_Label_2887
	.word	-28
	.word	4
	.word	_Label_2888
	.word	-32
	.word	4
	.word	_Label_2889
	.word	-36
	.word	4
	.word	_Label_2890
	.word	-40
	.word	4
	.word	_Label_2891
	.word	-44
	.word	4
	.word	_Label_2892
	.word	-48
	.word	4
	.word	_Label_2893
	.word	-52
	.word	4
	.word	_Label_2894
	.word	-56
	.word	4
	.word	_Label_2895
	.word	-60
	.word	4
	.word	_Label_2896
	.word	-64
	.word	4
	.word	_Label_2897
	.word	-68
	.word	4
	.word	_Label_2898
	.word	-72
	.word	4
	.word	_Label_2899
	.word	-76
	.word	4
	.word	_Label_2900
	.word	-80
	.word	4
	.word	_Label_2901
	.word	-84
	.word	4
	.word	_Label_2902
	.word	-88
	.word	4
	.word	_Label_2903
	.word	-92
	.word	4
	.word	_Label_2904
	.word	-96
	.word	4
	.word	_Label_2905
	.word	-100
	.word	4
	.word	_Label_2906
	.word	-104
	.word	4
	.word	0
_Label_2880:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2881:
	.ascii	"Pself\0"
	.align
_Label_2882:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2874\0"
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
	.ascii	"_temp_2860\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2855\0"
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
_Label_3485:
	push	r0
	sub	r1,1,r1
	bne	_Label_3485
	mov	2585,r13		! source line 2585
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2910 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2909 = *_temp_2910  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2909) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2911 = _temp_2909 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2911 ) then goto _Label_2908		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2908
!	jmp	_Label_2907
_Label_2907:
! THEN...
	mov	2591,r13		! source line 2591
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2916 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2915 = *_temp_2916  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2915) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2917 = _temp_2915 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2914 = *_temp_2917  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2914 >= 0 then goto _Label_2913		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2913
!	jmp	_Label_2912
_Label_2912:
! THEN...
	mov	2592,r13		! source line 2592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2918 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2918  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2592,r13		! source line 2592
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2913:
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2920 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2919 = *_temp_2920  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2919) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2921 = _temp_2919 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2921 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2925 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2924 = *_temp_2925  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2924) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2926 = _temp_2924 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2923 = *_temp_2926  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2929 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2928 = *_temp_2929  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2928) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2930 = _temp_2928 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2927 = *_temp_2930  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2922 = _temp_2923 + _temp_2927		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2933 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2932 = *_temp_2933  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2932) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2934 = _temp_2932 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2931 = *_temp_2934  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2935 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2922  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2931  sizeInBytes=4
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
_Label_2908:
! RETURN STATEMENT...
	mov	2590,r13		! source line 2590
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
	.word	_Label_2936
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2938
	.word	12
	.word	4
	.word	_Label_2939
	.word	-12
	.word	4
	.word	_Label_2940
	.word	-16
	.word	4
	.word	_Label_2941
	.word	-20
	.word	4
	.word	_Label_2942
	.word	-24
	.word	4
	.word	_Label_2943
	.word	-28
	.word	4
	.word	_Label_2944
	.word	-32
	.word	4
	.word	_Label_2945
	.word	-36
	.word	4
	.word	_Label_2946
	.word	-40
	.word	4
	.word	_Label_2947
	.word	-44
	.word	4
	.word	_Label_2948
	.word	-48
	.word	4
	.word	_Label_2949
	.word	-52
	.word	4
	.word	_Label_2950
	.word	-56
	.word	4
	.word	_Label_2951
	.word	-60
	.word	4
	.word	_Label_2952
	.word	-64
	.word	4
	.word	_Label_2953
	.word	-68
	.word	4
	.word	_Label_2954
	.word	-72
	.word	4
	.word	_Label_2955
	.word	-76
	.word	4
	.word	_Label_2956
	.word	-80
	.word	4
	.word	_Label_2957
	.word	-84
	.word	4
	.word	_Label_2958
	.word	-88
	.word	4
	.word	_Label_2959
	.word	-92
	.word	4
	.word	_Label_2960
	.word	-96
	.word	4
	.word	_Label_2961
	.word	-100
	.word	4
	.word	_Label_2962
	.word	-104
	.word	4
	.word	_Label_2963
	.word	-108
	.word	4
	.word	0
_Label_2936:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2937:
	.ascii	"Pself\0"
	.align
_Label_2938:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2909\0"
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
_Label_3486:
	push	r0
	sub	r1,1,r1
	bne	_Label_3486
	mov	2604,r13		! source line 2604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_2964 = &fileManagerLock
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
	mov	2620,r13		! source line 2620
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2970		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2970
!   _temp_2969 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2971
_Label_2970:
!   _temp_2969 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2971:
!   if _temp_2969 then goto _Label_2968 else goto _Label_2965
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2965
	jmp	_Label_2968
_Label_2968:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2974 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2973 = *_temp_2974  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2973 == 0 then goto _Label_2975		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2975
!   _temp_2972 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2976
_Label_2975:
!   _temp_2972 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2976:
!   if _temp_2972 then goto _Label_2967 else goto _Label_2965
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2965
	jmp	_Label_2967
_Label_2967:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2979 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2978 = *_temp_2979  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2978) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2980 = _temp_2978 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2977 = *_temp_2980  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2977 >= 0 then goto _Label_2966		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2966
!	jmp	_Label_2965
_Label_2965:
! THEN...
	mov	2621,r13		! source line 2621
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2981 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2981  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2621,r13		! source line 2621
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2966:
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2982 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2982  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0WH",r10
_Label_2983:
!   if numBytes <= 0 then goto _Label_2985		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2985
!	jmp	_Label_2984
_Label_2984:
	mov	2624,r13		! source line 2624
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
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
	mov	2634,r13		! source line 2634
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
	mov	2638,r13		! source line 2638
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2989 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2988 = *_temp_2989  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2988 == sector then goto _Label_2987		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2987
!	jmp	_Label_2986
_Label_2986:
! THEN...
	mov	2639,r13		! source line 2639
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2990) then goto _runtimeErrorNullPointer
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
	mov	2641,r13		! source line 2641
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2993 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2992 = *_temp_2993  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2991 = sector + _temp_2992		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2995 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2994 = *_temp_2995  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2996 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2991  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2994  sizeInBytes=4
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
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2997 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2997 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2998 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2998 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2987:
! ASSIGNMENT STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3000 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2999 = *_temp_3000  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2999 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
!   _temp_3001 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3001  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2648,r13		! source line 2648
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
	mov	2652,r13		! source line 2652
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2983
_Label_2985:
! SEND STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0SE",r10
!   _temp_3002 = &fileManagerLock
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
	mov	2663,r13		! source line 2663
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
	.word	_Label_3003
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3005
	.word	12
	.word	4
	.word	_Label_3006
	.word	16
	.word	4
	.word	_Label_3007
	.word	20
	.word	4
	.word	_Label_3008
	.word	24
	.word	4
	.word	_Label_3009
	.word	-16
	.word	4
	.word	_Label_3010
	.word	-20
	.word	4
	.word	_Label_3011
	.word	-24
	.word	4
	.word	_Label_3012
	.word	-28
	.word	4
	.word	_Label_3013
	.word	-32
	.word	4
	.word	_Label_3014
	.word	-36
	.word	4
	.word	_Label_3015
	.word	-40
	.word	4
	.word	_Label_3016
	.word	-44
	.word	4
	.word	_Label_3017
	.word	-48
	.word	4
	.word	_Label_3018
	.word	-52
	.word	4
	.word	_Label_3019
	.word	-56
	.word	4
	.word	_Label_3020
	.word	-60
	.word	4
	.word	_Label_3021
	.word	-64
	.word	4
	.word	_Label_3022
	.word	-68
	.word	4
	.word	_Label_3023
	.word	-72
	.word	4
	.word	_Label_3024
	.word	-76
	.word	4
	.word	_Label_3025
	.word	-80
	.word	4
	.word	_Label_3026
	.word	-84
	.word	4
	.word	_Label_3027
	.word	-88
	.word	4
	.word	_Label_3028
	.word	-92
	.word	4
	.word	_Label_3029
	.word	-96
	.word	4
	.word	_Label_3030
	.word	-100
	.word	4
	.word	_Label_3031
	.word	-104
	.word	4
	.word	_Label_3032
	.word	-9
	.word	1
	.word	_Label_3033
	.word	-10
	.word	1
	.word	_Label_3034
	.word	-108
	.word	4
	.word	_Label_3035
	.word	-112
	.word	4
	.word	_Label_3036
	.word	-116
	.word	4
	.word	_Label_3037
	.word	-120
	.word	4
	.word	_Label_3038
	.word	-124
	.word	4
	.word	_Label_3039
	.word	-128
	.word	4
	.word	0
_Label_3003:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3004:
	.ascii	"Pself\0"
	.align
_Label_3005:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3006:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3007:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3008:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3032:
	.byte	'C'
	.ascii	"_temp_2972\0"
	.align
_Label_3033:
	.byte	'C'
	.ascii	"_temp_2969\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_3035:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3036:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3037:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3038:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3039:
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
_Label_3487:
	push	r0
	sub	r1,1,r1
	bne	_Label_3487
	mov	2668,r13		! source line 2668
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   _temp_3040 = &fileManagerLock
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
	mov	2685,r13		! source line 2685
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3046		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3046
!   _temp_3045 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3047
_Label_3046:
!   _temp_3045 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3047:
!   if _temp_3045 then goto _Label_3044 else goto _Label_3041
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3041
	jmp	_Label_3044
_Label_3044:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3050 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3049 = *_temp_3050  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3049 == 0 then goto _Label_3051		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3051
!   _temp_3048 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3052
_Label_3051:
!   _temp_3048 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3052:
!   if _temp_3048 then goto _Label_3043 else goto _Label_3041
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3041
	jmp	_Label_3043
_Label_3043:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3055 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3054 = *_temp_3055  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3054) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3056 = _temp_3054 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3053 = *_temp_3056  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3053 >= 0 then goto _Label_3042		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3042
!	jmp	_Label_3041
_Label_3041:
! THEN...
	mov	2686,r13		! source line 2686
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3057 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3057  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2686,r13		! source line 2686
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3042:
! ASSIGNMENT STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3058 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3058  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0WH",r10
_Label_3059:
!   if numBytes <= 0 then goto _Label_3061		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3061
!	jmp	_Label_3060
_Label_3060:
	mov	2689,r13		! source line 2689
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2698,r13		! source line 2698
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
	mov	2699,r13		! source line 2699
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
	mov	2703,r13		! source line 2703
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3065 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3064 = *_temp_3065  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3064 == sector then goto _Label_3063		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3063
!	jmp	_Label_3062
_Label_3062:
! THEN...
	mov	2705,r13		! source line 2705
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3066) then goto _runtimeErrorNullPointer
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
_Label_3063:
! ASSIGNMENT STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3068 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3067 = *_temp_3068  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3067 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   _temp_3069 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3069  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2708,r13		! source line 2708
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3073 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3072 = *_temp_3073  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3072 != sector then goto _Label_3071		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3071
!	jmp	_Label_3070
_Label_3070:
	jmp	_Label_3074
_Label_3071:
! ELSE...
	mov	2711,r13		! source line 2711
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3077
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3077
	jmp	_Label_3076
_Label_3077:
!   if bytesToMove != 8192 then goto _Label_3076		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3076
!	jmp	_Label_3075
_Label_3075:
	jmp	_Label_3078
_Label_3076:
! ELSE...
	mov	2715,r13		! source line 2715
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3081 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3080 = *_temp_3081  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3079 = sector + _temp_3080		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3083 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3082 = *_temp_3083  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3084 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3079  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3082  sizeInBytes=4
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
_Label_3078:
! END IF...
_Label_3074:
! ASSIGNMENT STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3085 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3085 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3086 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3086 = 1  (sizeInBytes=1)
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
	mov	2724,r13		! source line 2724
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3059
_Label_3061:
! SEND STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
!   _temp_3087 = &fileManagerLock
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
	mov	2736,r13		! source line 2736
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
	.word	_Label_3088
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3090
	.word	12
	.word	4
	.word	_Label_3091
	.word	16
	.word	4
	.word	_Label_3092
	.word	20
	.word	4
	.word	_Label_3093
	.word	24
	.word	4
	.word	_Label_3094
	.word	-16
	.word	4
	.word	_Label_3095
	.word	-20
	.word	4
	.word	_Label_3096
	.word	-24
	.word	4
	.word	_Label_3097
	.word	-28
	.word	4
	.word	_Label_3098
	.word	-32
	.word	4
	.word	_Label_3099
	.word	-36
	.word	4
	.word	_Label_3100
	.word	-40
	.word	4
	.word	_Label_3101
	.word	-44
	.word	4
	.word	_Label_3102
	.word	-48
	.word	4
	.word	_Label_3103
	.word	-52
	.word	4
	.word	_Label_3104
	.word	-56
	.word	4
	.word	_Label_3105
	.word	-60
	.word	4
	.word	_Label_3106
	.word	-64
	.word	4
	.word	_Label_3107
	.word	-68
	.word	4
	.word	_Label_3108
	.word	-72
	.word	4
	.word	_Label_3109
	.word	-76
	.word	4
	.word	_Label_3110
	.word	-80
	.word	4
	.word	_Label_3111
	.word	-84
	.word	4
	.word	_Label_3112
	.word	-88
	.word	4
	.word	_Label_3113
	.word	-92
	.word	4
	.word	_Label_3114
	.word	-96
	.word	4
	.word	_Label_3115
	.word	-100
	.word	4
	.word	_Label_3116
	.word	-104
	.word	4
	.word	_Label_3117
	.word	-108
	.word	4
	.word	_Label_3118
	.word	-112
	.word	4
	.word	_Label_3119
	.word	-9
	.word	1
	.word	_Label_3120
	.word	-10
	.word	1
	.word	_Label_3121
	.word	-116
	.word	4
	.word	_Label_3122
	.word	-120
	.word	4
	.word	_Label_3123
	.word	-124
	.word	4
	.word	_Label_3124
	.word	-128
	.word	4
	.word	_Label_3125
	.word	-132
	.word	4
	.word	_Label_3126
	.word	-136
	.word	4
	.word	0
_Label_3088:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3089:
	.ascii	"Pself\0"
	.align
_Label_3090:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3091:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3092:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3093:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3119:
	.byte	'C'
	.ascii	"_temp_3048\0"
	.align
_Label_3120:
	.byte	'C'
	.ascii	"_temp_3045\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3122:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3123:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3124:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3125:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3126:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3127
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3127:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3128
	.word	_sourceFileName
	.word	359		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3128:
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
_Label_3488:
	push	r0
	sub	r1,1,r1
	bne	_Label_3488
	mov	2772,r13		! source line 2772
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
!   _temp_3129 = &_P_Kernel_frameManager
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
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2777,r13		! source line 2777
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
	.word	_Label_3130
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3131
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3132
	.word	-12
	.word	4
	.word	0
_Label_3130:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3131:
	.ascii	"Pself\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3129\0"
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
_Label_3489:
	push	r0
	sub	r1,1,r1
	bne	_Label_3489
	mov	2782,r13		! source line 2782
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3133 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3133  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2783,r13		! source line 2783
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2784,r13		! source line 2784
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3134 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3134  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2785,r13		! source line 2785
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2786,r13		! source line 2786
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3135 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3135  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2787,r13		! source line 2787
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2788,r13		! source line 2788
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3136 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3136  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2789,r13		! source line 2789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3137 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3137  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3138 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3138  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2793,r13		! source line 2793
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2794,r13		! source line 2794
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2795,r13		! source line 2795
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
	.word	_Label_3139
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3140
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3141
	.word	-12
	.word	4
	.word	_Label_3142
	.word	-16
	.word	4
	.word	_Label_3143
	.word	-20
	.word	4
	.word	_Label_3144
	.word	-24
	.word	4
	.word	_Label_3145
	.word	-28
	.word	4
	.word	_Label_3146
	.word	-32
	.word	4
	.word	0
_Label_3139:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3140:
	.ascii	"Pself\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3147
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3147:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3148
	.word	_sourceFileName
	.word	376		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3148:
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
_Label_3490:
	push	r0
	sub	r1,1,r1
	bne	_Label_3490
	mov	2806,r13		! source line 2806
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3149 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3149  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3150 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3150  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3152		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3152
!	jmp	_Label_3151
_Label_3151:
! THEN...
	mov	2811,r13		! source line 2811
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2811,r13		! source line 2811
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
	jmp	_Label_3153
_Label_3152:
! ELSE...
	mov	2813,r13		! source line 2813
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3154 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3154  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3153:
! RETURN STATEMENT...
	mov	2810,r13		! source line 2810
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
	.word	_Label_3155
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3156
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3157
	.word	-12
	.word	4
	.word	_Label_3158
	.word	-16
	.word	4
	.word	_Label_3159
	.word	-20
	.word	4
	.word	0
_Label_3155:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3156:
	.ascii	"Pself\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3149\0"
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
_Label_3491:
	push	r0
	sub	r1,1,r1
	bne	_Label_3491
	mov	2819,r13		! source line 2819
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0SE",r10
!   _temp_3160 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3161 = _temp_3160 + 4
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
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
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
	mov	2832,r13		! source line 2832
	mov	"\0\0SE",r10
!   _temp_3162 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3163 = _temp_3162 + 4
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
	mov	2833,r13		! source line 2833
	mov	"\0\0RE",r10
	mov	2833,r13		! source line 2833
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3166 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3165  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3164  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3164  (sizeInBytes=1)
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
	.word	_Label_3167
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3169
	.word	12
	.word	4
	.word	_Label_3170
	.word	16
	.word	4
	.word	_Label_3171
	.word	-16
	.word	4
	.word	_Label_3172
	.word	-20
	.word	4
	.word	_Label_3173
	.word	-9
	.word	1
	.word	_Label_3174
	.word	-24
	.word	4
	.word	_Label_3175
	.word	-28
	.word	4
	.word	_Label_3176
	.word	-32
	.word	4
	.word	_Label_3177
	.word	-36
	.word	4
	.word	_Label_3178
	.word	-40
	.word	4
	.word	0
_Label_3167:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3168:
	.ascii	"Pself\0"
	.align
_Label_3169:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3170:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3173:
	.byte	'C'
	.ascii	"_temp_3164\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3178:
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
_Label_3492:
	push	r0
	sub	r1,1,r1
	bne	_Label_3492
	mov	2838,r13		! source line 2838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0IF",r10
	mov	2843,r13		! source line 2843
	mov	"\0\0SE",r10
!   _temp_3182 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3183) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3182  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3181  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3181 then goto _Label_3180 else goto _Label_3179
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3179
	jmp	_Label_3180
_Label_3179:
! THEN...
	mov	2844,r13		! source line 2844
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3184 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3184  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2844,r13		! source line 2844
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3180:
! RETURN STATEMENT...
	mov	2846,r13		! source line 2846
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
	.word	_Label_3185
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3187
	.word	-16
	.word	4
	.word	_Label_3188
	.word	-20
	.word	4
	.word	_Label_3189
	.word	-24
	.word	4
	.word	_Label_3190
	.word	-9
	.word	1
	.word	_Label_3191
	.word	-28
	.word	4
	.word	0
_Label_3185:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3186:
	.ascii	"Pself\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3190:
	.byte	'C'
	.ascii	"_temp_3181\0"
	.align
_Label_3191:
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
_Label_3493:
	push	r0
	sub	r1,1,r1
	bne	_Label_3493
	mov	2851,r13		! source line 2851
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3195 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3194 = *_temp_3195  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3194) then goto _Label_3193
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3193
!	jmp	_Label_3192
_Label_3192:
! THEN...
	mov	2878,r13		! source line 2878
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3196 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3196  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2878,r13		! source line 2878
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3193:
! IF STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0IF",r10
	mov	2882,r13		! source line 2882
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3200) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3199  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3199 == 1112300152 then goto _Label_3198		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3198
!	jmp	_Label_3197
_Label_3197:
! THEN...
	mov	2883,r13		! source line 2883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3201 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3201  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2883,r13		! source line 2883
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3198:
! ASSIGNMENT STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0AS",r10
	mov	2888,r13		! source line 2888
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3202) then goto _runtimeErrorNullPointer
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
	mov	2889,r13		! source line 2889
	mov	"\0\0AS",r10
	mov	2889,r13		! source line 2889
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3203) then goto _runtimeErrorNullPointer
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
	mov	2890,r13		! source line 2890
	mov	"\0\0AS",r10
	mov	2890,r13		! source line 2890
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3204) then goto _runtimeErrorNullPointer
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
	mov	2891,r13		! source line 2891
	mov	"\0\0AS",r10
	mov	2891,r13		! source line 2891
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3205) then goto _runtimeErrorNullPointer
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
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
	mov	2892,r13		! source line 2892
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3206) then goto _runtimeErrorNullPointer
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
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
	mov	2893,r13		! source line 2893
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3207) then goto _runtimeErrorNullPointer
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
	mov	2896,r13		! source line 2896
	mov	"\0\0IF",r10
!   _temp_3210 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3210) then goto _Label_3209
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3209
!	jmp	_Label_3208
_Label_3208:
! THEN...
	mov	2897,r13		! source line 2897
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3211 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3211  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2897,r13		! source line 2897
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3209:
! ASSIGNMENT STATEMENT...
	mov	2900,r13		! source line 2900
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
	mov	2904,r13		! source line 2904
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3213
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3213
!	jmp	_Label_3212
_Label_3212:
! THEN...
	mov	2905,r13		! source line 2905
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3214 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3214  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2905,r13		! source line 2905
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3213:
! IF STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0IF",r10
!   _temp_3217 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3217) then goto _Label_3216
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3216
!	jmp	_Label_3215
_Label_3215:
! THEN...
	mov	2911,r13		! source line 2911
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3218 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3218  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2911,r13		! source line 2911
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3216:
! IF STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0IF",r10
!   _temp_3221 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3221 then goto _Label_3220		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3220
!	jmp	_Label_3219
_Label_3219:
! THEN...
	mov	2915,r13		! source line 2915
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3222 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3222  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2915,r13		! source line 2915
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2916,r13		! source line 2916
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
	mov	2918,r13		! source line 2918
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
	mov	2921,r13		! source line 2921
	mov	"\0\0IF",r10
!   _temp_3225 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3225) then goto _Label_3224
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3224
!	jmp	_Label_3223
_Label_3223:
! THEN...
	mov	2922,r13		! source line 2922
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3226 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3226  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2922,r13		! source line 2922
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3224:
! IF STATEMENT...
	mov	2925,r13		! source line 2925
	mov	"\0\0IF",r10
!   _temp_3229 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3229 then goto _Label_3228		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3228
!	jmp	_Label_3227
_Label_3227:
! THEN...
	mov	2926,r13		! source line 2926
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3230 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3230  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2926,r13		! source line 2926
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3228:
! ASSIGNMENT STATEMENT...
	mov	2929,r13		! source line 2929
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
	mov	2932,r13		! source line 2932
	mov	"\0\0AS",r10
!   _temp_3233 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3232 = _temp_3233 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3231 = _temp_3232 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3231 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2947,r13		! source line 2947
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3235		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3235
!	jmp	_Label_3234
_Label_3234:
! THEN...
	mov	2948,r13		! source line 2948
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3236 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3236  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2948,r13		! source line 2948
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3237 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3237  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2949,r13		! source line 2949
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3238 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3238  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2950,r13		! source line 2950
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3235:
! SEND STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0SE",r10
!   _temp_3239 = &_P_Kernel_frameManager
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
	mov	2959,r13		! source line 2959
	mov	"\0\0IF",r10
	mov	2959,r13		! source line 2959
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3243) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3242  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3242 == 707406378 then goto _Label_3241		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3241
!	jmp	_Label_3240
_Label_3240:
! THEN...
	mov	2960,r13		! source line 2960
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3244 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3244  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2960,r13		! source line 2960
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0SE",r10
!   _temp_3245 = &_P_Kernel_frameManager
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
_Label_3241:
! ASSIGNMENT STATEMENT...
	mov	2966,r13		! source line 2966
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
	mov	2967,r13		! source line 2967
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3250 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3251 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3250  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3246:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3251 then goto _Label_3249		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3249
_Label_3247:
	mov	2967,r13		! source line 2967
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0AS",r10
	mov	2968,r13		! source line 2968
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
	mov	2971,r13		! source line 2971
	mov	"\0\0IF",r10
	mov	2971,r13		! source line 2971
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3255) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3254  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3254 then goto _Label_3253 else goto _Label_3252
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3252
	jmp	_Label_3253
_Label_3252:
! THEN...
	mov	2972,r13		! source line 2972
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3256 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3256  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2972,r13		! source line 2972
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0SE",r10
!   _temp_3257 = &_P_Kernel_frameManager
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
	mov	2974,r13		! source line 2974
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3253:
! SEND STATEMENT...
	mov	2976,r13		! source line 2976
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
	mov	2977,r13		! source line 2977
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3248:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3246
! END FOR
_Label_3249:
! IF STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0IF",r10
	mov	2981,r13		! source line 2981
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3261) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3260  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3260 == 707406378 then goto _Label_3259		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3259
!	jmp	_Label_3258
_Label_3258:
! THEN...
	mov	2982,r13		! source line 2982
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3262 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3262  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0SE",r10
!   _temp_3263 = &_P_Kernel_frameManager
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
	mov	2984,r13		! source line 2984
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3259:
! FOR STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3268 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3269 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3268  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3264:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3269 then goto _Label_3267		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3267
_Label_3265:
	mov	2988,r13		! source line 2988
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0AS",r10
	mov	2989,r13		! source line 2989
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
	mov	2992,r13		! source line 2992
	mov	"\0\0IF",r10
	mov	2992,r13		! source line 2992
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3273) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3272  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3272 then goto _Label_3271 else goto _Label_3270
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3270
	jmp	_Label_3271
_Label_3270:
! THEN...
	mov	2993,r13		! source line 2993
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3274 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3274  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2993,r13		! source line 2993
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0SE",r10
!   _temp_3275 = &_P_Kernel_frameManager
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
	mov	2995,r13		! source line 2995
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3271:
! ASSIGNMENT STATEMENT...
	mov	2997,r13		! source line 2997
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3266:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3264
! END FOR
_Label_3267:
! IF STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0IF",r10
	mov	3001,r13		! source line 3001
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3279) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3278  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3278 == 707406378 then goto _Label_3277		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3277
!	jmp	_Label_3276
_Label_3276:
! THEN...
	mov	3002,r13		! source line 3002
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3280 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3280  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3002,r13		! source line 3002
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0SE",r10
!   _temp_3281 = &_P_Kernel_frameManager
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
	mov	3004,r13		! source line 3004
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3277:
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
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3012,r13		! source line 3012
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3015,r13		! source line 3015
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
	.word	_Label_3282
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3283
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3284
	.word	12
	.word	4
	.word	_Label_3285
	.word	-16
	.word	4
	.word	_Label_3286
	.word	-20
	.word	4
	.word	_Label_3287
	.word	-24
	.word	4
	.word	_Label_3288
	.word	-28
	.word	4
	.word	_Label_3289
	.word	-32
	.word	4
	.word	_Label_3290
	.word	-36
	.word	4
	.word	_Label_3291
	.word	-40
	.word	4
	.word	_Label_3292
	.word	-9
	.word	1
	.word	_Label_3293
	.word	-44
	.word	4
	.word	_Label_3294
	.word	-48
	.word	4
	.word	_Label_3295
	.word	-52
	.word	4
	.word	_Label_3296
	.word	-56
	.word	4
	.word	_Label_3297
	.word	-60
	.word	4
	.word	_Label_3298
	.word	-64
	.word	4
	.word	_Label_3299
	.word	-68
	.word	4
	.word	_Label_3300
	.word	-72
	.word	4
	.word	_Label_3301
	.word	-76
	.word	4
	.word	_Label_3302
	.word	-10
	.word	1
	.word	_Label_3303
	.word	-80
	.word	4
	.word	_Label_3304
	.word	-84
	.word	4
	.word	_Label_3305
	.word	-88
	.word	4
	.word	_Label_3306
	.word	-92
	.word	4
	.word	_Label_3307
	.word	-96
	.word	4
	.word	_Label_3308
	.word	-100
	.word	4
	.word	_Label_3309
	.word	-104
	.word	4
	.word	_Label_3310
	.word	-108
	.word	4
	.word	_Label_3311
	.word	-112
	.word	4
	.word	_Label_3312
	.word	-116
	.word	4
	.word	_Label_3313
	.word	-120
	.word	4
	.word	_Label_3314
	.word	-124
	.word	4
	.word	_Label_3315
	.word	-128
	.word	4
	.word	_Label_3316
	.word	-132
	.word	4
	.word	_Label_3317
	.word	-136
	.word	4
	.word	_Label_3318
	.word	-140
	.word	4
	.word	_Label_3319
	.word	-144
	.word	4
	.word	_Label_3320
	.word	-148
	.word	4
	.word	_Label_3321
	.word	-152
	.word	4
	.word	_Label_3322
	.word	-156
	.word	4
	.word	_Label_3323
	.word	-160
	.word	4
	.word	_Label_3324
	.word	-164
	.word	4
	.word	_Label_3325
	.word	-168
	.word	4
	.word	_Label_3326
	.word	-172
	.word	4
	.word	_Label_3327
	.word	-176
	.word	4
	.word	_Label_3328
	.word	-180
	.word	4
	.word	_Label_3329
	.word	-184
	.word	4
	.word	_Label_3330
	.word	-188
	.word	4
	.word	_Label_3331
	.word	-192
	.word	4
	.word	_Label_3332
	.word	-196
	.word	4
	.word	_Label_3333
	.word	-200
	.word	4
	.word	_Label_3334
	.word	-204
	.word	4
	.word	_Label_3335
	.word	-208
	.word	4
	.word	_Label_3336
	.word	-212
	.word	4
	.word	_Label_3337
	.word	-216
	.word	4
	.word	_Label_3338
	.word	-220
	.word	4
	.word	_Label_3339
	.word	-224
	.word	4
	.word	_Label_3340
	.word	-228
	.word	4
	.word	_Label_3341
	.word	-232
	.word	4
	.word	_Label_3342
	.word	-236
	.word	4
	.word	_Label_3343
	.word	-240
	.word	4
	.word	_Label_3344
	.word	-244
	.word	4
	.word	_Label_3345
	.word	-248
	.word	4
	.word	_Label_3346
	.word	-252
	.word	4
	.word	_Label_3347
	.word	-256
	.word	4
	.word	_Label_3348
	.word	-260
	.word	4
	.word	_Label_3349
	.word	-264
	.word	4
	.word	_Label_3350
	.word	-268
	.word	4
	.word	0
_Label_3282:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3283:
	.ascii	"Pself\0"
	.align
_Label_3284:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3292:
	.byte	'C'
	.ascii	"_temp_3272\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3302:
	.byte	'C'
	.ascii	"_temp_3254\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3339:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3340:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3341:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3342:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3343:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3344:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3345:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3346:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3347:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3348:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3349:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3350:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
