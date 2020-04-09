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
_StringConst_187:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_186:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_185:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_184:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_183:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_182:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_181:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_180:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_179:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_178:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_177:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_176:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_175:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_174:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_173:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_172:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_171:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_170:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_169:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_168:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_167:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_166:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_165:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_164:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_163:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_162:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_161:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_160:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_159:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_158:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_157:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_156:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_155:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_154:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_153:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_152:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_151:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_149:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_148:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_147:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_146:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_145:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_144:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_143:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_142:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_141:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_140:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_139:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_138:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_137:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_136:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_135:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_134:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_131:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_128:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_121:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_120:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_114:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_113:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_112:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_111:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_110:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_109:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_108:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_107:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_104:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_103:
	.word	1			! length
	.ascii	":"
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
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_99:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_98:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_97:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_96:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_94:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_93:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_92:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_91:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_90:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_89:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_87:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_86:
	.word	3			! length
	.ascii	"Xxx"
	.align
_StringConst_85:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_84:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_83:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_82:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_81:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_80:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_79:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_77:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_76:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_75:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_74:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_73:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_72:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_71:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_70:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_69:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_68:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_67:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_66:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_65:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_64:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_63:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_62:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_61:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_60:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_59:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_58:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_56:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_55:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_54:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_53:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_52:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_51:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_50:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_49:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_48:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_47:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_46:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_45:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_44:
	.word	4			! length
	.ascii	"Test"
	.align
_StringConst_43:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_42:
	.word	27			! length
	.ascii	"Handle_Sys_Close invoked! \n"
	.align
_StringConst_41:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_40:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_39:
	.word	26			! length
	.ascii	"Handle_Sys_Seek invoked! \n"
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
	set	0xf87c01f6,r4		! myHashVal = -126090762
	cmp	r3,r4
	be	_Label_196
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
_Label_196:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_197
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_197
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_197
_Label_197:
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
_Label_3776:
	push	r0
	sub	r1,1,r1
	bne	_Label_3776
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_198 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_198  sizeInBytes=4
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
_Label_3777:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3777
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_202 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_203 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_202  sizeInBytes=4
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
!   _temp_204 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_205 = _temp_204 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_205 = 3  (sizeInBytes=4)
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
_Label_3778:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3778
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_207 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_208 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_207  sizeInBytes=4
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
!   _temp_209 = _function_195_IdleFunction
	set	_function_195_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_210 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
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
	.word	_Label_211
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_212
	.word	-12
	.word	4
	.word	_Label_213
	.word	-16
	.word	4
	.word	_Label_214
	.word	-20
	.word	4
	.word	_Label_215
	.word	-24
	.word	4
	.word	_Label_216
	.word	-28
	.word	4
	.word	_Label_217
	.word	-32
	.word	4
	.word	_Label_218
	.word	-36
	.word	4
	.word	_Label_219
	.word	-40
	.word	4
	.word	_Label_220
	.word	-44
	.word	4
	.word	_Label_221
	.word	-48
	.word	4
	.word	_Label_222
	.word	-52
	.word	4
	.word	_Label_223
	.word	-56
	.word	4
	.word	_Label_224
	.word	-60
	.word	4
	.word	0
_Label_211:
	.ascii	"InitializeScheduler\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_195_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3779:
	push	r0
	sub	r1,1,r1
	bne	_Label_3779
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_225:
!	jmp	_Label_226
_Label_226:
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
!   _temp_230 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_228 else goto _Label_229
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_229
	jmp	_Label_228
_Label_228:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_231
_Label_229:
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
_Label_231:
! END WHILE...
	jmp	_Label_225
_Label_227:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_IdleFunction:
	.word	_sourceFileName
	.word	_Label_232
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_233
	.word	8
	.word	4
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	0
_Label_232:
	.ascii	"IdleFunction\0"
	.align
_Label_233:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
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
_Label_3780:
	push	r0
	sub	r1,1,r1
	bne	_Label_3780
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
!   _temp_238 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_238 ) then goto _Label_237		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_237
!	jmp	_Label_236
_Label_236:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_240 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_240 [0 ] into _temp_241
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
!   _temp_239 = _temp_241		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_237:
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
!   _temp_242 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_242 = 3  (sizeInBytes=4)
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
_Label_243:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_247 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_246  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_246 then goto _Label_245 else goto _Label_244
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_244
	jmp	_Label_245
_Label_244:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_248 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_249 = &_P_Kernel_threadManager
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
	jmp	_Label_243
_Label_245:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_252 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_252 ) then goto _Label_251		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_251
!	jmp	_Label_250
_Label_250:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_254 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_254 [0 ] into _temp_255
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
!   _temp_253 = _temp_255		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
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
!   _temp_257 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_256 = *_temp_257  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_256) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_258 = _temp_256 + 32
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
_Label_251:
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
	.word	_Label_259
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_260
	.word	8
	.word	4
	.word	_Label_261
	.word	-16
	.word	4
	.word	_Label_262
	.word	-20
	.word	4
	.word	_Label_263
	.word	-24
	.word	4
	.word	_Label_264
	.word	-28
	.word	4
	.word	_Label_265
	.word	-32
	.word	4
	.word	_Label_266
	.word	-36
	.word	4
	.word	_Label_267
	.word	-40
	.word	4
	.word	_Label_268
	.word	-44
	.word	4
	.word	_Label_269
	.word	-48
	.word	4
	.word	_Label_270
	.word	-52
	.word	4
	.word	_Label_271
	.word	-9
	.word	1
	.word	_Label_272
	.word	-56
	.word	4
	.word	_Label_273
	.word	-60
	.word	4
	.word	_Label_274
	.word	-64
	.word	4
	.word	_Label_275
	.word	-68
	.word	4
	.word	_Label_276
	.word	-72
	.word	4
	.word	_Label_277
	.word	-76
	.word	4
	.word	_Label_278
	.word	-80
	.word	4
	.word	0
_Label_259:
	.ascii	"Run\0"
	.align
_Label_260:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_271:
	.byte	'C'
	.ascii	"_temp_246\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_277:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_278:
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
_Label_3781:
	push	r0
	sub	r1,1,r1
	bne	_Label_3781
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
!   _temp_279 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_280 = _function_194_ThreadPrintShort
	set	_function_194_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_281 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_280  sizeInBytes=4
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
	.word	_Label_282
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_283
	.word	-12
	.word	4
	.word	_Label_284
	.word	-16
	.word	4
	.word	_Label_285
	.word	-20
	.word	4
	.word	_Label_286
	.word	-24
	.word	4
	.word	0
_Label_282:
	.ascii	"PrintReadyList\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_286:
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
_Label_3782:
	push	r0
	sub	r1,1,r1
	bne	_Label_3782
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
!   _temp_287 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_287  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_289 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_288 = *_temp_289  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
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
!   _temp_290 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
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
	.word	_Label_291
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_292
	.word	-12
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	_Label_294
	.word	-20
	.word	4
	.word	_Label_295
	.word	-24
	.word	4
	.word	_Label_296
	.word	-28
	.word	4
	.word	_Label_297
	.word	-32
	.word	4
	.word	0
_Label_291:
	.ascii	"ThreadStartMain\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_296:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_297:
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
_Label_3783:
	push	r0
	sub	r1,1,r1
	bne	_Label_3783
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
!   _temp_298 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_299 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
	.word	_Label_300
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_301
	.word	-12
	.word	4
	.word	_Label_302
	.word	-16
	.word	4
	.word	_Label_303
	.word	-20
	.word	4
	.word	0
_Label_300:
	.ascii	"ThreadFinish\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_303:
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
_Label_3784:
	push	r0
	sub	r1,1,r1
	bne	_Label_3784
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
!   _temp_304 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_306		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_306
!	jmp	_Label_305
_Label_305:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_307 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
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
!   _temp_309 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_308 = *_temp_309  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_306:
! CALL STATEMENT...
!   _temp_310 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
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
!   _temp_311 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_312 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
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
	.word	_Label_313
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_314
	.word	8
	.word	4
	.word	_Label_315
	.word	-12
	.word	4
	.word	_Label_316
	.word	-16
	.word	4
	.word	_Label_317
	.word	-20
	.word	4
	.word	_Label_318
	.word	-24
	.word	4
	.word	_Label_319
	.word	-28
	.word	4
	.word	_Label_320
	.word	-32
	.word	4
	.word	_Label_321
	.word	-36
	.word	4
	.word	_Label_322
	.word	-40
	.word	4
	.word	0
_Label_313:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_314:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_322:
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
_Label_3785:
	push	r0
	sub	r1,1,r1
	bne	_Label_3785
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
!   if newStatus != 1 then goto _Label_324		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_324
!	jmp	_Label_323
_Label_323:
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
	jmp	_Label_325
_Label_324:
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
_Label_325:
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
	.word	_Label_326
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_327
	.word	8
	.word	4
	.word	_Label_328
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_327:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_328:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_194_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3786:
	push	r0
	sub	r1,1,r1
	bne	_Label_3786
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
!   if t == 0 then goto _Label_332		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_332
!   _temp_331 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_333
_Label_332:
!   _temp_331 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_333:
!   if _temp_331 then goto _Label_330 else goto _Label_329
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_329
	jmp	_Label_330
_Label_329:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_334 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
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
_Label_330:
! CALL STATEMENT...
!   _temp_335 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
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
!   _temp_337 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_336 = *_temp_337  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_338 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
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
!   _temp_347 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_341
	cmp	r1,2
	be	_Label_342
	cmp	r1,3
	be	_Label_343
	cmp	r1,4
	be	_Label_344
	cmp	r1,5
	be	_Label_345
	jmp	_Label_339
! CASE 1...
_Label_341:
! CALL STATEMENT...
!   _temp_348 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_340
! CASE 2...
_Label_342:
! CALL STATEMENT...
!   _temp_349 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_340
! CASE 3...
_Label_343:
! CALL STATEMENT...
!   _temp_350 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_340
! CASE 4...
_Label_344:
! CALL STATEMENT...
!   _temp_351 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_340
! CASE 5...
_Label_345:
! CALL STATEMENT...
!   _temp_352 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_340
! DEFAULT CASE...
_Label_339:
! CALL STATEMENT...
!   _temp_353 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
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
_Label_340:
! CALL STATEMENT...
!   _temp_354 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_355 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_356 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
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
_RoutineDescriptor__function_194_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_357
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_358
	.word	8
	.word	4
	.word	_Label_359
	.word	-16
	.word	4
	.word	_Label_360
	.word	-20
	.word	4
	.word	_Label_361
	.word	-24
	.word	4
	.word	_Label_362
	.word	-28
	.word	4
	.word	_Label_363
	.word	-32
	.word	4
	.word	_Label_364
	.word	-36
	.word	4
	.word	_Label_365
	.word	-40
	.word	4
	.word	_Label_366
	.word	-44
	.word	4
	.word	_Label_367
	.word	-48
	.word	4
	.word	_Label_368
	.word	-52
	.word	4
	.word	_Label_369
	.word	-56
	.word	4
	.word	_Label_370
	.word	-60
	.word	4
	.word	_Label_371
	.word	-64
	.word	4
	.word	_Label_372
	.word	-68
	.word	4
	.word	_Label_373
	.word	-72
	.word	4
	.word	_Label_374
	.word	-76
	.word	4
	.word	_Label_375
	.word	-9
	.word	1
	.word	_Label_376
	.word	-80
	.word	4
	.word	0
_Label_357:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_358:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_375:
	.byte	'C'
	.ascii	"_temp_331\0"
	.align
_Label_376:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_193_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3787:
	push	r0
	sub	r1,1,r1
	bne	_Label_3787
	mov	1060,r13		! source line 1060
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_377 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
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
_RoutineDescriptor__function_193_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-12
	.word	4
	.word	0
_Label_378:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_379:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
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
	mov	35,r1
_Label_3788:
	push	r0
	sub	r1,1,r1
	bne	_Label_3788
	mov	1070,r13		! source line 1070
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_382 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_381 = *_temp_382  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_381) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_383 = _temp_381 + 28
	load	[r14+-132],r1
	add	r1,28,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_383 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-124],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1085,r13		! source line 1085
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_384 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_384 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	1090,r13		! source line 1090
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! SEND STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_387 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_386 = *_temp_387  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_386) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_388 = _temp_386 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   _temp_385 = _temp_388		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-116]
!   _temp_389 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_385  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_390 = *_temp_391  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_392 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_390  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
! WHILE STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0WH",r10
_Label_393:
!   if i >= 10 then goto _Label_395		(int)
	load	[r14+-140],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_395
!	jmp	_Label_394
_Label_394:
	mov	1098,r13		! source line 1098
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_399 = *_temp_400  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_399) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = _temp_399 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_401 [i ] into _temp_402
!     make sure index expr is >= 0
	load	[r14+-140],r2
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
!   Data Move: _temp_398 = *_temp_402  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_398) then goto _Label_397
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_397
!	jmp	_Label_396
_Label_396:
! THEN...
	mov	1100,r13		! source line 1100
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_405 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_404 = *_temp_405  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_404) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_406 = _temp_404 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_406 [i ] into _temp_407
!     make sure index expr is >= 0
	load	[r14+-140],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_403 = *_temp_407  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_408 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_403  sizeInBytes=4
	load	[r14+-64],r1
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
	mov	1101,r13		! source line 1101
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_410 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_409 = *_temp_410  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_409) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_411 = _temp_409 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_411 [i ] into _temp_412
!     make sure index expr is >= 0
	load	[r14+-140],r2
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
!   Data Move: *_temp_412 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_397:
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-140],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! END WHILE...
	jmp	_Label_393
_Label_395:
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_414 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_413 = *_temp_414  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_413) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_415 = _temp_413 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_415 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_416 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_416 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_417
	.word	4		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_418
	.word	8
	.word	4
	.word	_Label_419
	.word	-12
	.word	4
	.word	_Label_420
	.word	-16
	.word	4
	.word	_Label_421
	.word	-20
	.word	4
	.word	_Label_422
	.word	-24
	.word	4
	.word	_Label_423
	.word	-28
	.word	4
	.word	_Label_424
	.word	-32
	.word	4
	.word	_Label_425
	.word	-36
	.word	4
	.word	_Label_426
	.word	-40
	.word	4
	.word	_Label_427
	.word	-44
	.word	4
	.word	_Label_428
	.word	-48
	.word	4
	.word	_Label_429
	.word	-52
	.word	4
	.word	_Label_430
	.word	-56
	.word	4
	.word	_Label_431
	.word	-60
	.word	4
	.word	_Label_432
	.word	-64
	.word	4
	.word	_Label_433
	.word	-68
	.word	4
	.word	_Label_434
	.word	-72
	.word	4
	.word	_Label_435
	.word	-76
	.word	4
	.word	_Label_436
	.word	-80
	.word	4
	.word	_Label_437
	.word	-84
	.word	4
	.word	_Label_438
	.word	-88
	.word	4
	.word	_Label_439
	.word	-92
	.word	4
	.word	_Label_440
	.word	-96
	.word	4
	.word	_Label_441
	.word	-100
	.word	4
	.word	_Label_442
	.word	-104
	.word	4
	.word	_Label_443
	.word	-108
	.word	4
	.word	_Label_444
	.word	-112
	.word	4
	.word	_Label_445
	.word	-116
	.word	4
	.word	_Label_446
	.word	-120
	.word	4
	.word	_Label_447
	.word	-124
	.word	4
	.word	_Label_448
	.word	-128
	.word	4
	.word	_Label_449
	.word	-132
	.word	4
	.word	_Label_450
	.word	-136
	.word	4
	.word	_Label_451
	.word	-140
	.word	4
	.word	0
_Label_417:
	.ascii	"ProcessFinish\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_450:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_451:
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
_Label_3789:
	push	r0
	sub	r1,1,r1
	bne	_Label_3789
	mov	1615,r13		! source line 1615
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1627,r13		! source line 1627
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
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1628,r13		! source line 1628
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
	.word	_Label_452
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_452:
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
_Label_3790:
	push	r0
	sub	r1,1,r1
	bne	_Label_3790
	mov	1633,r13		! source line 1633
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0IF",r10
!   _temp_456 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_457 = _temp_456 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_455 = *_temp_457  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_455 == 0 then goto _Label_454		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_454
!	jmp	_Label_453
_Label_453:
! THEN...
	mov	1648,r13		! source line 1648
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0SE",r10
!   _temp_459 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_460 = _temp_459 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_458 = *_temp_460  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_458) then goto _runtimeErrorNullPointer
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
_Label_454:
! RETURN STATEMENT...
	mov	1647,r13		! source line 1647
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
	.word	_Label_461
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	0
_Label_461:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_455\0"
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
	mov	1655,r13		! source line 1655
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
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
	.word	_Label_468
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_468:
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
_Label_3791:
	push	r0
	sub	r1,1,r1
	bne	_Label_3791
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
!   _temp_469 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_469  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1676,r13		! source line 1676
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_470
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_471
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_469\0"
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
_Label_3792:
	push	r0
	sub	r1,1,r1
	bne	_Label_3792
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
!   _temp_472 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_473
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_473:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_472\0"
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
_Label_3793:
	push	r0
	sub	r1,1,r1
	bne	_Label_3793
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
!   _temp_475 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_476
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_477
	.word	-12
	.word	4
	.word	0
_Label_476:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
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
_Label_3794:
	push	r0
	sub	r1,1,r1
	bne	_Label_3794
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
!   _temp_478 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_479
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_480
	.word	-12
	.word	4
	.word	0
_Label_479:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_478\0"
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
_Label_3795:
	push	r0
	sub	r1,1,r1
	bne	_Label_3795
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
!   _temp_481 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_482
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_483
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_481\0"
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
_Label_3796:
	push	r0
	sub	r1,1,r1
	bne	_Label_3796
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
!   _temp_484 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1736,r13		! source line 1736
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_485
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
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
_Label_3797:
	push	r0
	sub	r1,1,r1
	bne	_Label_3797
	mov	1741,r13		! source line 1741
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_function_192_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
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
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_192_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3798:
	push	r0
	sub	r1,1,r1
	bne	_Label_3798
	mov	1753,r13		! source line 1753
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_490 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_491 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_494 = *_temp_495  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_494 == 0 then goto _Label_493		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_493
!	jmp	_Label_492
_Label_492:
! THEN...
	mov	1764,r13		! source line 1764
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_497 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_496 = *_temp_497  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_496) then goto _runtimeErrorNullPointer
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
	jmp	_Label_498
_Label_493:
! ELSE...
	mov	1766,r13		! source line 1766
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_499 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1766,r13		! source line 1766
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_498:
! SEND STATEMENT...
	mov	1768,r13		! source line 1768
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
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_500
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_501
	.word	8
	.word	4
	.word	_Label_502
	.word	-12
	.word	4
	.word	_Label_503
	.word	-16
	.word	4
	.word	_Label_504
	.word	-20
	.word	4
	.word	_Label_505
	.word	-24
	.word	4
	.word	_Label_506
	.word	-28
	.word	4
	.word	_Label_507
	.word	-32
	.word	4
	.word	_Label_508
	.word	-36
	.word	4
	.word	0
_Label_500:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_501:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_490\0"
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
_Label_3799:
	push	r0
	sub	r1,1,r1
	bne	_Label_3799
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1800,r13		! source line 1800
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3800
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_509
_Label_3800:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_509
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_509
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_523,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_523:
	jmp	_Label_515	! 1:	
	jmp	_Label_522	! 2:	
	jmp	_Label_512	! 3:	
	jmp	_Label_511	! 4:	
	jmp	_Label_514	! 5:	
	jmp	_Label_513	! 6:	
	jmp	_Label_516	! 7:	
	jmp	_Label_517	! 8:	
	jmp	_Label_518	! 9:	
	jmp	_Label_519	! 10:	
	jmp	_Label_520	! 11:	
	jmp	_Label_521	! 12:	
! CASE 4...
_Label_511:
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0RE",r10
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_512:
! CALL STATEMENT...
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
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
! CASE 6...
_Label_513:
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_514:
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_515:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_516:
! RETURN STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_517:
! RETURN STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_518:
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
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
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_519:
! RETURN STATEMENT...
	mov	1820,r13		! source line 1820
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
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_530  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_530  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_520:
! RETURN STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_531  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_521:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_522:
! CALL STATEMENT...
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
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
! DEFAULT CASE...
_Label_509:
! CALL STATEMENT...
!   _temp_532 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_533 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1833,r13		! source line 1833
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_510:
! RETURN STATEMENT...
	mov	1835,r13		! source line 1835
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
	.word	_Label_534
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_535
	.word	8
	.word	4
	.word	_Label_536
	.word	12
	.word	4
	.word	_Label_537
	.word	16
	.word	4
	.word	_Label_538
	.word	20
	.word	4
	.word	_Label_539
	.word	24
	.word	4
	.word	_Label_540
	.word	-12
	.word	4
	.word	_Label_541
	.word	-16
	.word	4
	.word	_Label_542
	.word	-20
	.word	4
	.word	_Label_543
	.word	-24
	.word	4
	.word	_Label_544
	.word	-28
	.word	4
	.word	_Label_545
	.word	-32
	.word	4
	.word	_Label_546
	.word	-36
	.word	4
	.word	_Label_547
	.word	-40
	.word	4
	.word	_Label_548
	.word	-44
	.word	4
	.word	_Label_549
	.word	-48
	.word	4
	.word	0
_Label_534:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_536:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_538:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_3801:
	push	r0
	sub	r1,1,r1
	bne	_Label_3801
	mov	1840,r13		! source line 1840
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
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
	.word	_Label_550
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_551
	.word	8
	.word	4
	.word	0
_Label_550:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_551:
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
_Label_3802:
	push	r0
	sub	r1,1,r1
	bne	_Label_3802
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_552 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1854,r13		! source line 1854
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1854,r13		! source line 1854
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
	.word	_Label_553
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_554
	.word	-12
	.word	4
	.word	0
_Label_553:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_552\0"
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
_Label_3803:
	push	r0
	sub	r1,1,r1
	bne	_Label_3803
	mov	1860,r13		! source line 1860
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1863,r13		! source line 1863
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
	mov	1863,r13		! source line 1863
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
	.word	_Label_555
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_555:
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
	mov	79,r1
_Label_3804:
	push	r0
	sub	r1,1,r1
	bne	_Label_3804
	mov	1868,r13		! source line 1868
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0AS",r10
	mov	1884,r13		! source line 1884
	mov	"\0\0SE",r10
!   _temp_556 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-288]
!   Send message GetANewProcess
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
	mov	1885,r13		! source line 1885
	mov	"\0\0SE",r10
!   _temp_557 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-284]
!   Send message GetANewThread
	load	[r14+-284],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_558 = newPCB + 24
	load	[r14+-296],r1
	add	r1,24,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_558 = newTh  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r14+-280],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_559 = newPCB + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-276]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-264]
!   Data Move: _temp_561 = *_temp_562  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_561) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = _temp_561 + 12
	load	[r14+-268],r1
	add	r1,12,r1
	store	r1,[r14+-260]
!   Data Move: _temp_560 = *_temp_563  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   Data Move: *_temp_559 = _temp_560  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-276],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = newTh + 4160
	load	[r14+-292],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: *_temp_564 = newPCB  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r14+-256],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = newTh + 76
	load	[r14+-292],r1
	add	r1,76,r1
	store	r1,[r14+-252]
!   Data Move: *_temp_565 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-252],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = newTh + 4096
	load	[r14+-292],r1
	add	r1,4096,r1
	store	r1,[r14+-244]
!   Move address of _temp_567 [0 ] into _temp_568
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   _temp_566 = _temp_568		(4 bytes)
	load	[r14+-240],r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-304]
! ASSIGNMENT STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-300]
! WHILE STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0WH",r10
_Label_569:
!   if i >= 10 then goto _Label_571		(int)
	load	[r14+-300],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_571
!	jmp	_Label_570
_Label_570:
	mov	1900,r13		! source line 1900
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_576 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_575 = *_temp_576  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_575) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = _temp_575 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_577 [i ] into _temp_578
!     make sure index expr is >= 0
	load	[r14+-300],r2
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
!   Data Move: _temp_574 = *_temp_578  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_574) then goto _Label_573
	load	[r14+-236],r1
	cmp	r1,r0
	be	_Label_573
!	jmp	_Label_572
_Label_572:
! THEN...
	mov	1902,r13		! source line 1902
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_580 = *_temp_581  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_580) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = _temp_580 + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-204]
!   Move address of _temp_582 [i ] into _temp_583
!     make sure index expr is >= 0
	load	[r14+-300],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-204],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-200]
!   Data Move: _temp_579 = *_temp_583  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_579) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = _temp_579 + 24
	load	[r14+-216],r1
	add	r1,24,r1
	store	r1,[r14+-196]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_588 = *_temp_589  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_588) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = _temp_588 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_590 [i ] into _temp_591
!     make sure index expr is >= 0
	load	[r14+-300],r2
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
!   Data Move: _temp_587 = *_temp_591  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_587) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = _temp_587 + 24
	load	[r14+-184],r1
	add	r1,24,r1
	store	r1,[r14+-164]
!   Data Move: _temp_586 = *_temp_592  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   _temp_585 = _temp_586 + 1		(int)
	load	[r14+-188],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   Data Move: *_temp_584 = _temp_585  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r14+-196],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = newTh + 4160
	load	[r14+-292],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_593 = *_temp_594  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_593) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = _temp_593 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_595 [i ] into _temp_596
!     make sure index expr is >= 0
	load	[r14+-300],r2
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
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_598 = *_temp_599  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_598) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _temp_598 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_600 [i ] into _temp_601
!     make sure index expr is >= 0
	load	[r14+-300],r2
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
!   Data Move: _temp_597 = *_temp_601  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   Data Move: *_temp_596 = _temp_597  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r14+-148],r2
	store	r1,[r2]
! END IF...
_Label_573:
! ASSIGNMENT STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-300],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
! END WHILE...
	jmp	_Label_569
_Label_571:
! ASSIGNMENT STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0AS",r10
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = newTh + 68
	load	[r14+-292],r1
	add	r1,68,r1
	store	r1,[r14+-124]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = newTh + 88
	load	[r14+-292],r1
	add	r1,88,r1
	store	r1,[r14+-116]
!   Move address of _temp_604 [999 ] into _temp_605
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
!   _temp_603 = _temp_605		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-120]
!   Data Move: *_temp_602 = _temp_603  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-124],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_606 = *_temp_607  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_606) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = _temp_606 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_609 = _temp_608 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: numpages = *_temp_609  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-308]
! SEND STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = newPCB + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_610 = _temp_611		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
!   _temp_612 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_610  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numpages  sizeInBytes=4
	load	[r14+-308],r1
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
	mov	1911,r13		! source line 1911
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-300]
! WHILE STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0WH",r10
_Label_613:
!   if i >= numpages then goto _Label_615		(int)
	load	[r14+-300],r1
	load	[r14+-308],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_615
!	jmp	_Label_614
_Label_614:
	mov	1911,r13		! source line 1911
	mov	"\0\0WB",r10
! CALL STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = newPCB + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_616  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
	mov	1913,r13		! source line 1913
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_619 = *_temp_620  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_619) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = _temp_619 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_618  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_616  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_618  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1913,r13		! source line 1913
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0IF",r10
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_625 = *_temp_626  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_625) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _temp_625 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_624  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_628 = _temp_624 XOR 1		(bool)
	loadb	[r14+-12],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_628 then goto _Label_623 else goto _Label_622
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_622
	jmp	_Label_623
_Label_622:
! THEN...
	mov	1915,r13		! source line 1915
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = newPCB + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_630
_Label_623:
! ELSE...
	mov	1917,r13		! source line 1917
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0IF",r10
	mov	1917,r13		! source line 1917
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
	store	r1,[r14+-36]
!   Data Move: _temp_634 = *_temp_635  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_634) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _temp_634 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_633  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_637 = _temp_633 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_637 then goto _Label_632 else goto _Label_631
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_631
	jmp	_Label_632
_Label_631:
! THEN...
	mov	1918,r13		! source line 1918
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = newPCB + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-300],r1
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
_Label_632:
! END IF...
_Label_630:
! ASSIGNMENT STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-300],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-300]
! END WHILE...
	jmp	_Label_613
_Label_615:
! ASSIGNMENT STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0AS",r10
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldPCint  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-312]
! SEND STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_639 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newTh) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_639  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldPCint  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = newPCB + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_640 = *_temp_641  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_640  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,320,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_642
	.word	0		! total size of parameters
	.word	316		! frame size = 316
	.word	_Label_643
	.word	-16
	.word	4
	.word	_Label_644
	.word	-20
	.word	4
	.word	_Label_645
	.word	-24
	.word	4
	.word	_Label_646
	.word	-28
	.word	4
	.word	_Label_647
	.word	-9
	.word	1
	.word	_Label_648
	.word	-32
	.word	4
	.word	_Label_649
	.word	-36
	.word	4
	.word	_Label_650
	.word	-40
	.word	4
	.word	_Label_651
	.word	-10
	.word	1
	.word	_Label_652
	.word	-44
	.word	4
	.word	_Label_653
	.word	-11
	.word	1
	.word	_Label_654
	.word	-48
	.word	4
	.word	_Label_655
	.word	-52
	.word	4
	.word	_Label_656
	.word	-56
	.word	4
	.word	_Label_657
	.word	-12
	.word	1
	.word	_Label_658
	.word	-60
	.word	4
	.word	_Label_659
	.word	-64
	.word	4
	.word	_Label_660
	.word	-68
	.word	4
	.word	_Label_661
	.word	-72
	.word	4
	.word	_Label_662
	.word	-76
	.word	4
	.word	_Label_663
	.word	-80
	.word	4
	.word	_Label_664
	.word	-84
	.word	4
	.word	_Label_665
	.word	-88
	.word	4
	.word	_Label_666
	.word	-92
	.word	4
	.word	_Label_667
	.word	-96
	.word	4
	.word	_Label_668
	.word	-100
	.word	4
	.word	_Label_669
	.word	-104
	.word	4
	.word	_Label_670
	.word	-108
	.word	4
	.word	_Label_671
	.word	-112
	.word	4
	.word	_Label_672
	.word	-116
	.word	4
	.word	_Label_673
	.word	-120
	.word	4
	.word	_Label_674
	.word	-124
	.word	4
	.word	_Label_675
	.word	-128
	.word	4
	.word	_Label_676
	.word	-132
	.word	4
	.word	_Label_677
	.word	-136
	.word	4
	.word	_Label_678
	.word	-140
	.word	4
	.word	_Label_679
	.word	-144
	.word	4
	.word	_Label_680
	.word	-148
	.word	4
	.word	_Label_681
	.word	-152
	.word	4
	.word	_Label_682
	.word	-156
	.word	4
	.word	_Label_683
	.word	-160
	.word	4
	.word	_Label_684
	.word	-164
	.word	4
	.word	_Label_685
	.word	-168
	.word	4
	.word	_Label_686
	.word	-172
	.word	4
	.word	_Label_687
	.word	-176
	.word	4
	.word	_Label_688
	.word	-180
	.word	4
	.word	_Label_689
	.word	-184
	.word	4
	.word	_Label_690
	.word	-188
	.word	4
	.word	_Label_691
	.word	-192
	.word	4
	.word	_Label_692
	.word	-196
	.word	4
	.word	_Label_693
	.word	-200
	.word	4
	.word	_Label_694
	.word	-204
	.word	4
	.word	_Label_695
	.word	-208
	.word	4
	.word	_Label_696
	.word	-212
	.word	4
	.word	_Label_697
	.word	-216
	.word	4
	.word	_Label_698
	.word	-220
	.word	4
	.word	_Label_699
	.word	-224
	.word	4
	.word	_Label_700
	.word	-228
	.word	4
	.word	_Label_701
	.word	-232
	.word	4
	.word	_Label_702
	.word	-236
	.word	4
	.word	_Label_703
	.word	-240
	.word	4
	.word	_Label_704
	.word	-244
	.word	4
	.word	_Label_705
	.word	-248
	.word	4
	.word	_Label_706
	.word	-252
	.word	4
	.word	_Label_707
	.word	-256
	.word	4
	.word	_Label_708
	.word	-260
	.word	4
	.word	_Label_709
	.word	-264
	.word	4
	.word	_Label_710
	.word	-268
	.word	4
	.word	_Label_711
	.word	-272
	.word	4
	.word	_Label_712
	.word	-276
	.word	4
	.word	_Label_713
	.word	-280
	.word	4
	.word	_Label_714
	.word	-284
	.word	4
	.word	_Label_715
	.word	-288
	.word	4
	.word	_Label_716
	.word	-292
	.word	4
	.word	_Label_717
	.word	-296
	.word	4
	.word	_Label_718
	.word	-300
	.word	4
	.word	_Label_719
	.word	-304
	.word	4
	.word	_Label_720
	.word	-308
	.word	4
	.word	_Label_721
	.word	-312
	.word	4
	.word	0
_Label_642:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_647:
	.byte	'C'
	.ascii	"_temp_637\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_651:
	.byte	'C'
	.ascii	"_temp_633\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_653:
	.byte	'C'
	.ascii	"_temp_628\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_657:
	.byte	'C'
	.ascii	"_temp_624\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_716:
	.byte	'P'
	.ascii	"newTh\0"
	.align
_Label_717:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_718:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_719:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_720:
	.byte	'I'
	.ascii	"numpages\0"
	.align
_Label_721:
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
_Label_3805:
	push	r0
	sub	r1,1,r1
	bne	_Label_3805
	mov	1934,r13		! source line 1934
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_723 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_722 = *_temp_723  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_722) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_724 = _temp_722 + 32
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
!   _temp_726 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_726 [0 ] into _temp_727
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
!   _temp_725 = _temp_727		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1942,r13		! source line 1942
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_728 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_728 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_729 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_729 [999 ] into _temp_730
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
!   initSystemStackTop = _temp_730		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_731 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_731 [14 ] into _temp_732
!     make sure index expr is >= 0
	mov	14,r2
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
!   Data Move: initUserStackTop = *_temp_732  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-60]
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
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
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
	.word	_Label_733
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_734
	.word	8
	.word	4
	.word	_Label_735
	.word	-12
	.word	4
	.word	_Label_736
	.word	-16
	.word	4
	.word	_Label_737
	.word	-20
	.word	4
	.word	_Label_738
	.word	-24
	.word	4
	.word	_Label_739
	.word	-28
	.word	4
	.word	_Label_740
	.word	-32
	.word	4
	.word	_Label_741
	.word	-36
	.word	4
	.word	_Label_742
	.word	-40
	.word	4
	.word	_Label_743
	.word	-44
	.word	4
	.word	_Label_744
	.word	-48
	.word	4
	.word	_Label_745
	.word	-52
	.word	4
	.word	_Label_746
	.word	-56
	.word	4
	.word	_Label_747
	.word	-60
	.word	4
	.word	_Label_748
	.word	-64
	.word	4
	.word	0
_Label_733:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_734:
	.byte	'I'
	.ascii	"userPC\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_746:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_747:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_748:
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
_Label_3806:
	push	r0
	sub	r1,1,r1
	bne	_Label_3806
	mov	1955,r13		! source line 1955
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
! WHILE STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0WH",r10
_Label_749:
!   if i >= 10 then goto _Label_751		(int)
	load	[r14+-108],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_751
!	jmp	_Label_750
_Label_750:
	mov	1964,r13		! source line 1964
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0IF",r10
!   _temp_757 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_758 = _temp_757 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_758 [i ] into _temp_759
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_760 = _temp_759 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_756 = *_temp_760  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if processID != _temp_756 then goto _Label_753		(int)
	load	[r14+8],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bne	_Label_753
!	jmp	_Label_755
_Label_755:
!   _temp_762 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_763 = _temp_762 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_763 [i ] into _temp_764
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_765 = _temp_764 + 20
	load	[r14+-72],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: _temp_761 = *_temp_765  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_761 == 3 then goto _Label_753		(int)
	load	[r14+-84],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_753
!	jmp	_Label_754
_Label_754:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_768 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_767 = *_temp_768  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_767) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_769 = _temp_767 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_766 = *_temp_769  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_771 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_772 = _temp_771 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_772 [i ] into _temp_773
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_774 = _temp_773 + 16
	load	[r14+-36],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_770 = *_temp_774  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_766 != _temp_770 then goto _Label_753		(int)
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bne	_Label_753
!	jmp	_Label_752
_Label_752:
! THEN...
	mov	1971,r13		! source line 1971
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
	mov	1971,r13		! source line 1971
	mov	"\0\0SE",r10
!   _temp_776 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_777 = _temp_776 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_777 [i ] into _temp_778
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_775 = _temp_778		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_779 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_775  sizeInBytes=4
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
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
!   ReturnResult: returnStatus  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_753:
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
! END WHILE...
	jmp	_Label_749
_Label_751:
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
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
	.word	_Label_780
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_781
	.word	8
	.word	4
	.word	_Label_782
	.word	-12
	.word	4
	.word	_Label_783
	.word	-16
	.word	4
	.word	_Label_784
	.word	-20
	.word	4
	.word	_Label_785
	.word	-24
	.word	4
	.word	_Label_786
	.word	-28
	.word	4
	.word	_Label_787
	.word	-32
	.word	4
	.word	_Label_788
	.word	-36
	.word	4
	.word	_Label_789
	.word	-40
	.word	4
	.word	_Label_790
	.word	-44
	.word	4
	.word	_Label_791
	.word	-48
	.word	4
	.word	_Label_792
	.word	-52
	.word	4
	.word	_Label_793
	.word	-56
	.word	4
	.word	_Label_794
	.word	-60
	.word	4
	.word	_Label_795
	.word	-64
	.word	4
	.word	_Label_796
	.word	-68
	.word	4
	.word	_Label_797
	.word	-72
	.word	4
	.word	_Label_798
	.word	-76
	.word	4
	.word	_Label_799
	.word	-80
	.word	4
	.word	_Label_800
	.word	-84
	.word	4
	.word	_Label_801
	.word	-88
	.word	4
	.word	_Label_802
	.word	-92
	.word	4
	.word	_Label_803
	.word	-96
	.word	4
	.word	_Label_804
	.word	-100
	.word	4
	.word	_Label_805
	.word	-104
	.word	4
	.word	_Label_806
	.word	-108
	.word	4
	.word	_Label_807
	.word	-112
	.word	4
	.word	0
_Label_780:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_806:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_807:
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
_Label_3807:
	push	r0
	sub	r1,1,r1
	bne	_Label_3807
	mov	1983,r13		! source line 1983
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3808:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3808
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! SEND STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0SE",r10
!   _temp_809 = &newAddrSpace
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
	mov	1999,r13		! source line 1999
	mov	"\0\0AS",r10
	mov	1999,r13		! source line 1999
	mov	"\0\0SE",r10
!   _temp_810 = &strBuffer
	add	r14,-252,r1
	store	r1,[r14+-104]
!   _temp_811 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_813 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_812 = *_temp_813  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_812) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_814 = _temp_812 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_810  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_811  sizeInBytes=4
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
	mov	2001,r13		! source line 2001
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_816		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_816
!	jmp	_Label_815
_Label_815:
! THEN...
	mov	2002,r13		! source line 2002
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_816:
! ASSIGNMENT STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0AS",r10
	mov	2004,r13		! source line 2004
	mov	"\0\0SE",r10
!   _temp_817 = &strBuffer
	add	r14,-252,r1
	store	r1,[r14+-84]
!   _temp_818 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_817  sizeInBytes=4
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
	mov	2006,r13		! source line 2006
	mov	"\0\0IF",r10
!   if pOF == 0 then goto _Label_822		(int)
	load	[r14+-208],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_822
!   _temp_821 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_823
_Label_822:
!   _temp_821 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_823:
!   if _temp_821 then goto _Label_820 else goto _Label_819
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_819
	jmp	_Label_820
_Label_819:
! THEN...
	mov	2007,r13		! source line 2007
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_820:
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   _temp_824 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (pOF) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_824  sizeInBytes=4
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
	mov	2011,r13		! source line 2011
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_826		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_826
!	jmp	_Label_825
_Label_825:
! THEN...
	mov	2012,r13		! source line 2012
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_826:
! ASSIGNMENT STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_827 = *_temp_828  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_827) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = _temp_827 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_829 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3809:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3809
! SEND STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_832 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_831 = *_temp_832  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_831) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_833 = _temp_831 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_830 = _temp_833		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_834 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_830  sizeInBytes=4
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
	mov	2017,r13		! source line 2017
	mov	"\0\0SE",r10
!   _temp_835 = &_P_Kernel_fileManager
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
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   _temp_837 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_838 = _temp_837 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_836 = *_temp_838  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_836 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_839 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_839 [999 ] into _temp_840
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
!   initSystemStackTop = _temp_840		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_841 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_841 = 1  (sizeInBytes=1)
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
	mov	2023,r13		! source line 2023
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2025,r13		! source line 2025
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
	.word	_Label_842
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_843
	.word	8
	.word	4
	.word	_Label_844
	.word	-16
	.word	4
	.word	_Label_845
	.word	-20
	.word	4
	.word	_Label_846
	.word	-24
	.word	4
	.word	_Label_847
	.word	-28
	.word	4
	.word	_Label_848
	.word	-32
	.word	4
	.word	_Label_849
	.word	-36
	.word	4
	.word	_Label_850
	.word	-40
	.word	4
	.word	_Label_851
	.word	-44
	.word	4
	.word	_Label_852
	.word	-48
	.word	4
	.word	_Label_853
	.word	-52
	.word	4
	.word	_Label_854
	.word	-56
	.word	4
	.word	_Label_855
	.word	-60
	.word	4
	.word	_Label_856
	.word	-64
	.word	4
	.word	_Label_857
	.word	-68
	.word	4
	.word	_Label_858
	.word	-72
	.word	4
	.word	_Label_859
	.word	-76
	.word	4
	.word	_Label_860
	.word	-9
	.word	1
	.word	_Label_861
	.word	-80
	.word	4
	.word	_Label_862
	.word	-84
	.word	4
	.word	_Label_863
	.word	-88
	.word	4
	.word	_Label_864
	.word	-92
	.word	4
	.word	_Label_865
	.word	-96
	.word	4
	.word	_Label_866
	.word	-100
	.word	4
	.word	_Label_867
	.word	-104
	.word	4
	.word	_Label_868
	.word	-108
	.word	4
	.word	_Label_869
	.word	-112
	.word	4
	.word	_Label_870
	.word	-204
	.word	92
	.word	_Label_871
	.word	-208
	.word	4
	.word	_Label_872
	.word	-212
	.word	4
	.word	_Label_873
	.word	-216
	.word	4
	.word	_Label_874
	.word	-220
	.word	4
	.word	_Label_875
	.word	-224
	.word	4
	.word	_Label_876
	.word	-228
	.word	4
	.word	_Label_877
	.word	-252
	.word	24
	.word	0
_Label_842:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_843:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_860:
	.byte	'C'
	.ascii	"_temp_821\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_870:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_871:
	.byte	'P'
	.ascii	"pOF\0"
	.align
_Label_872:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_873:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_874:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_875:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_876:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_877:
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
_Label_3810:
	push	r0
	sub	r1,1,r1
	bne	_Label_3810
	mov	2030,r13		! source line 2030
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_878 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_879 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_880 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2038,r13		! source line 2038
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_881 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_881  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2039,r13		! source line 2039
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
	mov	2040,r13		! source line 2040
	mov	"\0\0SE",r10
!   _temp_882 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-32]
!   _temp_883 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_885 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_884 = *_temp_885  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_884) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_886 = _temp_884 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_882  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_883  sizeInBytes=4
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
!   _temp_887 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2041,r13		! source line 2041
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2044,r13		! source line 2044
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
	.word	_Label_888
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_889
	.word	8
	.word	4
	.word	_Label_890
	.word	-12
	.word	4
	.word	_Label_891
	.word	-16
	.word	4
	.word	_Label_892
	.word	-20
	.word	4
	.word	_Label_893
	.word	-24
	.word	4
	.word	_Label_894
	.word	-28
	.word	4
	.word	_Label_895
	.word	-32
	.word	4
	.word	_Label_896
	.word	-36
	.word	4
	.word	_Label_897
	.word	-40
	.word	4
	.word	_Label_898
	.word	-44
	.word	4
	.word	_Label_899
	.word	-48
	.word	4
	.word	_Label_900
	.word	-72
	.word	24
	.word	_Label_901
	.word	-76
	.word	4
	.word	0
_Label_888:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_889:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_900:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_901:
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
	mov	30,r1
_Label_3811:
	push	r0
	sub	r1,1,r1
	bne	_Label_3811
	mov	2049,r13		! source line 2049
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   _temp_902 = &strBuffer
	add	r14,-96,r1
	store	r1,[r14+-72]
!   _temp_903 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_905 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_904 = *_temp_905  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_904) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_906 = _temp_904 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_902  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_903  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   idx = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
! WHILE STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0WH",r10
_Label_907:
!   if i >= 10 then goto _Label_909		(int)
	load	[r14+-112],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_909
!	jmp	_Label_908
_Label_908:
	mov	2061,r13		! source line 2061
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_914 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_913 = *_temp_914  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_913) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_915 = _temp_913 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_915 [i ] into _temp_916
!     make sure index expr is >= 0
	load	[r14+-112],r2
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
!   Data Move: _temp_912 = *_temp_916  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_912) then goto _Label_910
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_910
	jmp	_Label_911
_Label_910:
! THEN...
	mov	2063,r13		! source line 2063
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   idx = i		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-104]
! BREAK STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0BR",r10
	jmp	_Label_909
! END IF...
_Label_911:
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-112],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! END WHILE...
	jmp	_Label_907
_Label_909:
! IF STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0IF",r10
!   if idx != -1 then goto _Label_918		(int)
	load	[r14+-104],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_918
!	jmp	_Label_917
_Label_917:
! THEN...
	mov	2069,r13		! source line 2069
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_918:
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
	mov	2073,r13		! source line 2073
	mov	"\0\0SE",r10
!   _temp_919 = &strBuffer
	add	r14,-96,r1
	store	r1,[r14+-32]
!   _temp_920 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_919  sizeInBytes=4
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
!   Retrieve Result: targetName=newOF  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0IF",r10
!   if intIsZero (newOF) then goto _Label_921
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_921
	jmp	_Label_922
_Label_921:
! THEN...
	mov	2075,r13		! source line 2075
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_922:
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_924 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_923 = *_temp_924  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_923) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_925 = _temp_923 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_925 [idx ] into _temp_926
!     make sure index expr is >= 0
	load	[r14+-104],r2
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
!   Data Move: *_temp_926 = newOF  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0RE",r10
!   ReturnResult: idx  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_927
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_928
	.word	8
	.word	4
	.word	_Label_929
	.word	-12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	_Label_931
	.word	-20
	.word	4
	.word	_Label_932
	.word	-24
	.word	4
	.word	_Label_933
	.word	-28
	.word	4
	.word	_Label_934
	.word	-32
	.word	4
	.word	_Label_935
	.word	-36
	.word	4
	.word	_Label_936
	.word	-40
	.word	4
	.word	_Label_937
	.word	-44
	.word	4
	.word	_Label_938
	.word	-48
	.word	4
	.word	_Label_939
	.word	-52
	.word	4
	.word	_Label_940
	.word	-56
	.word	4
	.word	_Label_941
	.word	-60
	.word	4
	.word	_Label_942
	.word	-64
	.word	4
	.word	_Label_943
	.word	-68
	.word	4
	.word	_Label_944
	.word	-72
	.word	4
	.word	_Label_945
	.word	-96
	.word	24
	.word	_Label_946
	.word	-100
	.word	4
	.word	_Label_947
	.word	-104
	.word	4
	.word	_Label_948
	.word	-108
	.word	4
	.word	_Label_949
	.word	-112
	.word	4
	.word	0
_Label_927:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_928:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_945:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_946:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_947:
	.byte	'I'
	.ascii	"idx\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"newOF\0"
	.align
_Label_949:
	.byte	'I'
	.ascii	"i\0"
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
	mov	77,r1
_Label_3812:
	push	r0
	sub	r1,1,r1
	bne	_Label_3812
	mov	2087,r13		! source line 2087
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_952		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_952
	jmp	_Label_950
_Label_952:
!   if fileDesc >= 0 then goto _Label_951		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_951
!	jmp	_Label_950
_Label_950:
! THEN...
	mov	2108,r13		! source line 2108
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_951:
! IF STATEMENT...
	mov	2111,r13		! source line 2111
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
	store	r1,[r14+-252]
!   Data Move: _temp_956 = *_temp_957  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_956) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = _temp_956 + 124
	load	[r14+-256],r1
	add	r1,124,r1
	store	r1,[r14+-248]
!   Move address of _temp_958 [fileDesc ] into _temp_959
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-248],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-244]
!   Data Move: _temp_955 = *_temp_959  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_955) then goto _Label_953
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_953
	jmp	_Label_954
_Label_953:
! THEN...
	mov	2112,r13		! source line 2112
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_954:
! IF STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_961		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_961
!	jmp	_Label_960
_Label_960:
! THEN...
	mov	2116,r13		! source line 2116
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_961:
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_963 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_962 = *_temp_963  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_962) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_964 = _temp_962 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_964 [fileDesc ] into _temp_965
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
!   Data Move: readingOF = *_temp_965  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_967 = readingOF + 20
	load	[r14+-264],r1
	add	r1,20,r1
	store	r1,[r14+-220]
!   Data Move: _temp_966 = *_temp_967  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_966) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_968 = _temp_966 + 24
	load	[r14+-224],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   Data Move: sizeOfFile = *_temp_968  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_969 = readingOF + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-212]
!   Data Move: nextPosInFile = *_temp_969  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-284]
! WHILE STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0WH",r10
_Label_970:
!	jmp	_Label_971
_Label_971:
	mov	2128,r13		! source line 2128
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! IF STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0IF",r10
!   _temp_975 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_975 <= sizeOfFile then goto _Label_974		(int)
	load	[r14+-208],r1
	load	[r14+-296],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_974
!	jmp	_Label_973
_Label_973:
! THEN...
	mov	2131,r13		! source line 2131
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-296],r1
	load	[r14+-284],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_974:
! IF STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0IF",r10
!   _temp_978 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_978 <= sizeInBytes then goto _Label_977		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_977
!	jmp	_Label_976
_Label_976:
! THEN...
	mov	2134,r13		! source line 2134
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_977:
! IF STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_980		(int)
	load	[r14+-288],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_980
!	jmp	_Label_979
_Label_979:
! THEN...
	mov	2138,r13		! source line 2138
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0BR",r10
	jmp	_Label_972
! END IF...
_Label_980:
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
	mov	2141,r13		! source line 2141
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_981 = *_temp_982  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_981) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_983 = _temp_981 + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=ifValid  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_984 = *_temp_985  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_984) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _temp_984 + 32
	load	[r14+-188],r1
	add	r1,32,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=ifWritable  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
! IF STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0IF",r10
!   _temp_992 = ifValid XOR 0		(bool)
	loadb	[r14+-13],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_992 then goto _Label_991 else goto _Label_987
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_987
	jmp	_Label_991
_Label_991:
!   _temp_993 = ifWritable XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_993 then goto _Label_990 else goto _Label_987
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_987
	jmp	_Label_990
_Label_990:
!   if virtPage >= 0 then goto _Label_989		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_989
	jmp	_Label_987
_Label_989:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_997 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_996 = *_temp_997  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_996) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_998 = _temp_996 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   _temp_999 = _temp_998 + 4
	load	[r14+-160],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Data Move: _temp_995 = *_temp_999  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   _temp_994 = _temp_995 - 1		(int)
	load	[r14+-172],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
!   if virtPage <= _temp_994 then goto _Label_988		(int)
	load	[r14+-272],r1
	load	[r14+-176],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	2145,r13		! source line 2145
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_988:
! ASSIGNMENT STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1001		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1001
!	jmp	_Label_1000
_Label_1000:
! THEN...
	mov	2154,r13		! source line 2154
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0BR",r10
	jmp	_Label_972
! END IF...
_Label_1001:
! END WHILE...
	jmp	_Label_970
_Label_972:
! ASSIGNMENT STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1003 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1002 = *_temp_1003  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1002) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1004 = _temp_1002 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1004 [fileDesc ] into _temp_1005
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
!   Data Move: readingOF = *_temp_1005  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1007 = readingOF + 20
	load	[r14+-264],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1006 = *_temp_1007  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1006) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1008 = _temp_1006 + 24
	load	[r14+-136],r1
	add	r1,24,r1
	store	r1,[r14+-128]
!   Data Move: sizeOfFile = *_temp_1008  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1009 = readingOF + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: nextPosInFile = *_temp_1009  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-284]
! WHILE STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0WH",r10
_Label_1010:
!	jmp	_Label_1011
_Label_1011:
	mov	2169,r13		! source line 2169
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! IF STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0IF",r10
!   _temp_1015 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1015 <= sizeOfFile then goto _Label_1014		(int)
	load	[r14+-120],r1
	load	[r14+-296],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1014
!	jmp	_Label_1013
_Label_1013:
! THEN...
	mov	2172,r13		! source line 2172
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-296],r1
	load	[r14+-284],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1014:
! IF STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0IF",r10
!   _temp_1018 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1018 <= sizeInBytes then goto _Label_1017		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1017
!	jmp	_Label_1016
_Label_1016:
! THEN...
	mov	2175,r13		! source line 2175
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1017:
! IF STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1020		(int)
	load	[r14+-288],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1020
!	jmp	_Label_1019
_Label_1019:
! THEN...
	mov	2179,r13		! source line 2179
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0BR",r10
	jmp	_Label_1012
! END IF...
_Label_1020:
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1022 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1021 = *_temp_1022  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1021) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1023 = _temp_1021 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=ifValid  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
	mov	2183,r13		! source line 2183
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1025 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1024 = *_temp_1025  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1024) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1026 = _temp_1024 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=ifWritable  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
! IF STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0IF",r10
!   _temp_1032 = ifValid XOR 0		(bool)
	loadb	[r14+-13],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1032 then goto _Label_1031 else goto _Label_1027
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1027
	jmp	_Label_1031
_Label_1031:
!   _temp_1033 = ifWritable XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1033 then goto _Label_1030 else goto _Label_1027
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1027
	jmp	_Label_1030
_Label_1030:
!   if virtPage >= 0 then goto _Label_1029		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1029
	jmp	_Label_1027
_Label_1029:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1036 = *_temp_1037  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1036) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1038 = _temp_1036 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_1039 = _temp_1038 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1035 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_1034 = _temp_1035 - 1		(int)
	load	[r14+-84],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
!   if virtPage <= _temp_1034 then goto _Label_1028		(int)
	load	[r14+-272],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1028
!	jmp	_Label_1027
_Label_1027:
! THEN...
	mov	2186,r13		! source line 2186
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1028:
! SEND STATEMENT...
	mov	2190,r13		! source line 2190
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
	store	r1,[r14+-60]
!   Data Move: _temp_1040 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1040) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1042 = _temp_1040 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1044 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1043 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1043) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1045 = _temp_1043 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
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
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
	mov	2192,r13		! source line 2192
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1047 = *_temp_1048  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1047) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1049 = _temp_1047 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1046  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1046 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_1050 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=readingOF  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readRet  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1052		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1052
!	jmp	_Label_1051
_Label_1051:
! THEN...
	mov	2203,r13		! source line 2203
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0BR",r10
	jmp	_Label_1012
! END IF...
_Label_1052:
! END WHILE...
	jmp	_Label_1010
_Label_1012:
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = readingOF + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1053 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-280],r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1054
	.word	12		! total size of parameters
	.word	308		! frame size = 308
	.word	_Label_1055
	.word	8
	.word	4
	.word	_Label_1056
	.word	12
	.word	4
	.word	_Label_1057
	.word	16
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
	.word	_Label_1062
	.word	-36
	.word	4
	.word	_Label_1063
	.word	-40
	.word	4
	.word	_Label_1064
	.word	-44
	.word	4
	.word	_Label_1065
	.word	-48
	.word	4
	.word	_Label_1066
	.word	-52
	.word	4
	.word	_Label_1067
	.word	-56
	.word	4
	.word	_Label_1068
	.word	-60
	.word	4
	.word	_Label_1069
	.word	-64
	.word	4
	.word	_Label_1070
	.word	-68
	.word	4
	.word	_Label_1071
	.word	-72
	.word	4
	.word	_Label_1072
	.word	-76
	.word	4
	.word	_Label_1073
	.word	-80
	.word	4
	.word	_Label_1074
	.word	-84
	.word	4
	.word	_Label_1075
	.word	-88
	.word	4
	.word	_Label_1076
	.word	-9
	.word	1
	.word	_Label_1077
	.word	-10
	.word	1
	.word	_Label_1078
	.word	-92
	.word	4
	.word	_Label_1079
	.word	-96
	.word	4
	.word	_Label_1080
	.word	-100
	.word	4
	.word	_Label_1081
	.word	-104
	.word	4
	.word	_Label_1082
	.word	-108
	.word	4
	.word	_Label_1083
	.word	-112
	.word	4
	.word	_Label_1084
	.word	-116
	.word	4
	.word	_Label_1085
	.word	-120
	.word	4
	.word	_Label_1086
	.word	-124
	.word	4
	.word	_Label_1087
	.word	-128
	.word	4
	.word	_Label_1088
	.word	-132
	.word	4
	.word	_Label_1089
	.word	-136
	.word	4
	.word	_Label_1090
	.word	-140
	.word	4
	.word	_Label_1091
	.word	-144
	.word	4
	.word	_Label_1092
	.word	-148
	.word	4
	.word	_Label_1093
	.word	-152
	.word	4
	.word	_Label_1094
	.word	-156
	.word	4
	.word	_Label_1095
	.word	-160
	.word	4
	.word	_Label_1096
	.word	-164
	.word	4
	.word	_Label_1097
	.word	-168
	.word	4
	.word	_Label_1098
	.word	-172
	.word	4
	.word	_Label_1099
	.word	-176
	.word	4
	.word	_Label_1100
	.word	-11
	.word	1
	.word	_Label_1101
	.word	-12
	.word	1
	.word	_Label_1102
	.word	-180
	.word	4
	.word	_Label_1103
	.word	-184
	.word	4
	.word	_Label_1104
	.word	-188
	.word	4
	.word	_Label_1105
	.word	-192
	.word	4
	.word	_Label_1106
	.word	-196
	.word	4
	.word	_Label_1107
	.word	-200
	.word	4
	.word	_Label_1108
	.word	-204
	.word	4
	.word	_Label_1109
	.word	-208
	.word	4
	.word	_Label_1110
	.word	-212
	.word	4
	.word	_Label_1111
	.word	-216
	.word	4
	.word	_Label_1112
	.word	-220
	.word	4
	.word	_Label_1113
	.word	-224
	.word	4
	.word	_Label_1114
	.word	-228
	.word	4
	.word	_Label_1115
	.word	-232
	.word	4
	.word	_Label_1116
	.word	-236
	.word	4
	.word	_Label_1117
	.word	-240
	.word	4
	.word	_Label_1118
	.word	-244
	.word	4
	.word	_Label_1119
	.word	-248
	.word	4
	.word	_Label_1120
	.word	-252
	.word	4
	.word	_Label_1121
	.word	-256
	.word	4
	.word	_Label_1122
	.word	-260
	.word	4
	.word	_Label_1123
	.word	-264
	.word	4
	.word	_Label_1124
	.word	-268
	.word	4
	.word	_Label_1125
	.word	-272
	.word	4
	.word	_Label_1126
	.word	-276
	.word	4
	.word	_Label_1127
	.word	-280
	.word	4
	.word	_Label_1128
	.word	-284
	.word	4
	.word	_Label_1129
	.word	-288
	.word	4
	.word	_Label_1130
	.word	-13
	.word	1
	.word	_Label_1131
	.word	-14
	.word	1
	.word	_Label_1132
	.word	-292
	.word	4
	.word	_Label_1133
	.word	-15
	.word	1
	.word	_Label_1134
	.word	-296
	.word	4
	.word	0
_Label_1054:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1055:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1056:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1057:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1076:
	.byte	'C'
	.ascii	"_temp_1033\0"
	.align
_Label_1077:
	.byte	'C'
	.ascii	"_temp_1032\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1100:
	.byte	'C'
	.ascii	"_temp_993\0"
	.align
_Label_1101:
	.byte	'C'
	.ascii	"_temp_992\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1123:
	.byte	'P'
	.ascii	"readingOF\0"
	.align
_Label_1124:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1125:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1126:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1127:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1128:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1129:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1130:
	.byte	'B'
	.ascii	"ifValid\0"
	.align
_Label_1131:
	.byte	'B'
	.ascii	"ifWritable\0"
	.align
_Label_1132:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1133:
	.byte	'B'
	.ascii	"readRet\0"
	.align
_Label_1134:
	.byte	'I'
	.ascii	"sizeOfFile\0"
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
	mov	74,r1
_Label_3813:
	push	r0
	sub	r1,1,r1
	bne	_Label_3813
	mov	2231,r13		! source line 2231
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1137		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1137
	jmp	_Label_1135
_Label_1137:
!   if fileDesc >= 0 then goto _Label_1136		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1136
!	jmp	_Label_1135
_Label_1135:
! THEN...
	mov	2252,r13		! source line 2252
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1136:
! IF STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1142 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_1141 = *_temp_1142  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_1141) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1143 = _temp_1141 + 124
	load	[r14+-244],r1
	add	r1,124,r1
	store	r1,[r14+-236]
!   Move address of _temp_1143 [fileDesc ] into _temp_1144
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-232]
!   Data Move: _temp_1140 = *_temp_1144  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1140) then goto _Label_1138
	load	[r14+-248],r1
	cmp	r1,r0
	be	_Label_1138
	jmp	_Label_1139
_Label_1138:
! THEN...
	mov	2256,r13		! source line 2256
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1139:
! IF STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1146		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1146
!	jmp	_Label_1145
_Label_1145:
! THEN...
	mov	2260,r13		! source line 2260
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1146:
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1148 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1147 = *_temp_1148  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_1147) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1149 = _temp_1147 + 124
	load	[r14+-228],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   Move address of _temp_1149 [fileDesc ] into _temp_1150
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Data Move: readingOF = *_temp_1150  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1152 = readingOF + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-208]
!   Data Move: _temp_1151 = *_temp_1152  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_1151) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1153 = _temp_1151 + 24
	load	[r14+-212],r1
	add	r1,24,r1
	store	r1,[r14+-204]
!   Data Move: sizeOfFile = *_temp_1153  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1154 = readingOF + 16
	load	[r14+-252],r1
	add	r1,16,r1
	store	r1,[r14+-200]
!   Data Move: nextPosInFile = *_temp_1154  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-272]
! WHILE STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0WH",r10
_Label_1155:
!	jmp	_Label_1156
_Label_1156:
	mov	2272,r13		! source line 2272
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0IF",r10
!   _temp_1160 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
!   if _temp_1160 <= sizeOfFile then goto _Label_1159		(int)
	load	[r14+-196],r1
	load	[r14+-284],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1159
!	jmp	_Label_1158
_Label_1158:
! THEN...
	mov	2275,r13		! source line 2275
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-284],r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! END IF...
_Label_1159:
! IF STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0IF",r10
!   _temp_1163 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   if _temp_1163 <= sizeInBytes then goto _Label_1162		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1162
!	jmp	_Label_1161
_Label_1161:
! THEN...
	mov	2278,r13		! source line 2278
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! END IF...
_Label_1162:
! IF STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1165		(int)
	load	[r14+-276],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1165
!	jmp	_Label_1164
_Label_1164:
! THEN...
	mov	2282,r13		! source line 2282
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0BR",r10
	jmp	_Label_1157
! END IF...
_Label_1165:
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1167 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1166 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1166) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = _temp_1166 + 32
	load	[r14+-188],r1
	add	r1,32,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=ifValid  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1169 = *_temp_1170  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1169) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1171 = _temp_1169 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=ifWritable  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
! IF STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0IF",r10
!   _temp_1177 = ifValid XOR 0		(bool)
	loadb	[r14+-13],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_1177 then goto _Label_1176 else goto _Label_1172
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1172
	jmp	_Label_1176
_Label_1176:
!   _temp_1178 = ifWritable XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1178 then goto _Label_1175 else goto _Label_1172
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1172
	jmp	_Label_1175
_Label_1175:
!   if virtPage >= 0 then goto _Label_1174		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1174
	jmp	_Label_1172
_Label_1174:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1182 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1181 = *_temp_1182  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1181) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1183 = _temp_1181 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   _temp_1184 = _temp_1183 + 4
	load	[r14+-148],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1180 = *_temp_1184  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   _temp_1179 = _temp_1180 - 1		(int)
	load	[r14+-160],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   if virtPage <= _temp_1179 then goto _Label_1173		(int)
	load	[r14+-260],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1173
!	jmp	_Label_1172
_Label_1172:
! THEN...
	mov	2289,r13		! source line 2289
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1173:
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-260],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1186		(int)
	load	[r14+-268],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1186
!	jmp	_Label_1185
_Label_1185:
! THEN...
	mov	2298,r13		! source line 2298
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0BR",r10
	jmp	_Label_1157
! END IF...
_Label_1186:
! END WHILE...
	jmp	_Label_1155
_Label_1157:
! ASSIGNMENT STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-256],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1187 = *_temp_1188  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1187) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = _temp_1187 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1189 [fileDesc ] into _temp_1190
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
!   Data Move: readingOF = *_temp_1190  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1192 = readingOF + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1191 = *_temp_1192  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1191) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = _temp_1191 + 24
	load	[r14+-124],r1
	add	r1,24,r1
	store	r1,[r14+-116]
!   Data Move: sizeOfFile = *_temp_1193  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1194 = readingOF + 16
	load	[r14+-252],r1
	add	r1,16,r1
	store	r1,[r14+-112]
!   Data Move: nextPosInFile = *_temp_1194  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-272]
! WHILE STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0WH",r10
_Label_1195:
!	jmp	_Label_1196
_Label_1196:
	mov	2313,r13		! source line 2313
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0IF",r10
!   _temp_1200 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if _temp_1200 <= sizeOfFile then goto _Label_1199		(int)
	load	[r14+-108],r1
	load	[r14+-284],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1199
!	jmp	_Label_1198
_Label_1198:
! THEN...
	mov	2316,r13		! source line 2316
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-284],r1
	load	[r14+-272],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! END IF...
_Label_1199:
! IF STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0IF",r10
!   _temp_1203 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
!   if _temp_1203 <= sizeInBytes then goto _Label_1202		(int)
	load	[r14+-104],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1202
!	jmp	_Label_1201
_Label_1201:
! THEN...
	mov	2319,r13		! source line 2319
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! END IF...
_Label_1202:
! IF STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1205		(int)
	load	[r14+-276],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1205
!	jmp	_Label_1204
_Label_1204:
! THEN...
	mov	2323,r13		! source line 2323
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0BR",r10
	jmp	_Label_1197
! END IF...
_Label_1205:
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1207 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1206 = *_temp_1207  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1206) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1208 = _temp_1206 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=ifValid  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0AS",r10
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1210 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1209 = *_temp_1210  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1209) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1211 = _temp_1209 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=ifWritable  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
! IF STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0IF",r10
!   _temp_1217 = ifValid XOR 0		(bool)
	loadb	[r14+-13],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1217 then goto _Label_1216 else goto _Label_1212
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1212
	jmp	_Label_1216
_Label_1216:
!   _temp_1218 = ifWritable XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1218 then goto _Label_1215 else goto _Label_1212
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1212
	jmp	_Label_1215
_Label_1215:
!   if virtPage >= 0 then goto _Label_1214		(int)
	load	[r14+-260],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1214
	jmp	_Label_1212
_Label_1214:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1222 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1221 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1221) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1223 = _temp_1221 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_1224 = _temp_1223 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1220 = *_temp_1224  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_1219 = _temp_1220 - 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   if virtPage <= _temp_1219 then goto _Label_1213		(int)
	load	[r14+-260],r1
	load	[r14+-76],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1213
!	jmp	_Label_1212
_Label_1212:
! THEN...
	mov	2330,r13		! source line 2330
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1213:
! SEND STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1226 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1225 = *_temp_1226  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1225) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1227 = _temp_1225 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
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
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
	mov	2336,r13		! source line 2336
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1230 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1229 = *_temp_1230  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1229) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1231 = _temp_1229 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1228  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1228 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
	mov	2337,r13		! source line 2337
	mov	"\0\0SE",r10
!   _temp_1232 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=readingOF  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=writeRet  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
! ASSIGNMENT STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-260],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1234		(int)
	load	[r14+-268],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1234
!	jmp	_Label_1233
_Label_1233:
! THEN...
	mov	2347,r13		! source line 2347
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0BR",r10
	jmp	_Label_1197
! END IF...
_Label_1234:
! END WHILE...
	jmp	_Label_1195
_Label_1197:
! ASSIGNMENT STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0AS",r10
!   if intIsZero (readingOF) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1235 = readingOF + 16
	load	[r14+-252],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1235 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-268],r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1236
	.word	12		! total size of parameters
	.word	296		! frame size = 296
	.word	_Label_1237
	.word	8
	.word	4
	.word	_Label_1238
	.word	12
	.word	4
	.word	_Label_1239
	.word	16
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
	.word	_Label_1246
	.word	-44
	.word	4
	.word	_Label_1247
	.word	-48
	.word	4
	.word	_Label_1248
	.word	-52
	.word	4
	.word	_Label_1249
	.word	-56
	.word	4
	.word	_Label_1250
	.word	-60
	.word	4
	.word	_Label_1251
	.word	-64
	.word	4
	.word	_Label_1252
	.word	-68
	.word	4
	.word	_Label_1253
	.word	-72
	.word	4
	.word	_Label_1254
	.word	-76
	.word	4
	.word	_Label_1255
	.word	-9
	.word	1
	.word	_Label_1256
	.word	-10
	.word	1
	.word	_Label_1257
	.word	-80
	.word	4
	.word	_Label_1258
	.word	-84
	.word	4
	.word	_Label_1259
	.word	-88
	.word	4
	.word	_Label_1260
	.word	-92
	.word	4
	.word	_Label_1261
	.word	-96
	.word	4
	.word	_Label_1262
	.word	-100
	.word	4
	.word	_Label_1263
	.word	-104
	.word	4
	.word	_Label_1264
	.word	-108
	.word	4
	.word	_Label_1265
	.word	-112
	.word	4
	.word	_Label_1266
	.word	-116
	.word	4
	.word	_Label_1267
	.word	-120
	.word	4
	.word	_Label_1268
	.word	-124
	.word	4
	.word	_Label_1269
	.word	-128
	.word	4
	.word	_Label_1270
	.word	-132
	.word	4
	.word	_Label_1271
	.word	-136
	.word	4
	.word	_Label_1272
	.word	-140
	.word	4
	.word	_Label_1273
	.word	-144
	.word	4
	.word	_Label_1274
	.word	-148
	.word	4
	.word	_Label_1275
	.word	-152
	.word	4
	.word	_Label_1276
	.word	-156
	.word	4
	.word	_Label_1277
	.word	-160
	.word	4
	.word	_Label_1278
	.word	-164
	.word	4
	.word	_Label_1279
	.word	-11
	.word	1
	.word	_Label_1280
	.word	-12
	.word	1
	.word	_Label_1281
	.word	-168
	.word	4
	.word	_Label_1282
	.word	-172
	.word	4
	.word	_Label_1283
	.word	-176
	.word	4
	.word	_Label_1284
	.word	-180
	.word	4
	.word	_Label_1285
	.word	-184
	.word	4
	.word	_Label_1286
	.word	-188
	.word	4
	.word	_Label_1287
	.word	-192
	.word	4
	.word	_Label_1288
	.word	-196
	.word	4
	.word	_Label_1289
	.word	-200
	.word	4
	.word	_Label_1290
	.word	-204
	.word	4
	.word	_Label_1291
	.word	-208
	.word	4
	.word	_Label_1292
	.word	-212
	.word	4
	.word	_Label_1293
	.word	-216
	.word	4
	.word	_Label_1294
	.word	-220
	.word	4
	.word	_Label_1295
	.word	-224
	.word	4
	.word	_Label_1296
	.word	-228
	.word	4
	.word	_Label_1297
	.word	-232
	.word	4
	.word	_Label_1298
	.word	-236
	.word	4
	.word	_Label_1299
	.word	-240
	.word	4
	.word	_Label_1300
	.word	-244
	.word	4
	.word	_Label_1301
	.word	-248
	.word	4
	.word	_Label_1302
	.word	-252
	.word	4
	.word	_Label_1303
	.word	-256
	.word	4
	.word	_Label_1304
	.word	-260
	.word	4
	.word	_Label_1305
	.word	-264
	.word	4
	.word	_Label_1306
	.word	-268
	.word	4
	.word	_Label_1307
	.word	-272
	.word	4
	.word	_Label_1308
	.word	-276
	.word	4
	.word	_Label_1309
	.word	-13
	.word	1
	.word	_Label_1310
	.word	-14
	.word	1
	.word	_Label_1311
	.word	-280
	.word	4
	.word	_Label_1312
	.word	-15
	.word	1
	.word	_Label_1313
	.word	-284
	.word	4
	.word	0
_Label_1236:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1237:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1238:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1239:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1255:
	.byte	'C'
	.ascii	"_temp_1218\0"
	.align
_Label_1256:
	.byte	'C'
	.ascii	"_temp_1217\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1279:
	.byte	'C'
	.ascii	"_temp_1178\0"
	.align
_Label_1280:
	.byte	'C'
	.ascii	"_temp_1177\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1302:
	.byte	'P'
	.ascii	"readingOF\0"
	.align
_Label_1303:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1304:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1305:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1306:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1307:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1308:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1309:
	.byte	'B'
	.ascii	"ifValid\0"
	.align
_Label_1310:
	.byte	'B'
	.ascii	"ifWritable\0"
	.align
_Label_1311:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1312:
	.byte	'B'
	.ascii	"writeRet\0"
	.align
_Label_1313:
	.byte	'I'
	.ascii	"sizeOfFile\0"
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
_Label_3814:
	push	r0
	sub	r1,1,r1
	bne	_Label_3814
	mov	2373,r13		! source line 2373
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1314 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2375,r13		! source line 2375
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1315 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2376,r13		! source line 2376
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2377,r13		! source line 2377
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2378,r13		! source line 2378
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1316 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1316  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2379,r13		! source line 2379
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2380,r13		! source line 2380
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2381,r13		! source line 2381
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2384,r13		! source line 2384
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
	.word	_Label_1317
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1318
	.word	8
	.word	4
	.word	_Label_1319
	.word	12
	.word	4
	.word	_Label_1320
	.word	-12
	.word	4
	.word	_Label_1321
	.word	-16
	.word	4
	.word	_Label_1322
	.word	-20
	.word	4
	.word	0
_Label_1317:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1318:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1319:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1314\0"
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
_Label_3815:
	push	r0
	sub	r1,1,r1
	bne	_Label_3815
	mov	2390,r13		! source line 2390
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1323 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2392,r13		! source line 2392
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1324 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1324  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2393,r13		! source line 2393
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2394,r13		! source line 2394
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2395,r13		! source line 2395
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2395,r13		! source line 2395
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
	.word	_Label_1325
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1326
	.word	8
	.word	4
	.word	_Label_1327
	.word	-12
	.word	4
	.word	_Label_1328
	.word	-16
	.word	4
	.word	0
_Label_1325:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1326:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1323\0"
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
_Label_3816:
	push	r0
	sub	r1,1,r1
	bne	_Label_3816
	mov	2401,r13		! source line 2401
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
	mov	2405,r13		! source line 2405
	mov	"\0\0SE",r10
!   _temp_1329 = &_P_Kernel_threadManager
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
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
!   _temp_1330 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1330  sizeInBytes=4
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
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_1331 = _function_191_StartUserProcess
	set	_function_191_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_1332 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1331  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1332  sizeInBytes=4
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
	mov	2407,r13		! source line 2407
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
	.word	_Label_1333
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1334
	.word	-12
	.word	4
	.word	_Label_1335
	.word	-16
	.word	4
	.word	_Label_1336
	.word	-20
	.word	4
	.word	_Label_1337
	.word	-24
	.word	4
	.word	_Label_1338
	.word	-28
	.word	4
	.word	0
_Label_1333:
	.ascii	"InitFirstProcess\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1338:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_191_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3817:
	push	r0
	sub	r1,1,r1
	bne	_Label_3817
	mov	2412,r13		! source line 2412
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
	mov	2423,r13		! source line 2423
	mov	"\0\0SE",r10
!   _temp_1339 = &_P_Kernel_processManager
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
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1340 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1340 = pPCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1341 = pPCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1341 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0AS",r10
	mov	2426,r13		! source line 2426
	mov	"\0\0SE",r10
!   _temp_1342 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-56]
!   _temp_1343 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1342  sizeInBytes=4
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
	mov	2427,r13		! source line 2427
	mov	"\0\0AS",r10
	mov	2427,r13		! source line 2427
	mov	"\0\0SE",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1345 = pPCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_1344 = _temp_1345		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (pOF) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1344  sizeInBytes=4
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
	mov	2428,r13		! source line 2428
	mov	"\0\0SE",r10
!   _temp_1346 = &_P_Kernel_fileManager
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
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1348 = pPCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_1349 = _temp_1348 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1347 = *_temp_1349  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_1347 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1350 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_1350 [999 ] into _temp_1351
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
!   initSystemStackTop = _temp_1351		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2433,r13		! source line 2433
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0SE",r10
!   if intIsZero (pPCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1352 = pPCB + 32
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
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1353 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1353 = 1  (sizeInBytes=1)
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
	mov	2440,r13		! source line 2440
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_1354
	.word	0		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1355
	.word	-12
	.word	4
	.word	_Label_1356
	.word	-16
	.word	4
	.word	_Label_1357
	.word	-20
	.word	4
	.word	_Label_1358
	.word	-24
	.word	4
	.word	_Label_1359
	.word	-28
	.word	4
	.word	_Label_1360
	.word	-32
	.word	4
	.word	_Label_1361
	.word	-36
	.word	4
	.word	_Label_1362
	.word	-40
	.word	4
	.word	_Label_1363
	.word	-44
	.word	4
	.word	_Label_1364
	.word	-48
	.word	4
	.word	_Label_1365
	.word	-52
	.word	4
	.word	_Label_1366
	.word	-56
	.word	4
	.word	_Label_1367
	.word	-60
	.word	4
	.word	_Label_1368
	.word	-64
	.word	4
	.word	_Label_1369
	.word	-68
	.word	4
	.word	_Label_1370
	.word	-72
	.word	4
	.word	_Label_1371
	.word	-76
	.word	4
	.word	_Label_1372
	.word	-80
	.word	4
	.word	_Label_1373
	.word	-84
	.word	4
	.word	_Label_1374
	.word	-88
	.word	4
	.word	_Label_1375
	.word	-92
	.word	4
	.word	0
_Label_1354:
	.ascii	"StartUserProcess\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1370:
	.byte	'P'
	.ascii	"pPCB\0"
	.align
_Label_1371:
	.byte	'P'
	.ascii	"pOF\0"
	.align
_Label_1372:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1373:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_1374:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1375:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_190_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3818:
	push	r0
	sub	r1,1,r1
	bne	_Label_3818
	mov	3031,r13		! source line 3031
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3033,r13		! source line 3033
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3035,r13		! source line 3035
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1376 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1376  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0AS",r10
!   _temp_1377 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1377) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1379 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1379) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1378 = *_temp_1379  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1377 = _temp_1378  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0AS",r10
!   _temp_1380 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1380) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1382 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1382) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1381 = *_temp_1382  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1380 = _temp_1381  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0AS",r10
!   _temp_1383 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1383) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1385 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1385) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1384 = *_temp_1385  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1383 = _temp_1384  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1386
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1387
	.word	8
	.word	4
	.word	_Label_1388
	.word	12
	.word	4
	.word	_Label_1389
	.word	-16
	.word	4
	.word	_Label_1390
	.word	-9
	.word	1
	.word	_Label_1391
	.word	-20
	.word	4
	.word	_Label_1392
	.word	-24
	.word	4
	.word	_Label_1393
	.word	-10
	.word	1
	.word	_Label_1394
	.word	-28
	.word	4
	.word	_Label_1395
	.word	-32
	.word	4
	.word	_Label_1396
	.word	-11
	.word	1
	.word	_Label_1397
	.word	-36
	.word	4
	.word	_Label_1398
	.word	-12
	.word	1
	.word	_Label_1399
	.word	-40
	.word	4
	.word	_Label_1400
	.word	-44
	.word	4
	.word	0
_Label_1386:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1387:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1388:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1390:
	.byte	'C'
	.ascii	"_temp_1384\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1393:
	.byte	'C'
	.ascii	"_temp_1381\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1396:
	.byte	'C'
	.ascii	"_temp_1378\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1398:
	.byte	'C'
	.ascii	"_temp_1376\0"
	.align
_Label_1399:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1400:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_189_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_printFCB,r1
	push	r1
	mov	3,r1
_Label_3819:
	push	r0
	sub	r1,1,r1
	bne	_Label_3819
	mov	3041,r13		! source line 3041
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1402 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1401 = *_temp_1402  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1401  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3042,r13		! source line 3042
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3043,r13		! source line 3043
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_printFCB:
	.word	_sourceFileName
	.word	_Label_1403
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1404
	.word	8
	.word	4
	.word	_Label_1405
	.word	-12
	.word	4
	.word	_Label_1406
	.word	-16
	.word	4
	.word	0
_Label_1403:
	.ascii	"printFCB\0"
	.align
_Label_1404:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_188_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_printOpen,r1
	push	r1
	mov	4,r1
_Label_3820:
	push	r0
	sub	r1,1,r1
	bne	_Label_3820
	mov	3046,r13		! source line 3046
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1407 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1407  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3047,r13		! source line 3047
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1408 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1408  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3048,r13		! source line 3048
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1409 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1409  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3049,r13		! source line 3049
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3050,r13		! source line 3050
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
	mov	3050,r13		! source line 3050
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_printOpen:
	.word	_sourceFileName
	.word	_Label_1410
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1411
	.word	8
	.word	4
	.word	_Label_1412
	.word	-12
	.word	4
	.word	_Label_1413
	.word	-16
	.word	4
	.word	_Label_1414
	.word	-20
	.word	4
	.word	0
_Label_1410:
	.ascii	"printOpen\0"
	.align
_Label_1411:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1415
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1415:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1416
	.word	_sourceFileName
	.word	128		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1416:
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
_Label_3821:
	push	r0
	sub	r1,1,r1
	bne	_Label_3821
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1418		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1418
!	jmp	_Label_1417
_Label_1417:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1419 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
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
_Label_1418:
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
	.word	_Label_1421
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1422
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1423
	.word	12
	.word	4
	.word	_Label_1424
	.word	-12
	.word	4
	.word	_Label_1425
	.word	-16
	.word	4
	.word	0
_Label_1421:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1422:
	.ascii	"Pself\0"
	.align
_Label_1423:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1419\0"
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
_Label_3822:
	push	r0
	sub	r1,1,r1
	bne	_Label_3822
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
!   if count != 2147483647 then goto _Label_1427		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1427
!	jmp	_Label_1426
_Label_1426:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1428 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
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
_Label_1427:
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
!   if count > 0 then goto _Label_1430		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1430
!	jmp	_Label_1429
_Label_1429:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_1431 = &waitingThreads
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
!   _temp_1432 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1432 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1433 = &_P_Kernel_readyList
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
_Label_1430:
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
	.word	_Label_1434
	.word	4		! total size of parameters
	.word	32		! frame size = 32
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
	.word	0
_Label_1434:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
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
	.ascii	"_temp_1428\0"
	.align
_Label_1440:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1441:
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
_Label_3823:
	push	r0
	sub	r1,1,r1
	bne	_Label_3823
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
!   if count != -2147483648 then goto _Label_1443		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1443
!	jmp	_Label_1442
_Label_1442:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1444 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1444  sizeInBytes=4
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
_Label_1443:
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
!   if count >= 0 then goto _Label_1446		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1446
!	jmp	_Label_1445
_Label_1445:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_1447 = &waitingThreads
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
_Label_1446:
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
	.word	_Label_1448
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1450
	.word	-12
	.word	4
	.word	_Label_1451
	.word	-16
	.word	4
	.word	_Label_1452
	.word	-20
	.word	4
	.word	0
_Label_1448:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1449:
	.ascii	"Pself\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1452:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1453
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1453:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1454
	.word	_sourceFileName
	.word	141		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1454:
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
_Label_3824:
	push	r0
	sub	r1,1,r1
	bne	_Label_3824
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
	.word	_Label_1456
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1458
	.word	-12
	.word	4
	.word	0
_Label_1456:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1457:
	.ascii	"Pself\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1455\0"
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
_Label_3825:
	push	r0
	sub	r1,1,r1
	bne	_Label_3825
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1460		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1460
!	jmp	_Label_1459
_Label_1459:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1461 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1461  sizeInBytes=4
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
_Label_1460:
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
!   if heldBy == 0 then goto _Label_1465		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1465
!   _temp_1464 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1466
_Label_1465:
!   _temp_1464 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1466:
!   if _temp_1464 then goto _Label_1463 else goto _Label_1462
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1462
	jmp	_Label_1463
_Label_1462:
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
	jmp	_Label_1467
_Label_1463:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_1468 = &waitingThreads
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
_Label_1467:
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
	.word	_Label_1469
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1471
	.word	-16
	.word	4
	.word	_Label_1472
	.word	-9
	.word	1
	.word	_Label_1473
	.word	-20
	.word	4
	.word	_Label_1474
	.word	-24
	.word	4
	.word	0
_Label_1469:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1470:
	.ascii	"Pself\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1472:
	.byte	'C'
	.ascii	"_temp_1464\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1474:
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
_Label_3826:
	push	r0
	sub	r1,1,r1
	bne	_Label_3826
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1476		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1476
!	jmp	_Label_1475
_Label_1475:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1477 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1477  sizeInBytes=4
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
_Label_1476:
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
!   _temp_1478 = &waitingThreads
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
!   if t == 0 then goto _Label_1480		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1480
!	jmp	_Label_1479
_Label_1479:
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
!   _temp_1481 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1481 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_1482 = &_P_Kernel_readyList
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
	jmp	_Label_1483
_Label_1480:
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
_Label_1483:
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
	.word	_Label_1484
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1485
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1486
	.word	-12
	.word	4
	.word	_Label_1487
	.word	-16
	.word	4
	.word	_Label_1488
	.word	-20
	.word	4
	.word	_Label_1489
	.word	-24
	.word	4
	.word	_Label_1490
	.word	-28
	.word	4
	.word	_Label_1491
	.word	-32
	.word	4
	.word	0
_Label_1484:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1485:
	.ascii	"Pself\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1490:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1491:
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
_Label_3827:
	push	r0
	sub	r1,1,r1
	bne	_Label_3827
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1494		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1494
!	jmp	_Label_1493
_Label_1493:
!   _temp_1492 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1495
_Label_1494:
!   _temp_1492 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1495:
!   ReturnResult: _temp_1492  (sizeInBytes=1)
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
	.word	_Label_1496
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1497
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1498
	.word	-9
	.word	1
	.word	0
_Label_1496:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1497:
	.ascii	"Pself\0"
	.align
_Label_1498:
	.byte	'C'
	.ascii	"_temp_1492\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1499
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1499:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1500
	.word	_sourceFileName
	.word	155		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1500:
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
_Label_3828:
	push	r0
	sub	r1,1,r1
	bne	_Label_3828
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
	.word	_Label_1502
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1503
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1504
	.word	-12
	.word	4
	.word	0
_Label_1502:
	.ascii	"Condition"
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
_Label_3829:
	push	r0
	sub	r1,1,r1
	bne	_Label_3829
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
!   Retrieve Result: targetName=_temp_1507  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1507 then goto _Label_1506 else goto _Label_1505
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1505
	jmp	_Label_1506
_Label_1505:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1508 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
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
_Label_1506:
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
!   _temp_1509 = &waitingThreads
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
	.word	_Label_1510
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1512
	.word	12
	.word	4
	.word	_Label_1513
	.word	-16
	.word	4
	.word	_Label_1514
	.word	-20
	.word	4
	.word	_Label_1515
	.word	-9
	.word	1
	.word	_Label_1516
	.word	-24
	.word	4
	.word	0
_Label_1510:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1511:
	.ascii	"Pself\0"
	.align
_Label_1512:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1515:
	.byte	'C'
	.ascii	"_temp_1507\0"
	.align
_Label_1516:
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
_Label_3830:
	push	r0
	sub	r1,1,r1
	bne	_Label_3830
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
!   Retrieve Result: targetName=_temp_1519  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1519 then goto _Label_1518 else goto _Label_1517
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1517
	jmp	_Label_1518
_Label_1517:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1520 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1520  sizeInBytes=4
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
_Label_1518:
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
!   _temp_1521 = &waitingThreads
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
!   if t == 0 then goto _Label_1523		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1523
!	jmp	_Label_1522
_Label_1522:
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
!   _temp_1524 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1524 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_1525 = &_P_Kernel_readyList
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
_Label_1523:
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
	.word	_Label_1526
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1528
	.word	12
	.word	4
	.word	_Label_1529
	.word	-16
	.word	4
	.word	_Label_1530
	.word	-20
	.word	4
	.word	_Label_1531
	.word	-24
	.word	4
	.word	_Label_1532
	.word	-28
	.word	4
	.word	_Label_1533
	.word	-9
	.word	1
	.word	_Label_1534
	.word	-32
	.word	4
	.word	_Label_1535
	.word	-36
	.word	4
	.word	0
_Label_1526:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1527:
	.ascii	"Pself\0"
	.align
_Label_1528:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1533:
	.byte	'C'
	.ascii	"_temp_1519\0"
	.align
_Label_1534:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1535:
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
_Label_3831:
	push	r0
	sub	r1,1,r1
	bne	_Label_3831
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
!   Retrieve Result: targetName=_temp_1538  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1538 then goto _Label_1537 else goto _Label_1536
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1536
	jmp	_Label_1537
_Label_1536:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1539 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1539  sizeInBytes=4
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
_Label_1537:
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
_Label_1540:
!	jmp	_Label_1541
_Label_1541:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_1543 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1544
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1544
	jmp	_Label_1545
_Label_1544:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_1542
! END IF...
_Label_1545:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1546 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1546 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_1547 = &_P_Kernel_readyList
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
	jmp	_Label_1540
_Label_1542:
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
	.word	_Label_1548
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1549
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1550
	.word	12
	.word	4
	.word	_Label_1551
	.word	-16
	.word	4
	.word	_Label_1552
	.word	-20
	.word	4
	.word	_Label_1553
	.word	-24
	.word	4
	.word	_Label_1554
	.word	-28
	.word	4
	.word	_Label_1555
	.word	-9
	.word	1
	.word	_Label_1556
	.word	-32
	.word	4
	.word	_Label_1557
	.word	-36
	.word	4
	.word	0
_Label_1548:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1549:
	.ascii	"Pself\0"
	.align
_Label_1550:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1555:
	.byte	'C'
	.ascii	"_temp_1538\0"
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
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1558
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
_Label_1558:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1559
	.word	_sourceFileName
	.word	168		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1559:
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
_Label_3832:
	push	r0
	sub	r1,1,r1
	bne	_Label_3832
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
!   _temp_1560 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1560) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1560 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_1561 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1561 [0 ] into _temp_1562
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
!   Data Move: *_temp_1562 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_1563 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1563 [999 ] into _temp_1564
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
!   Data Move: *_temp_1564 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1565 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1565 [999 ] into _temp_1566
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
!   stackTop = _temp_1566		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1567 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1569 = &_temp_1568
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1569 = _temp_1569 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1571:
!   Data Move: *_temp_1569 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1569 = _temp_1569 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1570 = _temp_1570 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1570) then goto _Label_1571
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1571
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1572 = &_temp_1568
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3833
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3833:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1567 = *_temp_1572  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3834:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3834
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
!   _temp_1573 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1575 = &_temp_1574
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1575 = _temp_1575 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1577:
!   Data Move: *_temp_1575 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1575 = _temp_1575 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1576 = _temp_1576 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1576) then goto _Label_1577
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1577
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1578 = &_temp_1574
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3835
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3835:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1573 = *_temp_1578  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3836:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3836
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
	.word	_Label_1579
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1580
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1581
	.word	12
	.word	4
	.word	_Label_1582
	.word	-12
	.word	4
	.word	_Label_1583
	.word	-16
	.word	4
	.word	_Label_1584
	.word	-20
	.word	4
	.word	_Label_1585
	.word	-84
	.word	64
	.word	_Label_1586
	.word	-88
	.word	4
	.word	_Label_1587
	.word	-92
	.word	4
	.word	_Label_1588
	.word	-96
	.word	4
	.word	_Label_1589
	.word	-100
	.word	4
	.word	_Label_1590
	.word	-156
	.word	56
	.word	_Label_1591
	.word	-160
	.word	4
	.word	_Label_1592
	.word	-164
	.word	4
	.word	_Label_1593
	.word	-168
	.word	4
	.word	_Label_1594
	.word	-172
	.word	4
	.word	_Label_1595
	.word	-176
	.word	4
	.word	_Label_1596
	.word	-180
	.word	4
	.word	_Label_1597
	.word	-184
	.word	4
	.word	_Label_1598
	.word	-188
	.word	4
	.word	0
_Label_1579:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1580:
	.ascii	"Pself\0"
	.align
_Label_1581:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1560\0"
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
_Label_3837:
	push	r0
	sub	r1,1,r1
	bne	_Label_3837
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
!   _temp_1599 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1599  (sizeInBytes=4)
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
!   _temp_1601 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1600  sizeInBytes=4
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
	.word	_Label_1602
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	12
	.word	4
	.word	_Label_1605
	.word	16
	.word	4
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
	.word	0
_Label_1602:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1609:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1610:
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
_Label_3838:
	push	r0
	sub	r1,1,r1
	bne	_Label_3838
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1613 == _P_Kernel_currentThread then goto _Label_1612		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1612
!	jmp	_Label_1611
_Label_1611:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1614 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1614  sizeInBytes=4
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
_Label_1612:
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
!   _temp_1615 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1617		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1617
!	jmp	_Label_1616
_Label_1616:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1619		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1619
!	jmp	_Label_1618
_Label_1618:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1620 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1620  sizeInBytes=4
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
_Label_1619:
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
!   _temp_1622 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1621  sizeInBytes=4
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
_Label_1617:
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
	.word	_Label_1623
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	-24
	.word	4
	.word	_Label_1629
	.word	-28
	.word	4
	.word	_Label_1630
	.word	-32
	.word	4
	.word	_Label_1631
	.word	-36
	.word	4
	.word	_Label_1632
	.word	-40
	.word	4
	.word	_Label_1633
	.word	-44
	.word	4
	.word	0
_Label_1623:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
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
	.ascii	"_temp_1621\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1631:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1632:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1633:
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
_Label_3839:
	push	r0
	sub	r1,1,r1
	bne	_Label_3839
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1635		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1635
!	jmp	_Label_1634
_Label_1634:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1636 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1636  sizeInBytes=4
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
_Label_1635:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1639 == _P_Kernel_currentThread then goto _Label_1638		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1638
!	jmp	_Label_1637
_Label_1637:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1640 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1640  sizeInBytes=4
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
_Label_1638:
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
!   _temp_1641 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1642
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1642
	jmp	_Label_1643
_Label_1642:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1644 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1644  sizeInBytes=4
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
_Label_1643:
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
	.word	_Label_1645
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1647
	.word	-12
	.word	4
	.word	_Label_1648
	.word	-16
	.word	4
	.word	_Label_1649
	.word	-20
	.word	4
	.word	_Label_1650
	.word	-24
	.word	4
	.word	_Label_1651
	.word	-28
	.word	4
	.word	_Label_1652
	.word	-32
	.word	4
	.word	0
_Label_1645:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1646:
	.ascii	"Pself\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1652:
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
_Label_3840:
	push	r0
	sub	r1,1,r1
	bne	_Label_3840
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_1656 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1656 [0 ] into _temp_1657
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
!   Data Move: _temp_1655 = *_temp_1657  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1655 == 606348324 then goto _Label_1654		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1654
!	jmp	_Label_1653
_Label_1653:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1658 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1658  sizeInBytes=4
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
	jmp	_Label_1659
_Label_1654:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1663 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1663 [999 ] into _temp_1664
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
!   Data Move: _temp_1662 = *_temp_1664  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1662 == 606348324 then goto _Label_1661		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1661
!	jmp	_Label_1660
_Label_1660:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1665 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1665  sizeInBytes=4
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
_Label_1661:
! END IF...
_Label_1659:
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
	.word	_Label_1666
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1668
	.word	-12
	.word	4
	.word	_Label_1669
	.word	-16
	.word	4
	.word	_Label_1670
	.word	-20
	.word	4
	.word	_Label_1671
	.word	-24
	.word	4
	.word	_Label_1672
	.word	-28
	.word	4
	.word	_Label_1673
	.word	-32
	.word	4
	.word	_Label_1674
	.word	-36
	.word	4
	.word	_Label_1675
	.word	-40
	.word	4
	.word	0
_Label_1666:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1667:
	.ascii	"Pself\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1655\0"
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
_Label_3841:
	push	r0
	sub	r1,1,r1
	bne	_Label_3841
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
!   _temp_1676 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
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
!   _temp_1677 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1677  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1679 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1680 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
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
!   _temp_1685 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1686 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1685  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1681:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1686 then goto _Label_1684		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1684
_Label_1682:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1687 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1688 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1689 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1691 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1691 [i ] into _temp_1692
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
!   Data Move: _temp_1690 = *_temp_1692  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1693 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1695 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1695 [i ] into _temp_1696
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
!   Data Move: _temp_1694 = *_temp_1696  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1697 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1683:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1681
! END FOR
_Label_1684:
! CALL STATEMENT...
!   _temp_1698 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-116]
!   _temp_1699 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1699  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1700 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-108]
!   _temp_1702 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1702 [0 ] into _temp_1703
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
!   _temp_1701 = _temp_1703		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1701  sizeInBytes=4
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
	be	_Label_1706
	cmp	r1,2
	be	_Label_1707
	cmp	r1,3
	be	_Label_1708
	cmp	r1,4
	be	_Label_1709
	cmp	r1,5
	be	_Label_1710
	jmp	_Label_1704
! CASE 1...
_Label_1706:
! CALL STATEMENT...
!   _temp_1711 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1711  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_1705
! CASE 2...
_Label_1707:
! CALL STATEMENT...
!   _temp_1712 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1712  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_1705
! CASE 3...
_Label_1708:
! CALL STATEMENT...
!   _temp_1713 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1713  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_1705
! CASE 4...
_Label_1709:
! CALL STATEMENT...
!   _temp_1714 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1714  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_1705
! CASE 5...
_Label_1710:
! CALL STATEMENT...
!   _temp_1715 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1715  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_1705
! DEFAULT CASE...
_Label_1704:
! CALL STATEMENT...
!   _temp_1716 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
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
_Label_1705:
! CALL STATEMENT...
!   _temp_1717 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
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
!   _temp_1718 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
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
!   _temp_1723 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1724 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1723  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1719:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1724 then goto _Label_1722		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1722
_Label_1720:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1725 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1725  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1726 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1726  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1727 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1729 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1729 [i ] into _temp_1730
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
!   Data Move: _temp_1728 = *_temp_1730  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1728  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1731 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1733 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1733 [i ] into _temp_1734
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
!   Data Move: _temp_1732 = *_temp_1734  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1732  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1735 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1721:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1719
! END FOR
_Label_1722:
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
	.word	_Label_1736
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1737
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1782
	.word	-188
	.word	4
	.word	_Label_1783
	.word	-192
	.word	4
	.word	_Label_1784
	.word	-196
	.word	4
	.word	0
_Label_1736:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1737:
	.ascii	"Pself\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1713\0"
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
	.ascii	"_temp_1703\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1783:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1784:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1785
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1785:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1786
	.word	_sourceFileName
	.word	195		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1786:
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
_Label_3842:
	push	r0
	sub	r1,1,r1
	bne	_Label_3842
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   _temp_1787 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1789 = &_temp_1788
	set	-45892,r1
	add	r14,r1,r1
	store	r1,[r14+-4248]
!   _temp_1789 = _temp_1789 + 4
	load	[r14+-4248],r1
	add	r1,4,r1
	store	r1,[r14+-4248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1791 = zeros  (sizeInBytes=4164)
	add	r14,-4240,r4
	mov	1041,r3
_Label_3843:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3843
!   _temp_1791 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4240]
	mov	10,r1
	store	r1,[r14+-4244]
_Label_1793:
!   Data Move: *_temp_1789 = _temp_1791  (sizeInBytes=4164)
	add	r14,-4240,r5
	load	[r14+-4248],r4
	mov	1041,r3
_Label_3844:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3844
!   _temp_1789 = _temp_1789 + 4164
	load	[r14+-4248],r1
	add	r1,4164,r1
	store	r1,[r14+-4248]
!   _temp_1790 = _temp_1790 + -1
	load	[r14+-4244],r1
	add	r1,-1,r1
	store	r1,[r14+-4244]
!   if intNotZero (_temp_1790) then goto _Label_1793
	load	[r14+-4244],r1
	cmp	r1,r0
	bne	_Label_1793
!   Initialize the array size...
	mov	10,r1
	set	-45892,r2
	store	r1,[r14+r2]
!   _temp_1794 = &_temp_1788
	set	-45892,r1
	add	r14,r1,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	set	-45896,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3845
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3845:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1787 = *_temp_1794  (sizeInBytes=41644)
	load	[r14+-72],r5
	set	-45896,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3846:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3846
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
!   _temp_1798 = &threadManagerLock
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
!   _temp_1799 = &aThreadBecameFree
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
_Label_1800:
!   if i >= 10 then goto _Label_1802		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1802
!	jmp	_Label_1801
_Label_1801:
	mov	713,r13		! source line 713
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0SE",r10
!   _temp_1803 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-48]
!   _temp_1804 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1804 [i ] into _temp_1805
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
!   Prepare Argument: offset=12  value=_temp_1803  sizeInBytes=4
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
!   _temp_1806 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1806 [i ] into _temp_1807
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
!   _temp_1808 = _temp_1807 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1808 = 5  (sizeInBytes=4)
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
	jmp	_Label_1800
_Label_1802:
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
_Label_1809:
!   if i >= 10 then goto _Label_1811		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1811
!	jmp	_Label_1810
_Label_1810:
	mov	719,r13		! source line 719
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0SE",r10
!   _temp_1813 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1813 [i ] into _temp_1814
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
!   _temp_1812 = _temp_1814		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1815 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1812  sizeInBytes=4
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
	jmp	_Label_1809
_Label_1811:
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
	.word	_Label_1816
	.word	4		! total size of parameters
	.word	45900		! frame size = 45900
	.word	_Label_1817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1818
	.word	-12
	.word	4
	.word	_Label_1819
	.word	-16
	.word	4
	.word	_Label_1820
	.word	-20
	.word	4
	.word	_Label_1821
	.word	-24
	.word	4
	.word	_Label_1822
	.word	-28
	.word	4
	.word	_Label_1823
	.word	-32
	.word	4
	.word	_Label_1824
	.word	-36
	.word	4
	.word	_Label_1825
	.word	-40
	.word	4
	.word	_Label_1826
	.word	-44
	.word	4
	.word	_Label_1827
	.word	-48
	.word	4
	.word	_Label_1828
	.word	-52
	.word	4
	.word	_Label_1829
	.word	-56
	.word	4
	.word	_Label_1830
	.word	-60
	.word	4
	.word	_Label_1831
	.word	-64
	.word	4
	.word	_Label_1832
	.word	-68
	.word	4
	.word	_Label_1833
	.word	-72
	.word	4
	.word	_Label_1834
	.word	-76
	.word	4
	.word	_Label_1835
	.word	-4240
	.word	4164
	.word	_Label_1836
	.word	-4244
	.word	4
	.word	_Label_1837
	.word	-4248
	.word	4
	.word	_Label_1838
	.word	-45892
	.word	41644
	.word	_Label_1839
	.word	-45896
	.word	4
	.word	_Label_1840
	.word	-45900
	.word	4
	.word	0
_Label_1816:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1817:
	.ascii	"Pself\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1840:
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
_Label_3847:
	push	r0
	sub	r1,1,r1
	bne	_Label_3847
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
!   _temp_1841 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1841  sizeInBytes=4
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
!   _temp_1846 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1847 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1846  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1842:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1847 then goto _Label_1845		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1845
_Label_1843:
	mov	737,r13		! source line 737
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1848 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1848  sizeInBytes=4
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
!   _temp_1849 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1849  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1851 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1851 [i ] into _temp_1852
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
!   _temp_1850 = _temp_1852		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1850  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_function_194_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1844:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1842
! END FOR
_Label_1845:
! CALL STATEMENT...
!   _temp_1853 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1854 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1855 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1854  sizeInBytes=4
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
	.word	_Label_1856
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1857
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1858
	.word	-12
	.word	4
	.word	_Label_1859
	.word	-16
	.word	4
	.word	_Label_1860
	.word	-20
	.word	4
	.word	_Label_1861
	.word	-24
	.word	4
	.word	_Label_1862
	.word	-28
	.word	4
	.word	_Label_1863
	.word	-32
	.word	4
	.word	_Label_1864
	.word	-36
	.word	4
	.word	_Label_1865
	.word	-40
	.word	4
	.word	_Label_1866
	.word	-44
	.word	4
	.word	_Label_1867
	.word	-48
	.word	4
	.word	_Label_1868
	.word	-52
	.word	4
	.word	_Label_1869
	.word	-56
	.word	4
	.word	_Label_1870
	.word	-60
	.word	4
	.word	0
_Label_1856:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1857:
	.ascii	"Pself\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1869:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1870:
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
_Label_3848:
	push	r0
	sub	r1,1,r1
	bne	_Label_3848
	mov	751,r13		! source line 751
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1871 = &threadManagerLock
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
_Label_1872:
	mov	763,r13		! source line 763
	mov	"\0\0SE",r10
!   _temp_1876 = &freeList
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
!   Retrieve Result: targetName=_temp_1875  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1877 = _temp_1875 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1877 then goto _Label_1874 else goto _Label_1873
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1873
	jmp	_Label_1874
_Label_1873:
	mov	763,r13		! source line 763
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_1878 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1879 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1878  sizeInBytes=4
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
	jmp	_Label_1872
_Label_1874:
! ASSIGNMENT STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0AS",r10
	mov	767,r13		! source line 767
	mov	"\0\0SE",r10
!   _temp_1880 = &freeList
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
!   _temp_1881 = newThreadPtr + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1881 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0SE",r10
!   _temp_1882 = &threadManagerLock
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
	.word	_Label_1883
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1884
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-9
	.word	1
	.word	_Label_1891
	.word	-36
	.word	4
	.word	_Label_1892
	.word	-10
	.word	1
	.word	_Label_1893
	.word	-40
	.word	4
	.word	_Label_1894
	.word	-44
	.word	4
	.word	0
_Label_1883:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1884:
	.ascii	"Pself\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1880\0"
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
	.byte	'C'
	.ascii	"_temp_1877\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1892:
	.byte	'C'
	.ascii	"_temp_1875\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1894:
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
_Label_3849:
	push	r0
	sub	r1,1,r1
	bne	_Label_3849
	mov	777,r13		! source line 777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_1895 = &threadManagerLock
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
!   _temp_1896 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1896 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1897 = &freeList
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
!   _temp_1898 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1899 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1898  sizeInBytes=4
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
!   _temp_1900 = &threadManagerLock
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
	.word	_Label_1901
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1903
	.word	12
	.word	4
	.word	_Label_1904
	.word	-12
	.word	4
	.word	_Label_1905
	.word	-16
	.word	4
	.word	_Label_1906
	.word	-20
	.word	4
	.word	_Label_1907
	.word	-24
	.word	4
	.word	_Label_1908
	.word	-28
	.word	4
	.word	_Label_1909
	.word	-32
	.word	4
	.word	0
_Label_1901:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1902:
	.ascii	"Pself\0"
	.align
_Label_1903:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1910
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1910:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1911
	.word	_sourceFileName
	.word	216		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1911:
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
_Label_3850:
	push	r0
	sub	r1,1,r1
	bne	_Label_3850
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
_Label_3851:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3851
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1913 = &addrSpace
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
	mov	806,r13		! source line 806
	mov	"\0\0AS",r10
!   _temp_1914 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1916 = &_temp_1915
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1916 = _temp_1916 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1918:
!   Data Move: *_temp_1916 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1916 = _temp_1916 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1917 = _temp_1917 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1917) then goto _Label_1918
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1918
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1919 = &_temp_1915
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3852
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3852:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1914 = *_temp_1919  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3853:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3853
! RETURN STATEMENT...
	mov	806,r13		! source line 806
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
	.word	_Label_1920
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1921
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1922
	.word	-12
	.word	4
	.word	_Label_1923
	.word	-16
	.word	4
	.word	_Label_1924
	.word	-20
	.word	4
	.word	_Label_1925
	.word	-64
	.word	44
	.word	_Label_1926
	.word	-68
	.word	4
	.word	_Label_1927
	.word	-72
	.word	4
	.word	_Label_1928
	.word	-76
	.word	4
	.word	0
_Label_1920:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1921:
	.ascii	"Pself\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1912\0"
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
_Label_3854:
	push	r0
	sub	r1,1,r1
	bne	_Label_3854
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1929) then goto _runtimeErrorNullPointer
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
	mov	819,r13		! source line 819
	mov	"\0\0SE",r10
!   _temp_1930 = &addrSpace
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
!   _temp_1931 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1931  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CA",r10
	call	_function_194_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	831,r13		! source line 831
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
	.word	_Label_1932
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1933
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1934
	.word	-12
	.word	4
	.word	_Label_1935
	.word	-16
	.word	4
	.word	_Label_1936
	.word	-20
	.word	4
	.word	0
_Label_1932:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1933:
	.ascii	"Pself\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1929\0"
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
_Label_3855:
	push	r0
	sub	r1,1,r1
	bne	_Label_3855
	mov	836,r13		! source line 836
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1937 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1937  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1938  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1939 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1939  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1940 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1940  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1942		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1942
!	jmp	_Label_1941
_Label_1941:
! THEN...
	mov	846,r13		! source line 846
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1943 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1943  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1944
_Label_1942:
! ELSE...
	mov	847,r13		! source line 847
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1946		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1946
!	jmp	_Label_1945
_Label_1945:
! THEN...
	mov	848,r13		! source line 848
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1947 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1947  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1948
_Label_1946:
! ELSE...
	mov	849,r13		! source line 849
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1950		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1950
!	jmp	_Label_1949
_Label_1949:
! THEN...
	mov	850,r13		! source line 850
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1951 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1951  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1952
_Label_1950:
! ELSE...
	mov	852,r13		! source line 852
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1953 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1953  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	852,r13		! source line 852
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1952:
! END IF...
_Label_1948:
! END IF...
_Label_1944:
! CALL STATEMENT...
!   _temp_1954 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1954  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1955 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1955  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	858,r13		! source line 858
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
	.word	_Label_1956
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1958
	.word	-12
	.word	4
	.word	_Label_1959
	.word	-16
	.word	4
	.word	_Label_1960
	.word	-20
	.word	4
	.word	_Label_1961
	.word	-24
	.word	4
	.word	_Label_1962
	.word	-28
	.word	4
	.word	_Label_1963
	.word	-32
	.word	4
	.word	_Label_1964
	.word	-36
	.word	4
	.word	_Label_1965
	.word	-40
	.word	4
	.word	_Label_1966
	.word	-44
	.word	4
	.word	_Label_1967
	.word	-48
	.word	4
	.word	0
_Label_1956:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1957:
	.ascii	"Pself\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1955\0"
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
	.ascii	"_temp_1951\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1968
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
_Label_1968:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1969
	.word	_sourceFileName
	.word	236		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1969:
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
	mov	487,r1
_Label_3856:
	push	r0
	sub	r1,1,r1
	bne	_Label_3856
	mov	869,r13		! source line 869
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0AS",r10
!   _temp_1970 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1944]
!   NEW ARRAY Constructor...
!   _temp_1972 = &_temp_1971
	add	r14,-1940,r1
	store	r1,[r14+-256]
!   _temp_1972 = _temp_1972 + 4
	load	[r14+-256],r1
	add	r1,4,r1
	store	r1,[r14+-256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1974 = zeros  (sizeInBytes=168)
	add	r14,-248,r4
	mov	42,r3
_Label_3857:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3857
!   _temp_1974 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-248]
	mov	10,r1
	store	r1,[r14+-252]
_Label_1976:
!   Data Move: *_temp_1972 = _temp_1974  (sizeInBytes=168)
	add	r14,-248,r5
	load	[r14+-256],r4
	mov	42,r3
_Label_3858:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3858
!   _temp_1972 = _temp_1972 + 168
	load	[r14+-256],r1
	add	r1,168,r1
	store	r1,[r14+-256]
!   _temp_1973 = _temp_1973 + -1
	load	[r14+-252],r1
	add	r1,-1,r1
	store	r1,[r14+-252]
!   if intNotZero (_temp_1973) then goto _Label_1976
	load	[r14+-252],r1
	cmp	r1,r0
	bne	_Label_1976
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1940]
!   _temp_1977 = &_temp_1971
	add	r14,-1940,r1
	store	r1,[r14+-76]
!   make sure array has size 10
	load	[r14+-1944],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3859
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3859:
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1970 = *_temp_1977  (sizeInBytes=1684)
	load	[r14+-76],r5
	load	[r14+-1944],r4
	mov	421,r3
_Label_3860:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3860
! ASSIGNMENT STATEMENT...
	mov	878,r13		! source line 878
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
! SEND STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0SE",r10
!   _temp_1979 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	880,r13		! source line 880
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
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
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
! SEND STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0SE",r10
!   _temp_1982 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
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
	mov	883,r13		! source line 883
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
! SEND STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0SE",r10
!   _temp_1984 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
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
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1948]
! WHILE STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0WH",r10
_Label_1985:
!   if i >= 10 then goto _Label_1987		(int)
	load	[r14+-1948],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1987
!	jmp	_Label_1986
_Label_1986:
	mov	886,r13		! source line 886
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0SE",r10
!   _temp_1988 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1988 [i ] into _temp_1989
!     make sure index expr is >= 0
	load	[r14+-1948],r2
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
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   _temp_1990 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1990 [i ] into _temp_1991
!     make sure index expr is >= 0
	load	[r14+-1948],r2
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
!   _temp_1992 = _temp_1991 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1992 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1994 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1994 [i ] into _temp_1995
!     make sure index expr is >= 0
	load	[r14+-1948],r2
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
!   _temp_1993 = _temp_1995		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1996 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1993  sizeInBytes=4
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
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-1948],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1948]
! END WHILE...
	jmp	_Label_1985
_Label_1987:
! RETURN STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0RE",r10
	add	r15,1952,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1997
	.word	4		! total size of parameters
	.word	1948		! frame size = 1948
	.word	_Label_1998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1999
	.word	-12
	.word	4
	.word	_Label_2000
	.word	-16
	.word	4
	.word	_Label_2001
	.word	-20
	.word	4
	.word	_Label_2002
	.word	-24
	.word	4
	.word	_Label_2003
	.word	-28
	.word	4
	.word	_Label_2004
	.word	-32
	.word	4
	.word	_Label_2005
	.word	-36
	.word	4
	.word	_Label_2006
	.word	-40
	.word	4
	.word	_Label_2007
	.word	-44
	.word	4
	.word	_Label_2008
	.word	-48
	.word	4
	.word	_Label_2009
	.word	-52
	.word	4
	.word	_Label_2010
	.word	-56
	.word	4
	.word	_Label_2011
	.word	-60
	.word	4
	.word	_Label_2012
	.word	-64
	.word	4
	.word	_Label_2013
	.word	-68
	.word	4
	.word	_Label_2014
	.word	-72
	.word	4
	.word	_Label_2015
	.word	-76
	.word	4
	.word	_Label_2016
	.word	-80
	.word	4
	.word	_Label_2017
	.word	-248
	.word	168
	.word	_Label_2018
	.word	-252
	.word	4
	.word	_Label_2019
	.word	-256
	.word	4
	.word	_Label_2020
	.word	-1940
	.word	1684
	.word	_Label_2021
	.word	-1944
	.word	4
	.word	_Label_2022
	.word	-1948
	.word	4
	.word	0
_Label_1997:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1998:
	.ascii	"Pself\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2022:
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
_Label_3861:
	push	r0
	sub	r1,1,r1
	bne	_Label_3861
	mov	896,r13		! source line 896
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2023 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2023  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2028 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2029 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2028  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2024:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2029 then goto _Label_2027		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2027
_Label_2025:
	mov	905,r13		! source line 905
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2030 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2030  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2031 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2031  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_2032 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2032 [i ] into _temp_2033
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
_Label_2026:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2024
! END FOR
_Label_2027:
! CALL STATEMENT...
!   _temp_2034 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
!   _temp_2035 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2036 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2035  sizeInBytes=4
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
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	914,r13		! source line 914
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
	.word	_Label_2037
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2038
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2039
	.word	-12
	.word	4
	.word	_Label_2040
	.word	-16
	.word	4
	.word	_Label_2041
	.word	-20
	.word	4
	.word	_Label_2042
	.word	-24
	.word	4
	.word	_Label_2043
	.word	-28
	.word	4
	.word	_Label_2044
	.word	-32
	.word	4
	.word	_Label_2045
	.word	-36
	.word	4
	.word	_Label_2046
	.word	-40
	.word	4
	.word	_Label_2047
	.word	-44
	.word	4
	.word	_Label_2048
	.word	-48
	.word	4
	.word	_Label_2049
	.word	-52
	.word	4
	.word	_Label_2050
	.word	-56
	.word	4
	.word	0
_Label_2037:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2038:
	.ascii	"Pself\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2049:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2050:
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
_Label_3862:
	push	r0
	sub	r1,1,r1
	bne	_Label_3862
	mov	919,r13		! source line 919
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2051 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2051  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2056 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2057 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2056  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2052:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2057 then goto _Label_2055		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2055
_Label_2053:
	mov	928,r13		! source line 928
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2058 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_2059 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2059 [i ] into _temp_2060
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
_Label_2054:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2052
! END FOR
_Label_2055:
! CALL STATEMENT...
!   _temp_2061 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2061  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_2062 = _function_193_PrintObjectAddr
	set	_function_193_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2063 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2062  sizeInBytes=4
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
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	936,r13		! source line 936
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
	.word	_Label_2064
	.word	4		! total size of parameters
	.word	52		! frame size = 52
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
	.word	0
_Label_2064:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
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
	.ascii	"_temp_2051\0"
	.align
_Label_2075:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2076:
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
_Label_3863:
	push	r0
	sub	r1,1,r1
	bne	_Label_3863
	mov	941,r13		! source line 941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_2077 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	952,r13		! source line 952
	mov	"\0\0WH",r10
_Label_2078:
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_2082 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2081  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_2083 = _temp_2081 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_2083 then goto _Label_2080 else goto _Label_2079
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2079
	jmp	_Label_2080
_Label_2079:
	mov	952,r13		! source line 952
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_2084 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_2085 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2084  sizeInBytes=4
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
	jmp	_Label_2078
_Label_2080:
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_2086 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
	mov	958,r13		! source line 958
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
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2087 = newProcessPtr + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2087 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2088 = newProcessPtr + 20
	load	[r14+-48],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2088 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_2089 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	.word	_Label_2090
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2091
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2098
	.word	-9
	.word	1
	.word	_Label_2099
	.word	-40
	.word	4
	.word	_Label_2100
	.word	-10
	.word	1
	.word	_Label_2101
	.word	-44
	.word	4
	.word	_Label_2102
	.word	-48
	.word	4
	.word	0
_Label_2090:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2091:
	.ascii	"Pself\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2098:
	.byte	'C'
	.ascii	"_temp_2083\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2100:
	.byte	'C'
	.ascii	"_temp_2081\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2102:
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
_Label_3864:
	push	r0
	sub	r1,1,r1
	bne	_Label_3864
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2103 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
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
!   _temp_2104 = &processManagerLock
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
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2105 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2105 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_2106 = &freeList
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
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_2107 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2108 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2107  sizeInBytes=4
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
!   _temp_2109 = &processManagerLock
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
	.word	_Label_2110
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2112
	.word	12
	.word	4
	.word	_Label_2113
	.word	-12
	.word	4
	.word	_Label_2114
	.word	-16
	.word	4
	.word	_Label_2115
	.word	-20
	.word	4
	.word	_Label_2116
	.word	-24
	.word	4
	.word	_Label_2117
	.word	-28
	.word	4
	.word	_Label_2118
	.word	-32
	.word	4
	.word	_Label_2119
	.word	-36
	.word	4
	.word	0
_Label_2110:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2111:
	.ascii	"Pself\0"
	.align
_Label_2112:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2103\0"
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
_Label_3865:
	push	r0
	sub	r1,1,r1
	bne	_Label_3865
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
!   _temp_2120 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-236]
!   _temp_2121 = _temp_2120 + 1688
	load	[r14+-236],r1
	add	r1,1688,r1
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
_Label_2122:
!   if i >= 10 then goto _Label_2124		(int)
	load	[r14+-240],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2124
!	jmp	_Label_2123
_Label_2123:
	mov	1000,r13		! source line 1000
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2129 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-224]
!   Data Move: _temp_2128 = *_temp_2129  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   _temp_2131 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-216]
!   _temp_2132 = _temp_2131 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Move address of _temp_2132 [i ] into _temp_2133
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-208]
!   _temp_2134 = _temp_2133 + 16
	load	[r14+-208],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2130 = *_temp_2134  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if _temp_2128 != _temp_2130 then goto _Label_2126		(int)
	load	[r14+-228],r1
	load	[r14+-220],r2
	cmp	r1,r2
	bne	_Label_2126
!	jmp	_Label_2127
_Label_2127:
!   _temp_2136 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-196]
!   _temp_2137 = _temp_2136 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Move address of _temp_2137 [i ] into _temp_2138
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   _temp_2139 = _temp_2138 + 20
	load	[r14+-188],r1
	add	r1,20,r1
	store	r1,[r14+-184]
!   Data Move: _temp_2135 = *_temp_2139  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if _temp_2135 != 2 then goto _Label_2126		(int)
	load	[r14+-200],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2126
!	jmp	_Label_2125
_Label_2125:
! THEN...
	mov	1004,r13		! source line 1004
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0AS",r10
!   _temp_2140 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-180]
!   _temp_2141 = _temp_2140 + 4
	load	[r14+-180],r1
	add	r1,4,r1
	store	r1,[r14+-176]
!   Move address of _temp_2141 [i ] into _temp_2142
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   _temp_2143 = _temp_2142 + 20
	load	[r14+-172],r1
	add	r1,20,r1
	store	r1,[r14+-168]
!   Data Move: *_temp_2143 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-168],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_2145 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-160]
!   _temp_2146 = _temp_2145 + 4
	load	[r14+-160],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_2146 [i ] into _temp_2147
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   _temp_2144 = _temp_2147		(4 bytes)
	load	[r14+-152],r1
	store	r1,[r14+-164]
!   _temp_2148 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-148]
!   _temp_2149 = _temp_2148 + 1724
	load	[r14+-148],r1
	add	r1,1724,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_2144  sizeInBytes=4
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
!   _temp_2151 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-136]
!   _temp_2152 = _temp_2151 + 1688
	load	[r14+-136],r1
	add	r1,1688,r1
	store	r1,[r14+-132]
!   _temp_2150 = _temp_2152		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   _temp_2153 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-128]
!   _temp_2154 = _temp_2153 + 1708
	load	[r14+-128],r1
	add	r1,1708,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=12  value=_temp_2150  sizeInBytes=4
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
_Label_2126:
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2158 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-116]
!   Data Move: _temp_2157 = *_temp_2158  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_2160 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2161 = _temp_2160 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Move address of _temp_2161 [i ] into _temp_2162
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   _temp_2163 = _temp_2162 + 12
	load	[r14+-100],r1
	add	r1,12,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2159 = *_temp_2163  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2157 != _temp_2159 then goto _Label_2156		(int)
	load	[r14+-120],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bne	_Label_2156
!	jmp	_Label_2155
_Label_2155:
! THEN...
	mov	1013,r13		! source line 1013
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   _temp_2164 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-92]
!   _temp_2165 = _temp_2164 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_2165 [i ] into _temp_2166
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   pParent = _temp_2166		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-244]
! END IF...
_Label_2156:
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
	jmp	_Label_2122
_Label_2124:
! IF STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0IF",r10
!   if intIsZero (pParent) then goto _Label_2168
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2168
!	jmp	_Label_2169
_Label_2169:
!   if intIsZero (pParent) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2171 = pParent + 20
	load	[r14+-244],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2170 = *_temp_2171  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2170 != 1 then goto _Label_2168		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2168
!	jmp	_Label_2167
_Label_2167:
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
!   _temp_2172 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2172 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0SE",r10
!   _temp_2174 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2175 = _temp_2174 + 1688
	load	[r14+-64],r1
	add	r1,1688,r1
	store	r1,[r14+-60]
!   _temp_2173 = _temp_2175		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2176 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2177 = _temp_2176 + 1736
	load	[r14+-56],r1
	add	r1,1736,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2173  sizeInBytes=4
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
	jmp	_Label_2178
_Label_2168:
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
!   _temp_2179 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2179 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2180 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2181 = _temp_2180 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
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
!   _temp_2183 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2184 = _temp_2183 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2182 = _temp_2184		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2185 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2186 = _temp_2185 + 1736
	load	[r14+-24],r1
	add	r1,1736,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2182  sizeInBytes=4
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
_Label_2178:
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_2187 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2188 = _temp_2187 + 1688
	load	[r14+-16],r1
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
	.word	_Label_2189
	.word	8		! total size of parameters
	.word	244		! frame size = 244
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
	.word	_Label_2204
	.word	-60
	.word	4
	.word	_Label_2205
	.word	-64
	.word	4
	.word	_Label_2206
	.word	-68
	.word	4
	.word	_Label_2207
	.word	-72
	.word	4
	.word	_Label_2208
	.word	-76
	.word	4
	.word	_Label_2209
	.word	-80
	.word	4
	.word	_Label_2210
	.word	-84
	.word	4
	.word	_Label_2211
	.word	-88
	.word	4
	.word	_Label_2212
	.word	-92
	.word	4
	.word	_Label_2213
	.word	-96
	.word	4
	.word	_Label_2214
	.word	-100
	.word	4
	.word	_Label_2215
	.word	-104
	.word	4
	.word	_Label_2216
	.word	-108
	.word	4
	.word	_Label_2217
	.word	-112
	.word	4
	.word	_Label_2218
	.word	-116
	.word	4
	.word	_Label_2219
	.word	-120
	.word	4
	.word	_Label_2220
	.word	-124
	.word	4
	.word	_Label_2221
	.word	-128
	.word	4
	.word	_Label_2222
	.word	-132
	.word	4
	.word	_Label_2223
	.word	-136
	.word	4
	.word	_Label_2224
	.word	-140
	.word	4
	.word	_Label_2225
	.word	-144
	.word	4
	.word	_Label_2226
	.word	-148
	.word	4
	.word	_Label_2227
	.word	-152
	.word	4
	.word	_Label_2228
	.word	-156
	.word	4
	.word	_Label_2229
	.word	-160
	.word	4
	.word	_Label_2230
	.word	-164
	.word	4
	.word	_Label_2231
	.word	-168
	.word	4
	.word	_Label_2232
	.word	-172
	.word	4
	.word	_Label_2233
	.word	-176
	.word	4
	.word	_Label_2234
	.word	-180
	.word	4
	.word	_Label_2235
	.word	-184
	.word	4
	.word	_Label_2236
	.word	-188
	.word	4
	.word	_Label_2237
	.word	-192
	.word	4
	.word	_Label_2238
	.word	-196
	.word	4
	.word	_Label_2239
	.word	-200
	.word	4
	.word	_Label_2240
	.word	-204
	.word	4
	.word	_Label_2241
	.word	-208
	.word	4
	.word	_Label_2242
	.word	-212
	.word	4
	.word	_Label_2243
	.word	-216
	.word	4
	.word	_Label_2244
	.word	-220
	.word	4
	.word	_Label_2245
	.word	-224
	.word	4
	.word	_Label_2246
	.word	-228
	.word	4
	.word	_Label_2247
	.word	-232
	.word	4
	.word	_Label_2248
	.word	-236
	.word	4
	.word	_Label_2249
	.word	-240
	.word	4
	.word	_Label_2250
	.word	-244
	.word	4
	.word	0
_Label_2189:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2190:
	.ascii	"Pself\0"
	.align
_Label_2191:
	.byte	'P'
	.ascii	"p\0"
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
	.ascii	"_temp_2177\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2249:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2250:
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
_Label_3866:
	push	r0
	sub	r1,1,r1
	bne	_Label_3866
	mov	1034,r13		! source line 1034
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_2251 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2252 = _temp_2251 + 1688
	load	[r14+-88],r1
	add	r1,1688,r1
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
_Label_2253:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2257 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2256 = *_temp_2257  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2256 == 2 then goto _Label_2255		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2255
!	jmp	_Label_2254
_Label_2254:
	mov	1039,r13		! source line 1039
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_2259 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2260 = _temp_2259 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2258 = _temp_2260		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2261 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2262 = _temp_2261 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2258  sizeInBytes=4
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
	jmp	_Label_2253
_Label_2255:
! ASSIGNMENT STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2263 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: pExitStatus = *_temp_2263  (sizeInBytes=4)
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
!   _temp_2264 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2264 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_2265 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2266 = _temp_2265 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
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
!   _temp_2268 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2269 = _temp_2268 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2267 = _temp_2269		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2270 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2271 = _temp_2270 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2267  sizeInBytes=4
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
!   _temp_2272 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2273 = _temp_2272 + 1688
	load	[r14+-16],r1
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
	.word	_Label_2274
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2275
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2276
	.word	12
	.word	4
	.word	_Label_2277
	.word	-12
	.word	4
	.word	_Label_2278
	.word	-16
	.word	4
	.word	_Label_2279
	.word	-20
	.word	4
	.word	_Label_2280
	.word	-24
	.word	4
	.word	_Label_2281
	.word	-28
	.word	4
	.word	_Label_2282
	.word	-32
	.word	4
	.word	_Label_2283
	.word	-36
	.word	4
	.word	_Label_2284
	.word	-40
	.word	4
	.word	_Label_2285
	.word	-44
	.word	4
	.word	_Label_2286
	.word	-48
	.word	4
	.word	_Label_2287
	.word	-52
	.word	4
	.word	_Label_2288
	.word	-56
	.word	4
	.word	_Label_2289
	.word	-60
	.word	4
	.word	_Label_2290
	.word	-64
	.word	4
	.word	_Label_2291
	.word	-68
	.word	4
	.word	_Label_2292
	.word	-72
	.word	4
	.word	_Label_2293
	.word	-76
	.word	4
	.word	_Label_2294
	.word	-80
	.word	4
	.word	_Label_2295
	.word	-84
	.word	4
	.word	_Label_2296
	.word	-88
	.word	4
	.word	_Label_2297
	.word	-92
	.word	4
	.word	0
_Label_2274:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2275:
	.ascii	"Pself\0"
	.align
_Label_2276:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2297:
	.byte	'I'
	.ascii	"pExitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2298
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2298:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2299
	.word	_sourceFileName
	.word	259		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2299:
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
_Label_3867:
	push	r0
	sub	r1,1,r1
	bne	_Label_3867
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2300 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2300  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
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
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2302 = &framesInUse
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
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1130,r13		! source line 1130
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
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_2304 = &frameManagerLock
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
	mov	1132,r13		! source line 1132
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
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_2306 = &newFramesAvailable
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
	mov	1139,r13		! source line 1139
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2311 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2312 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2311  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2307:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2312 then goto _Label_2310		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2310
_Label_2308:
	mov	1139,r13		! source line 1139
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2315 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2315) then goto _Label_2314
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2314
!	jmp	_Label_2313
_Label_2313:
! THEN...
	mov	1143,r13		! source line 1143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2316 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2316  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1143,r13		! source line 1143
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2314:
!   Increment the FOR-LOOP index variable and jump back
_Label_2309:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2307
! END FOR
_Label_2310:
! RETURN STATEMENT...
	mov	1139,r13		! source line 1139
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
	.word	_Label_2317
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2319
	.word	-12
	.word	4
	.word	_Label_2320
	.word	-16
	.word	4
	.word	_Label_2321
	.word	-20
	.word	4
	.word	_Label_2322
	.word	-24
	.word	4
	.word	_Label_2323
	.word	-28
	.word	4
	.word	_Label_2324
	.word	-32
	.word	4
	.word	_Label_2325
	.word	-36
	.word	4
	.word	_Label_2326
	.word	-40
	.word	4
	.word	_Label_2327
	.word	-44
	.word	4
	.word	_Label_2328
	.word	-48
	.word	4
	.word	_Label_2329
	.word	-52
	.word	4
	.word	_Label_2330
	.word	-56
	.word	4
	.word	0
_Label_2317:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2318:
	.ascii	"Pself\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2330:
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
_Label_3868:
	push	r0
	sub	r1,1,r1
	bne	_Label_3868
	mov	1150,r13		! source line 1150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_2331 = &frameManagerLock
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
!   _temp_2332 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2333 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2333  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2334 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2334  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1157,r13		! source line 1157
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_2335 = &framesInUse
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
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_2336 = &frameManagerLock
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
	mov	1159,r13		! source line 1159
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
	.word	_Label_2337
	.word	4		! total size of parameters
	.word	32		! frame size = 32
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
	.word	0
_Label_2337:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_2334\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2331\0"
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
_Label_3869:
	push	r0
	sub	r1,1,r1
	bne	_Label_3869
	mov	1164,r13		! source line 1164
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_2345 = &frameManagerLock
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
	mov	1175,r13		! source line 1175
	mov	"\0\0WH",r10
_Label_2346:
!   if numberFreeFrames >= 1 then goto _Label_2348		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2348
!	jmp	_Label_2347
_Label_2347:
	mov	1175,r13		! source line 1175
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_2349 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2350 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2349  sizeInBytes=4
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
	jmp	_Label_2346
_Label_2348:
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_2351 = &framesInUse
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
	mov	1181,r13		! source line 1181
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
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2352 = &frameManagerLock
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
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   _temp_2353 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2353		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1189,r13		! source line 1189
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
	.word	_Label_2354
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2355
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2356
	.word	-12
	.word	4
	.word	_Label_2357
	.word	-16
	.word	4
	.word	_Label_2358
	.word	-20
	.word	4
	.word	_Label_2359
	.word	-24
	.word	4
	.word	_Label_2360
	.word	-28
	.word	4
	.word	_Label_2361
	.word	-32
	.word	4
	.word	_Label_2362
	.word	-36
	.word	4
	.word	_Label_2363
	.word	-40
	.word	4
	.word	0
_Label_2354:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2355:
	.ascii	"Pself\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2362:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2363:
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
_Label_3870:
	push	r0
	sub	r1,1,r1
	bne	_Label_3870
	mov	1194,r13		! source line 1194
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   _temp_2364 = &frameManagerLock
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
	mov	1204,r13		! source line 1204
	mov	"\0\0WH",r10
_Label_2365:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2367		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2367
!	jmp	_Label_2366
_Label_2366:
	mov	1204,r13		! source line 1204
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   _temp_2368 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2369 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2368  sizeInBytes=4
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
	jmp	_Label_2365
_Label_2367:
! FOR STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2374 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2375 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2374  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_2370:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2375 then goto _Label_2373		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2373
_Label_2371:
	mov	1209,r13		! source line 1209
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0AS",r10
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
!   _temp_2376 = &framesInUse
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
	mov	1214,r13		! source line 1214
	mov	"\0\0AS",r10
!   _temp_2377 = freeFrameIdx * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   freeFrameAddr = 1048576 + _temp_2377		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1217,r13		! source line 1217
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
_Label_2372:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2370
! END FOR
_Label_2373:
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
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
	mov	1223,r13		! source line 1223
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2378 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2378 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
!   _temp_2379 = &frameManagerLock
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
	mov	1224,r13		! source line 1224
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
	.word	_Label_2380
	.word	12		! total size of parameters
	.word	60		! frame size = 60
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
	.word	-12
	.word	4
	.word	_Label_2385
	.word	-16
	.word	4
	.word	_Label_2386
	.word	-20
	.word	4
	.word	_Label_2387
	.word	-24
	.word	4
	.word	_Label_2388
	.word	-28
	.word	4
	.word	_Label_2389
	.word	-32
	.word	4
	.word	_Label_2390
	.word	-36
	.word	4
	.word	_Label_2391
	.word	-40
	.word	4
	.word	_Label_2392
	.word	-44
	.word	4
	.word	_Label_2393
	.word	-48
	.word	4
	.word	_Label_2394
	.word	-52
	.word	4
	.word	_Label_2395
	.word	-56
	.word	4
	.word	0
_Label_2380:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2381:
	.ascii	"Pself\0"
	.align
_Label_2382:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2383:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2393:
	.byte	'I'
	.ascii	"freeFrameIdx\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2395:
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
_Label_3871:
	push	r0
	sub	r1,1,r1
	bne	_Label_3871
	mov	1231,r13		! source line 1231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0SE",r10
!   _temp_2396 = &frameManagerLock
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
	mov	1240,r13		! source line 1240
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2397 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_2397  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2402 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2403 = numFramesReturned - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2402  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-60]
_Label_2398:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2403 then goto _Label_2401		
	load	[r14+-60],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2401
_Label_2399:
	mov	1241,r13		! source line 1241
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0AS",r10
	mov	1242,r13		! source line 1242
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
	mov	1243,r13		! source line 1243
	mov	"\0\0AS",r10
!   _temp_2404 = returnFrameAddr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   returnFrameIdx = _temp_2404 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
!   _temp_2405 = &framesInUse
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
_Label_2400:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2398
! END FOR
_Label_2401:
! SEND STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
!   _temp_2406 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2407 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2406  sizeInBytes=4
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
	mov	1249,r13		! source line 1249
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
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
!   _temp_2408 = &frameManagerLock
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
	mov	1250,r13		! source line 1250
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
	.word	_Label_2409
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2411
	.word	12
	.word	4
	.word	_Label_2412
	.word	-12
	.word	4
	.word	_Label_2413
	.word	-16
	.word	4
	.word	_Label_2414
	.word	-20
	.word	4
	.word	_Label_2415
	.word	-24
	.word	4
	.word	_Label_2416
	.word	-28
	.word	4
	.word	_Label_2417
	.word	-32
	.word	4
	.word	_Label_2418
	.word	-36
	.word	4
	.word	_Label_2419
	.word	-40
	.word	4
	.word	_Label_2420
	.word	-44
	.word	4
	.word	_Label_2421
	.word	-48
	.word	4
	.word	_Label_2422
	.word	-52
	.word	4
	.word	_Label_2423
	.word	-56
	.word	4
	.word	_Label_2424
	.word	-60
	.word	4
	.word	0
_Label_2409:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2410:
	.ascii	"Pself\0"
	.align
_Label_2411:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2421:
	.byte	'I'
	.ascii	"returnFrameIdx\0"
	.align
_Label_2422:
	.byte	'I'
	.ascii	"returnFrameAddr\0"
	.align
_Label_2423:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_2424:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2425
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
_Label_2425:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2426
	.word	_sourceFileName
	.word	278		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2426:
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
_Label_3872:
	push	r0
	sub	r1,1,r1
	bne	_Label_3872
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0AS",r10
!   _temp_2427 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2429 = &_temp_2428
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2429 = _temp_2429 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2431:
!   Data Move: *_temp_2429 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2429 = _temp_2429 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2430 = _temp_2430 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2430) then goto _Label_2431
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2431
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2432 = &_temp_2428
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3873
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3873:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2427 = *_temp_2432  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3874:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3874
! RETURN STATEMENT...
	mov	1268,r13		! source line 1268
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
	.word	_Label_2433
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2434
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-104
	.word	84
	.word	_Label_2439
	.word	-108
	.word	4
	.word	0
_Label_2433:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2434:
	.ascii	"Pself\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2432\0"
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
_Label_3875:
	push	r0
	sub	r1,1,r1
	bne	_Label_3875
	mov	1273,r13		! source line 1273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2440 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2440  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2441 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2441  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2446 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2447 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2446  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2442:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2447 then goto _Label_2445		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2445
_Label_2443:
	mov	1280,r13		! source line 1280
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2448 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2448  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2450 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2450 [i ] into _temp_2451
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
!   _temp_2449 = _temp_2451		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2449  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2452 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2452  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2454 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2454 [i ] into _temp_2455
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
!   Data Move: _temp_2453 = *_temp_2455  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2453  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2456 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2456  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2457 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2457  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2458 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2458  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2460) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2459  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2459  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2461 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2461  sizeInBytes=4
	load	[r14+-96],r1
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
	store	r1,[r14+-88]
!   if intIsZero (_temp_2465) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2464  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2464) then goto _Label_2463
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2463
!	jmp	_Label_2462
_Label_2462:
! THEN...
	mov	1291,r13		! source line 1291
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2467) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2466  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2466  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2468
_Label_2463:
! ELSE...
	mov	1293,r13		! source line 1293
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2469 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2469  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2468:
! CALL STATEMENT...
!   _temp_2470 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2470  sizeInBytes=4
	load	[r14+-72],r1
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
	store	r1,[r14+-68]
!   if intIsZero (_temp_2473) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2471 else goto _Label_2472
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2472
	jmp	_Label_2471
_Label_2471:
! THEN...
	mov	1297,r13		! source line 1297
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2474 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2474  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2475
_Label_2472:
! ELSE...
	mov	1299,r13		! source line 1299
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2476 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2476  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2475:
! CALL STATEMENT...
!   _temp_2477 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2477  sizeInBytes=4
	load	[r14+-56],r1
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
	store	r1,[r14+-52]
!   if intIsZero (_temp_2480) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2478 else goto _Label_2479
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2479
	jmp	_Label_2478
_Label_2478:
! THEN...
	mov	1303,r13		! source line 1303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2481 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2482
_Label_2479:
! ELSE...
	mov	1305,r13		! source line 1305
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2483 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2483  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1305,r13		! source line 1305
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2482:
! CALL STATEMENT...
!   _temp_2484 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2484  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1307,r13		! source line 1307
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0IF",r10
	mov	1308,r13		! source line 1308
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2487) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2485 else goto _Label_2486
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2486
	jmp	_Label_2485
_Label_2485:
! THEN...
	mov	1309,r13		! source line 1309
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2488 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2488  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1309,r13		! source line 1309
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2489
_Label_2486:
! ELSE...
	mov	1311,r13		! source line 1311
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2490 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2490  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1311,r13		! source line 1311
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2489:
! CALL STATEMENT...
!   _temp_2491 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2491  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1313,r13		! source line 1313
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0IF",r10
	mov	1314,r13		! source line 1314
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2494) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2492 else goto _Label_2493
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2493
	jmp	_Label_2492
_Label_2492:
! THEN...
	mov	1315,r13		! source line 1315
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2495 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2495  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1315,r13		! source line 1315
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2496
_Label_2493:
! ELSE...
	mov	1317,r13		! source line 1317
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2497 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1317,r13		! source line 1317
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2496:
! CALL STATEMENT...
!   Call the function
	mov	1319,r13		! source line 1319
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2444:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2442
! END FOR
_Label_2445:
! RETURN STATEMENT...
	mov	1280,r13		! source line 1280
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
	.word	_Label_2498
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2500
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_2506
	.word	-36
	.word	4
	.word	_Label_2507
	.word	-40
	.word	4
	.word	_Label_2508
	.word	-44
	.word	4
	.word	_Label_2509
	.word	-48
	.word	4
	.word	_Label_2510
	.word	-52
	.word	4
	.word	_Label_2511
	.word	-56
	.word	4
	.word	_Label_2512
	.word	-60
	.word	4
	.word	_Label_2513
	.word	-64
	.word	4
	.word	_Label_2514
	.word	-68
	.word	4
	.word	_Label_2515
	.word	-72
	.word	4
	.word	_Label_2516
	.word	-76
	.word	4
	.word	_Label_2517
	.word	-80
	.word	4
	.word	_Label_2518
	.word	-84
	.word	4
	.word	_Label_2519
	.word	-88
	.word	4
	.word	_Label_2520
	.word	-92
	.word	4
	.word	_Label_2521
	.word	-96
	.word	4
	.word	_Label_2522
	.word	-100
	.word	4
	.word	_Label_2523
	.word	-104
	.word	4
	.word	_Label_2524
	.word	-108
	.word	4
	.word	_Label_2525
	.word	-112
	.word	4
	.word	_Label_2526
	.word	-116
	.word	4
	.word	_Label_2527
	.word	-120
	.word	4
	.word	_Label_2528
	.word	-124
	.word	4
	.word	_Label_2529
	.word	-128
	.word	4
	.word	_Label_2530
	.word	-132
	.word	4
	.word	_Label_2531
	.word	-136
	.word	4
	.word	_Label_2532
	.word	-140
	.word	4
	.word	_Label_2533
	.word	-144
	.word	4
	.word	_Label_2534
	.word	-148
	.word	4
	.word	_Label_2535
	.word	-152
	.word	4
	.word	_Label_2536
	.word	-156
	.word	4
	.word	_Label_2537
	.word	-160
	.word	4
	.word	_Label_2538
	.word	-164
	.word	4
	.word	_Label_2539
	.word	-168
	.word	4
	.word	0
_Label_2498:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2499:
	.ascii	"Pself\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2497\0"
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
	.ascii	"_temp_2491\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2483\0"
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
	.ascii	"_temp_2477\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2539:
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
_Label_3876:
	push	r0
	sub	r1,1,r1
	bne	_Label_3876
	mov	1325,r13		! source line 1325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0RE",r10
!   _temp_2542 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2542 [entry ] into _temp_2543
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
!   Data Move: _temp_2541 = *_temp_2543  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2540 = _temp_2541 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2540  (sizeInBytes=4)
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
	.word	_Label_2544
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2546
	.word	12
	.word	4
	.word	_Label_2547
	.word	-12
	.word	4
	.word	_Label_2548
	.word	-16
	.word	4
	.word	_Label_2549
	.word	-20
	.word	4
	.word	_Label_2550
	.word	-24
	.word	4
	.word	0
_Label_2544:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2545:
	.ascii	"Pself\0"
	.align
_Label_2546:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2540\0"
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
_Label_3877:
	push	r0
	sub	r1,1,r1
	bne	_Label_3877
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0RE",r10
!   _temp_2553 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2553 [entry ] into _temp_2554
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
!   Data Move: _temp_2552 = *_temp_2554  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2551 = _temp_2552 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2551  (sizeInBytes=4)
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
	.word	_Label_2555
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2557
	.word	12
	.word	4
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
	.word	0
_Label_2555:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2556:
	.ascii	"Pself\0"
	.align
_Label_2557:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2551\0"
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
_Label_3878:
	push	r0
	sub	r1,1,r1
	bne	_Label_3878
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0AS",r10
!   _temp_2562 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2562 [entry ] into _temp_2563
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
!   _temp_2565 = _temp_2566 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2564 = _temp_2565 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2563 = _temp_2564  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1349,r13		! source line 1349
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
	.word	_Label_2569
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2570
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2571
	.word	12
	.word	4
	.word	_Label_2572
	.word	16
	.word	4
	.word	_Label_2573
	.word	-12
	.word	4
	.word	_Label_2574
	.word	-16
	.word	4
	.word	_Label_2575
	.word	-20
	.word	4
	.word	_Label_2576
	.word	-24
	.word	4
	.word	_Label_2577
	.word	-28
	.word	4
	.word	_Label_2578
	.word	-32
	.word	4
	.word	_Label_2579
	.word	-36
	.word	4
	.word	0
_Label_2569:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2570:
	.ascii	"Pself\0"
	.align
_Label_2571:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2572:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2562\0"
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
_Label_3879:
	push	r0
	sub	r1,1,r1
	bne	_Label_3879
	mov	1354,r13		! source line 1354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0RE",r10
!   _temp_2583 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2583 [entry ] into _temp_2584
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
!   Data Move: _temp_2582 = *_temp_2584  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2581 = _temp_2582 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2581) then goto _Label_2585
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2585
!   _temp_2580 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2586
_Label_2585:
!   _temp_2580 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2586:
!   ReturnResult: _temp_2580  (sizeInBytes=1)
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
	.word	_Label_2587
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2589
	.word	12
	.word	4
	.word	_Label_2590
	.word	-16
	.word	4
	.word	_Label_2591
	.word	-20
	.word	4
	.word	_Label_2592
	.word	-24
	.word	4
	.word	_Label_2593
	.word	-28
	.word	4
	.word	_Label_2594
	.word	-9
	.word	1
	.word	0
_Label_2587:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
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
	.ascii	"_temp_2584\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2594:
	.byte	'C'
	.ascii	"_temp_2580\0"
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
_Label_3880:
	push	r0
	sub	r1,1,r1
	bne	_Label_3880
	mov	1363,r13		! source line 1363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0RE",r10
!   _temp_2598 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2598 [entry ] into _temp_2599
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
!   Data Move: _temp_2597 = *_temp_2599  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2596 = _temp_2597 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2596) then goto _Label_2600
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2600
!   _temp_2595 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2601
_Label_2600:
!   _temp_2595 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2601:
!   ReturnResult: _temp_2595  (sizeInBytes=1)
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
	.word	_Label_2602
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2604
	.word	12
	.word	4
	.word	_Label_2605
	.word	-16
	.word	4
	.word	_Label_2606
	.word	-20
	.word	4
	.word	_Label_2607
	.word	-24
	.word	4
	.word	_Label_2608
	.word	-28
	.word	4
	.word	_Label_2609
	.word	-9
	.word	1
	.word	0
_Label_2602:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
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
	.ascii	"_temp_2599\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2609:
	.byte	'C'
	.ascii	"_temp_2595\0"
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
_Label_3881:
	push	r0
	sub	r1,1,r1
	bne	_Label_3881
	mov	1372,r13		! source line 1372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0RE",r10
!   _temp_2613 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2613 [entry ] into _temp_2614
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
!   Data Move: _temp_2612 = *_temp_2614  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2611 = _temp_2612 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2611) then goto _Label_2615
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2615
!   _temp_2610 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2616
_Label_2615:
!   _temp_2610 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2616:
!   ReturnResult: _temp_2610  (sizeInBytes=1)
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
	.word	_Label_2617
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2618
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2619
	.word	12
	.word	4
	.word	_Label_2620
	.word	-16
	.word	4
	.word	_Label_2621
	.word	-20
	.word	4
	.word	_Label_2622
	.word	-24
	.word	4
	.word	_Label_2623
	.word	-28
	.word	4
	.word	_Label_2624
	.word	-9
	.word	1
	.word	0
_Label_2617:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
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
	.ascii	"_temp_2614\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2624:
	.byte	'C'
	.ascii	"_temp_2610\0"
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
_Label_3882:
	push	r0
	sub	r1,1,r1
	bne	_Label_3882
	mov	1381,r13		! source line 1381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0RE",r10
!   _temp_2628 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2628 [entry ] into _temp_2629
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
!   Data Move: _temp_2627 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2626 = _temp_2627 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2626) then goto _Label_2630
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2630
!   _temp_2625 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2631
_Label_2630:
!   _temp_2625 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2631:
!   ReturnResult: _temp_2625  (sizeInBytes=1)
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
	.word	_Label_2632
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2634
	.word	12
	.word	4
	.word	_Label_2635
	.word	-16
	.word	4
	.word	_Label_2636
	.word	-20
	.word	4
	.word	_Label_2637
	.word	-24
	.word	4
	.word	_Label_2638
	.word	-28
	.word	4
	.word	_Label_2639
	.word	-9
	.word	1
	.word	0
_Label_2632:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
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
	.ascii	"_temp_2629\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2639:
	.byte	'C'
	.ascii	"_temp_2625\0"
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
_Label_3883:
	push	r0
	sub	r1,1,r1
	bne	_Label_3883
	mov	1390,r13		! source line 1390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   _temp_2640 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2640 [entry ] into _temp_2641
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
!   _temp_2644 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2644 [entry ] into _temp_2645
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
!   Data Move: _temp_2643 = *_temp_2645  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2642 = _temp_2643 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2641 = _temp_2642  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
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
	.word	_Label_2646
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2648
	.word	12
	.word	4
	.word	_Label_2649
	.word	-12
	.word	4
	.word	_Label_2650
	.word	-16
	.word	4
	.word	_Label_2651
	.word	-20
	.word	4
	.word	_Label_2652
	.word	-24
	.word	4
	.word	_Label_2653
	.word	-28
	.word	4
	.word	_Label_2654
	.word	-32
	.word	4
	.word	0
_Label_2646:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2647:
	.ascii	"Pself\0"
	.align
_Label_2648:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2640\0"
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
_Label_3884:
	push	r0
	sub	r1,1,r1
	bne	_Label_3884
	mov	1399,r13		! source line 1399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0AS",r10
!   _temp_2655 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2655 [entry ] into _temp_2656
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
!   _temp_2659 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2659 [entry ] into _temp_2660
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
!   Data Move: _temp_2658 = *_temp_2660  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2657 = _temp_2658 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2656 = _temp_2657  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1403,r13		! source line 1403
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
	.word	_Label_2661
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2663
	.word	12
	.word	4
	.word	_Label_2664
	.word	-12
	.word	4
	.word	_Label_2665
	.word	-16
	.word	4
	.word	_Label_2666
	.word	-20
	.word	4
	.word	_Label_2667
	.word	-24
	.word	4
	.word	_Label_2668
	.word	-28
	.word	4
	.word	_Label_2669
	.word	-32
	.word	4
	.word	0
_Label_2661:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2662:
	.ascii	"Pself\0"
	.align
_Label_2663:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2655\0"
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
_Label_3885:
	push	r0
	sub	r1,1,r1
	bne	_Label_3885
	mov	1408,r13		! source line 1408
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1412,r13		! source line 1412
	mov	"\0\0AS",r10
!   _temp_2670 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2670 [entry ] into _temp_2671
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
!   _temp_2674 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2674 [entry ] into _temp_2675
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
!   Data Move: _temp_2673 = *_temp_2675  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2672 = _temp_2673 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2671 = _temp_2672  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1412,r13		! source line 1412
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
	.word	_Label_2676
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2678
	.word	12
	.word	4
	.word	_Label_2679
	.word	-12
	.word	4
	.word	_Label_2680
	.word	-16
	.word	4
	.word	_Label_2681
	.word	-20
	.word	4
	.word	_Label_2682
	.word	-24
	.word	4
	.word	_Label_2683
	.word	-28
	.word	4
	.word	_Label_2684
	.word	-32
	.word	4
	.word	0
_Label_2676:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2677:
	.ascii	"Pself\0"
	.align
_Label_2678:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2670\0"
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
_Label_3886:
	push	r0
	sub	r1,1,r1
	bne	_Label_3886
	mov	1417,r13		! source line 1417
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
!   _temp_2685 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2685 [entry ] into _temp_2686
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
!   _temp_2689 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2689 [entry ] into _temp_2690
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
!   Data Move: _temp_2688 = *_temp_2690  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2687 = _temp_2688 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2686 = _temp_2687  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1421,r13		! source line 1421
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
	.word	_Label_2691
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2692
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2693
	.word	12
	.word	4
	.word	_Label_2694
	.word	-12
	.word	4
	.word	_Label_2695
	.word	-16
	.word	4
	.word	_Label_2696
	.word	-20
	.word	4
	.word	_Label_2697
	.word	-24
	.word	4
	.word	_Label_2698
	.word	-28
	.word	4
	.word	_Label_2699
	.word	-32
	.word	4
	.word	0
_Label_2691:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2692:
	.ascii	"Pself\0"
	.align
_Label_2693:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2685\0"
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
_Label_3887:
	push	r0
	sub	r1,1,r1
	bne	_Label_3887
	mov	1426,r13		! source line 1426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   _temp_2700 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2700 [entry ] into _temp_2701
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
!   _temp_2704 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2704 [entry ] into _temp_2705
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
!   Data Move: _temp_2703 = *_temp_2705  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2702 = _temp_2703 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2701 = _temp_2702  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1430,r13		! source line 1430
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
	.word	_Label_2706
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2708
	.word	12
	.word	4
	.word	_Label_2709
	.word	-12
	.word	4
	.word	_Label_2710
	.word	-16
	.word	4
	.word	_Label_2711
	.word	-20
	.word	4
	.word	_Label_2712
	.word	-24
	.word	4
	.word	_Label_2713
	.word	-28
	.word	4
	.word	_Label_2714
	.word	-32
	.word	4
	.word	0
_Label_2706:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2707:
	.ascii	"Pself\0"
	.align
_Label_2708:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2700\0"
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
_Label_3888:
	push	r0
	sub	r1,1,r1
	bne	_Label_3888
	mov	1435,r13		! source line 1435
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   _temp_2715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2715 [entry ] into _temp_2716
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
!   _temp_2719 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2719 [entry ] into _temp_2720
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
!   Data Move: _temp_2718 = *_temp_2720  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2717 = _temp_2718 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2716 = _temp_2717  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1439,r13		! source line 1439
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
	.word	_Label_2721
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2723
	.word	12
	.word	4
	.word	_Label_2724
	.word	-12
	.word	4
	.word	_Label_2725
	.word	-16
	.word	4
	.word	_Label_2726
	.word	-20
	.word	4
	.word	_Label_2727
	.word	-24
	.word	4
	.word	_Label_2728
	.word	-28
	.word	4
	.word	_Label_2729
	.word	-32
	.word	4
	.word	0
_Label_2721:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2722:
	.ascii	"Pself\0"
	.align
_Label_2723:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2715\0"
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
_Label_3889:
	push	r0
	sub	r1,1,r1
	bne	_Label_3889
	mov	1444,r13		! source line 1444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   _temp_2730 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2730 [entry ] into _temp_2731
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
!   _temp_2734 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2734 [entry ] into _temp_2735
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
!   Data Move: _temp_2733 = *_temp_2735  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2732 = _temp_2733 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2731 = _temp_2732  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1448,r13		! source line 1448
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
	.word	_Label_2736
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2737
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2738
	.word	12
	.word	4
	.word	_Label_2739
	.word	-12
	.word	4
	.word	_Label_2740
	.word	-16
	.word	4
	.word	_Label_2741
	.word	-20
	.word	4
	.word	_Label_2742
	.word	-24
	.word	4
	.word	_Label_2743
	.word	-28
	.word	4
	.word	_Label_2744
	.word	-32
	.word	4
	.word	0
_Label_2736:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2737:
	.ascii	"Pself\0"
	.align
_Label_2738:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2730\0"
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
_Label_3890:
	push	r0
	sub	r1,1,r1
	bne	_Label_3890
	mov	1453,r13		! source line 1453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0AS",r10
!   _temp_2745 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2745 [entry ] into _temp_2746
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
!   _temp_2749 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2749 [entry ] into _temp_2750
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
!   Data Move: _temp_2748 = *_temp_2750  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2747 = _temp_2748 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2746 = _temp_2747  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1457,r13		! source line 1457
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
	.word	_Label_2751
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2752
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2753
	.word	12
	.word	4
	.word	_Label_2754
	.word	-12
	.word	4
	.word	_Label_2755
	.word	-16
	.word	4
	.word	_Label_2756
	.word	-20
	.word	4
	.word	_Label_2757
	.word	-24
	.word	4
	.word	_Label_2758
	.word	-28
	.word	4
	.word	_Label_2759
	.word	-32
	.word	4
	.word	0
_Label_2751:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2752:
	.ascii	"Pself\0"
	.align
_Label_2753:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2745\0"
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
_Label_3891:
	push	r0
	sub	r1,1,r1
	bne	_Label_3891
	mov	1462,r13		! source line 1462
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2761 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2761 [0 ] into _temp_2762
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
!   _temp_2760 = _temp_2762		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2763 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2760  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2763  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1468,r13		! source line 1468
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1468,r13		! source line 1468
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
	.word	_Label_2764
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2766
	.word	-12
	.word	4
	.word	_Label_2767
	.word	-16
	.word	4
	.word	_Label_2768
	.word	-20
	.word	4
	.word	_Label_2769
	.word	-24
	.word	4
	.word	0
_Label_2764:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2765:
	.ascii	"Pself\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2760\0"
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
_Label_3892:
	push	r0
	sub	r1,1,r1
	bne	_Label_3892
	mov	1473,r13		! source line 1473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2770
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2770
	jmp	_Label_2771
_Label_2770:
! THEN...
	mov	1489,r13		! source line 1489
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2772
_Label_2771:
! ELSE...
	mov	1490,r13		! source line 1490
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2774		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2774
!	jmp	_Label_2773
_Label_2773:
! THEN...
	mov	1491,r13		! source line 1491
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2774:
! END IF...
_Label_2772:
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
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
	mov	1494,r13		! source line 1494
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
	mov	1497,r13		! source line 1497
	mov	"\0\0WH",r10
_Label_2775:
!	jmp	_Label_2776
_Label_2776:
	mov	1497,r13		! source line 1497
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2779		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2779
!	jmp	_Label_2778
_Label_2778:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2780 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2780  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1499,r13		! source line 1499
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2779:
! IF STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0IF",r10
	mov	1502,r13		! source line 1502
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2784) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2783  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2783 then goto _Label_2782 else goto _Label_2781
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2781
	jmp	_Label_2782
_Label_2781:
! THEN...
	mov	1503,r13		! source line 1503
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2785 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2785  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1503,r13		! source line 1503
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2782:
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2787) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2786  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2786 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0WH",r10
_Label_2788:
!   if offset >= 8192 then goto _Label_2790		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2790
!	jmp	_Label_2789
_Label_2789:
	mov	1508,r13		! source line 1508
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2791 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2791  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2793		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2793
!	jmp	_Label_2792
_Label_2792:
! THEN...
	mov	1517,r13		! source line 1517
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2793:
! END WHILE...
	jmp	_Label_2788
_Label_2790:
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2775
_Label_2777:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2794
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	12
	.word	4
	.word	_Label_2797
	.word	16
	.word	4
	.word	_Label_2798
	.word	20
	.word	4
	.word	_Label_2799
	.word	-9
	.word	1
	.word	_Label_2800
	.word	-16
	.word	4
	.word	_Label_2801
	.word	-20
	.word	4
	.word	_Label_2802
	.word	-24
	.word	4
	.word	_Label_2803
	.word	-28
	.word	4
	.word	_Label_2804
	.word	-10
	.word	1
	.word	_Label_2805
	.word	-32
	.word	4
	.word	_Label_2806
	.word	-36
	.word	4
	.word	_Label_2807
	.word	-40
	.word	4
	.word	_Label_2808
	.word	-44
	.word	4
	.word	_Label_2809
	.word	-48
	.word	4
	.word	0
_Label_2794:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2797:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2798:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2799:
	.byte	'C'
	.ascii	"_temp_2791\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2804:
	.byte	'C'
	.ascii	"_temp_2783\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2806:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2807:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2808:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2809:
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
_Label_3893:
	push	r0
	sub	r1,1,r1
	bne	_Label_3893
	mov	1527,r13		! source line 1527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2810
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2810
	jmp	_Label_2811
_Label_2810:
! THEN...
	mov	1539,r13		! source line 1539
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2812
_Label_2811:
! ELSE...
	mov	1540,r13		! source line 1540
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2814		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2814
!	jmp	_Label_2813
_Label_2813:
! THEN...
	mov	1541,r13		! source line 1541
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2814:
! END IF...
_Label_2812:
! ASSIGNMENT STATEMENT...
	mov	1543,r13		! source line 1543
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
	mov	1544,r13		! source line 1544
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
	mov	1545,r13		! source line 1545
	mov	"\0\0WH",r10
_Label_2815:
!	jmp	_Label_2816
_Label_2816:
	mov	1545,r13		! source line 1545
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2821		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2821
	jmp	_Label_2818
_Label_2821:
	mov	1547,r13		! source line 1547
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2823) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2822  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2822 then goto _Label_2820 else goto _Label_2818
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2818
	jmp	_Label_2820
_Label_2820:
	mov	1548,r13		! source line 1548
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2825) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2824  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2824 then goto _Label_2819 else goto _Label_2818
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2818
	jmp	_Label_2819
_Label_2818:
! THEN...
	mov	1549,r13		! source line 1549
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2819:
! ASSIGNMENT STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0AS",r10
	mov	1551,r13		! source line 1551
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2827) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2826  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2826 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0WH",r10
_Label_2828:
!   if offset >= 8192 then goto _Label_2830		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2830
!	jmp	_Label_2829
_Label_2829:
	mov	1552,r13		! source line 1552
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2831 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2831  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2833		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2833
!	jmp	_Label_2832
_Label_2832:
! THEN...
	mov	1559,r13		! source line 1559
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2833:
! END WHILE...
	jmp	_Label_2828
_Label_2830:
! ASSIGNMENT STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2815
_Label_2817:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2834
	.word	16		! total size of parameters
	.word	44		! frame size = 44
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
	.word	20
	.word	4
	.word	_Label_2839
	.word	-9
	.word	1
	.word	_Label_2840
	.word	-16
	.word	4
	.word	_Label_2841
	.word	-20
	.word	4
	.word	_Label_2842
	.word	-24
	.word	4
	.word	_Label_2843
	.word	-10
	.word	1
	.word	_Label_2844
	.word	-28
	.word	4
	.word	_Label_2845
	.word	-11
	.word	1
	.word	_Label_2846
	.word	-32
	.word	4
	.word	_Label_2847
	.word	-36
	.word	4
	.word	_Label_2848
	.word	-40
	.word	4
	.word	_Label_2849
	.word	-44
	.word	4
	.word	0
_Label_2834:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2835:
	.ascii	"Pself\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2838:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2839:
	.byte	'C'
	.ascii	"_temp_2831\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2843:
	.byte	'C'
	.ascii	"_temp_2824\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2845:
	.byte	'C'
	.ascii	"_temp_2822\0"
	.align
_Label_2846:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2847:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2848:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2849:
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
_Label_3894:
	push	r0
	sub	r1,1,r1
	bne	_Label_3894
	mov	1569,r13		! source line 1569
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
	mov	1593,r13		! source line 1593
	mov	"\0\0SE",r10
!   _temp_2853 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2854) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2853  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2852  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2852 >= 4 then goto _Label_2851		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2851
!	jmp	_Label_2850
_Label_2850:
! THEN...
	mov	1596,r13		! source line 1596
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2851:
! IF STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2856		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2856
!	jmp	_Label_2855
_Label_2855:
! THEN...
	mov	1601,r13		! source line 1601
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2856:
! ASSIGNMENT STATEMENT...
	mov	1604,r13		! source line 1604
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
	mov	1606,r13		! source line 1606
	mov	"\0\0RE",r10
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
!   _temp_2859 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2858 = _temp_2859 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2860 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2861) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2858  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2860  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2857  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2857  (sizeInBytes=4)
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
	.word	_Label_2862
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2864
	.word	12
	.word	4
	.word	_Label_2865
	.word	16
	.word	4
	.word	_Label_2866
	.word	20
	.word	4
	.word	_Label_2867
	.word	-12
	.word	4
	.word	_Label_2868
	.word	-16
	.word	4
	.word	_Label_2869
	.word	-20
	.word	4
	.word	_Label_2870
	.word	-24
	.word	4
	.word	_Label_2871
	.word	-28
	.word	4
	.word	_Label_2872
	.word	-32
	.word	4
	.word	_Label_2873
	.word	-36
	.word	4
	.word	_Label_2874
	.word	-40
	.word	4
	.word	_Label_2875
	.word	-44
	.word	4
	.word	0
_Label_2862:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2863:
	.ascii	"Pself\0"
	.align
_Label_2864:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2865:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2866:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2875:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2876
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2876:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2877
	.word	_sourceFileName
	.word	311		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2877:
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
_Label_3895:
	push	r0
	sub	r1,1,r1
	bne	_Label_3895
	mov	2467,r13		! source line 2467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2878 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2878  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2468,r13		! source line 2468
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
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
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   _temp_2880 = &semUsedInSynchMethods
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
	mov	2477,r13		! source line 2477
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
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_2882 = &diskBusy
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
	mov	2478,r13		! source line 2478
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
	.word	_Label_2883
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2884
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2885
	.word	-12
	.word	4
	.word	_Label_2886
	.word	-16
	.word	4
	.word	_Label_2887
	.word	-20
	.word	4
	.word	_Label_2888
	.word	-24
	.word	4
	.word	_Label_2889
	.word	-28
	.word	4
	.word	0
_Label_2883:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2884:
	.ascii	"Pself\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2878\0"
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
_Label_3896:
	push	r0
	sub	r1,1,r1
	bne	_Label_3896
	mov	2483,r13		! source line 2483
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0SE",r10
!   _temp_2890 = &diskBusy
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
	mov	2497,r13		! source line 2497
	mov	"\0\0WH",r10
_Label_2891:
!	jmp	_Label_2892
_Label_2892:
	mov	2497,r13		! source line 2497
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0SE",r10
!   _temp_2894 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2895) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2894  sizeInBytes=4
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
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_2896 = &semUsedInSynchMethods
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
	mov	2504,r13		! source line 2504
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2905 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2899
	cmp	r1,2
	be	_Label_2900
	cmp	r1,3
	be	_Label_2901
	cmp	r1,4
	be	_Label_2902
	cmp	r1,5
	be	_Label_2903
	cmp	r1,6
	be	_Label_2904
	jmp	_Label_2897
! CASE 1...
_Label_2899:
! SEND STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
!   _temp_2906 = &diskBusy
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
	mov	2507,r13		! source line 2507
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2900:
! CALL STATEMENT...
!   _temp_2907 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2907  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2509,r13		! source line 2509
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2901:
! CALL STATEMENT...
!   _temp_2908 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2908  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2511,r13		! source line 2511
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2902:
! CALL STATEMENT...
!   _temp_2909 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2909  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2513,r13		! source line 2513
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2903:
! BREAK STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0BR",r10
	jmp	_Label_2898
! CASE 6...
_Label_2904:
! CALL STATEMENT...
!   _temp_2910 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2910  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2519,r13		! source line 2519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2897:
! CALL STATEMENT...
!   _temp_2911 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2911  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2521,r13		! source line 2521
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2898:
! END WHILE...
	jmp	_Label_2891
_Label_2893:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2912
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2914
	.word	12
	.word	4
	.word	_Label_2915
	.word	16
	.word	4
	.word	_Label_2916
	.word	20
	.word	4
	.word	_Label_2917
	.word	-12
	.word	4
	.word	_Label_2918
	.word	-16
	.word	4
	.word	_Label_2919
	.word	-20
	.word	4
	.word	_Label_2920
	.word	-24
	.word	4
	.word	_Label_2921
	.word	-28
	.word	4
	.word	_Label_2922
	.word	-32
	.word	4
	.word	_Label_2923
	.word	-36
	.word	4
	.word	_Label_2924
	.word	-40
	.word	4
	.word	_Label_2925
	.word	-44
	.word	4
	.word	_Label_2926
	.word	-48
	.word	4
	.word	_Label_2927
	.word	-52
	.word	4
	.word	0
_Label_2912:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2913:
	.ascii	"Pself\0"
	.align
_Label_2914:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2915:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2916:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2890\0"
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
	mov	2530,r13		! source line 2530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
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
	mov	2549,r13		! source line 2549
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
	mov	2550,r13		! source line 2550
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
	mov	2551,r13		! source line 2551
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
	mov	2551,r13		! source line 2551
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
	.word	_Label_2928
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2930
	.word	12
	.word	4
	.word	_Label_2931
	.word	16
	.word	4
	.word	_Label_2932
	.word	20
	.word	4
	.word	_Label_2933
	.word	24
	.word	4
	.word	0
_Label_2928:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2929:
	.ascii	"Pself\0"
	.align
_Label_2930:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2931:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2932:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2933:
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
_Label_3897:
	push	r0
	sub	r1,1,r1
	bne	_Label_3897
	mov	2556,r13		! source line 2556
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_2934 = &diskBusy
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
	mov	2569,r13		! source line 2569
	mov	"\0\0WH",r10
_Label_2935:
!	jmp	_Label_2936
_Label_2936:
	mov	2569,r13		! source line 2569
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0SE",r10
!   _temp_2938 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2939) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2938  sizeInBytes=4
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
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_2940 = &semUsedInSynchMethods
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
	mov	2575,r13		! source line 2575
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2949 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2943
	cmp	r1,2
	be	_Label_2944
	cmp	r1,3
	be	_Label_2945
	cmp	r1,4
	be	_Label_2946
	cmp	r1,5
	be	_Label_2947
	cmp	r1,6
	be	_Label_2948
	jmp	_Label_2941
! CASE 1...
_Label_2943:
! SEND STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   _temp_2950 = &diskBusy
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
	mov	2578,r13		! source line 2578
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2944:
! CALL STATEMENT...
!   _temp_2951 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2951  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2580,r13		! source line 2580
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2945:
! CALL STATEMENT...
!   _temp_2952 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2952  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2582,r13		! source line 2582
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2946:
! CALL STATEMENT...
!   _temp_2953 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2953  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2584,r13		! source line 2584
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2947:
! BREAK STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0BR",r10
	jmp	_Label_2942
! CASE 6...
_Label_2948:
! CALL STATEMENT...
!   _temp_2954 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2954  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2590,r13		! source line 2590
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2941:
! CALL STATEMENT...
!   _temp_2955 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2955  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2592,r13		! source line 2592
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2942:
! END WHILE...
	jmp	_Label_2935
_Label_2937:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2956
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2958
	.word	12
	.word	4
	.word	_Label_2959
	.word	16
	.word	4
	.word	_Label_2960
	.word	20
	.word	4
	.word	_Label_2961
	.word	-12
	.word	4
	.word	_Label_2962
	.word	-16
	.word	4
	.word	_Label_2963
	.word	-20
	.word	4
	.word	_Label_2964
	.word	-24
	.word	4
	.word	_Label_2965
	.word	-28
	.word	4
	.word	_Label_2966
	.word	-32
	.word	4
	.word	_Label_2967
	.word	-36
	.word	4
	.word	_Label_2968
	.word	-40
	.word	4
	.word	_Label_2969
	.word	-44
	.word	4
	.word	_Label_2970
	.word	-48
	.word	4
	.word	_Label_2971
	.word	-52
	.word	4
	.word	0
_Label_2956:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2957:
	.ascii	"Pself\0"
	.align
_Label_2958:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2959:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2960:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2934\0"
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
	mov	2601,r13		! source line 2601
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2618,r13		! source line 2618
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
	mov	2619,r13		! source line 2619
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
	mov	2620,r13		! source line 2620
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
	mov	2621,r13		! source line 2621
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
	mov	2621,r13		! source line 2621
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
	.word	_Label_2972
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2973
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2974
	.word	12
	.word	4
	.word	_Label_2975
	.word	16
	.word	4
	.word	_Label_2976
	.word	20
	.word	4
	.word	_Label_2977
	.word	24
	.word	4
	.word	0
_Label_2972:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2973:
	.ascii	"Pself\0"
	.align
_Label_2974:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2975:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2976:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2977:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2978
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
_Label_2978:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2979
	.word	_sourceFileName
	.word	334		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2979:
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
_Label_3898:
	push	r0
	sub	r1,1,r1
	bne	_Label_3898
	mov	2632,r13		! source line 2632
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2980 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2639,r13		! source line 2639
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2640,r13		! source line 2640
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
	mov	2641,r13		! source line 2641
	mov	"\0\0SE",r10
!   _temp_2982 = &fileManagerLock
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
	mov	2644,r13		! source line 2644
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
	mov	2645,r13		! source line 2645
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
	mov	2646,r13		! source line 2646
	mov	"\0\0SE",r10
!   _temp_2985 = &anFCBBecameFree
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
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
!   _temp_2986 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2988 = &_temp_2987
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2988 = _temp_2988 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2990 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3899:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3899
!   _temp_2990 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2992:
!   Data Move: *_temp_2988 = _temp_2990  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3900:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3900
!   _temp_2988 = _temp_2988 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2989 = _temp_2989 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2989) then goto _Label_2992
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2992
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2993 = &_temp_2987
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3901
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3901:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2986 = *_temp_2993  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3902:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3902
! FOR STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2998 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2999 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2998  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2994:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2999 then goto _Label_2997		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2997
_Label_2995:
	mov	2649,r13		! source line 2649
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   _temp_3000 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3000 [i ] into _temp_3001
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
!   _temp_3002 = _temp_3001 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3002 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   _temp_3003 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3003 [i ] into _temp_3004
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
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
!   _temp_3006 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3006 [i ] into _temp_3007
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
!   _temp_3005 = _temp_3007		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3008 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3005  sizeInBytes=4
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
_Label_2996:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2994
! END FOR
_Label_2997:
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
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
	mov	2657,r13		! source line 2657
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
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_3011 = &anOpenFileBecameFree
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
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   _temp_3012 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3014 = &_temp_3013
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3014 = _temp_3014 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3016 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3903:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3903
!   _temp_3016 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3018:
!   Data Move: *_temp_3014 = _temp_3016  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3904:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3904
!   _temp_3014 = _temp_3014 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3015 = _temp_3015 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3015) then goto _Label_3018
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3018
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3019 = &_temp_3013
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3905
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3905:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3012 = *_temp_3019  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3906:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3906
! FOR STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3024 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3025 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3024  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3020:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3025 then goto _Label_3023		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3023
_Label_3021:
	mov	2661,r13		! source line 2661
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   _temp_3026 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3026 [i ] into _temp_3027
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
!   _temp_3028 = _temp_3027 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3028 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0SE",r10
!   _temp_3030 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3030 [i ] into _temp_3031
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
!   _temp_3029 = _temp_3031		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3032 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3029  sizeInBytes=4
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
_Label_3022:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3020
! END FOR
_Label_3023:
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3907:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3907
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0AS",r10
!   _temp_3034 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3035 = _temp_3034 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3035 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   _temp_3036 = &_P_Kernel_frameManager
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
	mov	2674,r13		! source line 2674
	mov	"\0\0SE",r10
!   _temp_3037 = &_P_Kernel_diskDriver
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
	mov	2674,r13		! source line 2674
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
	.word	_Label_3038
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3039
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3040
	.word	-12
	.word	4
	.word	_Label_3041
	.word	-16
	.word	4
	.word	_Label_3042
	.word	-20
	.word	4
	.word	_Label_3043
	.word	-24
	.word	4
	.word	_Label_3044
	.word	-28
	.word	4
	.word	_Label_3045
	.word	-32
	.word	4
	.word	_Label_3046
	.word	-36
	.word	4
	.word	_Label_3047
	.word	-40
	.word	4
	.word	_Label_3048
	.word	-44
	.word	4
	.word	_Label_3049
	.word	-48
	.word	4
	.word	_Label_3050
	.word	-52
	.word	4
	.word	_Label_3051
	.word	-56
	.word	4
	.word	_Label_3052
	.word	-60
	.word	4
	.word	_Label_3053
	.word	-64
	.word	4
	.word	_Label_3054
	.word	-68
	.word	4
	.word	_Label_3055
	.word	-72
	.word	4
	.word	_Label_3056
	.word	-100
	.word	28
	.word	_Label_3057
	.word	-104
	.word	4
	.word	_Label_3058
	.word	-108
	.word	4
	.word	_Label_3059
	.word	-392
	.word	284
	.word	_Label_3060
	.word	-396
	.word	4
	.word	_Label_3061
	.word	-400
	.word	4
	.word	_Label_3062
	.word	-404
	.word	4
	.word	_Label_3063
	.word	-408
	.word	4
	.word	_Label_3064
	.word	-412
	.word	4
	.word	_Label_3065
	.word	-416
	.word	4
	.word	_Label_3066
	.word	-420
	.word	4
	.word	_Label_3067
	.word	-424
	.word	4
	.word	_Label_3068
	.word	-428
	.word	4
	.word	_Label_3069
	.word	-432
	.word	4
	.word	_Label_3070
	.word	-436
	.word	4
	.word	_Label_3071
	.word	-440
	.word	4
	.word	_Label_3072
	.word	-444
	.word	4
	.word	_Label_3073
	.word	-448
	.word	4
	.word	_Label_3074
	.word	-452
	.word	4
	.word	_Label_3075
	.word	-456
	.word	4
	.word	_Label_3076
	.word	-460
	.word	4
	.word	_Label_3077
	.word	-500
	.word	40
	.word	_Label_3078
	.word	-504
	.word	4
	.word	_Label_3079
	.word	-508
	.word	4
	.word	_Label_3080
	.word	-912
	.word	404
	.word	_Label_3081
	.word	-916
	.word	4
	.word	_Label_3082
	.word	-920
	.word	4
	.word	_Label_3083
	.word	-924
	.word	4
	.word	_Label_3084
	.word	-928
	.word	4
	.word	_Label_3085
	.word	-932
	.word	4
	.word	_Label_3086
	.word	-936
	.word	4
	.word	_Label_3087
	.word	-940
	.word	4
	.word	_Label_3088
	.word	-944
	.word	4
	.word	0
_Label_3038:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3039:
	.ascii	"Pself\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3088:
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
_Label_3908:
	push	r0
	sub	r1,1,r1
	bne	_Label_3908
	mov	2681,r13		! source line 2681
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
!   _temp_3089 = &fileManagerLock
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
!   _temp_3090 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3090  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2684,r13		! source line 2684
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3095 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3096 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3095  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3091:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3096 then goto _Label_3094		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3094
_Label_3092:
	mov	2685,r13		! source line 2685
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3097 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3097  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2686,r13		! source line 2686
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3098 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3098  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2688,r13		! source line 2688
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
!   _temp_3099 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3099 [i ] into _temp_3100
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
_Label_3093:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3091
! END FOR
_Label_3094:
! CALL STATEMENT...
!   _temp_3101 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3101  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_3102 = _function_189_printFCB
	set	_function_189_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3103 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3102  sizeInBytes=4
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
	mov	2693,r13		! source line 2693
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3104 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3104  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2694,r13		! source line 2694
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3109 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3110 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3109  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3105:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3110 then goto _Label_3108		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3108
_Label_3106:
	mov	2695,r13		! source line 2695
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3111 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3111  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2696,r13		! source line 2696
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2697,r13		! source line 2697
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3112 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3112  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3114 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3114 [i ] into _temp_3115
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
!   _temp_3113 = _temp_3115		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3113  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2699,r13		! source line 2699
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3116 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3116  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2700,r13		! source line 2700
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0SE",r10
!   _temp_3117 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3117 [i ] into _temp_3118
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
_Label_3107:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3105
! END FOR
_Label_3108:
! CALL STATEMENT...
!   _temp_3119 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3119  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2703,r13		! source line 2703
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0SE",r10
!   _temp_3120 = _function_188_printOpen
	set	_function_188_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3121 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3120  sizeInBytes=4
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
	mov	2705,r13		! source line 2705
	mov	"\0\0SE",r10
!   _temp_3122 = &fileManagerLock
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
	mov	2705,r13		! source line 2705
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
	.word	_Label_3123
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3125
	.word	-12
	.word	4
	.word	_Label_3126
	.word	-16
	.word	4
	.word	_Label_3127
	.word	-20
	.word	4
	.word	_Label_3128
	.word	-24
	.word	4
	.word	_Label_3129
	.word	-28
	.word	4
	.word	_Label_3130
	.word	-32
	.word	4
	.word	_Label_3131
	.word	-36
	.word	4
	.word	_Label_3132
	.word	-40
	.word	4
	.word	_Label_3133
	.word	-44
	.word	4
	.word	_Label_3134
	.word	-48
	.word	4
	.word	_Label_3135
	.word	-52
	.word	4
	.word	_Label_3136
	.word	-56
	.word	4
	.word	_Label_3137
	.word	-60
	.word	4
	.word	_Label_3138
	.word	-64
	.word	4
	.word	_Label_3139
	.word	-68
	.word	4
	.word	_Label_3140
	.word	-72
	.word	4
	.word	_Label_3141
	.word	-76
	.word	4
	.word	_Label_3142
	.word	-80
	.word	4
	.word	_Label_3143
	.word	-84
	.word	4
	.word	_Label_3144
	.word	-88
	.word	4
	.word	_Label_3145
	.word	-92
	.word	4
	.word	_Label_3146
	.word	-96
	.word	4
	.word	_Label_3147
	.word	-100
	.word	4
	.word	_Label_3148
	.word	-104
	.word	4
	.word	_Label_3149
	.word	-108
	.word	4
	.word	_Label_3150
	.word	-112
	.word	4
	.word	_Label_3151
	.word	-116
	.word	4
	.word	0
_Label_3123:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3124:
	.ascii	"Pself\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3151:
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
_Label_3909:
	push	r0
	sub	r1,1,r1
	bne	_Label_3909
	mov	2710,r13		! source line 2710
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
!   _temp_3152 = &_P_Kernel_fileManager
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
	mov	2727,r13		! source line 2727
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3153
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3153
	jmp	_Label_3154
_Label_3153:
! THEN...
	mov	2728,r13		! source line 2728
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3154:
! SEND STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0SE",r10
!   _temp_3155 = &fileManagerLock
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
	mov	2733,r13		! source line 2733
	mov	"\0\0WH",r10
_Label_3156:
	mov	2733,r13		! source line 2733
	mov	"\0\0SE",r10
!   _temp_3159 = &openFileFreeList
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
!   if result==true then goto _Label_3157 else goto _Label_3158
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3158
	jmp	_Label_3157
_Label_3157:
	mov	2733,r13		! source line 2733
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
!   _temp_3160 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3161 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3160  sizeInBytes=4
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
	jmp	_Label_3156
_Label_3158:
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
	mov	2736,r13		! source line 2736
	mov	"\0\0SE",r10
!   _temp_3162 = &openFileFreeList
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
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3163 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3163 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3164 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3164 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3165 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3165 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0SE",r10
!   _temp_3166 = &fileManagerLock
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
	mov	2746,r13		! source line 2746
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
	.word	_Label_3167
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3169
	.word	12
	.word	4
	.word	_Label_3170
	.word	-12
	.word	4
	.word	_Label_3171
	.word	-16
	.word	4
	.word	_Label_3172
	.word	-20
	.word	4
	.word	_Label_3173
	.word	-24
	.word	4
	.word	_Label_3174
	.word	-28
	.word	4
	.word	_Label_3175
	.word	-32
	.word	4
	.word	_Label_3176
	.word	-36
	.word	4
	.word	_Label_3177
	.word	-40
	.word	4
	.word	_Label_3178
	.word	-44
	.word	4
	.word	_Label_3179
	.word	-48
	.word	4
	.word	_Label_3180
	.word	-52
	.word	4
	.word	_Label_3181
	.word	-56
	.word	4
	.word	0
_Label_3167:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3168:
	.ascii	"Pself\0"
	.align
_Label_3169:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3180:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3181:
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
_Label_3910:
	push	r0
	sub	r1,1,r1
	bne	_Label_3910
	mov	2751,r13		! source line 2751
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2779,r13		! source line 2779
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
	mov	2780,r13		! source line 2780
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3183		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3183
!	jmp	_Label_3182
_Label_3182:
! THEN...
	mov	2782,r13		! source line 2782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3184 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3184  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2782,r13		! source line 2782
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3183:
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
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
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2788,r13		! source line 2788
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
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0WH",r10
_Label_3185:
!   if numFiles <= 0 then goto _Label_3187		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3187
!	jmp	_Label_3186
_Label_3186:
	mov	2792,r13		! source line 2792
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3188 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3188  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2793,r13		! source line 2793
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3189 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3189  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3190 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3190  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3194 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3194 then goto _Label_3192		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3192
!	jmp	_Label_3193
_Label_3193:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3196
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
!   _temp_3195 = _temp_3196		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3195  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2800,r13		! source line 2800
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3191 else goto _Label_3192
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3192
	jmp	_Label_3191
_Label_3191:
! THEN...
	mov	2801,r13		! source line 2801
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0BR",r10
	jmp	_Label_3187
! END IF...
_Label_3192:
! ASSIGNMENT STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3185
_Label_3187:
! IF STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3198		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3198
!	jmp	_Label_3197
_Label_3197:
! THEN...
	mov	2809,r13		! source line 2809
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3198:
! SEND STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
!   _temp_3199 = &fileManagerLock
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
	mov	2814,r13		! source line 2814
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3204 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3205 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3204  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3200:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3205 then goto _Label_3203		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3203
_Label_3201:
	mov	2814,r13		! source line 2814
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   _temp_3206 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3206 [i ] into _temp_3207
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
!   fcb = _temp_3207		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3211 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3210 = *_temp_3211  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3210 != start then goto _Label_3209		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3209
!	jmp	_Label_3208
_Label_3208:
! THEN...
	mov	2817,r13		! source line 2817
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3212 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3215 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3214 = *_temp_3215  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3213 = _temp_3214 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3212 = _temp_3213  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0SE",r10
!   _temp_3216 = &fileManagerLock
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
	mov	2819,r13		! source line 2819
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3209:
!   Increment the FOR-LOOP index variable and jump back
_Label_3202:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3200
! END FOR
_Label_3203:
! WHILE STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0WH",r10
_Label_3217:
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   _temp_3220 = &fcbFreeList
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
!   if result==true then goto _Label_3218 else goto _Label_3219
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3219
	jmp	_Label_3218
_Label_3218:
	mov	2824,r13		! source line 2824
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
!   _temp_3221 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3222 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3221  sizeInBytes=4
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
	jmp	_Label_3217
_Label_3219:
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
	mov	2827,r13		! source line 2827
	mov	"\0\0SE",r10
!   _temp_3223 = &fcbFreeList
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
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
!   _temp_3224 = &fileManagerLock
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
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3225 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3225 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3226 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3226 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3227 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3227 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3232 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3231 = *_temp_3232  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3231 < 0 then goto _Label_3230		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3230
	jmp	_Label_3228
_Label_3230:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3233 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3233 ) then goto _Label_3229		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3229
!	jmp	_Label_3228
_Label_3228:
! THEN...
	mov	2837,r13		! source line 2837
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3234 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3234  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2837,r13		! source line 2837
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3229:
! RETURN STATEMENT...
	mov	2839,r13		! source line 2839
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
	.word	_Label_3235
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3236
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3237
	.word	12
	.word	4
	.word	_Label_3238
	.word	-12
	.word	4
	.word	_Label_3239
	.word	-16
	.word	4
	.word	_Label_3240
	.word	-20
	.word	4
	.word	_Label_3241
	.word	-24
	.word	4
	.word	_Label_3242
	.word	-28
	.word	4
	.word	_Label_3243
	.word	-32
	.word	4
	.word	_Label_3244
	.word	-36
	.word	4
	.word	_Label_3245
	.word	-40
	.word	4
	.word	_Label_3246
	.word	-44
	.word	4
	.word	_Label_3247
	.word	-48
	.word	4
	.word	_Label_3248
	.word	-52
	.word	4
	.word	_Label_3249
	.word	-56
	.word	4
	.word	_Label_3250
	.word	-60
	.word	4
	.word	_Label_3251
	.word	-64
	.word	4
	.word	_Label_3252
	.word	-68
	.word	4
	.word	_Label_3253
	.word	-72
	.word	4
	.word	_Label_3254
	.word	-76
	.word	4
	.word	_Label_3255
	.word	-80
	.word	4
	.word	_Label_3256
	.word	-84
	.word	4
	.word	_Label_3257
	.word	-88
	.word	4
	.word	_Label_3258
	.word	-92
	.word	4
	.word	_Label_3259
	.word	-96
	.word	4
	.word	_Label_3260
	.word	-100
	.word	4
	.word	_Label_3261
	.word	-104
	.word	4
	.word	_Label_3262
	.word	-108
	.word	4
	.word	_Label_3263
	.word	-112
	.word	4
	.word	_Label_3264
	.word	-116
	.word	4
	.word	_Label_3265
	.word	-120
	.word	4
	.word	_Label_3266
	.word	-124
	.word	4
	.word	_Label_3267
	.word	-128
	.word	4
	.word	_Label_3268
	.word	-132
	.word	4
	.word	_Label_3269
	.word	-136
	.word	4
	.word	_Label_3270
	.word	-140
	.word	4
	.word	_Label_3271
	.word	-144
	.word	4
	.word	_Label_3272
	.word	-148
	.word	4
	.word	_Label_3273
	.word	-152
	.word	4
	.word	_Label_3274
	.word	-156
	.word	4
	.word	_Label_3275
	.word	-160
	.word	4
	.word	0
_Label_3235:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3236:
	.ascii	"Pself\0"
	.align
_Label_3237:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3269:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3270:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3271:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3272:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3273:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3274:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3275:
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
_Label_3911:
	push	r0
	sub	r1,1,r1
	bne	_Label_3911
	mov	2852,r13		! source line 2852
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0IF",r10
!   _temp_3278 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3278 then goto _Label_3277		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3277
!	jmp	_Label_3276
_Label_3276:
! THEN...
	mov	2855,r13		! source line 2855
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3277:
! SEND STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
!   _temp_3279 = &fileManagerLock
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
	mov	2858,r13		! source line 2858
	mov	"\0\0SE",r10
!   _temp_3280 = &_P_Kernel_fileManager
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
	mov	2859,r13		! source line 2859
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3281 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3281  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3282 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3285 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3284 = *_temp_3285  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3283 = _temp_3284 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3282 = _temp_3283  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3289 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3288 = *_temp_3289  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3288 > 0 then goto _Label_3287		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3287
!	jmp	_Label_3286
_Label_3286:
! THEN...
	mov	2862,r13		! source line 2862
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0SE",r10
!   _temp_3290 = &openFileFreeList
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
	mov	2863,r13		! source line 2863
	mov	"\0\0SE",r10
!   _temp_3291 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3292 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3291  sizeInBytes=4
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
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3293 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3296 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3295 = *_temp_3296  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3294 = _temp_3295 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3293 = _temp_3294  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3300 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3299 = *_temp_3300  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3299 > 0 then goto _Label_3298		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3298
!	jmp	_Label_3297
_Label_3297:
! THEN...
	mov	2866,r13		! source line 2866
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0SE",r10
!   _temp_3301 = &fcbFreeList
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
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
!   _temp_3302 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3303 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3302  sizeInBytes=4
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
_Label_3298:
! END IF...
_Label_3287:
! SEND STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0SE",r10
!   _temp_3304 = &fileManagerLock
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
	mov	2870,r13		! source line 2870
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
	.word	_Label_3305
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3306
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3307
	.word	12
	.word	4
	.word	_Label_3308
	.word	-12
	.word	4
	.word	_Label_3309
	.word	-16
	.word	4
	.word	_Label_3310
	.word	-20
	.word	4
	.word	_Label_3311
	.word	-24
	.word	4
	.word	_Label_3312
	.word	-28
	.word	4
	.word	_Label_3313
	.word	-32
	.word	4
	.word	_Label_3314
	.word	-36
	.word	4
	.word	_Label_3315
	.word	-40
	.word	4
	.word	_Label_3316
	.word	-44
	.word	4
	.word	_Label_3317
	.word	-48
	.word	4
	.word	_Label_3318
	.word	-52
	.word	4
	.word	_Label_3319
	.word	-56
	.word	4
	.word	_Label_3320
	.word	-60
	.word	4
	.word	_Label_3321
	.word	-64
	.word	4
	.word	_Label_3322
	.word	-68
	.word	4
	.word	_Label_3323
	.word	-72
	.word	4
	.word	_Label_3324
	.word	-76
	.word	4
	.word	_Label_3325
	.word	-80
	.word	4
	.word	_Label_3326
	.word	-84
	.word	4
	.word	_Label_3327
	.word	-88
	.word	4
	.word	_Label_3328
	.word	-92
	.word	4
	.word	_Label_3329
	.word	-96
	.word	4
	.word	_Label_3330
	.word	-100
	.word	4
	.word	_Label_3331
	.word	-104
	.word	4
	.word	0
_Label_3305:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3306:
	.ascii	"Pself\0"
	.align
_Label_3307:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3331:
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
_Label_3912:
	push	r0
	sub	r1,1,r1
	bne	_Label_3912
	mov	2875,r13		! source line 2875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3335 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3334 = *_temp_3335  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3334) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3336 = _temp_3334 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3336 ) then goto _Label_3333		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3333
!	jmp	_Label_3332
_Label_3332:
! THEN...
	mov	2881,r13		! source line 2881
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3341 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3340 = *_temp_3341  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3340) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3342 = _temp_3340 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3339 = *_temp_3342  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3339 >= 0 then goto _Label_3338		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3338
!	jmp	_Label_3337
_Label_3337:
! THEN...
	mov	2882,r13		! source line 2882
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3343 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3343  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2882,r13		! source line 2882
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3338:
! ASSIGNMENT STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3345 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3344 = *_temp_3345  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3344) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3346 = _temp_3344 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3346 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3350 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3349 = *_temp_3350  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3349) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3351 = _temp_3349 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3348 = *_temp_3351  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3354 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3353 = *_temp_3354  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3353) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3355 = _temp_3353 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3352 = *_temp_3355  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3347 = _temp_3348 + _temp_3352		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3358 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3357 = *_temp_3358  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3357) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3359 = _temp_3357 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3356 = *_temp_3359  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3360 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3347  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3356  sizeInBytes=4
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
_Label_3333:
! RETURN STATEMENT...
	mov	2880,r13		! source line 2880
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
	.word	_Label_3361
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3363
	.word	12
	.word	4
	.word	_Label_3364
	.word	-12
	.word	4
	.word	_Label_3365
	.word	-16
	.word	4
	.word	_Label_3366
	.word	-20
	.word	4
	.word	_Label_3367
	.word	-24
	.word	4
	.word	_Label_3368
	.word	-28
	.word	4
	.word	_Label_3369
	.word	-32
	.word	4
	.word	_Label_3370
	.word	-36
	.word	4
	.word	_Label_3371
	.word	-40
	.word	4
	.word	_Label_3372
	.word	-44
	.word	4
	.word	_Label_3373
	.word	-48
	.word	4
	.word	_Label_3374
	.word	-52
	.word	4
	.word	_Label_3375
	.word	-56
	.word	4
	.word	_Label_3376
	.word	-60
	.word	4
	.word	_Label_3377
	.word	-64
	.word	4
	.word	_Label_3378
	.word	-68
	.word	4
	.word	_Label_3379
	.word	-72
	.word	4
	.word	_Label_3380
	.word	-76
	.word	4
	.word	_Label_3381
	.word	-80
	.word	4
	.word	_Label_3382
	.word	-84
	.word	4
	.word	_Label_3383
	.word	-88
	.word	4
	.word	_Label_3384
	.word	-92
	.word	4
	.word	_Label_3385
	.word	-96
	.word	4
	.word	_Label_3386
	.word	-100
	.word	4
	.word	_Label_3387
	.word	-104
	.word	4
	.word	_Label_3388
	.word	-108
	.word	4
	.word	0
_Label_3361:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3362:
	.ascii	"Pself\0"
	.align
_Label_3363:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3372:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3373:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3374:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3375:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3376:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3378:
	.byte	'?'
	.ascii	"_temp_3346\0"
	.align
_Label_3379:
	.byte	'?'
	.ascii	"_temp_3345\0"
	.align
_Label_3380:
	.byte	'?'
	.ascii	"_temp_3344\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3342\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3341\0"
	.align
_Label_3384:
	.byte	'?'
	.ascii	"_temp_3340\0"
	.align
_Label_3385:
	.byte	'?'
	.ascii	"_temp_3339\0"
	.align
_Label_3386:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3334\0"
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
_Label_3913:
	push	r0
	sub	r1,1,r1
	bne	_Label_3913
	mov	2894,r13		! source line 2894
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0SE",r10
!   _temp_3389 = &fileManagerLock
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
	mov	2910,r13		! source line 2910
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3395		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3395
!   _temp_3394 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3396
_Label_3395:
!   _temp_3394 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3396:
!   if _temp_3394 then goto _Label_3393 else goto _Label_3390
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3390
	jmp	_Label_3393
_Label_3393:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3399 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3398 = *_temp_3399  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3398 == 0 then goto _Label_3400		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3400
!   _temp_3397 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3401
_Label_3400:
!   _temp_3397 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3401:
!   if _temp_3397 then goto _Label_3392 else goto _Label_3390
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3390
	jmp	_Label_3392
_Label_3392:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3404 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3403 = *_temp_3404  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3403) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3405 = _temp_3403 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3402 = *_temp_3405  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3402 >= 0 then goto _Label_3391		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3391
!	jmp	_Label_3390
_Label_3390:
! THEN...
	mov	2911,r13		! source line 2911
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3406 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3406  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2911,r13		! source line 2911
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3391:
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3407 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3407  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0WH",r10
_Label_3408:
!   if numBytes <= 0 then goto _Label_3410		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3410
!	jmp	_Label_3409
_Label_3409:
	mov	2914,r13		! source line 2914
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
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
	mov	2924,r13		! source line 2924
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
	mov	2928,r13		! source line 2928
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3414 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3413 = *_temp_3414  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3413 == sector then goto _Label_3412		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3412
!	jmp	_Label_3411
_Label_3411:
! THEN...
	mov	2929,r13		! source line 2929
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3415) then goto _runtimeErrorNullPointer
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
	mov	2931,r13		! source line 2931
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3418 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3417 = *_temp_3418  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3416 = sector + _temp_3417		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3420 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3419 = *_temp_3420  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3421 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3416  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3419  sizeInBytes=4
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
	mov	2934,r13		! source line 2934
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3422 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3422 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3423 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3423 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3412:
! ASSIGNMENT STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3425 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3424 = *_temp_3425  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3424 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0AS",r10
!   _temp_3426 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3426  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2938,r13		! source line 2938
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
	mov	2942,r13		! source line 2942
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3408
_Label_3410:
! SEND STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0SE",r10
!   _temp_3427 = &fileManagerLock
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
	mov	2953,r13		! source line 2953
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
	.word	_Label_3428
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3429
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3430
	.word	12
	.word	4
	.word	_Label_3431
	.word	16
	.word	4
	.word	_Label_3432
	.word	20
	.word	4
	.word	_Label_3433
	.word	24
	.word	4
	.word	_Label_3434
	.word	-16
	.word	4
	.word	_Label_3435
	.word	-20
	.word	4
	.word	_Label_3436
	.word	-24
	.word	4
	.word	_Label_3437
	.word	-28
	.word	4
	.word	_Label_3438
	.word	-32
	.word	4
	.word	_Label_3439
	.word	-36
	.word	4
	.word	_Label_3440
	.word	-40
	.word	4
	.word	_Label_3441
	.word	-44
	.word	4
	.word	_Label_3442
	.word	-48
	.word	4
	.word	_Label_3443
	.word	-52
	.word	4
	.word	_Label_3444
	.word	-56
	.word	4
	.word	_Label_3445
	.word	-60
	.word	4
	.word	_Label_3446
	.word	-64
	.word	4
	.word	_Label_3447
	.word	-68
	.word	4
	.word	_Label_3448
	.word	-72
	.word	4
	.word	_Label_3449
	.word	-76
	.word	4
	.word	_Label_3450
	.word	-80
	.word	4
	.word	_Label_3451
	.word	-84
	.word	4
	.word	_Label_3452
	.word	-88
	.word	4
	.word	_Label_3453
	.word	-92
	.word	4
	.word	_Label_3454
	.word	-96
	.word	4
	.word	_Label_3455
	.word	-100
	.word	4
	.word	_Label_3456
	.word	-104
	.word	4
	.word	_Label_3457
	.word	-9
	.word	1
	.word	_Label_3458
	.word	-10
	.word	1
	.word	_Label_3459
	.word	-108
	.word	4
	.word	_Label_3460
	.word	-112
	.word	4
	.word	_Label_3461
	.word	-116
	.word	4
	.word	_Label_3462
	.word	-120
	.word	4
	.word	_Label_3463
	.word	-124
	.word	4
	.word	_Label_3464
	.word	-128
	.word	4
	.word	0
_Label_3428:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3429:
	.ascii	"Pself\0"
	.align
_Label_3430:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3431:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3432:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3433:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3407\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3406\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3457:
	.byte	'C'
	.ascii	"_temp_3397\0"
	.align
_Label_3458:
	.byte	'C'
	.ascii	"_temp_3394\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3460:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3461:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3462:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3463:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3464:
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
_Label_3914:
	push	r0
	sub	r1,1,r1
	bne	_Label_3914
	mov	2958,r13		! source line 2958
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0SE",r10
!   _temp_3465 = &fileManagerLock
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
	mov	2975,r13		! source line 2975
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3471		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3471
!   _temp_3470 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3472
_Label_3471:
!   _temp_3470 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3472:
!   if _temp_3470 then goto _Label_3469 else goto _Label_3466
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3466
	jmp	_Label_3469
_Label_3469:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3475 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3474 = *_temp_3475  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3474 == 0 then goto _Label_3476		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3476
!   _temp_3473 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3477
_Label_3476:
!   _temp_3473 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3477:
!   if _temp_3473 then goto _Label_3468 else goto _Label_3466
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3466
	jmp	_Label_3468
_Label_3468:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3480 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3479 = *_temp_3480  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3479) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3481 = _temp_3479 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3478 = *_temp_3481  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3478 >= 0 then goto _Label_3467		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3467
!	jmp	_Label_3466
_Label_3466:
! THEN...
	mov	2976,r13		! source line 2976
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3482 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3482  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2976,r13		! source line 2976
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3467:
! ASSIGNMENT STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3483 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3483  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2979,r13		! source line 2979
	mov	"\0\0WH",r10
_Label_3484:
!   if numBytes <= 0 then goto _Label_3486		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3486
!	jmp	_Label_3485
_Label_3485:
	mov	2979,r13		! source line 2979
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2988,r13		! source line 2988
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
	mov	2989,r13		! source line 2989
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
	mov	2993,r13		! source line 2993
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3490 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3489 = *_temp_3490  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3489 == sector then goto _Label_3488		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3488
!	jmp	_Label_3487
_Label_3487:
! THEN...
	mov	2995,r13		! source line 2995
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3491) then goto _runtimeErrorNullPointer
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
_Label_3488:
! ASSIGNMENT STATEMENT...
	mov	2997,r13		! source line 2997
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3493 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3492 = *_temp_3493  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3492 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0AS",r10
!   _temp_3494 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3494  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2998,r13		! source line 2998
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3498 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3497 = *_temp_3498  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3497 != sector then goto _Label_3496		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3496
!	jmp	_Label_3495
_Label_3495:
	jmp	_Label_3499
_Label_3496:
! ELSE...
	mov	3001,r13		! source line 3001
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3502
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3502
	jmp	_Label_3501
_Label_3502:
!   if bytesToMove != 8192 then goto _Label_3501		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3501
!	jmp	_Label_3500
_Label_3500:
	jmp	_Label_3503
_Label_3501:
! ELSE...
	mov	3005,r13		! source line 3005
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3506 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3505 = *_temp_3506  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3504 = sector + _temp_3505		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3508 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3507 = *_temp_3508  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3509 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3504  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3507  sizeInBytes=4
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
_Label_3503:
! END IF...
_Label_3499:
! ASSIGNMENT STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3510 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3510 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3010,r13		! source line 3010
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3511 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3511 = 1  (sizeInBytes=1)
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
	mov	3014,r13		! source line 3014
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3017,r13		! source line 3017
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3484
_Label_3486:
! SEND STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0SE",r10
!   _temp_3512 = &fileManagerLock
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
	mov	3026,r13		! source line 3026
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
	.word	_Label_3513
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3515
	.word	12
	.word	4
	.word	_Label_3516
	.word	16
	.word	4
	.word	_Label_3517
	.word	20
	.word	4
	.word	_Label_3518
	.word	24
	.word	4
	.word	_Label_3519
	.word	-16
	.word	4
	.word	_Label_3520
	.word	-20
	.word	4
	.word	_Label_3521
	.word	-24
	.word	4
	.word	_Label_3522
	.word	-28
	.word	4
	.word	_Label_3523
	.word	-32
	.word	4
	.word	_Label_3524
	.word	-36
	.word	4
	.word	_Label_3525
	.word	-40
	.word	4
	.word	_Label_3526
	.word	-44
	.word	4
	.word	_Label_3527
	.word	-48
	.word	4
	.word	_Label_3528
	.word	-52
	.word	4
	.word	_Label_3529
	.word	-56
	.word	4
	.word	_Label_3530
	.word	-60
	.word	4
	.word	_Label_3531
	.word	-64
	.word	4
	.word	_Label_3532
	.word	-68
	.word	4
	.word	_Label_3533
	.word	-72
	.word	4
	.word	_Label_3534
	.word	-76
	.word	4
	.word	_Label_3535
	.word	-80
	.word	4
	.word	_Label_3536
	.word	-84
	.word	4
	.word	_Label_3537
	.word	-88
	.word	4
	.word	_Label_3538
	.word	-92
	.word	4
	.word	_Label_3539
	.word	-96
	.word	4
	.word	_Label_3540
	.word	-100
	.word	4
	.word	_Label_3541
	.word	-104
	.word	4
	.word	_Label_3542
	.word	-108
	.word	4
	.word	_Label_3543
	.word	-112
	.word	4
	.word	_Label_3544
	.word	-9
	.word	1
	.word	_Label_3545
	.word	-10
	.word	1
	.word	_Label_3546
	.word	-116
	.word	4
	.word	_Label_3547
	.word	-120
	.word	4
	.word	_Label_3548
	.word	-124
	.word	4
	.word	_Label_3549
	.word	-128
	.word	4
	.word	_Label_3550
	.word	-132
	.word	4
	.word	_Label_3551
	.word	-136
	.word	4
	.word	0
_Label_3513:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3514:
	.ascii	"Pself\0"
	.align
_Label_3515:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3516:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3517:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3518:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3544:
	.byte	'C'
	.ascii	"_temp_3473\0"
	.align
_Label_3545:
	.byte	'C'
	.ascii	"_temp_3470\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3547:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3548:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3549:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3550:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3551:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3552
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3552:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3553
	.word	_sourceFileName
	.word	359		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3553:
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
_Label_3915:
	push	r0
	sub	r1,1,r1
	bne	_Label_3915
	mov	3062,r13		! source line 3062
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0AS",r10
	mov	3064,r13		! source line 3064
	mov	"\0\0SE",r10
!   _temp_3554 = &_P_Kernel_frameManager
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
	mov	3065,r13		! source line 3065
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3067,r13		! source line 3067
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3067,r13		! source line 3067
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
	.word	_Label_3555
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3556
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3557
	.word	-12
	.word	4
	.word	0
_Label_3555:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3556:
	.ascii	"Pself\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3554\0"
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
_Label_3916:
	push	r0
	sub	r1,1,r1
	bne	_Label_3916
	mov	3072,r13		! source line 3072
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3558 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3558  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3073,r13		! source line 3073
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3074,r13		! source line 3074
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3559 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3559  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3075,r13		! source line 3075
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3076,r13		! source line 3076
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3560 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3560  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3077,r13		! source line 3077
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3078,r13		! source line 3078
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3561 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3561  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3079,r13		! source line 3079
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3080,r13		! source line 3080
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3562 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3562  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3081,r13		! source line 3081
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3082,r13		! source line 3082
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3563 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3563  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3083,r13		! source line 3083
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3084,r13		! source line 3084
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3085,r13		! source line 3085
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3085,r13		! source line 3085
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
	.word	_Label_3564
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3566
	.word	-12
	.word	4
	.word	_Label_3567
	.word	-16
	.word	4
	.word	_Label_3568
	.word	-20
	.word	4
	.word	_Label_3569
	.word	-24
	.word	4
	.word	_Label_3570
	.word	-28
	.word	4
	.word	_Label_3571
	.word	-32
	.word	4
	.word	0
_Label_3564:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3565:
	.ascii	"Pself\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3572
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3572:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3573
	.word	_sourceFileName
	.word	376		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3573:
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
_Label_3917:
	push	r0
	sub	r1,1,r1
	bne	_Label_3917
	mov	3096,r13		! source line 3096
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3574 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3574  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3097,r13		! source line 3097
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3098,r13		! source line 3098
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3575 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3575  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3099,r13		! source line 3099
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3100,r13		! source line 3100
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3577		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3577
!	jmp	_Label_3576
_Label_3576:
! THEN...
	mov	3101,r13		! source line 3101
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3101,r13		! source line 3101
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
	jmp	_Label_3578
_Label_3577:
! ELSE...
	mov	3103,r13		! source line 3103
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3579 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3579  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3103,r13		! source line 3103
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3578:
! RETURN STATEMENT...
	mov	3100,r13		! source line 3100
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
	.word	_Label_3580
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3581
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3582
	.word	-12
	.word	4
	.word	_Label_3583
	.word	-16
	.word	4
	.word	_Label_3584
	.word	-20
	.word	4
	.word	0
_Label_3580:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3581:
	.ascii	"Pself\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3584:
	.byte	'?'
	.ascii	"_temp_3574\0"
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
_Label_3918:
	push	r0
	sub	r1,1,r1
	bne	_Label_3918
	mov	3109,r13		! source line 3109
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0SE",r10
!   _temp_3585 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3586 = _temp_3585 + 4
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
	mov	3120,r13		! source line 3120
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3121,r13		! source line 3121
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
	mov	3122,r13		! source line 3122
	mov	"\0\0SE",r10
!   _temp_3587 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3588 = _temp_3587 + 4
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
	mov	3123,r13		! source line 3123
	mov	"\0\0RE",r10
	mov	3123,r13		! source line 3123
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3591 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3590  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3589  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3589  (sizeInBytes=1)
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
	.word	_Label_3592
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3594
	.word	12
	.word	4
	.word	_Label_3595
	.word	16
	.word	4
	.word	_Label_3596
	.word	-16
	.word	4
	.word	_Label_3597
	.word	-20
	.word	4
	.word	_Label_3598
	.word	-9
	.word	1
	.word	_Label_3599
	.word	-24
	.word	4
	.word	_Label_3600
	.word	-28
	.word	4
	.word	_Label_3601
	.word	-32
	.word	4
	.word	_Label_3602
	.word	-36
	.word	4
	.word	_Label_3603
	.word	-40
	.word	4
	.word	0
_Label_3592:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3593:
	.ascii	"Pself\0"
	.align
_Label_3594:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3595:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3598:
	.byte	'C'
	.ascii	"_temp_3589\0"
	.align
_Label_3599:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3603:
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
_Label_3919:
	push	r0
	sub	r1,1,r1
	bne	_Label_3919
	mov	3128,r13		! source line 3128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3133,r13		! source line 3133
	mov	"\0\0IF",r10
	mov	3133,r13		! source line 3133
	mov	"\0\0SE",r10
!   _temp_3607 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3608) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3607  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3606  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3606 then goto _Label_3605 else goto _Label_3604
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3604
	jmp	_Label_3605
_Label_3604:
! THEN...
	mov	3134,r13		! source line 3134
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3609 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3609  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3134,r13		! source line 3134
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3605:
! RETURN STATEMENT...
	mov	3136,r13		! source line 3136
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
	.word	_Label_3610
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3611
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3612
	.word	-16
	.word	4
	.word	_Label_3613
	.word	-20
	.word	4
	.word	_Label_3614
	.word	-24
	.word	4
	.word	_Label_3615
	.word	-9
	.word	1
	.word	_Label_3616
	.word	-28
	.word	4
	.word	0
_Label_3610:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3611:
	.ascii	"Pself\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3615:
	.byte	'C'
	.ascii	"_temp_3606\0"
	.align
_Label_3616:
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
_Label_3920:
	push	r0
	sub	r1,1,r1
	bne	_Label_3920
	mov	3141,r13		! source line 3141
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3167,r13		! source line 3167
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3620 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3619 = *_temp_3620  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3619) then goto _Label_3618
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3618
!	jmp	_Label_3617
_Label_3617:
! THEN...
	mov	3168,r13		! source line 3168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3621 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3621  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3168,r13		! source line 3168
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3618:
! IF STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0IF",r10
	mov	3172,r13		! source line 3172
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3625) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3624  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3624 == 1112300152 then goto _Label_3623		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3623
!	jmp	_Label_3622
_Label_3622:
! THEN...
	mov	3173,r13		! source line 3173
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3626 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3626  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3173,r13		! source line 3173
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3174,r13		! source line 3174
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3623:
! ASSIGNMENT STATEMENT...
	mov	3178,r13		! source line 3178
	mov	"\0\0AS",r10
	mov	3178,r13		! source line 3178
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3627) then goto _runtimeErrorNullPointer
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
	mov	3179,r13		! source line 3179
	mov	"\0\0AS",r10
	mov	3179,r13		! source line 3179
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3628) then goto _runtimeErrorNullPointer
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
	mov	3180,r13		! source line 3180
	mov	"\0\0AS",r10
	mov	3180,r13		! source line 3180
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3629) then goto _runtimeErrorNullPointer
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
	mov	3181,r13		! source line 3181
	mov	"\0\0AS",r10
	mov	3181,r13		! source line 3181
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3630) then goto _runtimeErrorNullPointer
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
	mov	3182,r13		! source line 3182
	mov	"\0\0AS",r10
	mov	3182,r13		! source line 3182
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3631) then goto _runtimeErrorNullPointer
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
	mov	3183,r13		! source line 3183
	mov	"\0\0AS",r10
	mov	3183,r13		! source line 3183
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3632) then goto _runtimeErrorNullPointer
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
	mov	3186,r13		! source line 3186
	mov	"\0\0IF",r10
!   _temp_3635 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3635) then goto _Label_3634
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3634
!	jmp	_Label_3633
_Label_3633:
! THEN...
	mov	3187,r13		! source line 3187
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3636 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3636  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3187,r13		! source line 3187
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3634:
! ASSIGNMENT STATEMENT...
	mov	3190,r13		! source line 3190
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
	mov	3194,r13		! source line 3194
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3638
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3638
!	jmp	_Label_3637
_Label_3637:
! THEN...
	mov	3195,r13		! source line 3195
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3639 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3639  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3195,r13		! source line 3195
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3196,r13		! source line 3196
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3638:
! IF STATEMENT...
	mov	3200,r13		! source line 3200
	mov	"\0\0IF",r10
!   _temp_3642 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3642) then goto _Label_3641
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3641
!	jmp	_Label_3640
_Label_3640:
! THEN...
	mov	3201,r13		! source line 3201
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3643 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3643  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3201,r13		! source line 3201
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3202,r13		! source line 3202
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3641:
! IF STATEMENT...
	mov	3204,r13		! source line 3204
	mov	"\0\0IF",r10
!   _temp_3646 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3646 then goto _Label_3645		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3645
!	jmp	_Label_3644
_Label_3644:
! THEN...
	mov	3205,r13		! source line 3205
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3647 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3647  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3205,r13		! source line 3205
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3206,r13		! source line 3206
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3645:
! ASSIGNMENT STATEMENT...
	mov	3208,r13		! source line 3208
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
	mov	3211,r13		! source line 3211
	mov	"\0\0IF",r10
!   _temp_3650 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3650) then goto _Label_3649
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3649
!	jmp	_Label_3648
_Label_3648:
! THEN...
	mov	3212,r13		! source line 3212
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3651 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3651  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3212,r13		! source line 3212
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3213,r13		! source line 3213
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3649:
! IF STATEMENT...
	mov	3215,r13		! source line 3215
	mov	"\0\0IF",r10
!   _temp_3654 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3654 then goto _Label_3653		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3653
!	jmp	_Label_3652
_Label_3652:
! THEN...
	mov	3216,r13		! source line 3216
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3655 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3655  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3216,r13		! source line 3216
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3217,r13		! source line 3217
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3653:
! ASSIGNMENT STATEMENT...
	mov	3219,r13		! source line 3219
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
	mov	3222,r13		! source line 3222
	mov	"\0\0AS",r10
!   _temp_3658 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3657 = _temp_3658 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3656 = _temp_3657 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3656 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3237,r13		! source line 3237
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3660		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3660
!	jmp	_Label_3659
_Label_3659:
! THEN...
	mov	3238,r13		! source line 3238
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3661 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3661  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3238,r13		! source line 3238
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3662 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3662  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3239,r13		! source line 3239
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3663 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3663  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3240,r13		! source line 3240
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3660:
! SEND STATEMENT...
	mov	3243,r13		! source line 3243
	mov	"\0\0SE",r10
!   _temp_3664 = &_P_Kernel_frameManager
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
	mov	3249,r13		! source line 3249
	mov	"\0\0IF",r10
	mov	3249,r13		! source line 3249
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3668) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3667  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3667 == 707406378 then goto _Label_3666		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3666
!	jmp	_Label_3665
_Label_3665:
! THEN...
	mov	3250,r13		! source line 3250
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3669 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3669  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3250,r13		! source line 3250
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3251,r13		! source line 3251
	mov	"\0\0SE",r10
!   _temp_3670 = &_P_Kernel_frameManager
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
	mov	3252,r13		! source line 3252
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
! ASSIGNMENT STATEMENT...
	mov	3256,r13		! source line 3256
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
	mov	3257,r13		! source line 3257
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3675 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3676 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3675  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3671:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3676 then goto _Label_3674		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3674
_Label_3672:
	mov	3257,r13		! source line 3257
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0AS",r10
	mov	3258,r13		! source line 3258
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
	mov	3261,r13		! source line 3261
	mov	"\0\0IF",r10
	mov	3261,r13		! source line 3261
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3680) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3679  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3679 then goto _Label_3678 else goto _Label_3677
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3677
	jmp	_Label_3678
_Label_3677:
! THEN...
	mov	3262,r13		! source line 3262
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3681 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3681  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3262,r13		! source line 3262
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3263,r13		! source line 3263
	mov	"\0\0SE",r10
!   _temp_3682 = &_P_Kernel_frameManager
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
	mov	3264,r13		! source line 3264
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
! SEND STATEMENT...
	mov	3266,r13		! source line 3266
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
	mov	3267,r13		! source line 3267
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3673:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3671
! END FOR
_Label_3674:
! IF STATEMENT...
	mov	3271,r13		! source line 3271
	mov	"\0\0IF",r10
	mov	3271,r13		! source line 3271
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3686) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3685  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3685 == 707406378 then goto _Label_3684		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3684
!	jmp	_Label_3683
_Label_3683:
! THEN...
	mov	3272,r13		! source line 3272
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3687 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3687  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3272,r13		! source line 3272
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3273,r13		! source line 3273
	mov	"\0\0SE",r10
!   _temp_3688 = &_P_Kernel_frameManager
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
	mov	3274,r13		! source line 3274
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3684:
! FOR STATEMENT...
	mov	3278,r13		! source line 3278
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3693 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3694 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3693  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3689:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3694 then goto _Label_3692		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3692
_Label_3690:
	mov	3278,r13		! source line 3278
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3279,r13		! source line 3279
	mov	"\0\0AS",r10
	mov	3279,r13		! source line 3279
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
	mov	3282,r13		! source line 3282
	mov	"\0\0IF",r10
	mov	3282,r13		! source line 3282
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3698) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3697  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3697 then goto _Label_3696 else goto _Label_3695
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3695
	jmp	_Label_3696
_Label_3695:
! THEN...
	mov	3283,r13		! source line 3283
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3699 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3699  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3283,r13		! source line 3283
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3284,r13		! source line 3284
	mov	"\0\0SE",r10
!   _temp_3700 = &_P_Kernel_frameManager
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
	mov	3285,r13		! source line 3285
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3696:
! ASSIGNMENT STATEMENT...
	mov	3287,r13		! source line 3287
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3691:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3689
! END FOR
_Label_3692:
! IF STATEMENT...
	mov	3291,r13		! source line 3291
	mov	"\0\0IF",r10
	mov	3291,r13		! source line 3291
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3704) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3703  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3703 == 707406378 then goto _Label_3702		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3702
!	jmp	_Label_3701
_Label_3701:
! THEN...
	mov	3292,r13		! source line 3292
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3705 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3705  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3292,r13		! source line 3292
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0SE",r10
!   _temp_3706 = &_P_Kernel_frameManager
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
	mov	3294,r13		! source line 3294
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3702:
! ASSIGNMENT STATEMENT...
	mov	3298,r13		! source line 3298
	mov	"\0\0AS",r10
	mov	3298,r13		! source line 3298
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
	mov	3302,r13		! source line 3302
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3305,r13		! source line 3305
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
	.word	_Label_3707
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3708
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3709
	.word	12
	.word	4
	.word	_Label_3710
	.word	-16
	.word	4
	.word	_Label_3711
	.word	-20
	.word	4
	.word	_Label_3712
	.word	-24
	.word	4
	.word	_Label_3713
	.word	-28
	.word	4
	.word	_Label_3714
	.word	-32
	.word	4
	.word	_Label_3715
	.word	-36
	.word	4
	.word	_Label_3716
	.word	-40
	.word	4
	.word	_Label_3717
	.word	-9
	.word	1
	.word	_Label_3718
	.word	-44
	.word	4
	.word	_Label_3719
	.word	-48
	.word	4
	.word	_Label_3720
	.word	-52
	.word	4
	.word	_Label_3721
	.word	-56
	.word	4
	.word	_Label_3722
	.word	-60
	.word	4
	.word	_Label_3723
	.word	-64
	.word	4
	.word	_Label_3724
	.word	-68
	.word	4
	.word	_Label_3725
	.word	-72
	.word	4
	.word	_Label_3726
	.word	-76
	.word	4
	.word	_Label_3727
	.word	-10
	.word	1
	.word	_Label_3728
	.word	-80
	.word	4
	.word	_Label_3729
	.word	-84
	.word	4
	.word	_Label_3730
	.word	-88
	.word	4
	.word	_Label_3731
	.word	-92
	.word	4
	.word	_Label_3732
	.word	-96
	.word	4
	.word	_Label_3733
	.word	-100
	.word	4
	.word	_Label_3734
	.word	-104
	.word	4
	.word	_Label_3735
	.word	-108
	.word	4
	.word	_Label_3736
	.word	-112
	.word	4
	.word	_Label_3737
	.word	-116
	.word	4
	.word	_Label_3738
	.word	-120
	.word	4
	.word	_Label_3739
	.word	-124
	.word	4
	.word	_Label_3740
	.word	-128
	.word	4
	.word	_Label_3741
	.word	-132
	.word	4
	.word	_Label_3742
	.word	-136
	.word	4
	.word	_Label_3743
	.word	-140
	.word	4
	.word	_Label_3744
	.word	-144
	.word	4
	.word	_Label_3745
	.word	-148
	.word	4
	.word	_Label_3746
	.word	-152
	.word	4
	.word	_Label_3747
	.word	-156
	.word	4
	.word	_Label_3748
	.word	-160
	.word	4
	.word	_Label_3749
	.word	-164
	.word	4
	.word	_Label_3750
	.word	-168
	.word	4
	.word	_Label_3751
	.word	-172
	.word	4
	.word	_Label_3752
	.word	-176
	.word	4
	.word	_Label_3753
	.word	-180
	.word	4
	.word	_Label_3754
	.word	-184
	.word	4
	.word	_Label_3755
	.word	-188
	.word	4
	.word	_Label_3756
	.word	-192
	.word	4
	.word	_Label_3757
	.word	-196
	.word	4
	.word	_Label_3758
	.word	-200
	.word	4
	.word	_Label_3759
	.word	-204
	.word	4
	.word	_Label_3760
	.word	-208
	.word	4
	.word	_Label_3761
	.word	-212
	.word	4
	.word	_Label_3762
	.word	-216
	.word	4
	.word	_Label_3763
	.word	-220
	.word	4
	.word	_Label_3764
	.word	-224
	.word	4
	.word	_Label_3765
	.word	-228
	.word	4
	.word	_Label_3766
	.word	-232
	.word	4
	.word	_Label_3767
	.word	-236
	.word	4
	.word	_Label_3768
	.word	-240
	.word	4
	.word	_Label_3769
	.word	-244
	.word	4
	.word	_Label_3770
	.word	-248
	.word	4
	.word	_Label_3771
	.word	-252
	.word	4
	.word	_Label_3772
	.word	-256
	.word	4
	.word	_Label_3773
	.word	-260
	.word	4
	.word	_Label_3774
	.word	-264
	.word	4
	.word	_Label_3775
	.word	-268
	.word	4
	.word	0
_Label_3707:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3708:
	.ascii	"Pself\0"
	.align
_Label_3709:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3717:
	.byte	'C'
	.ascii	"_temp_3697\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3727:
	.byte	'C'
	.ascii	"_temp_3679\0"
	.align
_Label_3728:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3729:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3730:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3658\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3657\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3744:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3746:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3643\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3627\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3626\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3620\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3764:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3765:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3766:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3767:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3768:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3769:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3770:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3771:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3772:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3773:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3774:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3775:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
