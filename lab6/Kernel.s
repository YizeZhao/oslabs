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
_StringConst_198:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_197:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_196:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_194:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_193:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_192:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_191:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_190:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_189:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_188:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_187:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_186:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_185:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_184:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_183:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_182:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_181:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_180:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_179:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_178:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_177:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_176:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_175:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_174:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_173:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_172:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_171:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_170:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_169:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_168:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_167:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_166:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_165:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_164:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_163:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_162:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_161:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_160:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_159:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_158:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_157:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_156:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_155:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_154:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_153:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_152:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_151:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_150:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_149:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_148:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_147:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_145:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_142:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_139:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_136:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_133:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_132:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_131:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_130:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_129:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_127:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_126:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_125:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_124:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_123:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_122:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_121:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_120:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_119:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_118:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_115:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_114:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_113:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_112:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_111:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_110:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_109:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_108:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_107:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_106:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_105:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_104:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_103:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_102:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_101:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_100:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_99:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_98:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_97:
	.word	3			! length
	.ascii	"Xxx"
	.align
_StringConst_96:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_95:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_93:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_88:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_87:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_86:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_85:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_84:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_83:
	.word	12			! length
	.ascii	"    stackTop"
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
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_76:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_75:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_74:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_73:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_72:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_71:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_70:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_69:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_68:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_67:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_66:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_65:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_64:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_63:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_62:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_61:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_60:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_59:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_58:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_57:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_56:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_55:
	.word	4			! length
	.ascii	"Test"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	27			! length
	.ascii	"Handle_Sys_Close invoked! \n"
	.align
_StringConst_52:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_51:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_50:
	.word	26			! length
	.ascii	"Handle_Sys_Seek invoked! \n"
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
	.ascii	"filename = "
	.align
_StringConst_46:
	.word	27			! length
	.ascii	"Handle_Sys_Write invoked! \n"
	.align
_StringConst_45:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_44:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_43:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_42:
	.word	26			! length
	.ascii	"Handle_Sys_Read invoked! \n"
	.align
_StringConst_41:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_39:
	.word	26			! length
	.ascii	"Handle_Sys_Open invoked! \n"
	.align
_StringConst_38:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_37:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_36:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked! \n"
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
	be	_Label_207
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
_Label_207:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_208
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_208
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_208
_Label_208:
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
_Label_3343:
	push	r0
	sub	r1,1,r1
	bne	_Label_3343
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_209 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_209  sizeInBytes=4
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
_Label_3344:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3344
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_213 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_214 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_213  sizeInBytes=4
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
!   _temp_215 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_216 = _temp_215 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_216 = 3  (sizeInBytes=4)
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
_Label_3345:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3345
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_218 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_219 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
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
!   _temp_220 = _function_206_IdleFunction
	set	_function_206_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_221 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_220  sizeInBytes=4
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
	.word	_Label_222
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_223
	.word	-12
	.word	4
	.word	_Label_224
	.word	-16
	.word	4
	.word	_Label_225
	.word	-20
	.word	4
	.word	_Label_226
	.word	-24
	.word	4
	.word	_Label_227
	.word	-28
	.word	4
	.word	_Label_228
	.word	-32
	.word	4
	.word	_Label_229
	.word	-36
	.word	4
	.word	_Label_230
	.word	-40
	.word	4
	.word	_Label_231
	.word	-44
	.word	4
	.word	_Label_232
	.word	-48
	.word	4
	.word	_Label_233
	.word	-52
	.word	4
	.word	_Label_234
	.word	-56
	.word	4
	.word	_Label_235
	.word	-60
	.word	4
	.word	0
_Label_222:
	.ascii	"InitializeScheduler\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_206_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_236:
!	jmp	_Label_237
_Label_237:
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
!   _temp_241 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_239 else goto _Label_240
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_240
	jmp	_Label_239
_Label_239:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_242
_Label_240:
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
_Label_242:
! END WHILE...
	jmp	_Label_236
_Label_238:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_IdleFunction:
	.word	_sourceFileName
	.word	_Label_243
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_244
	.word	8
	.word	4
	.word	_Label_245
	.word	-12
	.word	4
	.word	_Label_246
	.word	-16
	.word	4
	.word	0
_Label_243:
	.ascii	"IdleFunction\0"
	.align
_Label_244:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_246:
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
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
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
!   _temp_249 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_249 ) then goto _Label_248		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_248
!	jmp	_Label_247
_Label_247:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_251 [0 ] into _temp_252
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
!   _temp_250 = _temp_252		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_248:
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
!   _temp_253 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_253 = 3  (sizeInBytes=4)
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
_Label_254:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_258 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_257  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_257 then goto _Label_256 else goto _Label_255
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_255
	jmp	_Label_256
_Label_255:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_259 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_260 = &_P_Kernel_threadManager
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
	jmp	_Label_254
_Label_256:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_263 ) then goto _Label_262		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_262
!	jmp	_Label_261
_Label_261:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_265 [0 ] into _temp_266
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
!   _temp_264 = _temp_266		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_264  sizeInBytes=4
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
!   _temp_268 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_267 = *_temp_268  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_267) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = _temp_267 + 32
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
_Label_262:
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
	.word	_Label_270
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_271
	.word	8
	.word	4
	.word	_Label_272
	.word	-16
	.word	4
	.word	_Label_273
	.word	-20
	.word	4
	.word	_Label_274
	.word	-24
	.word	4
	.word	_Label_275
	.word	-28
	.word	4
	.word	_Label_276
	.word	-32
	.word	4
	.word	_Label_277
	.word	-36
	.word	4
	.word	_Label_278
	.word	-40
	.word	4
	.word	_Label_279
	.word	-44
	.word	4
	.word	_Label_280
	.word	-48
	.word	4
	.word	_Label_281
	.word	-52
	.word	4
	.word	_Label_282
	.word	-9
	.word	1
	.word	_Label_283
	.word	-56
	.word	4
	.word	_Label_284
	.word	-60
	.word	4
	.word	_Label_285
	.word	-64
	.word	4
	.word	_Label_286
	.word	-68
	.word	4
	.word	_Label_287
	.word	-72
	.word	4
	.word	_Label_288
	.word	-76
	.word	4
	.word	_Label_289
	.word	-80
	.word	4
	.word	0
_Label_270:
	.ascii	"Run\0"
	.align
_Label_271:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_282:
	.byte	'C'
	.ascii	"_temp_257\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_288:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_289:
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
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
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
!   _temp_290 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_291 = _function_205_ThreadPrintShort
	set	_function_205_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_292 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_291  sizeInBytes=4
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
	.word	_Label_293
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_294
	.word	-12
	.word	4
	.word	_Label_295
	.word	-16
	.word	4
	.word	_Label_296
	.word	-20
	.word	4
	.word	_Label_297
	.word	-24
	.word	4
	.word	0
_Label_293:
	.ascii	"PrintReadyList\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_297:
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
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
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
!   _temp_298 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_298  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_300 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_299 = *_temp_300  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
!   _temp_301 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
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
	.word	_Label_302
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_303
	.word	-12
	.word	4
	.word	_Label_304
	.word	-16
	.word	4
	.word	_Label_305
	.word	-20
	.word	4
	.word	_Label_306
	.word	-24
	.word	4
	.word	_Label_307
	.word	-28
	.word	4
	.word	_Label_308
	.word	-32
	.word	4
	.word	0
_Label_302:
	.ascii	"ThreadStartMain\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_308:
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
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
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
!   _temp_309 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_310 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
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
	.word	_Label_311
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_312
	.word	-12
	.word	4
	.word	_Label_313
	.word	-16
	.word	4
	.word	_Label_314
	.word	-20
	.word	4
	.word	0
_Label_311:
	.ascii	"ThreadFinish\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_314:
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
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
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
!   _temp_315 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_317		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_317
!	jmp	_Label_316
_Label_316:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_318 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
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
!   _temp_320 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_319 = *_temp_320  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_317:
! CALL STATEMENT...
!   _temp_321 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
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
!   _temp_322 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_323 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
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
	.word	_Label_324
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_325
	.word	8
	.word	4
	.word	_Label_326
	.word	-12
	.word	4
	.word	_Label_327
	.word	-16
	.word	4
	.word	_Label_328
	.word	-20
	.word	4
	.word	_Label_329
	.word	-24
	.word	4
	.word	_Label_330
	.word	-28
	.word	4
	.word	_Label_331
	.word	-32
	.word	4
	.word	_Label_332
	.word	-36
	.word	4
	.word	_Label_333
	.word	-40
	.word	4
	.word	0
_Label_324:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_325:
	.byte	'P'
	.ascii	"errorMessage\0"
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
	.ascii	"_temp_315\0"
	.align
_Label_333:
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
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
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
!   if newStatus != 1 then goto _Label_335		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_335
!	jmp	_Label_334
_Label_334:
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
	jmp	_Label_336
_Label_335:
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
_Label_336:
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
	.word	_Label_337
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_338
	.word	8
	.word	4
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_337:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_338:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_339:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_205_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
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
!   if t == 0 then goto _Label_343		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_343
!   _temp_342 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_344
_Label_343:
!   _temp_342 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_344:
!   if _temp_342 then goto _Label_341 else goto _Label_340
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_340
	jmp	_Label_341
_Label_340:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_345 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
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
_Label_341:
! CALL STATEMENT...
!   _temp_346 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
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
!   _temp_348 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_347 = *_temp_348  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_349 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
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
!   _temp_358 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_357 = *_temp_358  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_352
	cmp	r1,2
	be	_Label_353
	cmp	r1,3
	be	_Label_354
	cmp	r1,4
	be	_Label_355
	cmp	r1,5
	be	_Label_356
	jmp	_Label_350
! CASE 1...
_Label_352:
! CALL STATEMENT...
!   _temp_359 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_351
! CASE 2...
_Label_353:
! CALL STATEMENT...
!   _temp_360 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_351
! CASE 3...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_351
! CASE 4...
_Label_355:
! CALL STATEMENT...
!   _temp_362 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_351
! CASE 5...
_Label_356:
! CALL STATEMENT...
!   _temp_363 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_351
! DEFAULT CASE...
_Label_350:
! CALL STATEMENT...
!   _temp_364 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
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
_Label_351:
! CALL STATEMENT...
!   _temp_365 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_366 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_367 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
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
_RoutineDescriptor__function_205_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_368
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_369
	.word	8
	.word	4
	.word	_Label_370
	.word	-16
	.word	4
	.word	_Label_371
	.word	-20
	.word	4
	.word	_Label_372
	.word	-24
	.word	4
	.word	_Label_373
	.word	-28
	.word	4
	.word	_Label_374
	.word	-32
	.word	4
	.word	_Label_375
	.word	-36
	.word	4
	.word	_Label_376
	.word	-40
	.word	4
	.word	_Label_377
	.word	-44
	.word	4
	.word	_Label_378
	.word	-48
	.word	4
	.word	_Label_379
	.word	-52
	.word	4
	.word	_Label_380
	.word	-56
	.word	4
	.word	_Label_381
	.word	-60
	.word	4
	.word	_Label_382
	.word	-64
	.word	4
	.word	_Label_383
	.word	-68
	.word	4
	.word	_Label_384
	.word	-72
	.word	4
	.word	_Label_385
	.word	-76
	.word	4
	.word	_Label_386
	.word	-9
	.word	1
	.word	_Label_387
	.word	-80
	.word	4
	.word	0
_Label_368:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_369:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_386:
	.byte	'C'
	.ascii	"_temp_342\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_204_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
	mov	1062,r13		! source line 1062
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_388 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1066,r13		! source line 1066
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_389
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_390
	.word	8
	.word	4
	.word	_Label_391
	.word	-12
	.word	4
	.word	0
_Label_389:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_390:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_388\0"
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	1072,r13		! source line 1072
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_393 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_392 = *_temp_393  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_392) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_394 = _temp_392 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_394 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1086,r13		! source line 1086
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_395 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1091,r13		! source line 1091
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_398 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_397 = *_temp_398  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_397) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = _temp_397 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_396 = _temp_399		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_400 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_396  sizeInBytes=4
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
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_402 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_401 = *_temp_402  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_403 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_401  sizeInBytes=4
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
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_405 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_404 = *_temp_405  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_404) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_406 = _temp_404 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_406 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_407 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1104,r13		! source line 1104
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
	.word	_Label_408
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_409
	.word	8
	.word	4
	.word	_Label_410
	.word	-12
	.word	4
	.word	_Label_411
	.word	-16
	.word	4
	.word	_Label_412
	.word	-20
	.word	4
	.word	_Label_413
	.word	-24
	.word	4
	.word	_Label_414
	.word	-28
	.word	4
	.word	_Label_415
	.word	-32
	.word	4
	.word	_Label_416
	.word	-36
	.word	4
	.word	_Label_417
	.word	-40
	.word	4
	.word	_Label_418
	.word	-44
	.word	4
	.word	_Label_419
	.word	-48
	.word	4
	.word	_Label_420
	.word	-52
	.word	4
	.word	_Label_421
	.word	-56
	.word	4
	.word	_Label_422
	.word	-60
	.word	4
	.word	_Label_423
	.word	-64
	.word	4
	.word	_Label_424
	.word	-68
	.word	4
	.word	_Label_425
	.word	-72
	.word	4
	.word	_Label_426
	.word	-76
	.word	4
	.word	0
_Label_408:
	.ascii	"ProcessFinish\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_426:
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	1608,r13		! source line 1608
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1620,r13		! source line 1620
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
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1621,r13		! source line 1621
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
	.word	_Label_427
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_427:
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	1626,r13		! source line 1626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0IF",r10
!   _temp_431 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_432 = _temp_431 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_430 = *_temp_432  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_430 == 0 then goto _Label_429		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_429
!	jmp	_Label_428
_Label_428:
! THEN...
	mov	1641,r13		! source line 1641
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0SE",r10
!   _temp_434 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_435 = _temp_434 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_433 = *_temp_435  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_433) then goto _runtimeErrorNullPointer
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
_Label_429:
! RETURN STATEMENT...
	mov	1640,r13		! source line 1640
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
	.word	_Label_436
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_437
	.word	-12
	.word	4
	.word	_Label_438
	.word	-16
	.word	4
	.word	_Label_439
	.word	-20
	.word	4
	.word	_Label_440
	.word	-24
	.word	4
	.word	_Label_441
	.word	-28
	.word	4
	.word	_Label_442
	.word	-32
	.word	4
	.word	0
_Label_436:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_430\0"
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
	mov	1648,r13		! source line 1648
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1657,r13		! source line 1657
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
	.word	_Label_443
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_443:
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
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
!   _temp_444 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1669,r13		! source line 1669
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_445
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_446
	.word	-12
	.word	4
	.word	0
_Label_445:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_444\0"
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
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
!   _temp_447 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1681,r13		! source line 1681
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_448
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_449
	.word	-12
	.word	4
	.word	0
_Label_448:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_447\0"
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
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
!   _temp_450 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1693,r13		! source line 1693
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_451
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_452
	.word	-12
	.word	4
	.word	0
_Label_451:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_450\0"
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
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	1698,r13		! source line 1698
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_453 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
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
	.word	_Label_454
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_455
	.word	-12
	.word	4
	.word	0
_Label_454:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_453\0"
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
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	1710,r13		! source line 1710
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_456 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1717,r13		! source line 1717
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
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
	.word	_Label_457
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_458
	.word	-12
	.word	4
	.word	0
_Label_457:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_456\0"
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
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
	mov	1722,r13		! source line 1722
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_459 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1729,r13		! source line 1729
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
	.word	_Label_460
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_461
	.word	-12
	.word	4
	.word	0
_Label_460:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_459\0"
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
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
	mov	1734,r13		! source line 1734
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_462 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_462  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CA",r10
	call	_function_203_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1741,r13		! source line 1741
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
	.word	_Label_463
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_464
	.word	-12
	.word	4
	.word	0
_Label_463:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_203_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
	mov	1746,r13		! source line 1746
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_465 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_466 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_470 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_469 = *_temp_470  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_469 == 0 then goto _Label_468		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_468
!	jmp	_Label_467
_Label_467:
! THEN...
	mov	1757,r13		! source line 1757
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_472 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_471 = *_temp_472  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_471) then goto _runtimeErrorNullPointer
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
	jmp	_Label_473
_Label_468:
! ELSE...
	mov	1759,r13		! source line 1759
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_474 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_473:
! SEND STATEMENT...
	mov	1761,r13		! source line 1761
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
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_475
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_476
	.word	8
	.word	4
	.word	_Label_477
	.word	-12
	.word	4
	.word	_Label_478
	.word	-16
	.word	4
	.word	_Label_479
	.word	-20
	.word	4
	.word	_Label_480
	.word	-24
	.word	4
	.word	_Label_481
	.word	-28
	.word	4
	.word	_Label_482
	.word	-32
	.word	4
	.word	_Label_483
	.word	-36
	.word	4
	.word	0
_Label_475:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_476:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_465\0"
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
	mov	1772,r13		! source line 1772
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1793,r13		! source line 1793
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3367
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_484
_Label_3367:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_484
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_484
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_498,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_498:
	jmp	_Label_490	! 1:	
	jmp	_Label_497	! 2:	
	jmp	_Label_487	! 3:	
	jmp	_Label_486	! 4:	
	jmp	_Label_489	! 5:	
	jmp	_Label_488	! 6:	
	jmp	_Label_491	! 7:	
	jmp	_Label_492	! 8:	
	jmp	_Label_493	! 9:	
	jmp	_Label_494	! 10:	
	jmp	_Label_495	! 11:	
	jmp	_Label_496	! 12:	
! CASE 4...
_Label_486:
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_499  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_499  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_487:
! CALL STATEMENT...
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_488:
! RETURN STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1800,r13		! source line 1800
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_500  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_489:
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_501  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_501  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_490:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_491:
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_502  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_502  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_492:
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_503  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_503  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_493:
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
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
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_504  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_504  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_494:
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
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
	mov	1813,r13		! source line 1813
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_505  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_505  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_495:
! RETURN STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_506  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_506  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_496:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_497:
! CALL STATEMENT...
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_484:
! CALL STATEMENT...
!   _temp_507 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_508 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1826,r13		! source line 1826
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_485:
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
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
	.word	_Label_509
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_510
	.word	8
	.word	4
	.word	_Label_511
	.word	12
	.word	4
	.word	_Label_512
	.word	16
	.word	4
	.word	_Label_513
	.word	20
	.word	4
	.word	_Label_514
	.word	24
	.word	4
	.word	_Label_515
	.word	-12
	.word	4
	.word	_Label_516
	.word	-16
	.word	4
	.word	_Label_517
	.word	-20
	.word	4
	.word	_Label_518
	.word	-24
	.word	4
	.word	_Label_519
	.word	-28
	.word	4
	.word	_Label_520
	.word	-32
	.word	4
	.word	_Label_521
	.word	-36
	.word	4
	.word	_Label_522
	.word	-40
	.word	4
	.word	_Label_523
	.word	-44
	.word	4
	.word	_Label_524
	.word	-48
	.word	4
	.word	0
_Label_509:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_511:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_512:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_513:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_514:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_499\0"
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	1833,r13		! source line 1833
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1839,r13		! source line 1839
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
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
	.word	_Label_525
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_526
	.word	8
	.word	4
	.word	0
_Label_525:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_526:
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_527 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1847,r13		! source line 1847
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1847,r13		! source line 1847
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
	.word	_Label_528
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_529
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	1853,r13		! source line 1853
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1856,r13		! source line 1856
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
	mov	1856,r13		! source line 1856
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
	.word	_Label_530
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_530:
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
	mov	51,r1
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	1861,r13		! source line 1861
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
	mov	1877,r13		! source line 1877
	mov	"\0\0SE",r10
!   _temp_531 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-176]
!   Send message GetANewProcess
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   _temp_532 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-172]
!   Send message GetANewThread
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_533 = newPCB + 24
	load	[r14+-184],r1
	add	r1,24,r1
	store	r1,[r14+-168]
!   Data Move: *_temp_533 = newTh  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-168],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_534 = newPCB + 16
	load	[r14+-184],r1
	add	r1,16,r1
	store	r1,[r14+-164]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_537 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_536 = *_temp_537  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_536) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_538 = _temp_536 + 12
	load	[r14+-156],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_535 = *_temp_538  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   Data Move: *_temp_534 = _temp_535  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = newTh + 76
	load	[r14+-180],r1
	add	r1,76,r1
	store	r1,[r14+-144]
!   Data Move: *_temp_539 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-144],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = newTh + 4160
	load	[r14+-180],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: *_temp_540 = newPCB  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r14+-140],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_542 = newTh + 4096
	load	[r14+-180],r1
	add	r1,4096,r1
	store	r1,[r14+-132]
!   Move address of _temp_542 [0 ] into _temp_543
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_541 = _temp_543		(4 bytes)
	load	[r14+-128],r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_544 = newTh + 68
	load	[r14+-180],r1
	add	r1,68,r1
	store	r1,[r14+-124]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_546 = newTh + 88
	load	[r14+-180],r1
	add	r1,88,r1
	store	r1,[r14+-116]
!   Move address of _temp_546 [999 ] into _temp_547
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_545 = _temp_547		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-120]
!   Data Move: *_temp_544 = _temp_545  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-124],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_549 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_548 = *_temp_549  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_548) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_550 = _temp_548 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_551 = _temp_550 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: numpages = *_temp_551  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-196]
! SEND STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_553 = newPCB + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_552 = _temp_553		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
!   _temp_554 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_552  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numpages  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-188]
! WHILE STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0WH",r10
_Label_555:
!   if i >= numpages then goto _Label_557		(int)
	load	[r14+-188],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_557
!	jmp	_Label_556
_Label_556:
	mov	1895,r13		! source line 1895
	mov	"\0\0WB",r10
! CALL STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_559 = newPCB + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
	mov	1896,r13		! source line 1896
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_561 = *_temp_562  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_561) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = _temp_561 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_560  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0IF",r10
	mov	1897,r13		! source line 1897
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_568 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_567 = *_temp_568  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_567) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = _temp_567 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_566  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_570 = _temp_566 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_570 then goto _Label_565 else goto _Label_564
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_564
	jmp	_Label_565
_Label_564:
! THEN...
	mov	1898,r13		! source line 1898
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = newPCB + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_572
_Label_565:
! ELSE...
	mov	1899,r13		! source line 1899
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0IF",r10
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_576 = *_temp_577  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_576) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = _temp_576 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_575  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_579 = _temp_575 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_579 then goto _Label_574 else goto _Label_573
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_573
	jmp	_Label_574
_Label_573:
! THEN...
	mov	1900,r13		! source line 1900
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_580 = newPCB + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_574:
! END IF...
_Label_572:
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-188],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
! END WHILE...
	jmp	_Label_555
_Label_557:
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldPCint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! SEND STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0SE",r10
!   _temp_581 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_581  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldPCint  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = newPCB + 12
	load	[r14+-184],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_582 = *_temp_583  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_582  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,208,r15
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
	.word	204		! frame size = 204
	.word	_Label_585
	.word	-16
	.word	4
	.word	_Label_586
	.word	-20
	.word	4
	.word	_Label_587
	.word	-24
	.word	4
	.word	_Label_588
	.word	-28
	.word	4
	.word	_Label_589
	.word	-9
	.word	1
	.word	_Label_590
	.word	-32
	.word	4
	.word	_Label_591
	.word	-36
	.word	4
	.word	_Label_592
	.word	-40
	.word	4
	.word	_Label_593
	.word	-10
	.word	1
	.word	_Label_594
	.word	-44
	.word	4
	.word	_Label_595
	.word	-11
	.word	1
	.word	_Label_596
	.word	-48
	.word	4
	.word	_Label_597
	.word	-52
	.word	4
	.word	_Label_598
	.word	-56
	.word	4
	.word	_Label_599
	.word	-12
	.word	1
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
	.word	_Label_634
	.word	-196
	.word	4
	.word	_Label_635
	.word	-200
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
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_589:
	.byte	'C'
	.ascii	"_temp_579\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_593:
	.byte	'C'
	.ascii	"_temp_575\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_595:
	.byte	'C'
	.ascii	"_temp_570\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_599:
	.byte	'C'
	.ascii	"_temp_566\0"
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
	.ascii	"_temp_559\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_558\0"
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
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_630:
	.byte	'P'
	.ascii	"newTh\0"
	.align
_Label_631:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_634:
	.byte	'I'
	.ascii	"numpages\0"
	.align
_Label_635:
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	1915,r13		! source line 1915
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 32
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
!   _temp_640 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_640 [0 ] into _temp_641
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
!   _temp_639 = _temp_641		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_642 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_643 [14 ] into _temp_644
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
!   Data Move: initUserStackTop = *_temp_644  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_645 [999 ] into _temp_646
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
!   initSystemStackTop = _temp_646		(4 bytes)
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
	mov	1929,r13		! source line 1929
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1929,r13		! source line 1929
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
	.word	_Label_647
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_648
	.word	8
	.word	4
	.word	_Label_649
	.word	-12
	.word	4
	.word	_Label_650
	.word	-16
	.word	4
	.word	_Label_651
	.word	-20
	.word	4
	.word	_Label_652
	.word	-24
	.word	4
	.word	_Label_653
	.word	-28
	.word	4
	.word	_Label_654
	.word	-32
	.word	4
	.word	_Label_655
	.word	-36
	.word	4
	.word	_Label_656
	.word	-40
	.word	4
	.word	_Label_657
	.word	-44
	.word	4
	.word	_Label_658
	.word	-48
	.word	4
	.word	_Label_659
	.word	-52
	.word	4
	.word	_Label_660
	.word	-56
	.word	4
	.word	_Label_661
	.word	-60
	.word	4
	.word	_Label_662
	.word	-64
	.word	4
	.word	0
_Label_647:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"userPC\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_660:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_661:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_662:
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
	mov	28,r1
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	1935,r13		! source line 1935
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
! WHILE STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0WH",r10
_Label_663:
!   if i >= 10 then goto _Label_665		(int)
	load	[r14+-108],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_665
!	jmp	_Label_664
_Label_664:
	mov	1944,r13		! source line 1944
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0IF",r10
!   _temp_671 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_672 = _temp_671 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_672 [i ] into _temp_673
!     make sure index expr is >= 0
	load	[r14+-108],r2
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
!   _temp_674 = _temp_673 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_670 = *_temp_674  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if processID != _temp_670 then goto _Label_667		(int)
	load	[r14+8],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bne	_Label_667
!	jmp	_Label_669
_Label_669:
!   _temp_676 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_677 = _temp_676 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_677 [i ] into _temp_678
!     make sure index expr is >= 0
	load	[r14+-108],r2
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
!   _temp_679 = _temp_678 + 20
	load	[r14+-72],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: _temp_675 = *_temp_679  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_675 == 3 then goto _Label_667		(int)
	load	[r14+-84],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_667
!	jmp	_Label_668
_Label_668:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_682 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_681 = *_temp_682  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_681) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = _temp_681 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_680 = *_temp_683  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_685 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_686 = _temp_685 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_686 [i ] into _temp_687
!     make sure index expr is >= 0
	load	[r14+-108],r2
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
!   _temp_688 = _temp_687 + 16
	load	[r14+-36],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_684 = *_temp_688  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_680 != _temp_684 then goto _Label_667		(int)
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bne	_Label_667
!	jmp	_Label_666
_Label_666:
! THEN...
	mov	1948,r13		! source line 1948
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
	mov	1948,r13		! source line 1948
	mov	"\0\0SE",r10
!   _temp_690 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_691 = _temp_690 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_691 [i ] into _temp_692
!     make sure index expr is >= 0
	load	[r14+-108],r2
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
!   _temp_689 = _temp_692		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_693 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_689  sizeInBytes=4
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
!   Retrieve Result: targetName=returnStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
!   ReturnResult: returnStatus  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_667:
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
! END WHILE...
	jmp	_Label_663
_Label_665:
! RETURN STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
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
	.word	112		! frame size = 112
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
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_721:
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1960,r13		! source line 1960
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3375:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3375
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! SEND STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   _temp_723 = &newAddrSpace
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
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
	mov	1976,r13		! source line 1976
	mov	"\0\0SE",r10
!   _temp_724 = &strBuffer
	add	r14,-252,r1
	store	r1,[r14+-104]
!   _temp_725 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_727 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_726 = *_temp_727  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_726) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_728 = _temp_726 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_724  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_725  sizeInBytes=4
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
	mov	1978,r13		! source line 1978
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_730		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_730
!	jmp	_Label_729
_Label_729:
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
_Label_730:
! ASSIGNMENT STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0AS",r10
	mov	1981,r13		! source line 1981
	mov	"\0\0SE",r10
!   _temp_731 = &strBuffer
	add	r14,-252,r1
	store	r1,[r14+-84]
!   _temp_732 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_731  sizeInBytes=4
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
	mov	1983,r13		! source line 1983
	mov	"\0\0IF",r10
!   if pOF == 0 then goto _Label_736		(int)
	load	[r14+-208],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_736
!   _temp_735 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_737
_Label_736:
!   _temp_735 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_737:
!   if _temp_735 then goto _Label_734 else goto _Label_733
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_733
	jmp	_Label_734
_Label_733:
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
_Label_734:
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
	mov	1987,r13		! source line 1987
	mov	"\0\0SE",r10
!   _temp_738 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (pOF) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_738  sizeInBytes=4
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
	mov	1988,r13		! source line 1988
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_740		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_740
!	jmp	_Label_739
_Label_739:
! THEN...
	mov	1989,r13		! source line 1989
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_740:
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_742 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_741 = *_temp_742  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_741) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_743 = _temp_741 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_743 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3376:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3376
! SEND STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_746 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_745 = *_temp_746  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_745) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_747 = _temp_745 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_744 = _temp_747		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_748 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_744  sizeInBytes=4
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
	mov	1994,r13		! source line 1994
	mov	"\0\0SE",r10
!   _temp_749 = &_P_Kernel_fileManager
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
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
!   _temp_751 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_752 = _temp_751 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_750 = *_temp_752  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_750 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_753 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_753 [999 ] into _temp_754
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
!   initSystemStackTop = _temp_754		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_755 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_755 = 1  (sizeInBytes=1)
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
	mov	2000,r13		! source line 2000
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2002,r13		! source line 2002
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
	.word	_Label_756
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_757
	.word	8
	.word	4
	.word	_Label_758
	.word	-16
	.word	4
	.word	_Label_759
	.word	-20
	.word	4
	.word	_Label_760
	.word	-24
	.word	4
	.word	_Label_761
	.word	-28
	.word	4
	.word	_Label_762
	.word	-32
	.word	4
	.word	_Label_763
	.word	-36
	.word	4
	.word	_Label_764
	.word	-40
	.word	4
	.word	_Label_765
	.word	-44
	.word	4
	.word	_Label_766
	.word	-48
	.word	4
	.word	_Label_767
	.word	-52
	.word	4
	.word	_Label_768
	.word	-56
	.word	4
	.word	_Label_769
	.word	-60
	.word	4
	.word	_Label_770
	.word	-64
	.word	4
	.word	_Label_771
	.word	-68
	.word	4
	.word	_Label_772
	.word	-72
	.word	4
	.word	_Label_773
	.word	-76
	.word	4
	.word	_Label_774
	.word	-9
	.word	1
	.word	_Label_775
	.word	-80
	.word	4
	.word	_Label_776
	.word	-84
	.word	4
	.word	_Label_777
	.word	-88
	.word	4
	.word	_Label_778
	.word	-92
	.word	4
	.word	_Label_779
	.word	-96
	.word	4
	.word	_Label_780
	.word	-100
	.word	4
	.word	_Label_781
	.word	-104
	.word	4
	.word	_Label_782
	.word	-108
	.word	4
	.word	_Label_783
	.word	-112
	.word	4
	.word	_Label_784
	.word	-204
	.word	92
	.word	_Label_785
	.word	-208
	.word	4
	.word	_Label_786
	.word	-212
	.word	4
	.word	_Label_787
	.word	-216
	.word	4
	.word	_Label_788
	.word	-220
	.word	4
	.word	_Label_789
	.word	-224
	.word	4
	.word	_Label_790
	.word	-228
	.word	4
	.word	_Label_791
	.word	-252
	.word	24
	.word	0
_Label_756:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_757:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_774:
	.byte	'C'
	.ascii	"_temp_735\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_784:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_785:
	.byte	'P'
	.ascii	"pOF\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_787:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_788:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_789:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_790:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_791:
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	2007,r13		! source line 2007
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_792 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_793 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2013,r13		! source line 2013
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_794 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2014,r13		! source line 2014
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_795 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2016,r13		! source line 2016
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
	mov	2017,r13		! source line 2017
	mov	"\0\0SE",r10
!   _temp_796 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-32]
!   _temp_797 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_798) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _temp_798 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_796  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_797  sizeInBytes=4
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
!   _temp_801 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2021,r13		! source line 2021
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
	.word	_Label_802
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_803
	.word	8
	.word	4
	.word	_Label_804
	.word	-12
	.word	4
	.word	_Label_805
	.word	-16
	.word	4
	.word	_Label_806
	.word	-20
	.word	4
	.word	_Label_807
	.word	-24
	.word	4
	.word	_Label_808
	.word	-28
	.word	4
	.word	_Label_809
	.word	-32
	.word	4
	.word	_Label_810
	.word	-36
	.word	4
	.word	_Label_811
	.word	-40
	.word	4
	.word	_Label_812
	.word	-44
	.word	4
	.word	_Label_813
	.word	-48
	.word	4
	.word	_Label_814
	.word	-72
	.word	24
	.word	_Label_815
	.word	-76
	.word	4
	.word	0
_Label_802:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_803:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_814:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_815:
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	2026,r13		! source line 2026
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_816 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_817 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_817  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_818 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_819 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_819  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
	mov	2036,r13		! source line 2036
	mov	"\0\0SE",r10
!   _temp_820 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-32]
!   _temp_821 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_823 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_822 = *_temp_823  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_822) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_824 = _temp_822 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_820  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_821  sizeInBytes=4
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
!   _temp_825 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_825  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2038,r13		! source line 2038
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2040,r13		! source line 2040
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
	.word	_Label_826
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_827
	.word	8
	.word	4
	.word	_Label_828
	.word	-12
	.word	4
	.word	_Label_829
	.word	-16
	.word	4
	.word	_Label_830
	.word	-20
	.word	4
	.word	_Label_831
	.word	-24
	.word	4
	.word	_Label_832
	.word	-28
	.word	4
	.word	_Label_833
	.word	-32
	.word	4
	.word	_Label_834
	.word	-36
	.word	4
	.word	_Label_835
	.word	-40
	.word	4
	.word	_Label_836
	.word	-44
	.word	4
	.word	_Label_837
	.word	-48
	.word	4
	.word	_Label_838
	.word	-72
	.word	24
	.word	_Label_839
	.word	-76
	.word	4
	.word	0
_Label_826:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_827:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_838:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_839:
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	2045,r13		! source line 2045
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
	mov	2050,r13		! source line 2050
	mov	"\0\0SE",r10
!   _temp_840 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_841 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_843 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_842 = *_temp_843  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_842) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_844 = _temp_842 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_840  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_841  sizeInBytes=4
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
!   _temp_845 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_845  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_846 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2052,r13		! source line 2052
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2053,r13		! source line 2053
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_847 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_848 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2056,r13		! source line 2056
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_849 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2058,r13		! source line 2058
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2059,r13		! source line 2059
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2060,r13		! source line 2060
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
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
	.word	_Label_850
	.word	12		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_851
	.word	8
	.word	4
	.word	_Label_852
	.word	12
	.word	4
	.word	_Label_853
	.word	16
	.word	4
	.word	_Label_854
	.word	-12
	.word	4
	.word	_Label_855
	.word	-16
	.word	4
	.word	_Label_856
	.word	-20
	.word	4
	.word	_Label_857
	.word	-24
	.word	4
	.word	_Label_858
	.word	-28
	.word	4
	.word	_Label_859
	.word	-32
	.word	4
	.word	_Label_860
	.word	-36
	.word	4
	.word	_Label_861
	.word	-40
	.word	4
	.word	_Label_862
	.word	-44
	.word	4
	.word	_Label_863
	.word	-48
	.word	4
	.word	_Label_864
	.word	-72
	.word	24
	.word	_Label_865
	.word	-76
	.word	4
	.word	0
_Label_850:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_851:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_852:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_853:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_864:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_865:
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	2067,r13		! source line 2067
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
	mov	2072,r13		! source line 2072
	mov	"\0\0SE",r10
!   _temp_866 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_867 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_869 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_868 = *_temp_869  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_868) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_870 = _temp_868 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_866  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_867  sizeInBytes=4
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
!   _temp_871 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_872 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2074,r13		! source line 2074
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2075,r13		! source line 2075
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_873 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2077,r13		! source line 2077
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_874 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2078,r13		! source line 2078
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2079,r13		! source line 2079
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_875 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2080,r13		! source line 2080
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2081,r13		! source line 2081
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2082,r13		! source line 2082
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2083,r13		! source line 2083
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
	.word	_Label_876
	.word	12		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_877
	.word	8
	.word	4
	.word	_Label_878
	.word	12
	.word	4
	.word	_Label_879
	.word	16
	.word	4
	.word	_Label_880
	.word	-12
	.word	4
	.word	_Label_881
	.word	-16
	.word	4
	.word	_Label_882
	.word	-20
	.word	4
	.word	_Label_883
	.word	-24
	.word	4
	.word	_Label_884
	.word	-28
	.word	4
	.word	_Label_885
	.word	-32
	.word	4
	.word	_Label_886
	.word	-36
	.word	4
	.word	_Label_887
	.word	-40
	.word	4
	.word	_Label_888
	.word	-44
	.word	4
	.word	_Label_889
	.word	-48
	.word	4
	.word	_Label_890
	.word	-72
	.word	24
	.word	_Label_891
	.word	-76
	.word	4
	.word	0
_Label_876:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_877:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_878:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_879:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_890:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_891:
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	2088,r13		! source line 2088
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_892 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_892  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2090,r13		! source line 2090
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_893 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_893  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2091,r13		! source line 2091
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2092,r13		! source line 2092
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2093,r13		! source line 2093
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_894 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2094,r13		! source line 2094
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2095,r13		! source line 2095
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2096,r13		! source line 2096
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2099,r13		! source line 2099
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
	.word	_Label_895
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_896
	.word	8
	.word	4
	.word	_Label_897
	.word	12
	.word	4
	.word	_Label_898
	.word	-12
	.word	4
	.word	_Label_899
	.word	-16
	.word	4
	.word	_Label_900
	.word	-20
	.word	4
	.word	0
_Label_895:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_896:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_897:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_892\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	2105,r13		! source line 2105
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_901 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_901  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2107,r13		! source line 2107
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_902 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_902  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2108,r13		! source line 2108
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2109,r13		! source line 2109
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2110,r13		! source line 2110
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2110,r13		! source line 2110
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
	.word	_Label_903
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_904
	.word	8
	.word	4
	.word	_Label_905
	.word	-12
	.word	4
	.word	_Label_906
	.word	-16
	.word	4
	.word	0
_Label_903:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_904:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_901\0"
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	2116,r13		! source line 2116
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   _temp_907 = &_P_Kernel_threadManager
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
	mov	2121,r13		! source line 2121
	mov	"\0\0SE",r10
!   _temp_908 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_908  sizeInBytes=4
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
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_909 = _function_202_StartUserProcess
	set	_function_202_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_910 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_909  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_910  sizeInBytes=4
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
	mov	2122,r13		! source line 2122
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
	.word	_Label_911
	.word	0		! total size of parameters
	.word	32		! frame size = 32
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
_Label_911:
	.ascii	"InitFirstProcess\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_916:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_202_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	2127,r13		! source line 2127
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
	mov	2138,r13		! source line 2138
	mov	"\0\0SE",r10
!   _temp_917 = &_P_Kernel_processManager
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
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_918 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_918 = pPCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_919 = pPCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_919 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
	mov	2141,r13		! source line 2141
	mov	"\0\0SE",r10
!   _temp_920 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-56]
!   _temp_921 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_920  sizeInBytes=4
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
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_923 = pPCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_922 = _temp_923		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (pOF) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_922  sizeInBytes=4
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
	mov	2143,r13		! source line 2143
	mov	"\0\0SE",r10
!   _temp_924 = &_P_Kernel_fileManager
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
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_926 = pPCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_927 = _temp_926 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_925 = *_temp_927  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_925 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_928 [999 ] into _temp_929
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
!   initSystemStackTop = _temp_929		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2148,r13		! source line 2148
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_930 = pPCB + 32
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
	mov	2154,r13		! source line 2154
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_931 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_931 = 1  (sizeInBytes=1)
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
	mov	2155,r13		! source line 2155
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_932
	.word	0		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_933
	.word	-12
	.word	4
	.word	_Label_934
	.word	-16
	.word	4
	.word	_Label_935
	.word	-20
	.word	4
	.word	_Label_936
	.word	-24
	.word	4
	.word	_Label_937
	.word	-28
	.word	4
	.word	_Label_938
	.word	-32
	.word	4
	.word	_Label_939
	.word	-36
	.word	4
	.word	_Label_940
	.word	-40
	.word	4
	.word	_Label_941
	.word	-44
	.word	4
	.word	_Label_942
	.word	-48
	.word	4
	.word	_Label_943
	.word	-52
	.word	4
	.word	_Label_944
	.word	-56
	.word	4
	.word	_Label_945
	.word	-60
	.word	4
	.word	_Label_946
	.word	-64
	.word	4
	.word	_Label_947
	.word	-68
	.word	4
	.word	_Label_948
	.word	-72
	.word	4
	.word	_Label_949
	.word	-76
	.word	4
	.word	_Label_950
	.word	-80
	.word	4
	.word	_Label_951
	.word	-84
	.word	4
	.word	_Label_952
	.word	-88
	.word	4
	.word	_Label_953
	.word	-92
	.word	4
	.word	0
_Label_932:
	.ascii	"StartUserProcess\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"pPCB\0"
	.align
_Label_949:
	.byte	'P'
	.ascii	"pOF\0"
	.align
_Label_950:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_951:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_952:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_953:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_201_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	2746,r13		! source line 2746
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_954 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_954  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
!   _temp_955 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_955) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_957 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_957) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_956 = *_temp_957  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_955 = _temp_956  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
!   _temp_958 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_958) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_960 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_960) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_959 = *_temp_960  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_958 = _temp_959  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
!   _temp_961 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_961) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_963 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_963) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_962 = *_temp_963  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_961 = _temp_962  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_964
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_965
	.word	8
	.word	4
	.word	_Label_966
	.word	12
	.word	4
	.word	_Label_967
	.word	-16
	.word	4
	.word	_Label_968
	.word	-9
	.word	1
	.word	_Label_969
	.word	-20
	.word	4
	.word	_Label_970
	.word	-24
	.word	4
	.word	_Label_971
	.word	-10
	.word	1
	.word	_Label_972
	.word	-28
	.word	4
	.word	_Label_973
	.word	-32
	.word	4
	.word	_Label_974
	.word	-11
	.word	1
	.word	_Label_975
	.word	-36
	.word	4
	.word	_Label_976
	.word	-12
	.word	1
	.word	_Label_977
	.word	-40
	.word	4
	.word	_Label_978
	.word	-44
	.word	4
	.word	0
_Label_964:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_965:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_966:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_968:
	.byte	'C'
	.ascii	"_temp_962\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_971:
	.byte	'C'
	.ascii	"_temp_959\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_974:
	.byte	'C'
	.ascii	"_temp_956\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_976:
	.byte	'C'
	.ascii	"_temp_954\0"
	.align
_Label_977:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_978:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_200_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_printFCB,r1
	push	r1
	mov	3,r1
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	2756,r13		! source line 2756
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_980 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_979 = *_temp_980  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_979  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2757,r13		! source line 2757
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2758,r13		! source line 2758
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_printFCB:
	.word	_sourceFileName
	.word	_Label_981
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_982
	.word	8
	.word	4
	.word	_Label_983
	.word	-12
	.word	4
	.word	_Label_984
	.word	-16
	.word	4
	.word	0
_Label_981:
	.ascii	"printFCB\0"
	.align
_Label_982:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_199_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_printOpen,r1
	push	r1
	mov	4,r1
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	2761,r13		! source line 2761
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_985 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_985  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2762,r13		! source line 2762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_986 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_986  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2763,r13		! source line 2763
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_987 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2764,r13		! source line 2764
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2765,r13		! source line 2765
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
	mov	2765,r13		! source line 2765
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_printOpen:
	.word	_sourceFileName
	.word	_Label_988
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_989
	.word	8
	.word	4
	.word	_Label_990
	.word	-12
	.word	4
	.word	_Label_991
	.word	-16
	.word	4
	.word	_Label_992
	.word	-20
	.word	4
	.word	0
_Label_988:
	.ascii	"printOpen\0"
	.align
_Label_989:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_993
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_993:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_994
	.word	_sourceFileName
	.word	128		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_994:
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_996		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_996
!	jmp	_Label_995
_Label_995:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_997 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
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
_Label_996:
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
	.word	_Label_999
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1001
	.word	12
	.word	4
	.word	_Label_1002
	.word	-12
	.word	4
	.word	_Label_1003
	.word	-16
	.word	4
	.word	0
_Label_999:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1000:
	.ascii	"Pself\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_997\0"
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
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
!   if count != 2147483647 then goto _Label_1005		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1005
!	jmp	_Label_1004
_Label_1004:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1006 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1006  sizeInBytes=4
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
_Label_1005:
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
!   if count > 0 then goto _Label_1008		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1009 = &waitingThreads
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
!   _temp_1010 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1010 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1011 = &_P_Kernel_readyList
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
_Label_1008:
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
	.word	_Label_1012
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1014
	.word	-12
	.word	4
	.word	_Label_1015
	.word	-16
	.word	4
	.word	_Label_1016
	.word	-20
	.word	4
	.word	_Label_1017
	.word	-24
	.word	4
	.word	_Label_1018
	.word	-28
	.word	4
	.word	_Label_1019
	.word	-32
	.word	4
	.word	0
_Label_1012:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1013:
	.ascii	"Pself\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1018:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1019:
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
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
!   if count != -2147483648 then goto _Label_1021		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1021
!	jmp	_Label_1020
_Label_1020:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1022 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
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
_Label_1021:
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
!   if count >= 0 then goto _Label_1024		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1024
!	jmp	_Label_1023
_Label_1023:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1025 = &waitingThreads
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
_Label_1024:
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
	.word	_Label_1026
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1027
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1028
	.word	-12
	.word	4
	.word	_Label_1029
	.word	-16
	.word	4
	.word	_Label_1030
	.word	-20
	.word	4
	.word	0
_Label_1026:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1027:
	.ascii	"Pself\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1030:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1031
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1031:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1032
	.word	_sourceFileName
	.word	141		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1032:
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
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
	.word	_Label_1034
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1035
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1036
	.word	-12
	.word	4
	.word	0
_Label_1034:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1035:
	.ascii	"Pself\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1033\0"
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1038		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1039 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
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
_Label_1038:
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
!   if heldBy == 0 then goto _Label_1043		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1043
!   _temp_1042 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1044
_Label_1043:
!   _temp_1042 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1044:
!   if _temp_1042 then goto _Label_1041 else goto _Label_1040
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1040
	jmp	_Label_1041
_Label_1040:
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
	jmp	_Label_1045
_Label_1041:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1046 = &waitingThreads
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
_Label_1045:
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
	.word	_Label_1047
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1049
	.word	-16
	.word	4
	.word	_Label_1050
	.word	-9
	.word	1
	.word	_Label_1051
	.word	-20
	.word	4
	.word	_Label_1052
	.word	-24
	.word	4
	.word	0
_Label_1047:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1048:
	.ascii	"Pself\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1050:
	.byte	'C'
	.ascii	"_temp_1042\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1052:
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1054		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1054
!	jmp	_Label_1053
_Label_1053:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1055 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
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
_Label_1054:
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
!   _temp_1056 = &waitingThreads
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
!   if t == 0 then goto _Label_1058		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1058
!	jmp	_Label_1057
_Label_1057:
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
!   _temp_1059 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1059 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1060 = &_P_Kernel_readyList
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
	jmp	_Label_1061
_Label_1058:
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
_Label_1061:
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
	.word	_Label_1062
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1064
	.word	-12
	.word	4
	.word	_Label_1065
	.word	-16
	.word	4
	.word	_Label_1066
	.word	-20
	.word	4
	.word	_Label_1067
	.word	-24
	.word	4
	.word	_Label_1068
	.word	-28
	.word	4
	.word	_Label_1069
	.word	-32
	.word	4
	.word	0
_Label_1062:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1063:
	.ascii	"Pself\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1068:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1069:
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1072		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1072
!	jmp	_Label_1071
_Label_1071:
!   _temp_1070 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1073
_Label_1072:
!   _temp_1070 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1073:
!   ReturnResult: _temp_1070  (sizeInBytes=1)
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
	.word	_Label_1074
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1075
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1076
	.word	-9
	.word	1
	.word	0
_Label_1074:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1075:
	.ascii	"Pself\0"
	.align
_Label_1076:
	.byte	'C'
	.ascii	"_temp_1070\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1077
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1077:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1078
	.word	_sourceFileName
	.word	155		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1078:
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
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
	.word	_Label_1080
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1081
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1082
	.word	-12
	.word	4
	.word	0
_Label_1080:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1081:
	.ascii	"Pself\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1079\0"
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
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
!   Retrieve Result: targetName=_temp_1085  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1085 then goto _Label_1084 else goto _Label_1083
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1083
	jmp	_Label_1084
_Label_1083:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1086 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1086  sizeInBytes=4
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
_Label_1084:
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
!   _temp_1087 = &waitingThreads
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
	.word	_Label_1088
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1090
	.word	12
	.word	4
	.word	_Label_1091
	.word	-16
	.word	4
	.word	_Label_1092
	.word	-20
	.word	4
	.word	_Label_1093
	.word	-9
	.word	1
	.word	_Label_1094
	.word	-24
	.word	4
	.word	0
_Label_1088:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1089:
	.ascii	"Pself\0"
	.align
_Label_1090:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1093:
	.byte	'C'
	.ascii	"_temp_1085\0"
	.align
_Label_1094:
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
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
!   Retrieve Result: targetName=_temp_1097  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1097 then goto _Label_1096 else goto _Label_1095
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1095
	jmp	_Label_1096
_Label_1095:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1098 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1098  sizeInBytes=4
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
_Label_1096:
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
!   _temp_1099 = &waitingThreads
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
!   if t == 0 then goto _Label_1101		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1101
!	jmp	_Label_1100
_Label_1100:
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
!   _temp_1102 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1102 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1103 = &_P_Kernel_readyList
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
_Label_1101:
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
	.word	_Label_1104
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1106
	.word	12
	.word	4
	.word	_Label_1107
	.word	-16
	.word	4
	.word	_Label_1108
	.word	-20
	.word	4
	.word	_Label_1109
	.word	-24
	.word	4
	.word	_Label_1110
	.word	-28
	.word	4
	.word	_Label_1111
	.word	-9
	.word	1
	.word	_Label_1112
	.word	-32
	.word	4
	.word	_Label_1113
	.word	-36
	.word	4
	.word	0
_Label_1104:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1105:
	.ascii	"Pself\0"
	.align
_Label_1106:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1111:
	.byte	'C'
	.ascii	"_temp_1097\0"
	.align
_Label_1112:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1113:
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
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
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
!   Retrieve Result: targetName=_temp_1116  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1116 then goto _Label_1115 else goto _Label_1114
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1114
	jmp	_Label_1115
_Label_1114:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1117 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1117  sizeInBytes=4
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
_Label_1115:
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
_Label_1118:
!	jmp	_Label_1119
_Label_1119:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_1121 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1122
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1122
	jmp	_Label_1123
_Label_1122:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_1120
! END IF...
_Label_1123:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1124 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1124 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_1125 = &_P_Kernel_readyList
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
	jmp	_Label_1118
_Label_1120:
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
	.word	_Label_1126
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1127
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1128
	.word	12
	.word	4
	.word	_Label_1129
	.word	-16
	.word	4
	.word	_Label_1130
	.word	-20
	.word	4
	.word	_Label_1131
	.word	-24
	.word	4
	.word	_Label_1132
	.word	-28
	.word	4
	.word	_Label_1133
	.word	-9
	.word	1
	.word	_Label_1134
	.word	-32
	.word	4
	.word	_Label_1135
	.word	-36
	.word	4
	.word	0
_Label_1126:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1127:
	.ascii	"Pself\0"
	.align
_Label_1128:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1133:
	.byte	'C'
	.ascii	"_temp_1116\0"
	.align
_Label_1134:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1135:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1136
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
_Label_1136:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1137
	.word	_sourceFileName
	.word	168		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1137:
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
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
!   _temp_1138 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1138) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1138 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_1139 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1139 [0 ] into _temp_1140
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
!   Data Move: *_temp_1140 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1141 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1141 [999 ] into _temp_1142
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
!   Data Move: *_temp_1142 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1143 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1143 [999 ] into _temp_1144
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
!   stackTop = _temp_1144		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1145 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1147 = &_temp_1146
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1147 = _temp_1147 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1149:
!   Data Move: *_temp_1147 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1147 = _temp_1147 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1148 = _temp_1148 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1148) then goto _Label_1149
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1149
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1150 = &_temp_1146
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3400
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3400:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1145 = *_temp_1150  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3401:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3401
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
!   _temp_1151 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1153 = &_temp_1152
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1153 = _temp_1153 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1155:
!   Data Move: *_temp_1153 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1153 = _temp_1153 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1154 = _temp_1154 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1154) then goto _Label_1155
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1155
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1156 = &_temp_1152
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3402
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3402:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1151 = *_temp_1156  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3403:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3403
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
	.word	_Label_1157
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1158
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1159
	.word	12
	.word	4
	.word	_Label_1160
	.word	-12
	.word	4
	.word	_Label_1161
	.word	-16
	.word	4
	.word	_Label_1162
	.word	-20
	.word	4
	.word	_Label_1163
	.word	-84
	.word	64
	.word	_Label_1164
	.word	-88
	.word	4
	.word	_Label_1165
	.word	-92
	.word	4
	.word	_Label_1166
	.word	-96
	.word	4
	.word	_Label_1167
	.word	-100
	.word	4
	.word	_Label_1168
	.word	-156
	.word	56
	.word	_Label_1169
	.word	-160
	.word	4
	.word	_Label_1170
	.word	-164
	.word	4
	.word	_Label_1171
	.word	-168
	.word	4
	.word	_Label_1172
	.word	-172
	.word	4
	.word	_Label_1173
	.word	-176
	.word	4
	.word	_Label_1174
	.word	-180
	.word	4
	.word	_Label_1175
	.word	-184
	.word	4
	.word	_Label_1176
	.word	-188
	.word	4
	.word	0
_Label_1157:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1158:
	.ascii	"Pself\0"
	.align
_Label_1159:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1138\0"
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
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
!   _temp_1177 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1177  (sizeInBytes=4)
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
!   _temp_1179 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1178  sizeInBytes=4
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
	.word	_Label_1180
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1182
	.word	12
	.word	4
	.word	_Label_1183
	.word	16
	.word	4
	.word	_Label_1184
	.word	-12
	.word	4
	.word	_Label_1185
	.word	-16
	.word	4
	.word	_Label_1186
	.word	-20
	.word	4
	.word	_Label_1187
	.word	-24
	.word	4
	.word	_Label_1188
	.word	-28
	.word	4
	.word	0
_Label_1180:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1181:
	.ascii	"Pself\0"
	.align
_Label_1182:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1183:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1187:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1188:
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1191 == _P_Kernel_currentThread then goto _Label_1190		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1190
!	jmp	_Label_1189
_Label_1189:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1192 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
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
_Label_1190:
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
!   _temp_1193 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1195		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1195
!	jmp	_Label_1194
_Label_1194:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1197		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1197
!	jmp	_Label_1196
_Label_1196:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1198 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
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
_Label_1197:
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
!   _temp_1200 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1199  sizeInBytes=4
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
_Label_1195:
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
	.word	_Label_1201
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1202
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1203
	.word	-12
	.word	4
	.word	_Label_1204
	.word	-16
	.word	4
	.word	_Label_1205
	.word	-20
	.word	4
	.word	_Label_1206
	.word	-24
	.word	4
	.word	_Label_1207
	.word	-28
	.word	4
	.word	_Label_1208
	.word	-32
	.word	4
	.word	_Label_1209
	.word	-36
	.word	4
	.word	_Label_1210
	.word	-40
	.word	4
	.word	_Label_1211
	.word	-44
	.word	4
	.word	0
_Label_1201:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1202:
	.ascii	"Pself\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1209:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1210:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1211:
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1213		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1213
!	jmp	_Label_1212
_Label_1212:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1214 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
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
_Label_1213:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1217 == _P_Kernel_currentThread then goto _Label_1216		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1216
!	jmp	_Label_1215
_Label_1215:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1218 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
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
_Label_1216:
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
!   _temp_1219 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1220
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1220
	jmp	_Label_1221
_Label_1220:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1222 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
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
_Label_1221:
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
	.word	_Label_1223
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1225
	.word	-12
	.word	4
	.word	_Label_1226
	.word	-16
	.word	4
	.word	_Label_1227
	.word	-20
	.word	4
	.word	_Label_1228
	.word	-24
	.word	4
	.word	_Label_1229
	.word	-28
	.word	4
	.word	_Label_1230
	.word	-32
	.word	4
	.word	0
_Label_1223:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1224:
	.ascii	"Pself\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1230:
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_1234 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1234 [0 ] into _temp_1235
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
!   Data Move: _temp_1233 = *_temp_1235  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1233 == 606348324 then goto _Label_1232		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1232
!	jmp	_Label_1231
_Label_1231:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1236 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
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
	jmp	_Label_1237
_Label_1232:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1241 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1241 [999 ] into _temp_1242
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
!   Data Move: _temp_1240 = *_temp_1242  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1240 == 606348324 then goto _Label_1239		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1239
!	jmp	_Label_1238
_Label_1238:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1243 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
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
_Label_1239:
! END IF...
_Label_1237:
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
	.word	_Label_1244
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1245
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1246
	.word	-12
	.word	4
	.word	_Label_1247
	.word	-16
	.word	4
	.word	_Label_1248
	.word	-20
	.word	4
	.word	_Label_1249
	.word	-24
	.word	4
	.word	_Label_1250
	.word	-28
	.word	4
	.word	_Label_1251
	.word	-32
	.word	4
	.word	_Label_1252
	.word	-36
	.word	4
	.word	_Label_1253
	.word	-40
	.word	4
	.word	0
_Label_1244:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1245:
	.ascii	"Pself\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1233\0"
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
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
!   _temp_1254 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1254  sizeInBytes=4
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
!   _temp_1255 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1257 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1258 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
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
!   _temp_1263 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1264 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1263  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1259:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1264 then goto _Label_1262		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1262
_Label_1260:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1265 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1265  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1266 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1266  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1267 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1269 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1269 [i ] into _temp_1270
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
!   Data Move: _temp_1268 = *_temp_1270  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1268  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1271 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1271  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1273 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1273 [i ] into _temp_1274
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
!   Data Move: _temp_1272 = *_temp_1274  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1272  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1275 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1261:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1259
! END FOR
_Label_1262:
! CALL STATEMENT...
!   _temp_1276 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-116]
!   _temp_1277 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1277  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1278 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-108]
!   _temp_1280 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1280 [0 ] into _temp_1281
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
!   _temp_1279 = _temp_1281		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1279  sizeInBytes=4
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
	be	_Label_1284
	cmp	r1,2
	be	_Label_1285
	cmp	r1,3
	be	_Label_1286
	cmp	r1,4
	be	_Label_1287
	cmp	r1,5
	be	_Label_1288
	jmp	_Label_1282
! CASE 1...
_Label_1284:
! CALL STATEMENT...
!   _temp_1289 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_1283
! CASE 2...
_Label_1285:
! CALL STATEMENT...
!   _temp_1290 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_1283
! CASE 3...
_Label_1286:
! CALL STATEMENT...
!   _temp_1291 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_1283
! CASE 4...
_Label_1287:
! CALL STATEMENT...
!   _temp_1292 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_1283
! CASE 5...
_Label_1288:
! CALL STATEMENT...
!   _temp_1293 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_1283
! DEFAULT CASE...
_Label_1282:
! CALL STATEMENT...
!   _temp_1294 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
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
_Label_1283:
! CALL STATEMENT...
!   _temp_1295 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
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
!   _temp_1296 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
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
!   _temp_1301 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1302 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1301  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1297:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1302 then goto _Label_1300		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1300
_Label_1298:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1303 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1303  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1304 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1305 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1307 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1307 [i ] into _temp_1308
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
!   Data Move: _temp_1306 = *_temp_1308  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1309 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1311 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1311 [i ] into _temp_1312
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
!   Data Move: _temp_1310 = *_temp_1312  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1313 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1299:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1297
! END FOR
_Label_1300:
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
	.word	_Label_1314
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1315
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1316
	.word	-12
	.word	4
	.word	_Label_1317
	.word	-16
	.word	4
	.word	_Label_1318
	.word	-20
	.word	4
	.word	_Label_1319
	.word	-24
	.word	4
	.word	_Label_1320
	.word	-28
	.word	4
	.word	_Label_1321
	.word	-32
	.word	4
	.word	_Label_1322
	.word	-36
	.word	4
	.word	_Label_1323
	.word	-40
	.word	4
	.word	_Label_1324
	.word	-44
	.word	4
	.word	_Label_1325
	.word	-48
	.word	4
	.word	_Label_1326
	.word	-52
	.word	4
	.word	_Label_1327
	.word	-56
	.word	4
	.word	_Label_1328
	.word	-60
	.word	4
	.word	_Label_1329
	.word	-64
	.word	4
	.word	_Label_1330
	.word	-68
	.word	4
	.word	_Label_1331
	.word	-72
	.word	4
	.word	_Label_1332
	.word	-76
	.word	4
	.word	_Label_1333
	.word	-80
	.word	4
	.word	_Label_1334
	.word	-84
	.word	4
	.word	_Label_1335
	.word	-88
	.word	4
	.word	_Label_1336
	.word	-92
	.word	4
	.word	_Label_1337
	.word	-96
	.word	4
	.word	_Label_1338
	.word	-100
	.word	4
	.word	_Label_1339
	.word	-104
	.word	4
	.word	_Label_1340
	.word	-108
	.word	4
	.word	_Label_1341
	.word	-112
	.word	4
	.word	_Label_1342
	.word	-116
	.word	4
	.word	_Label_1343
	.word	-120
	.word	4
	.word	_Label_1344
	.word	-124
	.word	4
	.word	_Label_1345
	.word	-128
	.word	4
	.word	_Label_1346
	.word	-132
	.word	4
	.word	_Label_1347
	.word	-136
	.word	4
	.word	_Label_1348
	.word	-140
	.word	4
	.word	_Label_1349
	.word	-144
	.word	4
	.word	_Label_1350
	.word	-148
	.word	4
	.word	_Label_1351
	.word	-152
	.word	4
	.word	_Label_1352
	.word	-156
	.word	4
	.word	_Label_1353
	.word	-160
	.word	4
	.word	_Label_1354
	.word	-164
	.word	4
	.word	_Label_1355
	.word	-168
	.word	4
	.word	_Label_1356
	.word	-172
	.word	4
	.word	_Label_1357
	.word	-176
	.word	4
	.word	_Label_1358
	.word	-180
	.word	4
	.word	_Label_1359
	.word	-184
	.word	4
	.word	_Label_1360
	.word	-188
	.word	4
	.word	_Label_1361
	.word	-192
	.word	4
	.word	_Label_1362
	.word	-196
	.word	4
	.word	0
_Label_1314:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1315:
	.ascii	"Pself\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1361:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1362:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1363
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1363:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1364
	.word	_sourceFileName
	.word	195		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1364:
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   _temp_1365 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1367 = &_temp_1366
	set	-45892,r1
	add	r14,r1,r1
	store	r1,[r14+-4248]
!   _temp_1367 = _temp_1367 + 4
	load	[r14+-4248],r1
	add	r1,4,r1
	store	r1,[r14+-4248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1369 = zeros  (sizeInBytes=4164)
	add	r14,-4240,r4
	mov	1041,r3
_Label_3410:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3410
!   _temp_1369 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4240]
	mov	10,r1
	store	r1,[r14+-4244]
_Label_1371:
!   Data Move: *_temp_1367 = _temp_1369  (sizeInBytes=4164)
	add	r14,-4240,r5
	load	[r14+-4248],r4
	mov	1041,r3
_Label_3411:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3411
!   _temp_1367 = _temp_1367 + 4164
	load	[r14+-4248],r1
	add	r1,4164,r1
	store	r1,[r14+-4248]
!   _temp_1368 = _temp_1368 + -1
	load	[r14+-4244],r1
	add	r1,-1,r1
	store	r1,[r14+-4244]
!   if intNotZero (_temp_1368) then goto _Label_1371
	load	[r14+-4244],r1
	cmp	r1,r0
	bne	_Label_1371
!   Initialize the array size...
	mov	10,r1
	set	-45892,r2
	store	r1,[r14+r2]
!   _temp_1372 = &_temp_1366
	set	-45892,r1
	add	r14,r1,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	set	-45896,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3412
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3412:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1365 = *_temp_1372  (sizeInBytes=41644)
	load	[r14+-72],r5
	set	-45896,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3413:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3413
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
!   _temp_1376 = &threadManagerLock
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
!   _temp_1377 = &aThreadBecameFree
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
_Label_1378:
!   if i >= 10 then goto _Label_1380		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1380
!	jmp	_Label_1379
_Label_1379:
	mov	713,r13		! source line 713
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0SE",r10
!   _temp_1381 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   _temp_1382 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1382 [i ] into _temp_1383
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
!   Prepare Argument: offset=12  value=_temp_1381  sizeInBytes=4
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
!   _temp_1384 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1384 [i ] into _temp_1385
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
!   _temp_1386 = _temp_1385 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1386 = 5  (sizeInBytes=4)
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
	jmp	_Label_1378
_Label_1380:
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
_Label_1387:
!   if i >= 10 then goto _Label_1389		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1389
!	jmp	_Label_1388
_Label_1388:
	mov	719,r13		! source line 719
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0SE",r10
!   _temp_1391 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1391 [i ] into _temp_1392
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
!   _temp_1390 = _temp_1392		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1393 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1390  sizeInBytes=4
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
	jmp	_Label_1387
_Label_1389:
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
	.word	_Label_1394
	.word	4		! total size of parameters
	.word	45900		! frame size = 45900
	.word	_Label_1395
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1396
	.word	-12
	.word	4
	.word	_Label_1397
	.word	-16
	.word	4
	.word	_Label_1398
	.word	-20
	.word	4
	.word	_Label_1399
	.word	-24
	.word	4
	.word	_Label_1400
	.word	-28
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
	.word	-68
	.word	4
	.word	_Label_1411
	.word	-72
	.word	4
	.word	_Label_1412
	.word	-76
	.word	4
	.word	_Label_1413
	.word	-4240
	.word	4164
	.word	_Label_1414
	.word	-4244
	.word	4
	.word	_Label_1415
	.word	-4248
	.word	4
	.word	_Label_1416
	.word	-45892
	.word	41644
	.word	_Label_1417
	.word	-45896
	.word	4
	.word	_Label_1418
	.word	-45900
	.word	4
	.word	0
_Label_1394:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1395:
	.ascii	"Pself\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1418:
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
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
!   _temp_1419 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
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
!   _temp_1424 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1425 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1424  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1420:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1425 then goto _Label_1423		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1423
_Label_1421:
	mov	737,r13		! source line 737
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1426 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1426  sizeInBytes=4
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
!   _temp_1427 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1429 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1429 [i ] into _temp_1430
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
!   _temp_1428 = _temp_1430		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_function_205_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1422:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1420
! END FOR
_Label_1423:
! CALL STATEMENT...
!   _temp_1431 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1431  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1432 = _function_204_PrintObjectAddr
	set	_function_204_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1433 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1432  sizeInBytes=4
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
	.word	_Label_1434
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1436
	.word	-12
	.word	4
	.word	_Label_1437
	.word	-16
	.word	4
	.word	_Label_1438
	.word	-20
	.word	4
	.word	_Label_1439
	.word	-24
	.word	4
	.word	_Label_1440
	.word	-28
	.word	4
	.word	_Label_1441
	.word	-32
	.word	4
	.word	_Label_1442
	.word	-36
	.word	4
	.word	_Label_1443
	.word	-40
	.word	4
	.word	_Label_1444
	.word	-44
	.word	4
	.word	_Label_1445
	.word	-48
	.word	4
	.word	_Label_1446
	.word	-52
	.word	4
	.word	_Label_1447
	.word	-56
	.word	4
	.word	_Label_1448
	.word	-60
	.word	4
	.word	0
_Label_1434:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1435:
	.ascii	"Pself\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1447:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1448:
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	751,r13		! source line 751
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1449 = &threadManagerLock
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
_Label_1450:
	mov	763,r13		! source line 763
	mov	"\0\0SE",r10
!   _temp_1454 = &freeList
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
!   Retrieve Result: targetName=_temp_1453  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1455 = _temp_1453 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1455 then goto _Label_1452 else goto _Label_1451
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1451
	jmp	_Label_1452
_Label_1451:
	mov	763,r13		! source line 763
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_1456 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1457 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1456  sizeInBytes=4
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
	jmp	_Label_1450
_Label_1452:
! ASSIGNMENT STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0AS",r10
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_1458 = &freeList
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
!   _temp_1459 = newThreadPtr + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1459 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_1460 = &threadManagerLock
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
	.word	_Label_1461
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1463
	.word	-16
	.word	4
	.word	_Label_1464
	.word	-20
	.word	4
	.word	_Label_1465
	.word	-24
	.word	4
	.word	_Label_1466
	.word	-28
	.word	4
	.word	_Label_1467
	.word	-32
	.word	4
	.word	_Label_1468
	.word	-9
	.word	1
	.word	_Label_1469
	.word	-36
	.word	4
	.word	_Label_1470
	.word	-10
	.word	1
	.word	_Label_1471
	.word	-40
	.word	4
	.word	_Label_1472
	.word	-44
	.word	4
	.word	0
_Label_1461:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1462:
	.ascii	"Pself\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1468:
	.byte	'C'
	.ascii	"_temp_1455\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1470:
	.byte	'C'
	.ascii	"_temp_1453\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1472:
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	777,r13		! source line 777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_1473 = &threadManagerLock
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
!   _temp_1474 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1474 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1475 = &freeList
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
!   _temp_1476 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1477 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1476  sizeInBytes=4
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
!   _temp_1478 = &threadManagerLock
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
	.word	_Label_1479
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1480
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1481
	.word	12
	.word	4
	.word	_Label_1482
	.word	-12
	.word	4
	.word	_Label_1483
	.word	-16
	.word	4
	.word	_Label_1484
	.word	-20
	.word	4
	.word	_Label_1485
	.word	-24
	.word	4
	.word	_Label_1486
	.word	-28
	.word	4
	.word	_Label_1487
	.word	-32
	.word	4
	.word	0
_Label_1479:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1480:
	.ascii	"Pself\0"
	.align
_Label_1481:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1488
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1488:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1489
	.word	_sourceFileName
	.word	216		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1489:
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
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
_Label_3418:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3418
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1491 = &addrSpace
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
	.word	_Label_1492
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1494
	.word	-12
	.word	4
	.word	_Label_1495
	.word	-16
	.word	4
	.word	0
_Label_1492:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1493:
	.ascii	"Pself\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1490\0"
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
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	815,r13		! source line 815
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1496) then goto _runtimeErrorNullPointer
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
!   _temp_1497 = &addrSpace
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
!   _temp_1498 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
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
	call	_function_205_ThreadPrintShort
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
	.word	_Label_1499
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1500
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1501
	.word	-12
	.word	4
	.word	_Label_1502
	.word	-16
	.word	4
	.word	_Label_1503
	.word	-20
	.word	4
	.word	0
_Label_1499:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1500:
	.ascii	"Pself\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1496\0"
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
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	838,r13		! source line 838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1504 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1506 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
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
!   _temp_1507 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1507  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1509		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1509
!	jmp	_Label_1508
_Label_1508:
! THEN...
	mov	848,r13		! source line 848
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1511
_Label_1509:
! ELSE...
	mov	849,r13		! source line 849
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1513		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1513
!	jmp	_Label_1512
_Label_1512:
! THEN...
	mov	850,r13		! source line 850
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1514 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1514  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1515
_Label_1513:
! ELSE...
	mov	851,r13		! source line 851
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1517		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1517
!	jmp	_Label_1516
_Label_1516:
! THEN...
	mov	852,r13		! source line 852
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1518 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1519
_Label_1517:
! ELSE...
	mov	854,r13		! source line 854
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1520 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1520  sizeInBytes=4
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
_Label_1519:
! END IF...
_Label_1515:
! END IF...
_Label_1511:
! CALL STATEMENT...
!   _temp_1521 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1521  sizeInBytes=4
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
!   _temp_1522 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
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
	.word	_Label_1523
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1525
	.word	-12
	.word	4
	.word	_Label_1526
	.word	-16
	.word	4
	.word	_Label_1527
	.word	-20
	.word	4
	.word	_Label_1528
	.word	-24
	.word	4
	.word	_Label_1529
	.word	-28
	.word	4
	.word	_Label_1530
	.word	-32
	.word	4
	.word	_Label_1531
	.word	-36
	.word	4
	.word	_Label_1532
	.word	-40
	.word	4
	.word	_Label_1533
	.word	-44
	.word	4
	.word	_Label_1534
	.word	-48
	.word	4
	.word	0
_Label_1523:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1524:
	.ascii	"Pself\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1535
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
_Label_1535:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1536
	.word	_sourceFileName
	.word	236		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1536:
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
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	871,r13		! source line 871
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0AS",r10
!   _temp_1537 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1460]
!   NEW ARRAY Constructor...
!   _temp_1539 = &_temp_1538
	add	r14,-1456,r1
	store	r1,[r14+-212]
!   _temp_1539 = _temp_1539 + 4
	load	[r14+-212],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1541 = zeros  (sizeInBytes=124)
	add	r14,-204,r4
	mov	31,r3
_Label_3422:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3422
!   _temp_1541 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-204]
	mov	10,r1
	store	r1,[r14+-208]
_Label_1543:
!   Data Move: *_temp_1539 = _temp_1541  (sizeInBytes=124)
	add	r14,-204,r5
	load	[r14+-212],r4
	mov	31,r3
_Label_3423:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3423
!   _temp_1539 = _temp_1539 + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-212]
!   _temp_1540 = _temp_1540 + -1
	load	[r14+-208],r1
	add	r1,-1,r1
	store	r1,[r14+-208]
!   if intNotZero (_temp_1540) then goto _Label_1543
	load	[r14+-208],r1
	cmp	r1,r0
	bne	_Label_1543
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1456]
!   _temp_1544 = &_temp_1538
	add	r14,-1456,r1
	store	r1,[r14+-76]
!   make sure array has size 10
	load	[r14+-1460],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3424
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3424:
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1537 = *_temp_1544  (sizeInBytes=1244)
	load	[r14+-76],r5
	load	[r14+-1460],r4
	mov	311,r3
_Label_3425:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3425
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
!   _temp_1546 = &processManagerLock
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
!   _temp_1549 = &aProcessBecameFree
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
!   _temp_1551 = &aProcessDied
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
_Label_1552:
!   if i >= 10 then goto _Label_1554		(int)
	load	[r14+-1464],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1554
!	jmp	_Label_1553
_Label_1553:
	mov	888,r13		! source line 888
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1555 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1555 [i ] into _temp_1556
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
!   _temp_1557 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1557 [i ] into _temp_1558
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
!   _temp_1559 = _temp_1558 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1559 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1561 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1561 [i ] into _temp_1562
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
!   _temp_1560 = _temp_1562		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1563 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1560  sizeInBytes=4
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
	jmp	_Label_1552
_Label_1554:
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
	.word	_Label_1564
	.word	4		! total size of parameters
	.word	1464		! frame size = 1464
	.word	_Label_1565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1566
	.word	-12
	.word	4
	.word	_Label_1567
	.word	-16
	.word	4
	.word	_Label_1568
	.word	-20
	.word	4
	.word	_Label_1569
	.word	-24
	.word	4
	.word	_Label_1570
	.word	-28
	.word	4
	.word	_Label_1571
	.word	-32
	.word	4
	.word	_Label_1572
	.word	-36
	.word	4
	.word	_Label_1573
	.word	-40
	.word	4
	.word	_Label_1574
	.word	-44
	.word	4
	.word	_Label_1575
	.word	-48
	.word	4
	.word	_Label_1576
	.word	-52
	.word	4
	.word	_Label_1577
	.word	-56
	.word	4
	.word	_Label_1578
	.word	-60
	.word	4
	.word	_Label_1579
	.word	-64
	.word	4
	.word	_Label_1580
	.word	-68
	.word	4
	.word	_Label_1581
	.word	-72
	.word	4
	.word	_Label_1582
	.word	-76
	.word	4
	.word	_Label_1583
	.word	-80
	.word	4
	.word	_Label_1584
	.word	-204
	.word	124
	.word	_Label_1585
	.word	-208
	.word	4
	.word	_Label_1586
	.word	-212
	.word	4
	.word	_Label_1587
	.word	-1456
	.word	1244
	.word	_Label_1588
	.word	-1460
	.word	4
	.word	_Label_1589
	.word	-1464
	.word	4
	.word	0
_Label_1564:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1565:
	.ascii	"Pself\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1589:
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
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
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
!   _temp_1590 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1590  sizeInBytes=4
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
!   _temp_1595 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1596 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1595  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1591:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1596 then goto _Label_1594		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1594
_Label_1592:
	mov	907,r13		! source line 907
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1597 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
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
!   _temp_1598 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1598  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
!   _temp_1599 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1599 [i ] into _temp_1600
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
_Label_1593:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1591
! END FOR
_Label_1594:
! CALL STATEMENT...
!   _temp_1601 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0SE",r10
!   _temp_1602 = _function_204_PrintObjectAddr
	set	_function_204_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1603 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1602  sizeInBytes=4
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
	.word	_Label_1604
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1605
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1606
	.word	-12
	.word	4
	.word	_Label_1607
	.word	-16
	.word	4
	.word	_Label_1608
	.word	-20
	.word	4
	.word	_Label_1609
	.word	-24
	.word	4
	.word	_Label_1610
	.word	-28
	.word	4
	.word	_Label_1611
	.word	-32
	.word	4
	.word	_Label_1612
	.word	-36
	.word	4
	.word	_Label_1613
	.word	-40
	.word	4
	.word	_Label_1614
	.word	-44
	.word	4
	.word	_Label_1615
	.word	-48
	.word	4
	.word	_Label_1616
	.word	-52
	.word	4
	.word	_Label_1617
	.word	-56
	.word	4
	.word	0
_Label_1604:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1605:
	.ascii	"Pself\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1616:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1617:
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
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
!   _temp_1618 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1618  sizeInBytes=4
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
!   _temp_1623 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1624 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1623  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1619:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1624 then goto _Label_1622		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1622
_Label_1620:
	mov	930,r13		! source line 930
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1625 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
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
!   _temp_1626 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1626 [i ] into _temp_1627
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
_Label_1621:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1619
! END FOR
_Label_1622:
! CALL STATEMENT...
!   _temp_1628 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1628  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0SE",r10
!   _temp_1629 = _function_204_PrintObjectAddr
	set	_function_204_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1630 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1629  sizeInBytes=4
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
	.word	_Label_1631
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1633
	.word	-12
	.word	4
	.word	_Label_1634
	.word	-16
	.word	4
	.word	_Label_1635
	.word	-20
	.word	4
	.word	_Label_1636
	.word	-24
	.word	4
	.word	_Label_1637
	.word	-28
	.word	4
	.word	_Label_1638
	.word	-32
	.word	4
	.word	_Label_1639
	.word	-36
	.word	4
	.word	_Label_1640
	.word	-40
	.word	4
	.word	_Label_1641
	.word	-44
	.word	4
	.word	_Label_1642
	.word	-48
	.word	4
	.word	_Label_1643
	.word	-52
	.word	4
	.word	0
_Label_1631:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1632:
	.ascii	"Pself\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1642:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1643:
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
	mov	12,r1
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	943,r13		! source line 943
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1644 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	954,r13		! source line 954
	mov	"\0\0WH",r10
_Label_1645:
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1649 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1648  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1650 = _temp_1648 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1650 then goto _Label_1647 else goto _Label_1646
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1646
	jmp	_Label_1647
_Label_1646:
	mov	954,r13		! source line 954
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_1651 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1652 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1651  sizeInBytes=4
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
	jmp	_Label_1645
_Label_1647:
! ASSIGNMENT STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0AS",r10
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1653 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newProcessPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
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
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1654 = newProcessPtr + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1654 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0AS",r10
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1655 = newProcessPtr + 20
	load	[r14+-48],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1655 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0SE",r10
!   _temp_1656 = &processManagerLock
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
	mov	965,r13		! source line 965
	mov	"\0\0RE",r10
!   ReturnResult: newProcessPtr  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1657
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1659
	.word	-16
	.word	4
	.word	_Label_1660
	.word	-20
	.word	4
	.word	_Label_1661
	.word	-24
	.word	4
	.word	_Label_1662
	.word	-28
	.word	4
	.word	_Label_1663
	.word	-32
	.word	4
	.word	_Label_1664
	.word	-36
	.word	4
	.word	_Label_1665
	.word	-9
	.word	1
	.word	_Label_1666
	.word	-40
	.word	4
	.word	_Label_1667
	.word	-10
	.word	1
	.word	_Label_1668
	.word	-44
	.word	4
	.word	_Label_1669
	.word	-48
	.word	4
	.word	0
_Label_1657:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1658:
	.ascii	"Pself\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1665:
	.byte	'C'
	.ascii	"_temp_1650\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1667:
	.byte	'C'
	.ascii	"_temp_1648\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1669:
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
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	973,r13		! source line 973
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1670 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	980,r13		! source line 980
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1671 = &processManagerLock
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
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1672 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1672 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_1673 = &freeList
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
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1674 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1675 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1674  sizeInBytes=4
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
!   _temp_1676 = &processManagerLock
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
	.word	_Label_1677
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1678
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1679
	.word	12
	.word	4
	.word	_Label_1680
	.word	-12
	.word	4
	.word	_Label_1681
	.word	-16
	.word	4
	.word	_Label_1682
	.word	-20
	.word	4
	.word	_Label_1683
	.word	-24
	.word	4
	.word	_Label_1684
	.word	-28
	.word	4
	.word	_Label_1685
	.word	-32
	.word	4
	.word	_Label_1686
	.word	-36
	.word	4
	.word	0
_Label_1677:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1678:
	.ascii	"Pself\0"
	.align
_Label_1679:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1670\0"
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	994,r13		! source line 994
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   pParent = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-244]
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_1687 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-236]
!   _temp_1688 = _temp_1687 + 1248
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
	mov	1002,r13		! source line 1002
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-240]
! WHILE STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0WH",r10
_Label_1689:
!   if i >= 10 then goto _Label_1691		(int)
	load	[r14+-240],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1691
!	jmp	_Label_1690
_Label_1690:
	mov	1002,r13		! source line 1002
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1696 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1695 = *_temp_1696  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   _temp_1698 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-216]
!   _temp_1699 = _temp_1698 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Move address of _temp_1699 [i ] into _temp_1700
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
!   _temp_1701 = _temp_1700 + 16
	load	[r14+-208],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1697 = *_temp_1701  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if _temp_1695 != _temp_1697 then goto _Label_1693		(int)
	load	[r14+-228],r1
	load	[r14+-220],r2
	cmp	r1,r2
	bne	_Label_1693
!	jmp	_Label_1694
_Label_1694:
!   _temp_1703 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-196]
!   _temp_1704 = _temp_1703 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Move address of _temp_1704 [i ] into _temp_1705
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
!   _temp_1706 = _temp_1705 + 20
	load	[r14+-188],r1
	add	r1,20,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1702 = *_temp_1706  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if _temp_1702 != 2 then goto _Label_1693		(int)
	load	[r14+-200],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1693
!	jmp	_Label_1692
_Label_1692:
! THEN...
	mov	1006,r13		! source line 1006
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   _temp_1707 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-180]
!   _temp_1708 = _temp_1707 + 4
	load	[r14+-180],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Move address of _temp_1708 [i ] into _temp_1709
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
!   _temp_1710 = _temp_1709 + 20
	load	[r14+-172],r1
	add	r1,20,r1
	store	r1,[r14+-168]
!   Data Move: *_temp_1710 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-168],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_1712 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-160]
!   _temp_1713 = _temp_1712 + 4
	load	[r14+-160],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_1713 [i ] into _temp_1714
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
!   _temp_1711 = _temp_1714		(4 bytes)
	load	[r14+-152],r1
	store	r1,[r14+-164]
!   _temp_1715 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-148]
!   _temp_1716 = _temp_1715 + 1284
	load	[r14+-148],r1
	add	r1,1284,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1711  sizeInBytes=4
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
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1718 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_1719 = _temp_1718 + 1248
	load	[r14+-136],r1
	add	r1,1248,r1
	store	r1,[r14+-132]
!   _temp_1717 = _temp_1719		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   _temp_1720 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-128]
!   _temp_1721 = _temp_1720 + 1268
	load	[r14+-128],r1
	add	r1,1268,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=12  value=_temp_1717  sizeInBytes=4
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
_Label_1693:
! IF STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1725 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1724 = *_temp_1725  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_1727 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_1728 = _temp_1727 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Move address of _temp_1728 [i ] into _temp_1729
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
!   _temp_1730 = _temp_1729 + 12
	load	[r14+-100],r1
	add	r1,12,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1726 = *_temp_1730  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1724 != _temp_1726 then goto _Label_1723		(int)
	load	[r14+-120],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bne	_Label_1723
!	jmp	_Label_1722
_Label_1722:
! THEN...
	mov	1015,r13		! source line 1015
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0AS",r10
!   _temp_1731 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-92]
!   _temp_1732 = _temp_1731 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1732 [i ] into _temp_1733
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
!   pParent = _temp_1733		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-244]
! END IF...
_Label_1723:
! ASSIGNMENT STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! END WHILE...
	jmp	_Label_1689
_Label_1691:
! IF STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0IF",r10
!   if intIsZero (pParent) then goto _Label_1735
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_1735
!	jmp	_Label_1736
_Label_1736:
!   if intIsZero (pParent) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1738 = pParent + 20
	load	[r14+-244],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1737 = *_temp_1738  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1737 != 1 then goto _Label_1735		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1735
!	jmp	_Label_1734
_Label_1734:
! THEN...
	mov	1021,r13		! source line 1021
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1739 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_1739 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1741 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_1742 = _temp_1741 + 1248
	load	[r14+-64],r1
	add	r1,1248,r1
	store	r1,[r14+-60]
!   _temp_1740 = _temp_1742		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_1743 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_1744 = _temp_1743 + 1296
	load	[r14+-56],r1
	add	r1,1296,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1740  sizeInBytes=4
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
	jmp	_Label_1745
_Label_1735:
! ELSE...
	mov	1025,r13		! source line 1025
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1746 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1746 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0SE",r10
!   _temp_1747 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1748 = _temp_1747 + 1284
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
	mov	1027,r13		! source line 1027
	mov	"\0\0SE",r10
!   _temp_1750 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1751 = _temp_1750 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1749 = _temp_1751		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1752 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1753 = _temp_1752 + 1296
	load	[r14+-24],r1
	add	r1,1296,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1749  sizeInBytes=4
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
_Label_1745:
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1754 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1755 = _temp_1754 + 1248
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
	mov	1030,r13		! source line 1030
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
	.word	_Label_1756
	.word	8		! total size of parameters
	.word	244		! frame size = 244
	.word	_Label_1757
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1758
	.word	12
	.word	4
	.word	_Label_1759
	.word	-12
	.word	4
	.word	_Label_1760
	.word	-16
	.word	4
	.word	_Label_1761
	.word	-20
	.word	4
	.word	_Label_1762
	.word	-24
	.word	4
	.word	_Label_1763
	.word	-28
	.word	4
	.word	_Label_1764
	.word	-32
	.word	4
	.word	_Label_1765
	.word	-36
	.word	4
	.word	_Label_1766
	.word	-40
	.word	4
	.word	_Label_1767
	.word	-44
	.word	4
	.word	_Label_1768
	.word	-48
	.word	4
	.word	_Label_1769
	.word	-52
	.word	4
	.word	_Label_1770
	.word	-56
	.word	4
	.word	_Label_1771
	.word	-60
	.word	4
	.word	_Label_1772
	.word	-64
	.word	4
	.word	_Label_1773
	.word	-68
	.word	4
	.word	_Label_1774
	.word	-72
	.word	4
	.word	_Label_1775
	.word	-76
	.word	4
	.word	_Label_1776
	.word	-80
	.word	4
	.word	_Label_1777
	.word	-84
	.word	4
	.word	_Label_1778
	.word	-88
	.word	4
	.word	_Label_1779
	.word	-92
	.word	4
	.word	_Label_1780
	.word	-96
	.word	4
	.word	_Label_1781
	.word	-100
	.word	4
	.word	_Label_1782
	.word	-104
	.word	4
	.word	_Label_1783
	.word	-108
	.word	4
	.word	_Label_1784
	.word	-112
	.word	4
	.word	_Label_1785
	.word	-116
	.word	4
	.word	_Label_1786
	.word	-120
	.word	4
	.word	_Label_1787
	.word	-124
	.word	4
	.word	_Label_1788
	.word	-128
	.word	4
	.word	_Label_1789
	.word	-132
	.word	4
	.word	_Label_1790
	.word	-136
	.word	4
	.word	_Label_1791
	.word	-140
	.word	4
	.word	_Label_1792
	.word	-144
	.word	4
	.word	_Label_1793
	.word	-148
	.word	4
	.word	_Label_1794
	.word	-152
	.word	4
	.word	_Label_1795
	.word	-156
	.word	4
	.word	_Label_1796
	.word	-160
	.word	4
	.word	_Label_1797
	.word	-164
	.word	4
	.word	_Label_1798
	.word	-168
	.word	4
	.word	_Label_1799
	.word	-172
	.word	4
	.word	_Label_1800
	.word	-176
	.word	4
	.word	_Label_1801
	.word	-180
	.word	4
	.word	_Label_1802
	.word	-184
	.word	4
	.word	_Label_1803
	.word	-188
	.word	4
	.word	_Label_1804
	.word	-192
	.word	4
	.word	_Label_1805
	.word	-196
	.word	4
	.word	_Label_1806
	.word	-200
	.word	4
	.word	_Label_1807
	.word	-204
	.word	4
	.word	_Label_1808
	.word	-208
	.word	4
	.word	_Label_1809
	.word	-212
	.word	4
	.word	_Label_1810
	.word	-216
	.word	4
	.word	_Label_1811
	.word	-220
	.word	4
	.word	_Label_1812
	.word	-224
	.word	4
	.word	_Label_1813
	.word	-228
	.word	4
	.word	_Label_1814
	.word	-232
	.word	4
	.word	_Label_1815
	.word	-236
	.word	4
	.word	_Label_1816
	.word	-240
	.word	4
	.word	_Label_1817
	.word	-244
	.word	4
	.word	0
_Label_1756:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1757:
	.ascii	"Pself\0"
	.align
_Label_1758:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1816:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1817:
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
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	1036,r13		! source line 1036
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1818 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1819 = _temp_1818 + 1248
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
	mov	1041,r13		! source line 1041
	mov	"\0\0WH",r10
_Label_1820:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1824 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1823 = *_temp_1824  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1823 == 2 then goto _Label_1822		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1822
!	jmp	_Label_1821
_Label_1821:
	mov	1041,r13		! source line 1041
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_1826 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_1827 = _temp_1826 + 1248
	load	[r14+-68],r1
	add	r1,1248,r1
	store	r1,[r14+-64]
!   _temp_1825 = _temp_1827		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_1828 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1829 = _temp_1828 + 1296
	load	[r14+-60],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1825  sizeInBytes=4
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
	jmp	_Label_1820
_Label_1822:
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1830 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: pExitStatus = *_temp_1830  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1831 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1831 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0SE",r10
!   _temp_1832 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1833 = _temp_1832 + 1284
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
	mov	1049,r13		! source line 1049
	mov	"\0\0SE",r10
!   _temp_1835 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1836 = _temp_1835 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1834 = _temp_1836		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1837 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1838 = _temp_1837 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1834  sizeInBytes=4
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
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1839 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1840 = _temp_1839 + 1248
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
	mov	1053,r13		! source line 1053
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
	.word	_Label_1841
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1842
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1843
	.word	12
	.word	4
	.word	_Label_1844
	.word	-12
	.word	4
	.word	_Label_1845
	.word	-16
	.word	4
	.word	_Label_1846
	.word	-20
	.word	4
	.word	_Label_1847
	.word	-24
	.word	4
	.word	_Label_1848
	.word	-28
	.word	4
	.word	_Label_1849
	.word	-32
	.word	4
	.word	_Label_1850
	.word	-36
	.word	4
	.word	_Label_1851
	.word	-40
	.word	4
	.word	_Label_1852
	.word	-44
	.word	4
	.word	_Label_1853
	.word	-48
	.word	4
	.word	_Label_1854
	.word	-52
	.word	4
	.word	_Label_1855
	.word	-56
	.word	4
	.word	_Label_1856
	.word	-60
	.word	4
	.word	_Label_1857
	.word	-64
	.word	4
	.word	_Label_1858
	.word	-68
	.word	4
	.word	_Label_1859
	.word	-72
	.word	4
	.word	_Label_1860
	.word	-76
	.word	4
	.word	_Label_1861
	.word	-80
	.word	4
	.word	_Label_1862
	.word	-84
	.word	4
	.word	_Label_1863
	.word	-88
	.word	4
	.word	_Label_1864
	.word	-92
	.word	4
	.word	0
_Label_1841:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1842:
	.ascii	"Pself\0"
	.align
_Label_1843:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1864:
	.byte	'I'
	.ascii	"pExitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1865
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1865:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1866
	.word	_sourceFileName
	.word	259		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1866:
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	1113,r13		! source line 1113
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1867 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1120,r13		! source line 1120
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
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_1869 = &framesInUse
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
	mov	1122,r13		! source line 1122
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1123,r13		! source line 1123
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
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1871 = &frameManagerLock
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
	mov	1125,r13		! source line 1125
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
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_1873 = &newFramesAvailable
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
	mov	1132,r13		! source line 1132
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1878 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1879 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1878  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1874:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1879 then goto _Label_1877		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1877
_Label_1875:
	mov	1132,r13		! source line 1132
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1882 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1882) then goto _Label_1881
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1881
!	jmp	_Label_1880
_Label_1880:
! THEN...
	mov	1136,r13		! source line 1136
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1883 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1136,r13		! source line 1136
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1881:
!   Increment the FOR-LOOP index variable and jump back
_Label_1876:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1874
! END FOR
_Label_1877:
! RETURN STATEMENT...
	mov	1132,r13		! source line 1132
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
	.word	_Label_1884
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1886
	.word	-12
	.word	4
	.word	_Label_1887
	.word	-16
	.word	4
	.word	_Label_1888
	.word	-20
	.word	4
	.word	_Label_1889
	.word	-24
	.word	4
	.word	_Label_1890
	.word	-28
	.word	4
	.word	_Label_1891
	.word	-32
	.word	4
	.word	_Label_1892
	.word	-36
	.word	4
	.word	_Label_1893
	.word	-40
	.word	4
	.word	_Label_1894
	.word	-44
	.word	4
	.word	_Label_1895
	.word	-48
	.word	4
	.word	_Label_1896
	.word	-52
	.word	4
	.word	_Label_1897
	.word	-56
	.word	4
	.word	0
_Label_1884:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1885:
	.ascii	"Pself\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1897:
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	1143,r13		! source line 1143
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0SE",r10
!   _temp_1898 = &frameManagerLock
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
!   _temp_1899 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1899  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1148,r13		! source line 1148
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1900 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1900  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1149,r13		! source line 1149
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1901 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1901  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1150,r13		! source line 1150
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_1902 = &framesInUse
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
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1903 = &frameManagerLock
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
	mov	1152,r13		! source line 1152
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
	.word	_Label_1904
	.word	4		! total size of parameters
	.word	32		! frame size = 32
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
	.word	0
_Label_1904:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_1900\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1898\0"
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	1157,r13		! source line 1157
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_1912 = &frameManagerLock
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
	mov	1168,r13		! source line 1168
	mov	"\0\0WH",r10
_Label_1913:
!   if numberFreeFrames >= 1 then goto _Label_1915		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1915
!	jmp	_Label_1914
_Label_1914:
	mov	1168,r13		! source line 1168
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0SE",r10
!   _temp_1916 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1917 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1916  sizeInBytes=4
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
	jmp	_Label_1913
_Label_1915:
! ASSIGNMENT STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0AS",r10
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_1918 = &framesInUse
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
	mov	1174,r13		! source line 1174
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
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   _temp_1919 = &frameManagerLock
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
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   _temp_1920 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1920		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1182,r13		! source line 1182
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
	.word	_Label_1921
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1923
	.word	-12
	.word	4
	.word	_Label_1924
	.word	-16
	.word	4
	.word	_Label_1925
	.word	-20
	.word	4
	.word	_Label_1926
	.word	-24
	.word	4
	.word	_Label_1927
	.word	-28
	.word	4
	.word	_Label_1928
	.word	-32
	.word	4
	.word	_Label_1929
	.word	-36
	.word	4
	.word	_Label_1930
	.word	-40
	.word	4
	.word	0
_Label_1921:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1922:
	.ascii	"Pself\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1929:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1930:
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	1187,r13		! source line 1187
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0SE",r10
!   _temp_1931 = &frameManagerLock
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
	mov	1197,r13		! source line 1197
	mov	"\0\0WH",r10
_Label_1932:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1934		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1934
!	jmp	_Label_1933
_Label_1933:
	mov	1197,r13		! source line 1197
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   _temp_1935 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1936 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1935  sizeInBytes=4
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
	jmp	_Label_1932
_Label_1934:
! FOR STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1941 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1942 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1941  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1937:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1942 then goto _Label_1940		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1940
_Label_1938:
	mov	1202,r13		! source line 1202
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0AS",r10
	mov	1204,r13		! source line 1204
	mov	"\0\0SE",r10
!   _temp_1943 = &framesInUse
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
	mov	1207,r13		! source line 1207
	mov	"\0\0AS",r10
!   _temp_1944 = freeFrameIdx * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   freeFrameAddr = 1048576 + _temp_1944		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1210,r13		! source line 1210
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
_Label_1939:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1937
! END FOR
_Label_1940:
! ASSIGNMENT STATEMENT...
	mov	1214,r13		! source line 1214
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
	mov	1216,r13		! source line 1216
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1945 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1945 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
!   _temp_1946 = &frameManagerLock
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
	mov	1217,r13		! source line 1217
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
	.word	_Label_1947
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1949
	.word	12
	.word	4
	.word	_Label_1950
	.word	16
	.word	4
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
	.word	_Label_1959
	.word	-44
	.word	4
	.word	_Label_1960
	.word	-48
	.word	4
	.word	_Label_1961
	.word	-52
	.word	4
	.word	_Label_1962
	.word	-56
	.word	4
	.word	0
_Label_1947:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1948:
	.ascii	"Pself\0"
	.align
_Label_1949:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1950:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1960:
	.byte	'I'
	.ascii	"freeFrameIdx\0"
	.align
_Label_1961:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1962:
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	1224,r13		! source line 1224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
!   _temp_1963 = &frameManagerLock
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
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1964 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1964  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1969 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1970 = numFramesReturned - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1969  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-60]
_Label_1965:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1970 then goto _Label_1968		
	load	[r14+-60],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1968
_Label_1966:
	mov	1234,r13		! source line 1234
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0AS",r10
	mov	1235,r13		! source line 1235
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
	mov	1236,r13		! source line 1236
	mov	"\0\0AS",r10
!   _temp_1971 = returnFrameAddr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   returnFrameIdx = _temp_1971 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0SE",r10
!   _temp_1972 = &framesInUse
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
_Label_1967:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1965
! END FOR
_Label_1968:
! SEND STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
!   _temp_1973 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1974 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1973  sizeInBytes=4
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
	mov	1242,r13		! source line 1242
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
	mov	1243,r13		! source line 1243
	mov	"\0\0SE",r10
!   _temp_1975 = &frameManagerLock
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
	mov	1243,r13		! source line 1243
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
	.word	_Label_1976
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1977
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1978
	.word	12
	.word	4
	.word	_Label_1979
	.word	-12
	.word	4
	.word	_Label_1980
	.word	-16
	.word	4
	.word	_Label_1981
	.word	-20
	.word	4
	.word	_Label_1982
	.word	-24
	.word	4
	.word	_Label_1983
	.word	-28
	.word	4
	.word	_Label_1984
	.word	-32
	.word	4
	.word	_Label_1985
	.word	-36
	.word	4
	.word	_Label_1986
	.word	-40
	.word	4
	.word	_Label_1987
	.word	-44
	.word	4
	.word	_Label_1988
	.word	-48
	.word	4
	.word	_Label_1989
	.word	-52
	.word	4
	.word	_Label_1990
	.word	-56
	.word	4
	.word	_Label_1991
	.word	-60
	.word	4
	.word	0
_Label_1976:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1977:
	.ascii	"Pself\0"
	.align
_Label_1978:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1988:
	.byte	'I'
	.ascii	"returnFrameIdx\0"
	.align
_Label_1989:
	.byte	'I'
	.ascii	"returnFrameAddr\0"
	.align
_Label_1990:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1991:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1992
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
_Label_1992:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1993
	.word	_sourceFileName
	.word	278		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1993:
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0AS",r10
!   _temp_1994 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1996 = &_temp_1995
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1996 = _temp_1996 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1998:
!   Data Move: *_temp_1996 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1996 = _temp_1996 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1997 = _temp_1997 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1997) then goto _Label_1998
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1998
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1999 = &_temp_1995
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3438
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3438:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1994 = *_temp_1999  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3439:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3439
! RETURN STATEMENT...
	mov	1261,r13		! source line 1261
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
	.word	_Label_2000
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2001
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2002
	.word	-12
	.word	4
	.word	_Label_2003
	.word	-16
	.word	4
	.word	_Label_2004
	.word	-20
	.word	4
	.word	_Label_2005
	.word	-104
	.word	84
	.word	_Label_2006
	.word	-108
	.word	4
	.word	0
_Label_2000:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2001:
	.ascii	"Pself\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1994\0"
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	1266,r13		! source line 1266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2007 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2007  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2008 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2008  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2013 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2014 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2013  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2009:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2014 then goto _Label_2012		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2012
_Label_2010:
	mov	1273,r13		! source line 1273
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2015 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2017 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2017 [i ] into _temp_2018
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
!   _temp_2016 = _temp_2018		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2019 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2019  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2021 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2021 [i ] into _temp_2022
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
!   Data Move: _temp_2020 = *_temp_2022  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2020  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2023 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2023  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2024 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2024  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2025 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2025  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2027) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2026  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2028 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2028  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0IF",r10
	mov	1283,r13		! source line 1283
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2032) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2031  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2031) then goto _Label_2030
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2030
!	jmp	_Label_2029
_Label_2029:
! THEN...
	mov	1284,r13		! source line 1284
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2034) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2033  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2033  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2035
_Label_2030:
! ELSE...
	mov	1286,r13		! source line 1286
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2036 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2036  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2035:
! CALL STATEMENT...
!   _temp_2037 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2037  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0IF",r10
	mov	1289,r13		! source line 1289
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2040) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2038 else goto _Label_2039
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2039
	jmp	_Label_2038
_Label_2038:
! THEN...
	mov	1290,r13		! source line 1290
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2041 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2041  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1290,r13		! source line 1290
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2042
_Label_2039:
! ELSE...
	mov	1292,r13		! source line 1292
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2043 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2043  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2042:
! CALL STATEMENT...
!   _temp_2044 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2044  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0IF",r10
	mov	1295,r13		! source line 1295
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2047) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2045 else goto _Label_2046
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2046
	jmp	_Label_2045
_Label_2045:
! THEN...
	mov	1296,r13		! source line 1296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2048 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2048  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2049
_Label_2046:
! ELSE...
	mov	1298,r13		! source line 1298
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2050 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2050  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2049:
! CALL STATEMENT...
!   _temp_2051 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2051  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0IF",r10
	mov	1301,r13		! source line 1301
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2054) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2052 else goto _Label_2053
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2053
	jmp	_Label_2052
_Label_2052:
! THEN...
	mov	1302,r13		! source line 1302
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2055 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1302,r13		! source line 1302
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2056
_Label_2053:
! ELSE...
	mov	1304,r13		! source line 1304
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2057 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1304,r13		! source line 1304
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2056:
! CALL STATEMENT...
!   _temp_2058 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1306,r13		! source line 1306
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0IF",r10
	mov	1307,r13		! source line 1307
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2061) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2059 else goto _Label_2060
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2060
	jmp	_Label_2059
_Label_2059:
! THEN...
	mov	1308,r13		! source line 1308
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2062 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2062  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1308,r13		! source line 1308
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2063
_Label_2060:
! ELSE...
	mov	1310,r13		! source line 1310
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2064 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2064  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1310,r13		! source line 1310
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2063:
! CALL STATEMENT...
!   Call the function
	mov	1312,r13		! source line 1312
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2011:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2009
! END FOR
_Label_2012:
! RETURN STATEMENT...
	mov	1273,r13		! source line 1273
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
	.word	_Label_2065
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2067
	.word	-12
	.word	4
	.word	_Label_2068
	.word	-16
	.word	4
	.word	_Label_2069
	.word	-20
	.word	4
	.word	_Label_2070
	.word	-24
	.word	4
	.word	_Label_2071
	.word	-28
	.word	4
	.word	_Label_2072
	.word	-32
	.word	4
	.word	_Label_2073
	.word	-36
	.word	4
	.word	_Label_2074
	.word	-40
	.word	4
	.word	_Label_2075
	.word	-44
	.word	4
	.word	_Label_2076
	.word	-48
	.word	4
	.word	_Label_2077
	.word	-52
	.word	4
	.word	_Label_2078
	.word	-56
	.word	4
	.word	_Label_2079
	.word	-60
	.word	4
	.word	_Label_2080
	.word	-64
	.word	4
	.word	_Label_2081
	.word	-68
	.word	4
	.word	_Label_2082
	.word	-72
	.word	4
	.word	_Label_2083
	.word	-76
	.word	4
	.word	_Label_2084
	.word	-80
	.word	4
	.word	_Label_2085
	.word	-84
	.word	4
	.word	_Label_2086
	.word	-88
	.word	4
	.word	_Label_2087
	.word	-92
	.word	4
	.word	_Label_2088
	.word	-96
	.word	4
	.word	_Label_2089
	.word	-100
	.word	4
	.word	_Label_2090
	.word	-104
	.word	4
	.word	_Label_2091
	.word	-108
	.word	4
	.word	_Label_2092
	.word	-112
	.word	4
	.word	_Label_2093
	.word	-116
	.word	4
	.word	_Label_2094
	.word	-120
	.word	4
	.word	_Label_2095
	.word	-124
	.word	4
	.word	_Label_2096
	.word	-128
	.word	4
	.word	_Label_2097
	.word	-132
	.word	4
	.word	_Label_2098
	.word	-136
	.word	4
	.word	_Label_2099
	.word	-140
	.word	4
	.word	_Label_2100
	.word	-144
	.word	4
	.word	_Label_2101
	.word	-148
	.word	4
	.word	_Label_2102
	.word	-152
	.word	4
	.word	_Label_2103
	.word	-156
	.word	4
	.word	_Label_2104
	.word	-160
	.word	4
	.word	_Label_2105
	.word	-164
	.word	4
	.word	_Label_2106
	.word	-168
	.word	4
	.word	0
_Label_2065:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2066:
	.ascii	"Pself\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2106:
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	1318,r13		! source line 1318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0RE",r10
!   _temp_2109 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2109 [entry ] into _temp_2110
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
!   Data Move: _temp_2108 = *_temp_2110  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2107 = _temp_2108 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2107  (sizeInBytes=4)
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
	.word	_Label_2111
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2113
	.word	12
	.word	4
	.word	_Label_2114
	.word	-12
	.word	4
	.word	_Label_2115
	.word	-16
	.word	4
	.word	_Label_2116
	.word	-20
	.word	4
	.word	_Label_2117
	.word	-24
	.word	4
	.word	0
_Label_2111:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2112:
	.ascii	"Pself\0"
	.align
_Label_2113:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2107\0"
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0RE",r10
!   _temp_2120 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2120 [entry ] into _temp_2121
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
!   Data Move: _temp_2119 = *_temp_2121  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2118 = _temp_2119 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2118  (sizeInBytes=4)
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
	.word	_Label_2122
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2123
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2124
	.word	12
	.word	4
	.word	_Label_2125
	.word	-12
	.word	4
	.word	_Label_2126
	.word	-16
	.word	4
	.word	_Label_2127
	.word	-20
	.word	4
	.word	_Label_2128
	.word	-24
	.word	4
	.word	0
_Label_2122:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2123:
	.ascii	"Pself\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2118\0"
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	1337,r13		! source line 1337
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0AS",r10
!   _temp_2129 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2129 [entry ] into _temp_2130
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
!   _temp_2134 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2134 [entry ] into _temp_2135
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
!   Data Move: _temp_2133 = *_temp_2135  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2132 = _temp_2133 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2131 = _temp_2132 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2130 = _temp_2131  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1342,r13		! source line 1342
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
	.word	_Label_2136
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2137
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2138
	.word	12
	.word	4
	.word	_Label_2139
	.word	16
	.word	4
	.word	_Label_2140
	.word	-12
	.word	4
	.word	_Label_2141
	.word	-16
	.word	4
	.word	_Label_2142
	.word	-20
	.word	4
	.word	_Label_2143
	.word	-24
	.word	4
	.word	_Label_2144
	.word	-28
	.word	4
	.word	_Label_2145
	.word	-32
	.word	4
	.word	_Label_2146
	.word	-36
	.word	4
	.word	0
_Label_2136:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2137:
	.ascii	"Pself\0"
	.align
_Label_2138:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2139:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2129\0"
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	1347,r13		! source line 1347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0RE",r10
!   _temp_2150 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2150 [entry ] into _temp_2151
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
!   Data Move: _temp_2149 = *_temp_2151  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2148 = _temp_2149 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2148) then goto _Label_2152
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2152
!   _temp_2147 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2153
_Label_2152:
!   _temp_2147 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2153:
!   ReturnResult: _temp_2147  (sizeInBytes=1)
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
	.word	_Label_2154
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2156
	.word	12
	.word	4
	.word	_Label_2157
	.word	-16
	.word	4
	.word	_Label_2158
	.word	-20
	.word	4
	.word	_Label_2159
	.word	-24
	.word	4
	.word	_Label_2160
	.word	-28
	.word	4
	.word	_Label_2161
	.word	-9
	.word	1
	.word	0
_Label_2154:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2155:
	.ascii	"Pself\0"
	.align
_Label_2156:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2161:
	.byte	'C'
	.ascii	"_temp_2147\0"
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	1356,r13		! source line 1356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0RE",r10
!   _temp_2165 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2165 [entry ] into _temp_2166
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
!   Data Move: _temp_2164 = *_temp_2166  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2163 = _temp_2164 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2163) then goto _Label_2167
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2167
!   _temp_2162 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2168
_Label_2167:
!   _temp_2162 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2168:
!   ReturnResult: _temp_2162  (sizeInBytes=1)
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
	.word	_Label_2169
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2171
	.word	12
	.word	4
	.word	_Label_2172
	.word	-16
	.word	4
	.word	_Label_2173
	.word	-20
	.word	4
	.word	_Label_2174
	.word	-24
	.word	4
	.word	_Label_2175
	.word	-28
	.word	4
	.word	_Label_2176
	.word	-9
	.word	1
	.word	0
_Label_2169:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2170:
	.ascii	"Pself\0"
	.align
_Label_2171:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2176:
	.byte	'C'
	.ascii	"_temp_2162\0"
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
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	1365,r13		! source line 1365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0RE",r10
!   _temp_2180 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2180 [entry ] into _temp_2181
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
!   Data Move: _temp_2179 = *_temp_2181  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2178 = _temp_2179 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2178) then goto _Label_2182
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2182
!   _temp_2177 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2183
_Label_2182:
!   _temp_2177 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2183:
!   ReturnResult: _temp_2177  (sizeInBytes=1)
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
	.word	_Label_2184
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2186
	.word	12
	.word	4
	.word	_Label_2187
	.word	-16
	.word	4
	.word	_Label_2188
	.word	-20
	.word	4
	.word	_Label_2189
	.word	-24
	.word	4
	.word	_Label_2190
	.word	-28
	.word	4
	.word	_Label_2191
	.word	-9
	.word	1
	.word	0
_Label_2184:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2185:
	.ascii	"Pself\0"
	.align
_Label_2186:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2191:
	.byte	'C'
	.ascii	"_temp_2177\0"
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	1374,r13		! source line 1374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0RE",r10
!   _temp_2195 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2195 [entry ] into _temp_2196
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
!   Data Move: _temp_2194 = *_temp_2196  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2193 = _temp_2194 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2193) then goto _Label_2197
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2197
!   _temp_2192 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2198
_Label_2197:
!   _temp_2192 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2198:
!   ReturnResult: _temp_2192  (sizeInBytes=1)
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
	.word	_Label_2199
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2200
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2201
	.word	12
	.word	4
	.word	_Label_2202
	.word	-16
	.word	4
	.word	_Label_2203
	.word	-20
	.word	4
	.word	_Label_2204
	.word	-24
	.word	4
	.word	_Label_2205
	.word	-28
	.word	4
	.word	_Label_2206
	.word	-9
	.word	1
	.word	0
_Label_2199:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2200:
	.ascii	"Pself\0"
	.align
_Label_2201:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2192\0"
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	1383,r13		! source line 1383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   _temp_2207 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2207 [entry ] into _temp_2208
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
!   _temp_2211 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2211 [entry ] into _temp_2212
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
!   Data Move: _temp_2210 = *_temp_2212  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2209 = _temp_2210 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2208 = _temp_2209  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2213
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2214
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2215
	.word	12
	.word	4
	.word	_Label_2216
	.word	-12
	.word	4
	.word	_Label_2217
	.word	-16
	.word	4
	.word	_Label_2218
	.word	-20
	.word	4
	.word	_Label_2219
	.word	-24
	.word	4
	.word	_Label_2220
	.word	-28
	.word	4
	.word	_Label_2221
	.word	-32
	.word	4
	.word	0
_Label_2213:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2214:
	.ascii	"Pself\0"
	.align
_Label_2215:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2207\0"
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	1392,r13		! source line 1392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   _temp_2222 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2222 [entry ] into _temp_2223
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
!   _temp_2226 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2226 [entry ] into _temp_2227
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
!   Data Move: _temp_2225 = *_temp_2227  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2224 = _temp_2225 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2223 = _temp_2224  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2228
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2229
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2230
	.word	12
	.word	4
	.word	_Label_2231
	.word	-12
	.word	4
	.word	_Label_2232
	.word	-16
	.word	4
	.word	_Label_2233
	.word	-20
	.word	4
	.word	_Label_2234
	.word	-24
	.word	4
	.word	_Label_2235
	.word	-28
	.word	4
	.word	_Label_2236
	.word	-32
	.word	4
	.word	0
_Label_2228:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2229:
	.ascii	"Pself\0"
	.align
_Label_2230:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2222\0"
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	1401,r13		! source line 1401
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0AS",r10
!   _temp_2237 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2237 [entry ] into _temp_2238
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
!   _temp_2241 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2241 [entry ] into _temp_2242
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
!   Data Move: _temp_2240 = *_temp_2242  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2239 = _temp_2240 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2238 = _temp_2239  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2243
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2244
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2245
	.word	12
	.word	4
	.word	_Label_2246
	.word	-12
	.word	4
	.word	_Label_2247
	.word	-16
	.word	4
	.word	_Label_2248
	.word	-20
	.word	4
	.word	_Label_2249
	.word	-24
	.word	4
	.word	_Label_2250
	.word	-28
	.word	4
	.word	_Label_2251
	.word	-32
	.word	4
	.word	0
_Label_2243:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2244:
	.ascii	"Pself\0"
	.align
_Label_2245:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2237\0"
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	1410,r13		! source line 1410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   _temp_2252 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2252 [entry ] into _temp_2253
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
!   _temp_2256 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2256 [entry ] into _temp_2257
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
!   Data Move: _temp_2255 = *_temp_2257  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2254 = _temp_2255 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2253 = _temp_2254  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1414,r13		! source line 1414
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
	.word	_Label_2258
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2259
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2260
	.word	12
	.word	4
	.word	_Label_2261
	.word	-12
	.word	4
	.word	_Label_2262
	.word	-16
	.word	4
	.word	_Label_2263
	.word	-20
	.word	4
	.word	_Label_2264
	.word	-24
	.word	4
	.word	_Label_2265
	.word	-28
	.word	4
	.word	_Label_2266
	.word	-32
	.word	4
	.word	0
_Label_2258:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2259:
	.ascii	"Pself\0"
	.align
_Label_2260:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2252\0"
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
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	1419,r13		! source line 1419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0AS",r10
!   _temp_2267 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2267 [entry ] into _temp_2268
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
!   _temp_2271 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2271 [entry ] into _temp_2272
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
!   Data Move: _temp_2270 = *_temp_2272  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2269 = _temp_2270 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2268 = _temp_2269  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1423,r13		! source line 1423
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
	.word	_Label_2273
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2274
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2275
	.word	12
	.word	4
	.word	_Label_2276
	.word	-12
	.word	4
	.word	_Label_2277
	.word	-16
	.word	4
	.word	_Label_2278
	.word	-20
	.word	4
	.word	_Label_2279
	.word	-24
	.word	4
	.word	_Label_2280
	.word	-28
	.word	4
	.word	_Label_2281
	.word	-32
	.word	4
	.word	0
_Label_2273:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2274:
	.ascii	"Pself\0"
	.align
_Label_2275:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2267\0"
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	1428,r13		! source line 1428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0AS",r10
!   _temp_2282 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2282 [entry ] into _temp_2283
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
!   _temp_2286 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2286 [entry ] into _temp_2287
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
!   Data Move: _temp_2285 = *_temp_2287  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2284 = _temp_2285 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2283 = _temp_2284  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
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
	.word	_Label_2288
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2289
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2290
	.word	12
	.word	4
	.word	_Label_2291
	.word	-12
	.word	4
	.word	_Label_2292
	.word	-16
	.word	4
	.word	_Label_2293
	.word	-20
	.word	4
	.word	_Label_2294
	.word	-24
	.word	4
	.word	_Label_2295
	.word	-28
	.word	4
	.word	_Label_2296
	.word	-32
	.word	4
	.word	0
_Label_2288:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2289:
	.ascii	"Pself\0"
	.align
_Label_2290:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2282\0"
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	1437,r13		! source line 1437
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   _temp_2297 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2297 [entry ] into _temp_2298
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
!   _temp_2301 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2301 [entry ] into _temp_2302
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
!   Data Move: _temp_2300 = *_temp_2302  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2299 = _temp_2300 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2298 = _temp_2299  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1441,r13		! source line 1441
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
	.word	_Label_2303
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.word	0
_Label_2303:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2304:
	.ascii	"Pself\0"
	.align
_Label_2305:
	.byte	'I'
	.ascii	"entry\0"
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	1446,r13		! source line 1446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   _temp_2312 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2312 [entry ] into _temp_2313
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
!   _temp_2316 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2316 [entry ] into _temp_2317
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
!   Data Move: _temp_2315 = *_temp_2317  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2314 = _temp_2315 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2313 = _temp_2314  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1450,r13		! source line 1450
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
	.word	_Label_2318
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.word	0
_Label_2318:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2319:
	.ascii	"Pself\0"
	.align
_Label_2320:
	.byte	'I'
	.ascii	"entry\0"
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
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	1455,r13		! source line 1455
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2328 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2328 [0 ] into _temp_2329
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
!   _temp_2327 = _temp_2329		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2330 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1461,r13		! source line 1461
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1461,r13		! source line 1461
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
	.word	_Label_2331
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2332
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2333
	.word	-12
	.word	4
	.word	_Label_2334
	.word	-16
	.word	4
	.word	_Label_2335
	.word	-20
	.word	4
	.word	_Label_2336
	.word	-24
	.word	4
	.word	0
_Label_2331:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2332:
	.ascii	"Pself\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2327\0"
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
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	1466,r13		! source line 1466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2337
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2337
	jmp	_Label_2338
_Label_2337:
! THEN...
	mov	1482,r13		! source line 1482
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2339
_Label_2338:
! ELSE...
	mov	1483,r13		! source line 1483
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2341		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2341
!	jmp	_Label_2340
_Label_2340:
! THEN...
	mov	1484,r13		! source line 1484
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2341:
! END IF...
_Label_2339:
! ASSIGNMENT STATEMENT...
	mov	1486,r13		! source line 1486
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
	mov	1487,r13		! source line 1487
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
	mov	1490,r13		! source line 1490
	mov	"\0\0WH",r10
_Label_2342:
!	jmp	_Label_2343
_Label_2343:
	mov	1490,r13		! source line 1490
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2346		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2346
!	jmp	_Label_2345
_Label_2345:
! THEN...
	mov	1492,r13		! source line 1492
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2347 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2347  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1492,r13		! source line 1492
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2346:
! IF STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0IF",r10
	mov	1495,r13		! source line 1495
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2351) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2350  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2350 then goto _Label_2349 else goto _Label_2348
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2348
	jmp	_Label_2349
_Label_2348:
! THEN...
	mov	1496,r13		! source line 1496
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2352 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2352  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1496,r13		! source line 1496
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1497,r13		! source line 1497
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
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
	mov	1499,r13		! source line 1499
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2354) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2353  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2353 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0WH",r10
_Label_2355:
!   if offset >= 8192 then goto _Label_2357		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2357
!	jmp	_Label_2356
_Label_2356:
	mov	1501,r13		! source line 1501
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2358 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2358  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2360		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2360
!	jmp	_Label_2359
_Label_2359:
! THEN...
	mov	1510,r13		! source line 1510
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2360:
! END WHILE...
	jmp	_Label_2355
_Label_2357:
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2342
_Label_2344:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2361
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2363
	.word	12
	.word	4
	.word	_Label_2364
	.word	16
	.word	4
	.word	_Label_2365
	.word	20
	.word	4
	.word	_Label_2366
	.word	-9
	.word	1
	.word	_Label_2367
	.word	-16
	.word	4
	.word	_Label_2368
	.word	-20
	.word	4
	.word	_Label_2369
	.word	-24
	.word	4
	.word	_Label_2370
	.word	-28
	.word	4
	.word	_Label_2371
	.word	-10
	.word	1
	.word	_Label_2372
	.word	-32
	.word	4
	.word	_Label_2373
	.word	-36
	.word	4
	.word	_Label_2374
	.word	-40
	.word	4
	.word	_Label_2375
	.word	-44
	.word	4
	.word	_Label_2376
	.word	-48
	.word	4
	.word	0
_Label_2361:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2362:
	.ascii	"Pself\0"
	.align
_Label_2363:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2364:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2365:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2366:
	.byte	'C'
	.ascii	"_temp_2358\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2371:
	.byte	'C'
	.ascii	"_temp_2350\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2373:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2374:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2375:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2376:
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	1520,r13		! source line 1520
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2377
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2377
	jmp	_Label_2378
_Label_2377:
! THEN...
	mov	1532,r13		! source line 1532
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2379
_Label_2378:
! ELSE...
	mov	1533,r13		! source line 1533
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2381		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2381
!	jmp	_Label_2380
_Label_2380:
! THEN...
	mov	1534,r13		! source line 1534
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2381:
! END IF...
_Label_2379:
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
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
	mov	1537,r13		! source line 1537
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
	mov	1538,r13		! source line 1538
	mov	"\0\0WH",r10
_Label_2382:
!	jmp	_Label_2383
_Label_2383:
	mov	1538,r13		! source line 1538
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2388		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2388
	jmp	_Label_2385
_Label_2388:
	mov	1540,r13		! source line 1540
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2390) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2389  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2389 then goto _Label_2387 else goto _Label_2385
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2385
	jmp	_Label_2387
_Label_2387:
	mov	1541,r13		! source line 1541
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2392) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2391  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2391 then goto _Label_2386 else goto _Label_2385
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2385
	jmp	_Label_2386
_Label_2385:
! THEN...
	mov	1542,r13		! source line 1542
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2386:
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0AS",r10
	mov	1544,r13		! source line 1544
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2394) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2393  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2393 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0WH",r10
_Label_2395:
!   if offset >= 8192 then goto _Label_2397		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2397
!	jmp	_Label_2396
_Label_2396:
	mov	1545,r13		! source line 1545
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2398 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2398  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2400		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2400
!	jmp	_Label_2399
_Label_2399:
! THEN...
	mov	1552,r13		! source line 1552
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2400:
! END WHILE...
	jmp	_Label_2395
_Label_2397:
! ASSIGNMENT STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2382
_Label_2384:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2401
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2403
	.word	12
	.word	4
	.word	_Label_2404
	.word	16
	.word	4
	.word	_Label_2405
	.word	20
	.word	4
	.word	_Label_2406
	.word	-9
	.word	1
	.word	_Label_2407
	.word	-16
	.word	4
	.word	_Label_2408
	.word	-20
	.word	4
	.word	_Label_2409
	.word	-24
	.word	4
	.word	_Label_2410
	.word	-10
	.word	1
	.word	_Label_2411
	.word	-28
	.word	4
	.word	_Label_2412
	.word	-11
	.word	1
	.word	_Label_2413
	.word	-32
	.word	4
	.word	_Label_2414
	.word	-36
	.word	4
	.word	_Label_2415
	.word	-40
	.word	4
	.word	_Label_2416
	.word	-44
	.word	4
	.word	0
_Label_2401:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2402:
	.ascii	"Pself\0"
	.align
_Label_2403:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2404:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2405:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2406:
	.byte	'C'
	.ascii	"_temp_2398\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2410:
	.byte	'C'
	.ascii	"_temp_2391\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2412:
	.byte	'C'
	.ascii	"_temp_2389\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2414:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2415:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2416:
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
_Label_3459:
	push	r0
	sub	r1,1,r1
	bne	_Label_3459
	mov	1562,r13		! source line 1562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0IF",r10
	mov	1586,r13		! source line 1586
	mov	"\0\0SE",r10
!   _temp_2420 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2421) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2420  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2419  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2419 >= 4 then goto _Label_2418		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2418
!	jmp	_Label_2417
_Label_2417:
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
_Label_2418:
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2423		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2423
!	jmp	_Label_2422
_Label_2422:
! THEN...
	mov	1594,r13		! source line 1594
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2423:
! ASSIGNMENT STATEMENT...
	mov	1597,r13		! source line 1597
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
	mov	1599,r13		! source line 1599
	mov	"\0\0RE",r10
	mov	1599,r13		! source line 1599
	mov	"\0\0SE",r10
!   _temp_2426 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2425 = _temp_2426 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2427 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2428) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2425  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2427  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2424  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2424  (sizeInBytes=4)
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
	.word	_Label_2429
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2430
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2431
	.word	12
	.word	4
	.word	_Label_2432
	.word	16
	.word	4
	.word	_Label_2433
	.word	20
	.word	4
	.word	_Label_2434
	.word	-12
	.word	4
	.word	_Label_2435
	.word	-16
	.word	4
	.word	_Label_2436
	.word	-20
	.word	4
	.word	_Label_2437
	.word	-24
	.word	4
	.word	_Label_2438
	.word	-28
	.word	4
	.word	_Label_2439
	.word	-32
	.word	4
	.word	_Label_2440
	.word	-36
	.word	4
	.word	_Label_2441
	.word	-40
	.word	4
	.word	_Label_2442
	.word	-44
	.word	4
	.word	0
_Label_2429:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2430:
	.ascii	"Pself\0"
	.align
_Label_2431:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2432:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2433:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2442:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2443
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2443:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2444
	.word	_sourceFileName
	.word	311		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2444:
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
_Label_3460:
	push	r0
	sub	r1,1,r1
	bne	_Label_3460
	mov	2182,r13		! source line 2182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2445 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2445  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2183,r13		! source line 2183
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
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
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_2447 = &semUsedInSynchMethods
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
	mov	2192,r13		! source line 2192
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
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_2449 = &diskBusy
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
	mov	2193,r13		! source line 2193
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
	.word	_Label_2450
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2451
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2452
	.word	-12
	.word	4
	.word	_Label_2453
	.word	-16
	.word	4
	.word	_Label_2454
	.word	-20
	.word	4
	.word	_Label_2455
	.word	-24
	.word	4
	.word	_Label_2456
	.word	-28
	.word	4
	.word	0
_Label_2450:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2451:
	.ascii	"Pself\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2445\0"
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
_Label_3461:
	push	r0
	sub	r1,1,r1
	bne	_Label_3461
	mov	2198,r13		! source line 2198
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0SE",r10
!   _temp_2457 = &diskBusy
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
	mov	2212,r13		! source line 2212
	mov	"\0\0WH",r10
_Label_2458:
!	jmp	_Label_2459
_Label_2459:
	mov	2212,r13		! source line 2212
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0SE",r10
!   _temp_2461 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2462) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2461  sizeInBytes=4
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
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   _temp_2463 = &semUsedInSynchMethods
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
	mov	2219,r13		! source line 2219
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2472 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2466
	cmp	r1,2
	be	_Label_2467
	cmp	r1,3
	be	_Label_2468
	cmp	r1,4
	be	_Label_2469
	cmp	r1,5
	be	_Label_2470
	cmp	r1,6
	be	_Label_2471
	jmp	_Label_2464
! CASE 1...
_Label_2466:
! SEND STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0SE",r10
!   _temp_2473 = &diskBusy
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
	mov	2222,r13		! source line 2222
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2467:
! CALL STATEMENT...
!   _temp_2474 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2474  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2224,r13		! source line 2224
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2468:
! CALL STATEMENT...
!   _temp_2475 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2475  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2226,r13		! source line 2226
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2469:
! CALL STATEMENT...
!   _temp_2476 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2476  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2228,r13		! source line 2228
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2470:
! BREAK STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0BR",r10
	jmp	_Label_2465
! CASE 6...
_Label_2471:
! CALL STATEMENT...
!   _temp_2477 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2477  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2234,r13		! source line 2234
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2464:
! CALL STATEMENT...
!   _temp_2478 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2478  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2236,r13		! source line 2236
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2465:
! END WHILE...
	jmp	_Label_2458
_Label_2460:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2479
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2480
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2481
	.word	12
	.word	4
	.word	_Label_2482
	.word	16
	.word	4
	.word	_Label_2483
	.word	20
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
	.word	_Label_2491
	.word	-40
	.word	4
	.word	_Label_2492
	.word	-44
	.word	4
	.word	_Label_2493
	.word	-48
	.word	4
	.word	_Label_2494
	.word	-52
	.word	4
	.word	0
_Label_2479:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2480:
	.ascii	"Pself\0"
	.align
_Label_2481:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2482:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2483:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2457\0"
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
	mov	2245,r13		! source line 2245
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
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
	mov	2264,r13		! source line 2264
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
	mov	2265,r13		! source line 2265
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
	mov	2266,r13		! source line 2266
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
	mov	2266,r13		! source line 2266
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
	.word	_Label_2495
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2497
	.word	12
	.word	4
	.word	_Label_2498
	.word	16
	.word	4
	.word	_Label_2499
	.word	20
	.word	4
	.word	_Label_2500
	.word	24
	.word	4
	.word	0
_Label_2495:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2496:
	.ascii	"Pself\0"
	.align
_Label_2497:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2498:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2499:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2500:
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
_Label_3462:
	push	r0
	sub	r1,1,r1
	bne	_Label_3462
	mov	2271,r13		! source line 2271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2501 = &diskBusy
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
	mov	2284,r13		! source line 2284
	mov	"\0\0WH",r10
_Label_2502:
!	jmp	_Label_2503
_Label_2503:
	mov	2284,r13		! source line 2284
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   _temp_2505 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2506) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2505  sizeInBytes=4
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
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_2507 = &semUsedInSynchMethods
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
	mov	2290,r13		! source line 2290
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2516 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2510
	cmp	r1,2
	be	_Label_2511
	cmp	r1,3
	be	_Label_2512
	cmp	r1,4
	be	_Label_2513
	cmp	r1,5
	be	_Label_2514
	cmp	r1,6
	be	_Label_2515
	jmp	_Label_2508
! CASE 1...
_Label_2510:
! SEND STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_2517 = &diskBusy
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
	mov	2293,r13		! source line 2293
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2511:
! CALL STATEMENT...
!   _temp_2518 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2518  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2295,r13		! source line 2295
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2512:
! CALL STATEMENT...
!   _temp_2519 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2519  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2297,r13		! source line 2297
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2513:
! CALL STATEMENT...
!   _temp_2520 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2520  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2299,r13		! source line 2299
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2514:
! BREAK STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0BR",r10
	jmp	_Label_2509
! CASE 6...
_Label_2515:
! CALL STATEMENT...
!   _temp_2521 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2521  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2305,r13		! source line 2305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2508:
! CALL STATEMENT...
!   _temp_2522 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2307,r13		! source line 2307
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2509:
! END WHILE...
	jmp	_Label_2502
_Label_2504:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2523
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2525
	.word	12
	.word	4
	.word	_Label_2526
	.word	16
	.word	4
	.word	_Label_2527
	.word	20
	.word	4
	.word	_Label_2528
	.word	-12
	.word	4
	.word	_Label_2529
	.word	-16
	.word	4
	.word	_Label_2530
	.word	-20
	.word	4
	.word	_Label_2531
	.word	-24
	.word	4
	.word	_Label_2532
	.word	-28
	.word	4
	.word	_Label_2533
	.word	-32
	.word	4
	.word	_Label_2534
	.word	-36
	.word	4
	.word	_Label_2535
	.word	-40
	.word	4
	.word	_Label_2536
	.word	-44
	.word	4
	.word	_Label_2537
	.word	-48
	.word	4
	.word	_Label_2538
	.word	-52
	.word	4
	.word	0
_Label_2523:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2524:
	.ascii	"Pself\0"
	.align
_Label_2525:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2526:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2527:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2501\0"
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
	mov	2316,r13		! source line 2316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
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
	mov	2334,r13		! source line 2334
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
	mov	2335,r13		! source line 2335
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
	mov	2336,r13		! source line 2336
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
	mov	2336,r13		! source line 2336
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
	.word	_Label_2539
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2541
	.word	12
	.word	4
	.word	_Label_2542
	.word	16
	.word	4
	.word	_Label_2543
	.word	20
	.word	4
	.word	_Label_2544
	.word	24
	.word	4
	.word	0
_Label_2539:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2540:
	.ascii	"Pself\0"
	.align
_Label_2541:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2542:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2543:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2544:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2545
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
_Label_2545:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2546
	.word	_sourceFileName
	.word	334		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2546:
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	2347,r13		! source line 2347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2547 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2547  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2354,r13		! source line 2354
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
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
	mov	2356,r13		! source line 2356
	mov	"\0\0SE",r10
!   _temp_2549 = &fileManagerLock
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
	mov	2359,r13		! source line 2359
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
	mov	2360,r13		! source line 2360
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
	mov	2361,r13		! source line 2361
	mov	"\0\0SE",r10
!   _temp_2552 = &anFCBBecameFree
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
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   _temp_2553 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2555 = &_temp_2554
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2555 = _temp_2555 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2557 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3464:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3464
!   _temp_2557 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2559:
!   Data Move: *_temp_2555 = _temp_2557  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3465:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3465
!   _temp_2555 = _temp_2555 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2556 = _temp_2556 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2556) then goto _Label_2559
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2559
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2560 = &_temp_2554
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3466
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3466:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2553 = *_temp_2560  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3467:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3467
! FOR STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2565 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2566 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2565  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2561:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2566 then goto _Label_2564		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2564
_Label_2562:
	mov	2364,r13		! source line 2364
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   _temp_2567 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2567 [i ] into _temp_2568
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
!   _temp_2569 = _temp_2568 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2569 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0SE",r10
!   _temp_2570 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2570 [i ] into _temp_2571
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
	mov	2367,r13		! source line 2367
	mov	"\0\0SE",r10
!   _temp_2573 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2573 [i ] into _temp_2574
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
!   _temp_2572 = _temp_2574		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2575 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2572  sizeInBytes=4
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
_Label_2563:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2561
! END FOR
_Label_2564:
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
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
	mov	2372,r13		! source line 2372
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
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   _temp_2578 = &anOpenFileBecameFree
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
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   _temp_2579 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2581 = &_temp_2580
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2581 = _temp_2581 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2583 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3468:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3468
!   _temp_2583 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2585:
!   Data Move: *_temp_2581 = _temp_2583  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3469:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3469
!   _temp_2581 = _temp_2581 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2582 = _temp_2582 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2582) then goto _Label_2585
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2585
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2586 = &_temp_2580
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3470
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3470:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2579 = *_temp_2586  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3471:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3471
! FOR STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2591 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2592 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2591  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2587:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2592 then goto _Label_2590		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2590
_Label_2588:
	mov	2376,r13		! source line 2376
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   _temp_2593 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2593 [i ] into _temp_2594
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
!   _temp_2595 = _temp_2594 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2595 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_2597 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2597 [i ] into _temp_2598
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
!   _temp_2596 = _temp_2598		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2599 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2596  sizeInBytes=4
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
_Label_2589:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2587
! END FOR
_Label_2590:
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3472:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3472
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   _temp_2601 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2602 = _temp_2601 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2602 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
	mov	2388,r13		! source line 2388
	mov	"\0\0SE",r10
!   _temp_2603 = &_P_Kernel_frameManager
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
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   _temp_2604 = &_P_Kernel_diskDriver
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
	mov	2389,r13		! source line 2389
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
	.word	_Label_2605
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2607
	.word	-12
	.word	4
	.word	_Label_2608
	.word	-16
	.word	4
	.word	_Label_2609
	.word	-20
	.word	4
	.word	_Label_2610
	.word	-24
	.word	4
	.word	_Label_2611
	.word	-28
	.word	4
	.word	_Label_2612
	.word	-32
	.word	4
	.word	_Label_2613
	.word	-36
	.word	4
	.word	_Label_2614
	.word	-40
	.word	4
	.word	_Label_2615
	.word	-44
	.word	4
	.word	_Label_2616
	.word	-48
	.word	4
	.word	_Label_2617
	.word	-52
	.word	4
	.word	_Label_2618
	.word	-56
	.word	4
	.word	_Label_2619
	.word	-60
	.word	4
	.word	_Label_2620
	.word	-64
	.word	4
	.word	_Label_2621
	.word	-68
	.word	4
	.word	_Label_2622
	.word	-72
	.word	4
	.word	_Label_2623
	.word	-100
	.word	28
	.word	_Label_2624
	.word	-104
	.word	4
	.word	_Label_2625
	.word	-108
	.word	4
	.word	_Label_2626
	.word	-392
	.word	284
	.word	_Label_2627
	.word	-396
	.word	4
	.word	_Label_2628
	.word	-400
	.word	4
	.word	_Label_2629
	.word	-404
	.word	4
	.word	_Label_2630
	.word	-408
	.word	4
	.word	_Label_2631
	.word	-412
	.word	4
	.word	_Label_2632
	.word	-416
	.word	4
	.word	_Label_2633
	.word	-420
	.word	4
	.word	_Label_2634
	.word	-424
	.word	4
	.word	_Label_2635
	.word	-428
	.word	4
	.word	_Label_2636
	.word	-432
	.word	4
	.word	_Label_2637
	.word	-436
	.word	4
	.word	_Label_2638
	.word	-440
	.word	4
	.word	_Label_2639
	.word	-444
	.word	4
	.word	_Label_2640
	.word	-448
	.word	4
	.word	_Label_2641
	.word	-452
	.word	4
	.word	_Label_2642
	.word	-456
	.word	4
	.word	_Label_2643
	.word	-460
	.word	4
	.word	_Label_2644
	.word	-500
	.word	40
	.word	_Label_2645
	.word	-504
	.word	4
	.word	_Label_2646
	.word	-508
	.word	4
	.word	_Label_2647
	.word	-912
	.word	404
	.word	_Label_2648
	.word	-916
	.word	4
	.word	_Label_2649
	.word	-920
	.word	4
	.word	_Label_2650
	.word	-924
	.word	4
	.word	_Label_2651
	.word	-928
	.word	4
	.word	_Label_2652
	.word	-932
	.word	4
	.word	_Label_2653
	.word	-936
	.word	4
	.word	_Label_2654
	.word	-940
	.word	4
	.word	_Label_2655
	.word	-944
	.word	4
	.word	0
_Label_2605:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2606:
	.ascii	"Pself\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2655:
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
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	2396,r13		! source line 2396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0SE",r10
!   _temp_2656 = &fileManagerLock
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
!   _temp_2657 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2657  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2399,r13		! source line 2399
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2662 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2663 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2662  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2658:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2663 then goto _Label_2661		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2661
_Label_2659:
	mov	2400,r13		! source line 2400
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2664 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2664  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2401,r13		! source line 2401
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2402,r13		! source line 2402
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2665 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2403,r13		! source line 2403
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0SE",r10
!   _temp_2666 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2666 [i ] into _temp_2667
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
_Label_2660:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2658
! END FOR
_Label_2661:
! CALL STATEMENT...
!   _temp_2668 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2668  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2406,r13		! source line 2406
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_2669 = _function_200_printFCB
	set	_function_200_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2670 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2669  sizeInBytes=4
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
	mov	2408,r13		! source line 2408
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2671 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2671  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2409,r13		! source line 2409
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2676 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2677 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2676  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2672:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2677 then goto _Label_2675		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2675
_Label_2673:
	mov	2410,r13		! source line 2410
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2678 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2678  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2411,r13		! source line 2411
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2412,r13		! source line 2412
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2679 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2679  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2413,r13		! source line 2413
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2681 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2681 [i ] into _temp_2682
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
!   _temp_2680 = _temp_2682		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2680  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2414,r13		! source line 2414
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2683 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2683  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2415,r13		! source line 2415
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_2684 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2684 [i ] into _temp_2685
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
_Label_2674:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2672
! END FOR
_Label_2675:
! CALL STATEMENT...
!   _temp_2686 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2686  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2418,r13		! source line 2418
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2687 = _function_199_printOpen
	set	_function_199_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2688 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2687  sizeInBytes=4
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
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_2689 = &fileManagerLock
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
	mov	2420,r13		! source line 2420
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
	.word	_Label_2690
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2692
	.word	-12
	.word	4
	.word	_Label_2693
	.word	-16
	.word	4
	.word	_Label_2694
	.word	-20
	.word	4
	.word	_Label_2695
	.word	-24
	.word	4
	.word	_Label_2696
	.word	-28
	.word	4
	.word	_Label_2697
	.word	-32
	.word	4
	.word	_Label_2698
	.word	-36
	.word	4
	.word	_Label_2699
	.word	-40
	.word	4
	.word	_Label_2700
	.word	-44
	.word	4
	.word	_Label_2701
	.word	-48
	.word	4
	.word	_Label_2702
	.word	-52
	.word	4
	.word	_Label_2703
	.word	-56
	.word	4
	.word	_Label_2704
	.word	-60
	.word	4
	.word	_Label_2705
	.word	-64
	.word	4
	.word	_Label_2706
	.word	-68
	.word	4
	.word	_Label_2707
	.word	-72
	.word	4
	.word	_Label_2708
	.word	-76
	.word	4
	.word	_Label_2709
	.word	-80
	.word	4
	.word	_Label_2710
	.word	-84
	.word	4
	.word	_Label_2711
	.word	-88
	.word	4
	.word	_Label_2712
	.word	-92
	.word	4
	.word	_Label_2713
	.word	-96
	.word	4
	.word	_Label_2714
	.word	-100
	.word	4
	.word	_Label_2715
	.word	-104
	.word	4
	.word	_Label_2716
	.word	-108
	.word	4
	.word	_Label_2717
	.word	-112
	.word	4
	.word	_Label_2718
	.word	-116
	.word	4
	.word	0
_Label_2690:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2691:
	.ascii	"Pself\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2718:
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	2425,r13		! source line 2425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_2719 = &_P_Kernel_fileManager
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
	mov	2442,r13		! source line 2442
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2720
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2720
	jmp	_Label_2721
_Label_2720:
! THEN...
	mov	2443,r13		! source line 2443
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2721:
! SEND STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_2722 = &fileManagerLock
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
	mov	2448,r13		! source line 2448
	mov	"\0\0WH",r10
_Label_2723:
	mov	2448,r13		! source line 2448
	mov	"\0\0SE",r10
!   _temp_2726 = &openFileFreeList
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
!   if result==true then goto _Label_2724 else goto _Label_2725
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2725
	jmp	_Label_2724
_Label_2724:
	mov	2448,r13		! source line 2448
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0SE",r10
!   _temp_2727 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2728 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2727  sizeInBytes=4
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
	jmp	_Label_2723
_Label_2725:
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0AS",r10
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2729 = &openFileFreeList
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
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2730 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2730 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2731 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2731 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2732 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2732 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
!   _temp_2733 = &fileManagerLock
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
	mov	2461,r13		! source line 2461
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
	.word	_Label_2734
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2735
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2736
	.word	12
	.word	4
	.word	_Label_2737
	.word	-12
	.word	4
	.word	_Label_2738
	.word	-16
	.word	4
	.word	_Label_2739
	.word	-20
	.word	4
	.word	_Label_2740
	.word	-24
	.word	4
	.word	_Label_2741
	.word	-28
	.word	4
	.word	_Label_2742
	.word	-32
	.word	4
	.word	_Label_2743
	.word	-36
	.word	4
	.word	_Label_2744
	.word	-40
	.word	4
	.word	_Label_2745
	.word	-44
	.word	4
	.word	_Label_2746
	.word	-48
	.word	4
	.word	_Label_2747
	.word	-52
	.word	4
	.word	_Label_2748
	.word	-56
	.word	4
	.word	0
_Label_2734:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2735:
	.ascii	"Pself\0"
	.align
_Label_2736:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2747:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2748:
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
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	2466,r13		! source line 2466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
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
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2750		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2750
!	jmp	_Label_2749
_Label_2749:
! THEN...
	mov	2497,r13		! source line 2497
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2751 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2751  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2497,r13		! source line 2497
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2750:
! ASSIGNMENT STATEMENT...
	mov	2501,r13		! source line 2501
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
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
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
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0WH",r10
_Label_2752:
!   if numFiles <= 0 then goto _Label_2754		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2754
!	jmp	_Label_2753
_Label_2753:
	mov	2507,r13		! source line 2507
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2755 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2755  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2508,r13		! source line 2508
	mov	"\0\0CA",r10
	call	_function_201_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2756 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2756  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2510,r13		! source line 2510
	mov	"\0\0CA",r10
	call	_function_201_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2757 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2757  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2512,r13		! source line 2512
	mov	"\0\0CA",r10
	call	_function_201_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2761 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2761 then goto _Label_2759		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2759
!	jmp	_Label_2760
_Label_2760:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2763
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
!   _temp_2762 = _temp_2763		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2762  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2515,r13		! source line 2515
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2758 else goto _Label_2759
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2759
	jmp	_Label_2758
_Label_2758:
! THEN...
	mov	2516,r13		! source line 2516
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0BR",r10
	jmp	_Label_2754
! END IF...
_Label_2759:
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2752
_Label_2754:
! IF STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2765		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2765
!	jmp	_Label_2764
_Label_2764:
! THEN...
	mov	2524,r13		! source line 2524
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2765:
! SEND STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0SE",r10
!   _temp_2766 = &fileManagerLock
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
	mov	2529,r13		! source line 2529
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2771 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2772 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2771  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2767:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2772 then goto _Label_2770		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2770
_Label_2768:
	mov	2529,r13		! source line 2529
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   _temp_2773 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2773 [i ] into _temp_2774
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
!   fcb = _temp_2774		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2778 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2777 = *_temp_2778  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2777 != start then goto _Label_2776		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2776
!	jmp	_Label_2775
_Label_2775:
! THEN...
	mov	2532,r13		! source line 2532
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2779 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2782 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2781 = *_temp_2782  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2780 = _temp_2781 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2779 = _temp_2780  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0SE",r10
!   _temp_2783 = &fileManagerLock
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
	mov	2534,r13		! source line 2534
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2776:
!   Increment the FOR-LOOP index variable and jump back
_Label_2769:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2767
! END FOR
_Label_2770:
! WHILE STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0WH",r10
_Label_2784:
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_2787 = &fcbFreeList
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
!   if result==true then goto _Label_2785 else goto _Label_2786
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2786
	jmp	_Label_2785
_Label_2785:
	mov	2539,r13		! source line 2539
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
!   _temp_2788 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2789 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2788  sizeInBytes=4
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
	jmp	_Label_2784
_Label_2786:
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
	mov	2542,r13		! source line 2542
	mov	"\0\0SE",r10
!   _temp_2790 = &fcbFreeList
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
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_2791 = &fileManagerLock
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
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2792 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2792 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2793 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2793 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2794 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2794 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2799 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2798 = *_temp_2799  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2798 < 0 then goto _Label_2797		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2797
	jmp	_Label_2795
_Label_2797:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2800 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2800 ) then goto _Label_2796		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2796
!	jmp	_Label_2795
_Label_2795:
! THEN...
	mov	2552,r13		! source line 2552
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2801 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2801  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2552,r13		! source line 2552
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2796:
! RETURN STATEMENT...
	mov	2554,r13		! source line 2554
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
	.word	_Label_2802
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2803
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2804
	.word	12
	.word	4
	.word	_Label_2805
	.word	-12
	.word	4
	.word	_Label_2806
	.word	-16
	.word	4
	.word	_Label_2807
	.word	-20
	.word	4
	.word	_Label_2808
	.word	-24
	.word	4
	.word	_Label_2809
	.word	-28
	.word	4
	.word	_Label_2810
	.word	-32
	.word	4
	.word	_Label_2811
	.word	-36
	.word	4
	.word	_Label_2812
	.word	-40
	.word	4
	.word	_Label_2813
	.word	-44
	.word	4
	.word	_Label_2814
	.word	-48
	.word	4
	.word	_Label_2815
	.word	-52
	.word	4
	.word	_Label_2816
	.word	-56
	.word	4
	.word	_Label_2817
	.word	-60
	.word	4
	.word	_Label_2818
	.word	-64
	.word	4
	.word	_Label_2819
	.word	-68
	.word	4
	.word	_Label_2820
	.word	-72
	.word	4
	.word	_Label_2821
	.word	-76
	.word	4
	.word	_Label_2822
	.word	-80
	.word	4
	.word	_Label_2823
	.word	-84
	.word	4
	.word	_Label_2824
	.word	-88
	.word	4
	.word	_Label_2825
	.word	-92
	.word	4
	.word	_Label_2826
	.word	-96
	.word	4
	.word	_Label_2827
	.word	-100
	.word	4
	.word	_Label_2828
	.word	-104
	.word	4
	.word	_Label_2829
	.word	-108
	.word	4
	.word	_Label_2830
	.word	-112
	.word	4
	.word	_Label_2831
	.word	-116
	.word	4
	.word	_Label_2832
	.word	-120
	.word	4
	.word	_Label_2833
	.word	-124
	.word	4
	.word	_Label_2834
	.word	-128
	.word	4
	.word	_Label_2835
	.word	-132
	.word	4
	.word	_Label_2836
	.word	-136
	.word	4
	.word	_Label_2837
	.word	-140
	.word	4
	.word	_Label_2838
	.word	-144
	.word	4
	.word	_Label_2839
	.word	-148
	.word	4
	.word	_Label_2840
	.word	-152
	.word	4
	.word	_Label_2841
	.word	-156
	.word	4
	.word	_Label_2842
	.word	-160
	.word	4
	.word	0
_Label_2802:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2803:
	.ascii	"Pself\0"
	.align
_Label_2804:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2838:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2839:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2840:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2841:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2842:
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
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	2567,r13		! source line 2567
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0IF",r10
!   _temp_2845 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2845 then goto _Label_2844		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2844
!	jmp	_Label_2843
_Label_2843:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2844:
! SEND STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_2846 = &fileManagerLock
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
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_2847 = &_P_Kernel_fileManager
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
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2848 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2848  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2849 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2852 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2851 = *_temp_2852  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2850 = _temp_2851 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2849 = _temp_2850  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2856 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2855 = *_temp_2856  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2855 > 0 then goto _Label_2854		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2854
!	jmp	_Label_2853
_Label_2853:
! THEN...
	mov	2577,r13		! source line 2577
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   _temp_2857 = &openFileFreeList
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
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
!   _temp_2858 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2859 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2858  sizeInBytes=4
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
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2860 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2863 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2862 = *_temp_2863  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2861 = _temp_2862 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2860 = _temp_2861  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2867 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2866 = *_temp_2867  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2866 > 0 then goto _Label_2865		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2865
!	jmp	_Label_2864
_Label_2864:
! THEN...
	mov	2581,r13		! source line 2581
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   _temp_2868 = &fcbFreeList
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
	mov	2582,r13		! source line 2582
	mov	"\0\0SE",r10
!   _temp_2869 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2870 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2869  sizeInBytes=4
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
_Label_2865:
! END IF...
_Label_2854:
! SEND STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0SE",r10
!   _temp_2871 = &fileManagerLock
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
	mov	2585,r13		! source line 2585
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
	.word	_Label_2872
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2874
	.word	12
	.word	4
	.word	_Label_2875
	.word	-12
	.word	4
	.word	_Label_2876
	.word	-16
	.word	4
	.word	_Label_2877
	.word	-20
	.word	4
	.word	_Label_2878
	.word	-24
	.word	4
	.word	_Label_2879
	.word	-28
	.word	4
	.word	_Label_2880
	.word	-32
	.word	4
	.word	_Label_2881
	.word	-36
	.word	4
	.word	_Label_2882
	.word	-40
	.word	4
	.word	_Label_2883
	.word	-44
	.word	4
	.word	_Label_2884
	.word	-48
	.word	4
	.word	_Label_2885
	.word	-52
	.word	4
	.word	_Label_2886
	.word	-56
	.word	4
	.word	_Label_2887
	.word	-60
	.word	4
	.word	_Label_2888
	.word	-64
	.word	4
	.word	_Label_2889
	.word	-68
	.word	4
	.word	_Label_2890
	.word	-72
	.word	4
	.word	_Label_2891
	.word	-76
	.word	4
	.word	_Label_2892
	.word	-80
	.word	4
	.word	_Label_2893
	.word	-84
	.word	4
	.word	_Label_2894
	.word	-88
	.word	4
	.word	_Label_2895
	.word	-92
	.word	4
	.word	_Label_2896
	.word	-96
	.word	4
	.word	_Label_2897
	.word	-100
	.word	4
	.word	_Label_2898
	.word	-104
	.word	4
	.word	0
_Label_2872:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2873:
	.ascii	"Pself\0"
	.align
_Label_2874:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2898:
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	2590,r13		! source line 2590
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2902 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2901 = *_temp_2902  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2901) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2903 = _temp_2901 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2903 ) then goto _Label_2900		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2900
!	jmp	_Label_2899
_Label_2899:
! THEN...
	mov	2596,r13		! source line 2596
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2908 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2907 = *_temp_2908  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2907) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2909 = _temp_2907 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2906 = *_temp_2909  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2906 >= 0 then goto _Label_2905		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2905
!	jmp	_Label_2904
_Label_2904:
! THEN...
	mov	2597,r13		! source line 2597
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2910 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2910  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2597,r13		! source line 2597
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2905:
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2912 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2911 = *_temp_2912  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2911) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2913 = _temp_2911 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2913 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2917 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2916 = *_temp_2917  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2916) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2918 = _temp_2916 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2915 = *_temp_2918  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2921 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2920 = *_temp_2921  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2920) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2922 = _temp_2920 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2919 = *_temp_2922  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2914 = _temp_2915 + _temp_2919		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2925 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2924 = *_temp_2925  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2924) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2926 = _temp_2924 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2923 = *_temp_2926  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2927 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2914  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2923  sizeInBytes=4
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
_Label_2900:
! RETURN STATEMENT...
	mov	2595,r13		! source line 2595
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
	.word	_Label_2928
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2930
	.word	12
	.word	4
	.word	_Label_2931
	.word	-12
	.word	4
	.word	_Label_2932
	.word	-16
	.word	4
	.word	_Label_2933
	.word	-20
	.word	4
	.word	_Label_2934
	.word	-24
	.word	4
	.word	_Label_2935
	.word	-28
	.word	4
	.word	_Label_2936
	.word	-32
	.word	4
	.word	_Label_2937
	.word	-36
	.word	4
	.word	_Label_2938
	.word	-40
	.word	4
	.word	_Label_2939
	.word	-44
	.word	4
	.word	_Label_2940
	.word	-48
	.word	4
	.word	_Label_2941
	.word	-52
	.word	4
	.word	_Label_2942
	.word	-56
	.word	4
	.word	_Label_2943
	.word	-60
	.word	4
	.word	_Label_2944
	.word	-64
	.word	4
	.word	_Label_2945
	.word	-68
	.word	4
	.word	_Label_2946
	.word	-72
	.word	4
	.word	_Label_2947
	.word	-76
	.word	4
	.word	_Label_2948
	.word	-80
	.word	4
	.word	_Label_2949
	.word	-84
	.word	4
	.word	_Label_2950
	.word	-88
	.word	4
	.word	_Label_2951
	.word	-92
	.word	4
	.word	_Label_2952
	.word	-96
	.word	4
	.word	_Label_2953
	.word	-100
	.word	4
	.word	_Label_2954
	.word	-104
	.word	4
	.word	_Label_2955
	.word	-108
	.word	4
	.word	0
_Label_2928:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2929:
	.ascii	"Pself\0"
	.align
_Label_2930:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2901\0"
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
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	2609,r13		! source line 2609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_2956 = &fileManagerLock
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
	mov	2625,r13		! source line 2625
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2962		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2962
!   _temp_2961 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2963
_Label_2962:
!   _temp_2961 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2963:
!   if _temp_2961 then goto _Label_2960 else goto _Label_2957
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2957
	jmp	_Label_2960
_Label_2960:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2966 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2965 = *_temp_2966  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2965 == 0 then goto _Label_2967		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2967
!   _temp_2964 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2968
_Label_2967:
!   _temp_2964 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2968:
!   if _temp_2964 then goto _Label_2959 else goto _Label_2957
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2957
	jmp	_Label_2959
_Label_2959:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2971 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2970 = *_temp_2971  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2970) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2972 = _temp_2970 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2969 = *_temp_2972  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2969 >= 0 then goto _Label_2958		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2958
!	jmp	_Label_2957
_Label_2957:
! THEN...
	mov	2626,r13		! source line 2626
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2973 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2973  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2626,r13		! source line 2626
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2958:
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2974 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2974  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0WH",r10
_Label_2975:
!   if numBytes <= 0 then goto _Label_2977		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2977
!	jmp	_Label_2976
_Label_2976:
	mov	2629,r13		! source line 2629
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
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
	mov	2639,r13		! source line 2639
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
	mov	2643,r13		! source line 2643
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2981 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2980 = *_temp_2981  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2980 == sector then goto _Label_2979		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2979
!	jmp	_Label_2978
_Label_2978:
! THEN...
	mov	2644,r13		! source line 2644
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2982) then goto _runtimeErrorNullPointer
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
	mov	2646,r13		! source line 2646
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2985 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2984 = *_temp_2985  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2983 = sector + _temp_2984		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2987 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2986 = *_temp_2987  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2988 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2983  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2986  sizeInBytes=4
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
	mov	2649,r13		! source line 2649
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2989 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2989 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2990 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2990 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2979:
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2992 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2991 = *_temp_2992  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2991 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   _temp_2993 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2993  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2653,r13		! source line 2653
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
	mov	2657,r13		! source line 2657
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2975
_Label_2977:
! SEND STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0SE",r10
!   _temp_2994 = &fileManagerLock
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
	mov	2668,r13		! source line 2668
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
	.word	_Label_2995
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2997
	.word	12
	.word	4
	.word	_Label_2998
	.word	16
	.word	4
	.word	_Label_2999
	.word	20
	.word	4
	.word	_Label_3000
	.word	24
	.word	4
	.word	_Label_3001
	.word	-16
	.word	4
	.word	_Label_3002
	.word	-20
	.word	4
	.word	_Label_3003
	.word	-24
	.word	4
	.word	_Label_3004
	.word	-28
	.word	4
	.word	_Label_3005
	.word	-32
	.word	4
	.word	_Label_3006
	.word	-36
	.word	4
	.word	_Label_3007
	.word	-40
	.word	4
	.word	_Label_3008
	.word	-44
	.word	4
	.word	_Label_3009
	.word	-48
	.word	4
	.word	_Label_3010
	.word	-52
	.word	4
	.word	_Label_3011
	.word	-56
	.word	4
	.word	_Label_3012
	.word	-60
	.word	4
	.word	_Label_3013
	.word	-64
	.word	4
	.word	_Label_3014
	.word	-68
	.word	4
	.word	_Label_3015
	.word	-72
	.word	4
	.word	_Label_3016
	.word	-76
	.word	4
	.word	_Label_3017
	.word	-80
	.word	4
	.word	_Label_3018
	.word	-84
	.word	4
	.word	_Label_3019
	.word	-88
	.word	4
	.word	_Label_3020
	.word	-92
	.word	4
	.word	_Label_3021
	.word	-96
	.word	4
	.word	_Label_3022
	.word	-100
	.word	4
	.word	_Label_3023
	.word	-104
	.word	4
	.word	_Label_3024
	.word	-9
	.word	1
	.word	_Label_3025
	.word	-10
	.word	1
	.word	_Label_3026
	.word	-108
	.word	4
	.word	_Label_3027
	.word	-112
	.word	4
	.word	_Label_3028
	.word	-116
	.word	4
	.word	_Label_3029
	.word	-120
	.word	4
	.word	_Label_3030
	.word	-124
	.word	4
	.word	_Label_3031
	.word	-128
	.word	4
	.word	0
_Label_2995:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2996:
	.ascii	"Pself\0"
	.align
_Label_2997:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_3024:
	.byte	'C'
	.ascii	"_temp_2964\0"
	.align
_Label_3025:
	.byte	'C'
	.ascii	"_temp_2961\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_3027:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3028:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3029:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3030:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3031:
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
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	2673,r13		! source line 2673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
!   _temp_3032 = &fileManagerLock
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
	mov	2690,r13		! source line 2690
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3038		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3038
!   _temp_3037 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3039
_Label_3038:
!   _temp_3037 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3039:
!   if _temp_3037 then goto _Label_3036 else goto _Label_3033
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3033
	jmp	_Label_3036
_Label_3036:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3042 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3041 = *_temp_3042  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3041 == 0 then goto _Label_3043		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3043
!   _temp_3040 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3044
_Label_3043:
!   _temp_3040 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3044:
!   if _temp_3040 then goto _Label_3035 else goto _Label_3033
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3033
	jmp	_Label_3035
_Label_3035:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3047 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3046 = *_temp_3047  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3046) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3048 = _temp_3046 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3045 = *_temp_3048  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3045 >= 0 then goto _Label_3034		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3034
!	jmp	_Label_3033
_Label_3033:
! THEN...
	mov	2691,r13		! source line 2691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3049 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3049  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2691,r13		! source line 2691
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3034:
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3050 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3050  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0WH",r10
_Label_3051:
!   if numBytes <= 0 then goto _Label_3053		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3053
!	jmp	_Label_3052
_Label_3052:
	mov	2694,r13		! source line 2694
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2703,r13		! source line 2703
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
	mov	2704,r13		! source line 2704
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
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3057 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3056 = *_temp_3057  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3056 == sector then goto _Label_3055		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3055
!	jmp	_Label_3054
_Label_3054:
! THEN...
	mov	2710,r13		! source line 2710
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3058) then goto _runtimeErrorNullPointer
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
_Label_3055:
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3060 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3059 = *_temp_3060  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3059 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0AS",r10
!   _temp_3061 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3061  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2713,r13		! source line 2713
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3065 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3064 = *_temp_3065  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3064 != sector then goto _Label_3063		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3063
!	jmp	_Label_3062
_Label_3062:
	jmp	_Label_3066
_Label_3063:
! ELSE...
	mov	2716,r13		! source line 2716
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3069
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3069
	jmp	_Label_3068
_Label_3069:
!   if bytesToMove != 8192 then goto _Label_3068		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3068
!	jmp	_Label_3067
_Label_3067:
	jmp	_Label_3070
_Label_3068:
! ELSE...
	mov	2720,r13		! source line 2720
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3073 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3072 = *_temp_3073  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3071 = sector + _temp_3072		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3075 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3074 = *_temp_3075  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3076 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3071  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3074  sizeInBytes=4
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
_Label_3070:
! END IF...
_Label_3066:
! ASSIGNMENT STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3077 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3077 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3078 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3078 = 1  (sizeInBytes=1)
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
	mov	2729,r13		! source line 2729
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3051
_Label_3053:
! SEND STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0SE",r10
!   _temp_3079 = &fileManagerLock
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
	mov	2741,r13		! source line 2741
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
	.word	_Label_3080
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3081
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3082
	.word	12
	.word	4
	.word	_Label_3083
	.word	16
	.word	4
	.word	_Label_3084
	.word	20
	.word	4
	.word	_Label_3085
	.word	24
	.word	4
	.word	_Label_3086
	.word	-16
	.word	4
	.word	_Label_3087
	.word	-20
	.word	4
	.word	_Label_3088
	.word	-24
	.word	4
	.word	_Label_3089
	.word	-28
	.word	4
	.word	_Label_3090
	.word	-32
	.word	4
	.word	_Label_3091
	.word	-36
	.word	4
	.word	_Label_3092
	.word	-40
	.word	4
	.word	_Label_3093
	.word	-44
	.word	4
	.word	_Label_3094
	.word	-48
	.word	4
	.word	_Label_3095
	.word	-52
	.word	4
	.word	_Label_3096
	.word	-56
	.word	4
	.word	_Label_3097
	.word	-60
	.word	4
	.word	_Label_3098
	.word	-64
	.word	4
	.word	_Label_3099
	.word	-68
	.word	4
	.word	_Label_3100
	.word	-72
	.word	4
	.word	_Label_3101
	.word	-76
	.word	4
	.word	_Label_3102
	.word	-80
	.word	4
	.word	_Label_3103
	.word	-84
	.word	4
	.word	_Label_3104
	.word	-88
	.word	4
	.word	_Label_3105
	.word	-92
	.word	4
	.word	_Label_3106
	.word	-96
	.word	4
	.word	_Label_3107
	.word	-100
	.word	4
	.word	_Label_3108
	.word	-104
	.word	4
	.word	_Label_3109
	.word	-108
	.word	4
	.word	_Label_3110
	.word	-112
	.word	4
	.word	_Label_3111
	.word	-9
	.word	1
	.word	_Label_3112
	.word	-10
	.word	1
	.word	_Label_3113
	.word	-116
	.word	4
	.word	_Label_3114
	.word	-120
	.word	4
	.word	_Label_3115
	.word	-124
	.word	4
	.word	_Label_3116
	.word	-128
	.word	4
	.word	_Label_3117
	.word	-132
	.word	4
	.word	_Label_3118
	.word	-136
	.word	4
	.word	0
_Label_3080:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3081:
	.ascii	"Pself\0"
	.align
_Label_3082:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3083:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3084:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3085:
	.byte	'I'
	.ascii	"numBytes\0"
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
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3111:
	.byte	'C'
	.ascii	"_temp_3040\0"
	.align
_Label_3112:
	.byte	'C'
	.ascii	"_temp_3037\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3114:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3115:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3116:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3117:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3118:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3119
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3119:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3120
	.word	_sourceFileName
	.word	359		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3120:
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
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	2777,r13		! source line 2777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0AS",r10
	mov	2779,r13		! source line 2779
	mov	"\0\0SE",r10
!   _temp_3121 = &_P_Kernel_frameManager
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
	mov	2780,r13		! source line 2780
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2782,r13		! source line 2782
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
	.word	_Label_3122
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3123
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3124
	.word	-12
	.word	4
	.word	0
_Label_3122:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3123:
	.ascii	"Pself\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3121\0"
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
_Label_3481:
	push	r0
	sub	r1,1,r1
	bne	_Label_3481
	mov	2787,r13		! source line 2787
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3125 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3125  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2788,r13		! source line 2788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2789,r13		! source line 2789
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3126 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3126  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3127 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3127  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2793,r13		! source line 2793
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3128 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3128  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2794,r13		! source line 2794
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3129 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3129  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3130 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3130  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2798,r13		! source line 2798
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2799,r13		! source line 2799
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2800,r13		! source line 2800
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2800,r13		! source line 2800
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
	.word	_Label_3131
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3132
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3133
	.word	-12
	.word	4
	.word	_Label_3134
	.word	-16
	.word	4
	.word	_Label_3135
	.word	-20
	.word	4
	.word	_Label_3136
	.word	-24
	.word	4
	.word	_Label_3137
	.word	-28
	.word	4
	.word	_Label_3138
	.word	-32
	.word	4
	.word	0
_Label_3131:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3132:
	.ascii	"Pself\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3139
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3139:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3140
	.word	_sourceFileName
	.word	376		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3140:
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
_Label_3482:
	push	r0
	sub	r1,1,r1
	bne	_Label_3482
	mov	2811,r13		! source line 2811
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3141 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3141  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2812,r13		! source line 2812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3142 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3142  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3144		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3144
!	jmp	_Label_3143
_Label_3143:
! THEN...
	mov	2816,r13		! source line 2816
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2816,r13		! source line 2816
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
	jmp	_Label_3145
_Label_3144:
! ELSE...
	mov	2818,r13		! source line 2818
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3146 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3146  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2818,r13		! source line 2818
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3145:
! RETURN STATEMENT...
	mov	2815,r13		! source line 2815
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
	.word	_Label_3147
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3148
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3149
	.word	-12
	.word	4
	.word	_Label_3150
	.word	-16
	.word	4
	.word	_Label_3151
	.word	-20
	.word	4
	.word	0
_Label_3147:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3148:
	.ascii	"Pself\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3141\0"
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
_Label_3483:
	push	r0
	sub	r1,1,r1
	bne	_Label_3483
	mov	2824,r13		! source line 2824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0SE",r10
!   _temp_3152 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3153 = _temp_3152 + 4
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
	mov	2835,r13		! source line 2835
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2836,r13		! source line 2836
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
	mov	2837,r13		! source line 2837
	mov	"\0\0SE",r10
!   _temp_3154 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3155 = _temp_3154 + 4
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
	mov	2838,r13		! source line 2838
	mov	"\0\0RE",r10
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3158 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3157  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3156  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3156  (sizeInBytes=1)
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
	.word	_Label_3159
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3160
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3161
	.word	12
	.word	4
	.word	_Label_3162
	.word	16
	.word	4
	.word	_Label_3163
	.word	-16
	.word	4
	.word	_Label_3164
	.word	-20
	.word	4
	.word	_Label_3165
	.word	-9
	.word	1
	.word	_Label_3166
	.word	-24
	.word	4
	.word	_Label_3167
	.word	-28
	.word	4
	.word	_Label_3168
	.word	-32
	.word	4
	.word	_Label_3169
	.word	-36
	.word	4
	.word	_Label_3170
	.word	-40
	.word	4
	.word	0
_Label_3159:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3160:
	.ascii	"Pself\0"
	.align
_Label_3161:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3162:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3165:
	.byte	'C'
	.ascii	"_temp_3156\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3170:
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
_Label_3484:
	push	r0
	sub	r1,1,r1
	bne	_Label_3484
	mov	2843,r13		! source line 2843
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0IF",r10
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
!   _temp_3174 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3175) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3174  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3173  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3173 then goto _Label_3172 else goto _Label_3171
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3171
	jmp	_Label_3172
_Label_3171:
! THEN...
	mov	2849,r13		! source line 2849
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3176 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3176  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2849,r13		! source line 2849
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3172:
! RETURN STATEMENT...
	mov	2851,r13		! source line 2851
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
	.word	_Label_3177
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3178
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3179
	.word	-16
	.word	4
	.word	_Label_3180
	.word	-20
	.word	4
	.word	_Label_3181
	.word	-24
	.word	4
	.word	_Label_3182
	.word	-9
	.word	1
	.word	_Label_3183
	.word	-28
	.word	4
	.word	0
_Label_3177:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3178:
	.ascii	"Pself\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3182:
	.byte	'C'
	.ascii	"_temp_3173\0"
	.align
_Label_3183:
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
_Label_3485:
	push	r0
	sub	r1,1,r1
	bne	_Label_3485
	mov	2856,r13		! source line 2856
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3187 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3186 = *_temp_3187  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3186) then goto _Label_3185
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3185
!	jmp	_Label_3184
_Label_3184:
! THEN...
	mov	2883,r13		! source line 2883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3188 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3188  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2883,r13		! source line 2883
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3185:
! IF STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0IF",r10
	mov	2887,r13		! source line 2887
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3192) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3191  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3191 == 1112300152 then goto _Label_3190		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3190
!	jmp	_Label_3189
_Label_3189:
! THEN...
	mov	2888,r13		! source line 2888
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3193 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3193  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2888,r13		! source line 2888
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3190:
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
	mov	2893,r13		! source line 2893
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3194) then goto _runtimeErrorNullPointer
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
	mov	2894,r13		! source line 2894
	mov	"\0\0AS",r10
	mov	2894,r13		! source line 2894
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3195) then goto _runtimeErrorNullPointer
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
	mov	2895,r13		! source line 2895
	mov	"\0\0AS",r10
	mov	2895,r13		! source line 2895
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3196) then goto _runtimeErrorNullPointer
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
	mov	2896,r13		! source line 2896
	mov	"\0\0AS",r10
	mov	2896,r13		! source line 2896
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3197) then goto _runtimeErrorNullPointer
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
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
	mov	2897,r13		! source line 2897
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3198) then goto _runtimeErrorNullPointer
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
	mov	2898,r13		! source line 2898
	mov	"\0\0AS",r10
	mov	2898,r13		! source line 2898
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3199) then goto _runtimeErrorNullPointer
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
	mov	2901,r13		! source line 2901
	mov	"\0\0IF",r10
!   _temp_3202 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3202) then goto _Label_3201
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3201
!	jmp	_Label_3200
_Label_3200:
! THEN...
	mov	2902,r13		! source line 2902
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3203 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3203  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3201:
! ASSIGNMENT STATEMENT...
	mov	2905,r13		! source line 2905
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
	mov	2909,r13		! source line 2909
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3205
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3205
!	jmp	_Label_3204
_Label_3204:
! THEN...
	mov	2910,r13		! source line 2910
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3206 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3206  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2910,r13		! source line 2910
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3205:
! IF STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0IF",r10
!   _temp_3209 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3209) then goto _Label_3208
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3208
!	jmp	_Label_3207
_Label_3207:
! THEN...
	mov	2916,r13		! source line 2916
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3210 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3210  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3208:
! IF STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0IF",r10
!   _temp_3213 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3213 then goto _Label_3212		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3212
!	jmp	_Label_3211
_Label_3211:
! THEN...
	mov	2920,r13		! source line 2920
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3214 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3214  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2920,r13		! source line 2920
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2921,r13		! source line 2921
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3212:
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
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
	mov	2926,r13		! source line 2926
	mov	"\0\0IF",r10
!   _temp_3217 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3217) then goto _Label_3216
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3216
!	jmp	_Label_3215
_Label_3215:
! THEN...
	mov	2927,r13		! source line 2927
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3218 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3218  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2927,r13		! source line 2927
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2928,r13		! source line 2928
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
	mov	2930,r13		! source line 2930
	mov	"\0\0IF",r10
!   _temp_3221 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3221 then goto _Label_3220		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3220
!	jmp	_Label_3219
_Label_3219:
! THEN...
	mov	2931,r13		! source line 2931
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3222 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3222  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2932,r13		! source line 2932
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
	mov	2934,r13		! source line 2934
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
	mov	2937,r13		! source line 2937
	mov	"\0\0AS",r10
!   _temp_3225 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3224 = _temp_3225 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3223 = _temp_3224 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3223 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3227		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3227
!	jmp	_Label_3226
_Label_3226:
! THEN...
	mov	2953,r13		! source line 2953
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3228 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3228  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3229 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3229  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2954,r13		! source line 2954
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3230 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3230  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2955,r13		! source line 2955
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
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
_Label_3227:
! SEND STATEMENT...
	mov	2958,r13		! source line 2958
	mov	"\0\0SE",r10
!   _temp_3231 = &_P_Kernel_frameManager
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
	mov	2964,r13		! source line 2964
	mov	"\0\0IF",r10
	mov	2964,r13		! source line 2964
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3235) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3234  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3234 == 707406378 then goto _Label_3233		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3233
!	jmp	_Label_3232
_Label_3232:
! THEN...
	mov	2965,r13		! source line 2965
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3236 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3236  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2965,r13		! source line 2965
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   _temp_3237 = &_P_Kernel_frameManager
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
_Label_3233:
! ASSIGNMENT STATEMENT...
	mov	2971,r13		! source line 2971
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
	mov	2972,r13		! source line 2972
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3242 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3243 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3242  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3238:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3243 then goto _Label_3241		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3241
_Label_3239:
	mov	2972,r13		! source line 2972
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
	mov	2973,r13		! source line 2973
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
	mov	2976,r13		! source line 2976
	mov	"\0\0IF",r10
	mov	2976,r13		! source line 2976
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3247) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3246  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3246 then goto _Label_3245 else goto _Label_3244
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3244
	jmp	_Label_3245
_Label_3244:
! THEN...
	mov	2977,r13		! source line 2977
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3248 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3248  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2977,r13		! source line 2977
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
!   _temp_3249 = &_P_Kernel_frameManager
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
_Label_3245:
! SEND STATEMENT...
	mov	2981,r13		! source line 2981
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
	mov	2982,r13		! source line 2982
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3240:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3238
! END FOR
_Label_3241:
! IF STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0IF",r10
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3253) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3252  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3252 == 707406378 then goto _Label_3251		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3251
!	jmp	_Label_3250
_Label_3250:
! THEN...
	mov	2987,r13		! source line 2987
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3254 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3254  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
!   _temp_3255 = &_P_Kernel_frameManager
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
	mov	2989,r13		! source line 2989
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3251:
! FOR STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3260 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3261 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3260  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3256:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3261 then goto _Label_3259		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3259
_Label_3257:
	mov	2993,r13		! source line 2993
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0AS",r10
	mov	2994,r13		! source line 2994
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
	mov	2997,r13		! source line 2997
	mov	"\0\0IF",r10
	mov	2997,r13		! source line 2997
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3265) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3264  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3264 then goto _Label_3263 else goto _Label_3262
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3262
	jmp	_Label_3263
_Label_3262:
! THEN...
	mov	2998,r13		! source line 2998
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3266 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3266  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2998,r13		! source line 2998
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0SE",r10
!   _temp_3267 = &_P_Kernel_frameManager
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
	mov	3000,r13		! source line 3000
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3263:
! ASSIGNMENT STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3258:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3256
! END FOR
_Label_3259:
! IF STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0IF",r10
	mov	3006,r13		! source line 3006
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3271) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3270  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3270 == 707406378 then goto _Label_3269		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3269
!	jmp	_Label_3268
_Label_3268:
! THEN...
	mov	3007,r13		! source line 3007
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3272 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3272  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3007,r13		! source line 3007
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0SE",r10
!   _temp_3273 = &_P_Kernel_frameManager
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
	mov	3009,r13		! source line 3009
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3269:
! ASSIGNMENT STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0AS",r10
	mov	3013,r13		! source line 3013
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
	mov	3017,r13		! source line 3017
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3020,r13		! source line 3020
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
	.word	_Label_3274
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3275
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3276
	.word	12
	.word	4
	.word	_Label_3277
	.word	-16
	.word	4
	.word	_Label_3278
	.word	-20
	.word	4
	.word	_Label_3279
	.word	-24
	.word	4
	.word	_Label_3280
	.word	-28
	.word	4
	.word	_Label_3281
	.word	-32
	.word	4
	.word	_Label_3282
	.word	-36
	.word	4
	.word	_Label_3283
	.word	-40
	.word	4
	.word	_Label_3284
	.word	-9
	.word	1
	.word	_Label_3285
	.word	-44
	.word	4
	.word	_Label_3286
	.word	-48
	.word	4
	.word	_Label_3287
	.word	-52
	.word	4
	.word	_Label_3288
	.word	-56
	.word	4
	.word	_Label_3289
	.word	-60
	.word	4
	.word	_Label_3290
	.word	-64
	.word	4
	.word	_Label_3291
	.word	-68
	.word	4
	.word	_Label_3292
	.word	-72
	.word	4
	.word	_Label_3293
	.word	-76
	.word	4
	.word	_Label_3294
	.word	-10
	.word	1
	.word	_Label_3295
	.word	-80
	.word	4
	.word	_Label_3296
	.word	-84
	.word	4
	.word	_Label_3297
	.word	-88
	.word	4
	.word	_Label_3298
	.word	-92
	.word	4
	.word	_Label_3299
	.word	-96
	.word	4
	.word	_Label_3300
	.word	-100
	.word	4
	.word	_Label_3301
	.word	-104
	.word	4
	.word	_Label_3302
	.word	-108
	.word	4
	.word	_Label_3303
	.word	-112
	.word	4
	.word	_Label_3304
	.word	-116
	.word	4
	.word	_Label_3305
	.word	-120
	.word	4
	.word	_Label_3306
	.word	-124
	.word	4
	.word	_Label_3307
	.word	-128
	.word	4
	.word	_Label_3308
	.word	-132
	.word	4
	.word	_Label_3309
	.word	-136
	.word	4
	.word	_Label_3310
	.word	-140
	.word	4
	.word	_Label_3311
	.word	-144
	.word	4
	.word	_Label_3312
	.word	-148
	.word	4
	.word	_Label_3313
	.word	-152
	.word	4
	.word	_Label_3314
	.word	-156
	.word	4
	.word	_Label_3315
	.word	-160
	.word	4
	.word	_Label_3316
	.word	-164
	.word	4
	.word	_Label_3317
	.word	-168
	.word	4
	.word	_Label_3318
	.word	-172
	.word	4
	.word	_Label_3319
	.word	-176
	.word	4
	.word	_Label_3320
	.word	-180
	.word	4
	.word	_Label_3321
	.word	-184
	.word	4
	.word	_Label_3322
	.word	-188
	.word	4
	.word	_Label_3323
	.word	-192
	.word	4
	.word	_Label_3324
	.word	-196
	.word	4
	.word	_Label_3325
	.word	-200
	.word	4
	.word	_Label_3326
	.word	-204
	.word	4
	.word	_Label_3327
	.word	-208
	.word	4
	.word	_Label_3328
	.word	-212
	.word	4
	.word	_Label_3329
	.word	-216
	.word	4
	.word	_Label_3330
	.word	-220
	.word	4
	.word	_Label_3331
	.word	-224
	.word	4
	.word	_Label_3332
	.word	-228
	.word	4
	.word	_Label_3333
	.word	-232
	.word	4
	.word	_Label_3334
	.word	-236
	.word	4
	.word	_Label_3335
	.word	-240
	.word	4
	.word	_Label_3336
	.word	-244
	.word	4
	.word	_Label_3337
	.word	-248
	.word	4
	.word	_Label_3338
	.word	-252
	.word	4
	.word	_Label_3339
	.word	-256
	.word	4
	.word	_Label_3340
	.word	-260
	.word	4
	.word	_Label_3341
	.word	-264
	.word	4
	.word	_Label_3342
	.word	-268
	.word	4
	.word	0
_Label_3274:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3275:
	.ascii	"Pself\0"
	.align
_Label_3276:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3284:
	.byte	'C'
	.ascii	"_temp_3264\0"
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
	.ascii	"_temp_3255\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3294:
	.byte	'C'
	.ascii	"_temp_3246\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3331:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3332:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3333:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3334:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3335:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3336:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3337:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3338:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3339:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3340:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3341:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3342:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
