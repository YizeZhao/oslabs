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
	.align
! String constants
_StringConst_122:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_121:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
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
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_115:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_112:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_110:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_109:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_108:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_107:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_104:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_103:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_102:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_101:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_100:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_99:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_98:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_97:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_96:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_95:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_93:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_92:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_91:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_89:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_88:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_87:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_86:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_85:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_84:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_83:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_82:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_81:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_80:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_79:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_78:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_77:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_76:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_75:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_74:
	.word	3			! length
	.ascii	"Xxx"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
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
	set	0x89d6f9cb,r4		! myHashVal = -1982400053
	cmp	r3,r4
	be	_Label_127
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
_Label_127:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_128
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_128
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_128
_Label_128:
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
_Label_1704:
	push	r0
	sub	r1,1,r1
	bne	_Label_1704
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_129 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_129  sizeInBytes=4
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
_Label_1705:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1705
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_133 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_134 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_133  sizeInBytes=4
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
!   _temp_135 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_136 = _temp_135 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_136 = 3  (sizeInBytes=4)
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
_Label_1706:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1706
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_138 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_139 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_138  sizeInBytes=4
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
!   _temp_140 = _function_126_IdleFunction
	set	_function_126_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_141 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_140  sizeInBytes=4
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
	.word	_Label_142
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_143
	.word	-12
	.word	4
	.word	_Label_144
	.word	-16
	.word	4
	.word	_Label_145
	.word	-20
	.word	4
	.word	_Label_146
	.word	-24
	.word	4
	.word	_Label_147
	.word	-28
	.word	4
	.word	_Label_148
	.word	-32
	.word	4
	.word	_Label_149
	.word	-36
	.word	4
	.word	_Label_150
	.word	-40
	.word	4
	.word	_Label_151
	.word	-44
	.word	4
	.word	_Label_152
	.word	-48
	.word	4
	.word	_Label_153
	.word	-52
	.word	4
	.word	_Label_154
	.word	-56
	.word	4
	.word	_Label_155
	.word	-60
	.word	4
	.word	0
_Label_142:
	.ascii	"InitializeScheduler\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_126_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1707:
	push	r0
	sub	r1,1,r1
	bne	_Label_1707
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_156:
!	jmp	_Label_157
_Label_157:
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
!   _temp_161 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_159 else goto _Label_160
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_160
	jmp	_Label_159
_Label_159:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_162
_Label_160:
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
_Label_162:
! END WHILE...
	jmp	_Label_156
_Label_158:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_IdleFunction:
	.word	_sourceFileName
	.word	_Label_163
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_164
	.word	8
	.word	4
	.word	_Label_165
	.word	-12
	.word	4
	.word	_Label_166
	.word	-16
	.word	4
	.word	0
_Label_163:
	.ascii	"IdleFunction\0"
	.align
_Label_164:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_166:
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
_Label_1708:
	push	r0
	sub	r1,1,r1
	bne	_Label_1708
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
!   _temp_169 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_169 ) then goto _Label_168		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_168
!	jmp	_Label_167
_Label_167:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_171 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_171 [0 ] into _temp_172
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
!   _temp_170 = _temp_172		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_168:
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
!   _temp_173 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_173 = 3  (sizeInBytes=4)
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
_Label_174:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_178 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_177  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_177 then goto _Label_176 else goto _Label_175
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_175
	jmp	_Label_176
_Label_175:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_179 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_180 = &_P_Kernel_threadManager
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
	jmp	_Label_174
_Label_176:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_183 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_183 ) then goto _Label_182		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_182
!	jmp	_Label_181
_Label_181:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_185 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_185 [0 ] into _temp_186
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
!   _temp_184 = _temp_186		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_184  sizeInBytes=4
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
!   _temp_188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_187 = *_temp_188  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_187) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _temp_187 + 32
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
_Label_182:
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
	.word	_Label_190
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_191
	.word	8
	.word	4
	.word	_Label_192
	.word	-16
	.word	4
	.word	_Label_193
	.word	-20
	.word	4
	.word	_Label_194
	.word	-24
	.word	4
	.word	_Label_195
	.word	-28
	.word	4
	.word	_Label_196
	.word	-32
	.word	4
	.word	_Label_197
	.word	-36
	.word	4
	.word	_Label_198
	.word	-40
	.word	4
	.word	_Label_199
	.word	-44
	.word	4
	.word	_Label_200
	.word	-48
	.word	4
	.word	_Label_201
	.word	-52
	.word	4
	.word	_Label_202
	.word	-9
	.word	1
	.word	_Label_203
	.word	-56
	.word	4
	.word	_Label_204
	.word	-60
	.word	4
	.word	_Label_205
	.word	-64
	.word	4
	.word	_Label_206
	.word	-68
	.word	4
	.word	_Label_207
	.word	-72
	.word	4
	.word	_Label_208
	.word	-76
	.word	4
	.word	_Label_209
	.word	-80
	.word	4
	.word	0
_Label_190:
	.ascii	"Run\0"
	.align
_Label_191:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_202:
	.byte	'C'
	.ascii	"_temp_177\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_208:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_209:
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
_Label_1709:
	push	r0
	sub	r1,1,r1
	bne	_Label_1709
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
!   _temp_210 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_210  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_211 = _function_125_ThreadPrintShort
	set	_function_125_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_212 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_211  sizeInBytes=4
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
	.word	_Label_213
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_214
	.word	-12
	.word	4
	.word	_Label_215
	.word	-16
	.word	4
	.word	_Label_216
	.word	-20
	.word	4
	.word	_Label_217
	.word	-24
	.word	4
	.word	0
_Label_213:
	.ascii	"PrintReadyList\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_217:
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
_Label_1710:
	push	r0
	sub	r1,1,r1
	bne	_Label_1710
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
!   _temp_218 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_218  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_220 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_219 = *_temp_220  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
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
!   _temp_221 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
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
	.word	_Label_222
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_222:
	.ascii	"ThreadStartMain\0"
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
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_228:
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
_Label_1711:
	push	r0
	sub	r1,1,r1
	bne	_Label_1711
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
!   _temp_229 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_230 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_230  sizeInBytes=4
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
	.word	_Label_231
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_232
	.word	-12
	.word	4
	.word	_Label_233
	.word	-16
	.word	4
	.word	_Label_234
	.word	-20
	.word	4
	.word	0
_Label_231:
	.ascii	"ThreadFinish\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_234:
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
_Label_1712:
	push	r0
	sub	r1,1,r1
	bne	_Label_1712
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
!   _temp_235 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_235  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_237		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_237
!	jmp	_Label_236
_Label_236:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_238 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
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
!   _temp_240 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_239 = *_temp_240  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_237:
! CALL STATEMENT...
!   _temp_241 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
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
!   _temp_242 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_243 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
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
	.word	_Label_244
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_245
	.word	8
	.word	4
	.word	_Label_246
	.word	-12
	.word	4
	.word	_Label_247
	.word	-16
	.word	4
	.word	_Label_248
	.word	-20
	.word	4
	.word	_Label_249
	.word	-24
	.word	4
	.word	_Label_250
	.word	-28
	.word	4
	.word	_Label_251
	.word	-32
	.word	4
	.word	_Label_252
	.word	-36
	.word	4
	.word	_Label_253
	.word	-40
	.word	4
	.word	0
_Label_244:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_245:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_253:
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
_Label_1713:
	push	r0
	sub	r1,1,r1
	bne	_Label_1713
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
!   if newStatus != 1 then goto _Label_255		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_255
!	jmp	_Label_254
_Label_254:
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
	jmp	_Label_256
_Label_255:
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
_Label_256:
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
	.word	_Label_257
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_258
	.word	8
	.word	4
	.word	_Label_259
	.word	-12
	.word	4
	.word	0
_Label_257:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_125_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_125_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1714:
	push	r0
	sub	r1,1,r1
	bne	_Label_1714
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
!   if t == 0 then goto _Label_263		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_263
!   _temp_262 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_264
_Label_263:
!   _temp_262 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_264:
!   if _temp_262 then goto _Label_261 else goto _Label_260
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_260
	jmp	_Label_261
_Label_260:
! THEN...
	mov	649,r13		! source line 649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_265 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
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
_Label_261:
! CALL STATEMENT...
!   _temp_266 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
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
!   _temp_268 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_267 = *_temp_268  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_269 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
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
!   _temp_278 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_272
	cmp	r1,2
	be	_Label_273
	cmp	r1,3
	be	_Label_274
	cmp	r1,4
	be	_Label_275
	cmp	r1,5
	be	_Label_276
	jmp	_Label_270
! CASE 1...
_Label_272:
! CALL STATEMENT...
!   _temp_279 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 2...
_Label_273:
! CALL STATEMENT...
!   _temp_280 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 3...
_Label_274:
! CALL STATEMENT...
!   _temp_281 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 4...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_271
! CASE 5...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_271
! DEFAULT CASE...
_Label_270:
! CALL STATEMENT...
!   _temp_284 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
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
_Label_271:
! CALL STATEMENT...
!   _temp_285 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_286 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_287 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
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
_RoutineDescriptor__function_125_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_288
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_289
	.word	8
	.word	4
	.word	_Label_290
	.word	-16
	.word	4
	.word	_Label_291
	.word	-20
	.word	4
	.word	_Label_292
	.word	-24
	.word	4
	.word	_Label_293
	.word	-28
	.word	4
	.word	_Label_294
	.word	-32
	.word	4
	.word	_Label_295
	.word	-36
	.word	4
	.word	_Label_296
	.word	-40
	.word	4
	.word	_Label_297
	.word	-44
	.word	4
	.word	_Label_298
	.word	-48
	.word	4
	.word	_Label_299
	.word	-52
	.word	4
	.word	_Label_300
	.word	-56
	.word	4
	.word	_Label_301
	.word	-60
	.word	4
	.word	_Label_302
	.word	-64
	.word	4
	.word	_Label_303
	.word	-68
	.word	4
	.word	_Label_304
	.word	-72
	.word	4
	.word	_Label_305
	.word	-76
	.word	4
	.word	_Label_306
	.word	-9
	.word	1
	.word	_Label_307
	.word	-80
	.word	4
	.word	0
_Label_288:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_289:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_306:
	.byte	'C'
	.ascii	"_temp_262\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_124_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_124_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1715:
	push	r0
	sub	r1,1,r1
	bne	_Label_1715
	mov	995,r13		! source line 995
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_308 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_124_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_309
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_310
	.word	8
	.word	4
	.word	_Label_311
	.word	-12
	.word	4
	.word	0
_Label_309:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_310:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_308\0"
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
_Label_1716:
	push	r0
	sub	r1,1,r1
	bne	_Label_1716
	mov	1005,r13		! source line 1005
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_312 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1011,r13		! source line 1011
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1011,r13		! source line 1011
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
	.word	_Label_313
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_314
	.word	8
	.word	4
	.word	_Label_315
	.word	-12
	.word	4
	.word	0
_Label_313:
	.ascii	"ProcessFinish\0"
	.align
_Label_314:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_312\0"
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
_Label_1717:
	push	r0
	sub	r1,1,r1
	bne	_Label_1717
	mov	1515,r13		! source line 1515
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1527,r13		! source line 1527
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
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1528,r13		! source line 1528
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
	.word	_Label_316
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_316:
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
	mov	2,r1
_Label_1718:
	push	r0
	sub	r1,1,r1
	bne	_Label_1718
	mov	1533,r13		! source line 1533
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_317 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1543,r13		! source line 1543
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_318
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_319
	.word	-12
	.word	4
	.word	0
_Label_318:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_317\0"
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
	mov	1555,r13		! source line 1555
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1564,r13		! source line 1564
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
	.word	_Label_320
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_320:
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
_Label_1719:
	push	r0
	sub	r1,1,r1
	bne	_Label_1719
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
!   _temp_321 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1576,r13		! source line 1576
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_322
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_323
	.word	-12
	.word	4
	.word	0
_Label_322:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_321\0"
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
_Label_1720:
	push	r0
	sub	r1,1,r1
	bne	_Label_1720
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
!   _temp_324 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1588,r13		! source line 1588
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_325
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_325:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
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
_Label_1721:
	push	r0
	sub	r1,1,r1
	bne	_Label_1721
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
!   _temp_327 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_328
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_329
	.word	-12
	.word	4
	.word	0
_Label_328:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_327\0"
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
_Label_1722:
	push	r0
	sub	r1,1,r1
	bne	_Label_1722
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
!   _temp_330 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1612,r13		! source line 1612
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_332
	.word	-12
	.word	4
	.word	0
_Label_331:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
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
_Label_1723:
	push	r0
	sub	r1,1,r1
	bne	_Label_1723
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
!   _temp_333 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1624,r13		! source line 1624
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_334
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_335
	.word	-12
	.word	4
	.word	0
_Label_334:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
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
_Label_1724:
	push	r0
	sub	r1,1,r1
	bne	_Label_1724
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
!   _temp_336 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_337
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_338
	.word	-12
	.word	4
	.word	0
_Label_337:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_336\0"
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
_Label_1725:
	push	r0
	sub	r1,1,r1
	bne	_Label_1725
	mov	1641,r13		! source line 1641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_339 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1648,r13		! source line 1648
	mov	"\0\0CA",r10
	call	_function_123_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
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
	.word	_Label_340
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_340:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_123_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_123_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1726:
	push	r0
	sub	r1,1,r1
	bne	_Label_1726
	mov	1653,r13		! source line 1653
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_342 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1659,r13		! source line 1659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_343 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1660,r13		! source line 1660
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_346 == 0 then goto _Label_345		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_345
!	jmp	_Label_344
_Label_344:
! THEN...
	mov	1664,r13		! source line 1664
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_349 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_348 = *_temp_349  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_348) then goto _runtimeErrorNullPointer
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
	jmp	_Label_350
_Label_345:
! ELSE...
	mov	1666,r13		! source line 1666
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_351 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1666,r13		! source line 1666
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_350:
! SEND STATEMENT...
	mov	1668,r13		! source line 1668
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
	mov	1674,r13		! source line 1674
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1674,r13		! source line 1674
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_123_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_352
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_353
	.word	8
	.word	4
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
	.word	_Label_360
	.word	-36
	.word	4
	.word	0
_Label_352:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_353:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_342\0"
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
_Label_1727:
	push	r0
	sub	r1,1,r1
	bne	_Label_1727
	mov	1679,r13		! source line 1679
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1700,r13		! source line 1700
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1728
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_361
_Label_1728:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_361
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_361
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_375,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_375:
	jmp	_Label_367	! 1:	
	jmp	_Label_374	! 2:	
	jmp	_Label_364	! 3:	
	jmp	_Label_363	! 4:	
	jmp	_Label_366	! 5:	
	jmp	_Label_365	! 6:	
	jmp	_Label_368	! 7:	
	jmp	_Label_369	! 8:	
	jmp	_Label_370	! 9:	
	jmp	_Label_371	! 10:	
	jmp	_Label_372	! 11:	
	jmp	_Label_373	! 12:	
! CASE 4...
_Label_363:
! RETURN STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0RE",r10
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_376  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_376  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_364:
! CALL STATEMENT...
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_365:
! RETURN STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_377  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_366:
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_378  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_367:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_368:
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_369:
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_370:
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
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
	mov	1718,r13		! source line 1718
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_371:
! RETURN STATEMENT...
	mov	1720,r13		! source line 1720
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
	mov	1720,r13		! source line 1720
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_372:
! RETURN STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1722,r13		! source line 1722
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_373:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_374:
! CALL STATEMENT...
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_361:
! CALL STATEMENT...
!   _temp_384 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_385 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1733,r13		! source line 1733
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_362:
! RETURN STATEMENT...
	mov	1735,r13		! source line 1735
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
	.word	_Label_386
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_387
	.word	8
	.word	4
	.word	_Label_388
	.word	12
	.word	4
	.word	_Label_389
	.word	16
	.word	4
	.word	_Label_390
	.word	20
	.word	4
	.word	_Label_391
	.word	24
	.word	4
	.word	_Label_392
	.word	-12
	.word	4
	.word	_Label_393
	.word	-16
	.word	4
	.word	_Label_394
	.word	-20
	.word	4
	.word	_Label_395
	.word	-24
	.word	4
	.word	_Label_396
	.word	-28
	.word	4
	.word	_Label_397
	.word	-32
	.word	4
	.word	_Label_398
	.word	-36
	.word	4
	.word	_Label_399
	.word	-40
	.word	4
	.word	_Label_400
	.word	-44
	.word	4
	.word	_Label_401
	.word	-48
	.word	4
	.word	0
_Label_386:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_376\0"
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
	mov	1740,r13		! source line 1740
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_402
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_403
	.word	8
	.word	4
	.word	0
_Label_402:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_403:
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
	mov	1746,r13		! source line 1746
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_404
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_404:
	.ascii	"Handle_Sys_Shutdown\0"
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
	mov	1752,r13		! source line 1752
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_405:
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
	mov	1758,r13		! source line 1758
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_406
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_406:
	.ascii	"Handle_Sys_Fork\0"
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
	mov	1765,r13		! source line 1765
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_407
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_408
	.word	8
	.word	4
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_408:
	.byte	'I'
	.ascii	"processID\0"
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
	mov	1772,r13		! source line 1772
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_409
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_410
	.word	8
	.word	4
	.word	0
_Label_409:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_410:
	.byte	'P'
	.ascii	"filename\0"
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
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_411
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_412
	.word	8
	.word	4
	.word	0
_Label_411:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_412:
	.byte	'P'
	.ascii	"filename\0"
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
	mov	1786,r13		! source line 1786
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_413
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_414
	.word	8
	.word	4
	.word	0
_Label_413:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_414:
	.byte	'P'
	.ascii	"filename\0"
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
	mov	1793,r13		! source line 1793
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_415
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_416
	.word	8
	.word	4
	.word	_Label_417
	.word	12
	.word	4
	.word	_Label_418
	.word	16
	.word	4
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"sizeInBytes\0"
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
	mov	1800,r13		! source line 1800
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_419
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_420
	.word	8
	.word	4
	.word	_Label_421
	.word	12
	.word	4
	.word	_Label_422
	.word	16
	.word	4
	.word	0
_Label_419:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_421:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_422:
	.byte	'I'
	.ascii	"sizeInBytes\0"
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
	mov	1807,r13		! source line 1807
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_423
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_424
	.word	8
	.word	4
	.word	_Label_425
	.word	12
	.word	4
	.word	0
_Label_423:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_424:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"newCurrentPos\0"
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
	mov	1814,r13		! source line 1814
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_426
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_428
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_428:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_429
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_429:
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
_Label_1729:
	push	r0
	sub	r1,1,r1
	bne	_Label_1729
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_431		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_431
!	jmp	_Label_430
_Label_430:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_432 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
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
_Label_431:
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
	.word	_Label_434
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_436
	.word	12
	.word	4
	.word	_Label_437
	.word	-12
	.word	4
	.word	_Label_438
	.word	-16
	.word	4
	.word	0
_Label_434:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_435:
	.ascii	"Pself\0"
	.align
_Label_436:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_432\0"
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
_Label_1730:
	push	r0
	sub	r1,1,r1
	bne	_Label_1730
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
!   if count != 2147483647 then goto _Label_440		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_440
!	jmp	_Label_439
_Label_439:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_441 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
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
_Label_440:
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
!   if count > 0 then goto _Label_443		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_444 = &waitingThreads
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
!   _temp_445 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_445 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_446 = &_P_Kernel_readyList
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
_Label_443:
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
	.word	_Label_447
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_449
	.word	-12
	.word	4
	.word	_Label_450
	.word	-16
	.word	4
	.word	_Label_451
	.word	-20
	.word	4
	.word	_Label_452
	.word	-24
	.word	4
	.word	_Label_453
	.word	-28
	.word	4
	.word	_Label_454
	.word	-32
	.word	4
	.word	0
_Label_447:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_448:
	.ascii	"Pself\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_453:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_454:
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
_Label_1731:
	push	r0
	sub	r1,1,r1
	bne	_Label_1731
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
!   if count != -2147483648 then goto _Label_456		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_456
!	jmp	_Label_455
_Label_455:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_457 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
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
_Label_456:
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
!   if count >= 0 then goto _Label_459		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_459
!	jmp	_Label_458
_Label_458:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_460 = &waitingThreads
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
_Label_459:
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
	.word	_Label_461
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_463
	.word	-12
	.word	4
	.word	_Label_464
	.word	-16
	.word	4
	.word	_Label_465
	.word	-20
	.word	4
	.word	0
_Label_461:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_462:
	.ascii	"Pself\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_466
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_466:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_467
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_467:
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
_Label_1732:
	push	r0
	sub	r1,1,r1
	bne	_Label_1732
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
	.word	_Label_469
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_471
	.word	-12
	.word	4
	.word	0
_Label_469:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_470:
	.ascii	"Pself\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_468\0"
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
_Label_1733:
	push	r0
	sub	r1,1,r1
	bne	_Label_1733
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_473		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_473
!	jmp	_Label_472
_Label_472:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_474 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
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
_Label_473:
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
!   if heldBy == 0 then goto _Label_478		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_478
!   _temp_477 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_479
_Label_478:
!   _temp_477 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_479:
!   if _temp_477 then goto _Label_476 else goto _Label_475
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_475
	jmp	_Label_476
_Label_475:
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
	jmp	_Label_480
_Label_476:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_481 = &waitingThreads
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
_Label_480:
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
	.word	_Label_482
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_484
	.word	-16
	.word	4
	.word	_Label_485
	.word	-9
	.word	1
	.word	_Label_486
	.word	-20
	.word	4
	.word	_Label_487
	.word	-24
	.word	4
	.word	0
_Label_482:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_483:
	.ascii	"Pself\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_485:
	.byte	'C'
	.ascii	"_temp_477\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_487:
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
_Label_1734:
	push	r0
	sub	r1,1,r1
	bne	_Label_1734
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_489		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_489
!	jmp	_Label_488
_Label_488:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_490 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
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
_Label_489:
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
!   _temp_491 = &waitingThreads
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
!   if t == 0 then goto _Label_493		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_493
!	jmp	_Label_492
_Label_492:
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
!   _temp_494 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_494 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_495 = &_P_Kernel_readyList
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
	jmp	_Label_496
_Label_493:
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
_Label_496:
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
	.word	_Label_497
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_499
	.word	-12
	.word	4
	.word	_Label_500
	.word	-16
	.word	4
	.word	_Label_501
	.word	-20
	.word	4
	.word	_Label_502
	.word	-24
	.word	4
	.word	_Label_503
	.word	-28
	.word	4
	.word	_Label_504
	.word	-32
	.word	4
	.word	0
_Label_497:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_498:
	.ascii	"Pself\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_503:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_504:
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
_Label_1735:
	push	r0
	sub	r1,1,r1
	bne	_Label_1735
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_507		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_507
!	jmp	_Label_506
_Label_506:
!   _temp_505 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_508
_Label_507:
!   _temp_505 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_508:
!   ReturnResult: _temp_505  (sizeInBytes=1)
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
	.word	_Label_509
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_511
	.word	-9
	.word	1
	.word	0
_Label_509:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_510:
	.ascii	"Pself\0"
	.align
_Label_511:
	.byte	'C'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_512
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_512:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_513
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_513:
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
_Label_1736:
	push	r0
	sub	r1,1,r1
	bne	_Label_1736
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
	.word	_Label_515
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_516
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_515:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_516:
	.ascii	"Pself\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_514\0"
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
_Label_1737:
	push	r0
	sub	r1,1,r1
	bne	_Label_1737
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
!   Retrieve Result: targetName=_temp_520  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_520 then goto _Label_519 else goto _Label_518
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_518
	jmp	_Label_519
_Label_518:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_521 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
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
_Label_519:
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
!   _temp_522 = &waitingThreads
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
	.word	_Label_523
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_525
	.word	12
	.word	4
	.word	_Label_526
	.word	-16
	.word	4
	.word	_Label_527
	.word	-20
	.word	4
	.word	_Label_528
	.word	-9
	.word	1
	.word	_Label_529
	.word	-24
	.word	4
	.word	0
_Label_523:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_524:
	.ascii	"Pself\0"
	.align
_Label_525:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_528:
	.byte	'C'
	.ascii	"_temp_520\0"
	.align
_Label_529:
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
_Label_1738:
	push	r0
	sub	r1,1,r1
	bne	_Label_1738
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
!   Retrieve Result: targetName=_temp_532  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_532 then goto _Label_531 else goto _Label_530
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_530
	jmp	_Label_531
_Label_530:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_533 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
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
_Label_531:
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
!   _temp_534 = &waitingThreads
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
!   if t == 0 then goto _Label_536		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_536
!	jmp	_Label_535
_Label_535:
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
!   _temp_537 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_537 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_538 = &_P_Kernel_readyList
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
_Label_536:
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
	.word	_Label_539
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_541
	.word	12
	.word	4
	.word	_Label_542
	.word	-16
	.word	4
	.word	_Label_543
	.word	-20
	.word	4
	.word	_Label_544
	.word	-24
	.word	4
	.word	_Label_545
	.word	-28
	.word	4
	.word	_Label_546
	.word	-9
	.word	1
	.word	_Label_547
	.word	-32
	.word	4
	.word	_Label_548
	.word	-36
	.word	4
	.word	0
_Label_539:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_540:
	.ascii	"Pself\0"
	.align
_Label_541:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_546:
	.byte	'C'
	.ascii	"_temp_532\0"
	.align
_Label_547:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_548:
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
_Label_1739:
	push	r0
	sub	r1,1,r1
	bne	_Label_1739
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
!   Retrieve Result: targetName=_temp_551  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_551 then goto _Label_550 else goto _Label_549
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_549
	jmp	_Label_550
_Label_549:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_552 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
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
_Label_550:
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
_Label_553:
!	jmp	_Label_554
_Label_554:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_556 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_557
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_557
	jmp	_Label_558
_Label_557:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_555
! END IF...
_Label_558:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_559 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_559 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_560 = &_P_Kernel_readyList
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
	jmp	_Label_553
_Label_555:
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
	.word	_Label_561
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_563
	.word	12
	.word	4
	.word	_Label_564
	.word	-16
	.word	4
	.word	_Label_565
	.word	-20
	.word	4
	.word	_Label_566
	.word	-24
	.word	4
	.word	_Label_567
	.word	-28
	.word	4
	.word	_Label_568
	.word	-9
	.word	1
	.word	_Label_569
	.word	-32
	.word	4
	.word	_Label_570
	.word	-36
	.word	4
	.word	0
_Label_561:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_562:
	.ascii	"Pself\0"
	.align
_Label_563:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_568:
	.byte	'C'
	.ascii	"_temp_551\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_570:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_571
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
_Label_571:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_572
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_572:
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
_Label_1740:
	push	r0
	sub	r1,1,r1
	bne	_Label_1740
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
!   _temp_573 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_573) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_573 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_574 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_574 [0 ] into _temp_575
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
!   Data Move: *_temp_575 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_576 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_576 [999 ] into _temp_577
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
!   Data Move: *_temp_577 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_578 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_578 [999 ] into _temp_579
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
!   stackTop = _temp_579		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_580 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_582 = &_temp_581
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_582 = _temp_582 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_584:
!   Data Move: *_temp_582 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_582 = _temp_582 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_583 = _temp_583 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_583) then goto _Label_584
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_584
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_585 = &_temp_581
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1741
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1741:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_580 = *_temp_585  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1742:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1742
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
!   _temp_586 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_588 = &_temp_587
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_588 = _temp_588 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_590:
!   Data Move: *_temp_588 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_588 = _temp_588 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_589 = _temp_589 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_589) then goto _Label_590
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_590
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_591 = &_temp_587
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1743
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1743:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_586 = *_temp_591  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1744:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1744
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
	.word	_Label_592
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_594
	.word	12
	.word	4
	.word	_Label_595
	.word	-12
	.word	4
	.word	_Label_596
	.word	-16
	.word	4
	.word	_Label_597
	.word	-20
	.word	4
	.word	_Label_598
	.word	-84
	.word	64
	.word	_Label_599
	.word	-88
	.word	4
	.word	_Label_600
	.word	-92
	.word	4
	.word	_Label_601
	.word	-96
	.word	4
	.word	_Label_602
	.word	-100
	.word	4
	.word	_Label_603
	.word	-156
	.word	56
	.word	_Label_604
	.word	-160
	.word	4
	.word	_Label_605
	.word	-164
	.word	4
	.word	_Label_606
	.word	-168
	.word	4
	.word	_Label_607
	.word	-172
	.word	4
	.word	_Label_608
	.word	-176
	.word	4
	.word	_Label_609
	.word	-180
	.word	4
	.word	_Label_610
	.word	-184
	.word	4
	.word	_Label_611
	.word	-188
	.word	4
	.word	0
_Label_592:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_593:
	.ascii	"Pself\0"
	.align
_Label_594:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_573\0"
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
_Label_1745:
	push	r0
	sub	r1,1,r1
	bne	_Label_1745
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
!   _temp_612 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_612  (sizeInBytes=4)
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
!   _temp_614 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_613  sizeInBytes=4
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
	.word	_Label_615
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_617
	.word	12
	.word	4
	.word	_Label_618
	.word	16
	.word	4
	.word	_Label_619
	.word	-12
	.word	4
	.word	_Label_620
	.word	-16
	.word	4
	.word	_Label_621
	.word	-20
	.word	4
	.word	_Label_622
	.word	-24
	.word	4
	.word	_Label_623
	.word	-28
	.word	4
	.word	0
_Label_615:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_616:
	.ascii	"Pself\0"
	.align
_Label_617:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_618:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_622:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_623:
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
_Label_1746:
	push	r0
	sub	r1,1,r1
	bne	_Label_1746
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_626 == _P_Kernel_currentThread then goto _Label_625		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_625
!	jmp	_Label_624
_Label_624:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_627 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
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
_Label_625:
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
!   _temp_628 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_630		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_630
!	jmp	_Label_629
_Label_629:
! THEN...
	mov	518,r13		! source line 518
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_632		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_632
!	jmp	_Label_631
_Label_631:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_633 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
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
_Label_632:
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
!   _temp_635 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_634  sizeInBytes=4
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
_Label_630:
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
	.word	_Label_636
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_637
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_638
	.word	-12
	.word	4
	.word	_Label_639
	.word	-16
	.word	4
	.word	_Label_640
	.word	-20
	.word	4
	.word	_Label_641
	.word	-24
	.word	4
	.word	_Label_642
	.word	-28
	.word	4
	.word	_Label_643
	.word	-32
	.word	4
	.word	_Label_644
	.word	-36
	.word	4
	.word	_Label_645
	.word	-40
	.word	4
	.word	_Label_646
	.word	-44
	.word	4
	.word	0
_Label_636:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_637:
	.ascii	"Pself\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_644:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_645:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_646:
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
_Label_1747:
	push	r0
	sub	r1,1,r1
	bne	_Label_1747
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_648		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_648
!	jmp	_Label_647
_Label_647:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_649 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_649  sizeInBytes=4
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
_Label_648:
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_652 == _P_Kernel_currentThread then goto _Label_651		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_651
!	jmp	_Label_650
_Label_650:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_653 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_653  sizeInBytes=4
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
_Label_651:
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
!   _temp_654 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_655
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_655
	jmp	_Label_656
_Label_655:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_657 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
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
_Label_656:
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
	.word	_Label_658
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_660
	.word	-12
	.word	4
	.word	_Label_661
	.word	-16
	.word	4
	.word	_Label_662
	.word	-20
	.word	4
	.word	_Label_663
	.word	-24
	.word	4
	.word	_Label_664
	.word	-28
	.word	4
	.word	_Label_665
	.word	-32
	.word	4
	.word	0
_Label_658:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_659:
	.ascii	"Pself\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_665:
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
_Label_1748:
	push	r0
	sub	r1,1,r1
	bne	_Label_1748
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0IF",r10
!   _temp_669 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_669 [0 ] into _temp_670
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
!   Data Move: _temp_668 = *_temp_670  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_668 == 606348324 then goto _Label_667		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_667
!	jmp	_Label_666
_Label_666:
! THEN...
	mov	569,r13		! source line 569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_671 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_671  sizeInBytes=4
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
	jmp	_Label_672
_Label_667:
! ELSE...
	mov	570,r13		! source line 570
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_676 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_676 [999 ] into _temp_677
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
!   Data Move: _temp_675 = *_temp_677  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_675 == 606348324 then goto _Label_674		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_674
!	jmp	_Label_673
_Label_673:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_678 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
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
_Label_674:
! END IF...
_Label_672:
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
	.word	_Label_679
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_681
	.word	-12
	.word	4
	.word	_Label_682
	.word	-16
	.word	4
	.word	_Label_683
	.word	-20
	.word	4
	.word	_Label_684
	.word	-24
	.word	4
	.word	_Label_685
	.word	-28
	.word	4
	.word	_Label_686
	.word	-32
	.word	4
	.word	_Label_687
	.word	-36
	.word	4
	.word	_Label_688
	.word	-40
	.word	4
	.word	0
_Label_679:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_680:
	.ascii	"Pself\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_668\0"
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
_Label_1749:
	push	r0
	sub	r1,1,r1
	bne	_Label_1749
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
!   _temp_689 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
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
!   _temp_690 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_692 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_693 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
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
!   _temp_698 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_699 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_698  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_694:
!   Perform the FOR-LOOP termination test
!   if i > _temp_699 then goto _Label_697		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_697
_Label_695:
	mov	590,r13		! source line 590
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_700 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_701 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_702 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_704 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_704 [i ] into _temp_705
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
!   Data Move: _temp_703 = *_temp_705  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_706 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_708 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_708 [i ] into _temp_709
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
!   Data Move: _temp_707 = *_temp_709  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_710 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_696:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_694
! END FOR
_Label_697:
! CALL STATEMENT...
!   _temp_711 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_712 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_712  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_713 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_715 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_715 [0 ] into _temp_716
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
!   _temp_714 = _temp_716		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_714  sizeInBytes=4
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
	be	_Label_719
	cmp	r1,2
	be	_Label_720
	cmp	r1,3
	be	_Label_721
	cmp	r1,4
	be	_Label_722
	cmp	r1,5
	be	_Label_723
	jmp	_Label_717
! CASE 1...
_Label_719:
! CALL STATEMENT...
!   _temp_724 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0BR",r10
	jmp	_Label_718
! CASE 2...
_Label_720:
! CALL STATEMENT...
!   _temp_725 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_718
! CASE 3...
_Label_721:
! CALL STATEMENT...
!   _temp_726 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_718
! CASE 4...
_Label_722:
! CALL STATEMENT...
!   _temp_727 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_718
! CASE 5...
_Label_723:
! CALL STATEMENT...
!   _temp_728 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_718
! DEFAULT CASE...
_Label_717:
! CALL STATEMENT...
!   _temp_729 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
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
_Label_718:
! CALL STATEMENT...
!   _temp_730 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
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
!   _temp_731 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
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
!   _temp_736 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_737 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_736  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_732:
!   Perform the FOR-LOOP termination test
!   if i > _temp_737 then goto _Label_735		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_735
_Label_733:
	mov	624,r13		! source line 624
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_738 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_739 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_740 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_742 [i ] into _temp_743
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
!   Data Move: _temp_741 = *_temp_743  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_744 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_746 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_746 [i ] into _temp_747
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
!   Data Move: _temp_745 = *_temp_747  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_748 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_734:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_732
! END FOR
_Label_735:
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
	.word	_Label_749
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_751
	.word	-12
	.word	4
	.word	_Label_752
	.word	-16
	.word	4
	.word	_Label_753
	.word	-20
	.word	4
	.word	_Label_754
	.word	-24
	.word	4
	.word	_Label_755
	.word	-28
	.word	4
	.word	_Label_756
	.word	-32
	.word	4
	.word	_Label_757
	.word	-36
	.word	4
	.word	_Label_758
	.word	-40
	.word	4
	.word	_Label_759
	.word	-44
	.word	4
	.word	_Label_760
	.word	-48
	.word	4
	.word	_Label_761
	.word	-52
	.word	4
	.word	_Label_762
	.word	-56
	.word	4
	.word	_Label_763
	.word	-60
	.word	4
	.word	_Label_764
	.word	-64
	.word	4
	.word	_Label_765
	.word	-68
	.word	4
	.word	_Label_766
	.word	-72
	.word	4
	.word	_Label_767
	.word	-76
	.word	4
	.word	_Label_768
	.word	-80
	.word	4
	.word	_Label_769
	.word	-84
	.word	4
	.word	_Label_770
	.word	-88
	.word	4
	.word	_Label_771
	.word	-92
	.word	4
	.word	_Label_772
	.word	-96
	.word	4
	.word	_Label_773
	.word	-100
	.word	4
	.word	_Label_774
	.word	-104
	.word	4
	.word	_Label_775
	.word	-108
	.word	4
	.word	_Label_776
	.word	-112
	.word	4
	.word	_Label_777
	.word	-116
	.word	4
	.word	_Label_778
	.word	-120
	.word	4
	.word	_Label_779
	.word	-124
	.word	4
	.word	_Label_780
	.word	-128
	.word	4
	.word	_Label_781
	.word	-132
	.word	4
	.word	_Label_782
	.word	-136
	.word	4
	.word	_Label_783
	.word	-140
	.word	4
	.word	_Label_784
	.word	-144
	.word	4
	.word	_Label_785
	.word	-148
	.word	4
	.word	_Label_786
	.word	-152
	.word	4
	.word	_Label_787
	.word	-156
	.word	4
	.word	_Label_788
	.word	-160
	.word	4
	.word	_Label_789
	.word	-164
	.word	4
	.word	_Label_790
	.word	-168
	.word	4
	.word	_Label_791
	.word	-172
	.word	4
	.word	_Label_792
	.word	-176
	.word	4
	.word	_Label_793
	.word	-180
	.word	4
	.word	_Label_794
	.word	-184
	.word	4
	.word	_Label_795
	.word	-188
	.word	4
	.word	_Label_796
	.word	-192
	.word	4
	.word	_Label_797
	.word	-196
	.word	4
	.word	0
_Label_749:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_750:
	.ascii	"Pself\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_796:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_797:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_798
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_798:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_799
	.word	_sourceFileName
	.word	191		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_799:
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
_Label_1750:
	push	r0
	sub	r1,1,r1
	bne	_Label_1750
	mov	688,r13		! source line 688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   _temp_800 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_802 = &_temp_801
	set	-45892,r1
	add	r14,r1,r1
	store	r1,[r14+-4248]
!   _temp_802 = _temp_802 + 4
	load	[r14+-4248],r1
	add	r1,4,r1
	store	r1,[r14+-4248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_804 = zeros  (sizeInBytes=4164)
	add	r14,-4240,r4
	mov	1041,r3
_Label_1751:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1751
!   _temp_804 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4240]
	mov	10,r1
	store	r1,[r14+-4244]
_Label_806:
!   Data Move: *_temp_802 = _temp_804  (sizeInBytes=4164)
	add	r14,-4240,r5
	load	[r14+-4248],r4
	mov	1041,r3
_Label_1752:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1752
!   _temp_802 = _temp_802 + 4164
	load	[r14+-4248],r1
	add	r1,4164,r1
	store	r1,[r14+-4248]
!   _temp_803 = _temp_803 + -1
	load	[r14+-4244],r1
	add	r1,-1,r1
	store	r1,[r14+-4244]
!   if intNotZero (_temp_803) then goto _Label_806
	load	[r14+-4244],r1
	cmp	r1,r0
	bne	_Label_806
!   Initialize the array size...
	mov	10,r1
	set	-45892,r2
	store	r1,[r14+r2]
!   _temp_807 = &_temp_801
	set	-45892,r1
	add	r14,r1,r1
	store	r1,[r14+-72]
!   make sure array has size 10
	set	-45896,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1753
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1753:
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_800 = *_temp_807  (sizeInBytes=41644)
	load	[r14+-72],r5
	set	-45896,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1754:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1754
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
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_811 = &threadManagerLock
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
	mov	710,r13		! source line 710
	mov	"\0\0SE",r10
!   _temp_812 = &aThreadBecameFree
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
	mov	715,r13		! source line 715
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	set	-45900,r2
	store	r1,[r14+r2]
! WHILE STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0WH",r10
_Label_813:
!   if i >= 10 then goto _Label_815		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_815
!	jmp	_Label_814
_Label_814:
	mov	715,r13		! source line 715
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0SE",r10
!   _temp_816 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-48]
!   _temp_817 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_817 [i ] into _temp_818
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
!   Prepare Argument: offset=12  value=_temp_816  sizeInBytes=4
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
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_819 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_819 [i ] into _temp_820
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
!   _temp_821 = _temp_820 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_821 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	715,r13		! source line 715
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
	jmp	_Label_813
_Label_815:
! ASSIGNMENT STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	set	-45900,r2
	store	r1,[r14+r2]
! WHILE STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0WH",r10
_Label_822:
!   if i >= 10 then goto _Label_824		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_824
!	jmp	_Label_823
_Label_823:
	mov	721,r13		! source line 721
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0SE",r10
!   _temp_826 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_826 [i ] into _temp_827
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
!   _temp_825 = _temp_827		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_828 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_825  sizeInBytes=4
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
	mov	721,r13		! source line 721
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
	jmp	_Label_822
_Label_824:
! RETURN STATEMENT...
	mov	721,r13		! source line 721
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
	.word	_Label_829
	.word	4		! total size of parameters
	.word	45900		! frame size = 45900
	.word	_Label_830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_831
	.word	-12
	.word	4
	.word	_Label_832
	.word	-16
	.word	4
	.word	_Label_833
	.word	-20
	.word	4
	.word	_Label_834
	.word	-24
	.word	4
	.word	_Label_835
	.word	-28
	.word	4
	.word	_Label_836
	.word	-32
	.word	4
	.word	_Label_837
	.word	-36
	.word	4
	.word	_Label_838
	.word	-40
	.word	4
	.word	_Label_839
	.word	-44
	.word	4
	.word	_Label_840
	.word	-48
	.word	4
	.word	_Label_841
	.word	-52
	.word	4
	.word	_Label_842
	.word	-56
	.word	4
	.word	_Label_843
	.word	-60
	.word	4
	.word	_Label_844
	.word	-64
	.word	4
	.word	_Label_845
	.word	-68
	.word	4
	.word	_Label_846
	.word	-72
	.word	4
	.word	_Label_847
	.word	-76
	.word	4
	.word	_Label_848
	.word	-4240
	.word	4164
	.word	_Label_849
	.word	-4244
	.word	4
	.word	_Label_850
	.word	-4248
	.word	4
	.word	_Label_851
	.word	-45892
	.word	41644
	.word	_Label_852
	.word	-45896
	.word	4
	.word	_Label_853
	.word	-45900
	.word	4
	.word	0
_Label_829:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_830:
	.ascii	"Pself\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_853:
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
_Label_1755:
	push	r0
	sub	r1,1,r1
	bne	_Label_1755
	mov	730,r13		! source line 730
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_854 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_854  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_859 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_860 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_859  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_855:
!   Perform the FOR-LOOP termination test
!   if i > _temp_860 then goto _Label_858		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_858
_Label_856:
	mov	739,r13		! source line 739
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_861 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_862 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_864 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_864 [i ] into _temp_865
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
!   _temp_863 = _temp_865		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_function_125_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_857:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_855
! END FOR
_Label_858:
! CALL STATEMENT...
!   _temp_866 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
!   _temp_867 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_868 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_867  sizeInBytes=4
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
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	748,r13		! source line 748
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
	.word	_Label_869
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_871
	.word	-12
	.word	4
	.word	_Label_872
	.word	-16
	.word	4
	.word	_Label_873
	.word	-20
	.word	4
	.word	_Label_874
	.word	-24
	.word	4
	.word	_Label_875
	.word	-28
	.word	4
	.word	_Label_876
	.word	-32
	.word	4
	.word	_Label_877
	.word	-36
	.word	4
	.word	_Label_878
	.word	-40
	.word	4
	.word	_Label_879
	.word	-44
	.word	4
	.word	_Label_880
	.word	-48
	.word	4
	.word	_Label_881
	.word	-52
	.word	4
	.word	_Label_882
	.word	-56
	.word	4
	.word	_Label_883
	.word	-60
	.word	4
	.word	0
_Label_869:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_870:
	.ascii	"Pself\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_882:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_883:
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
_Label_1756:
	push	r0
	sub	r1,1,r1
	bne	_Label_1756
	mov	753,r13		! source line 753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0SE",r10
!   _temp_884 = &threadManagerLock
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
	mov	765,r13		! source line 765
	mov	"\0\0WH",r10
_Label_885:
	mov	765,r13		! source line 765
	mov	"\0\0SE",r10
!   _temp_889 = &freeList
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
!   Retrieve Result: targetName=_temp_888  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_890 = _temp_888 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_890 then goto _Label_887 else goto _Label_886
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_886
	jmp	_Label_887
_Label_886:
	mov	765,r13		! source line 765
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_891 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_892 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_891  sizeInBytes=4
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
	jmp	_Label_885
_Label_887:
! ASSIGNMENT STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0AS",r10
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_893 = &freeList
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
	mov	770,r13		! source line 770
	mov	"\0\0AS",r10
!   if intIsZero (newThreadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = newThreadPtr + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_894 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_895 = &threadManagerLock
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
	mov	774,r13		! source line 774
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
	.word	_Label_896
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_898
	.word	-16
	.word	4
	.word	_Label_899
	.word	-20
	.word	4
	.word	_Label_900
	.word	-24
	.word	4
	.word	_Label_901
	.word	-28
	.word	4
	.word	_Label_902
	.word	-32
	.word	4
	.word	_Label_903
	.word	-9
	.word	1
	.word	_Label_904
	.word	-36
	.word	4
	.word	_Label_905
	.word	-10
	.word	1
	.word	_Label_906
	.word	-40
	.word	4
	.word	_Label_907
	.word	-44
	.word	4
	.word	0
_Label_896:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_897:
	.ascii	"Pself\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_903:
	.byte	'C'
	.ascii	"_temp_890\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_905:
	.byte	'C'
	.ascii	"_temp_888\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_907:
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
_Label_1757:
	push	r0
	sub	r1,1,r1
	bne	_Label_1757
	mov	779,r13		! source line 779
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_908 = &threadManagerLock
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
	mov	786,r13		! source line 786
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_909 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_909 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_910 = &freeList
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
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_911 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_912 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_911  sizeInBytes=4
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
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_913 = &threadManagerLock
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
	mov	789,r13		! source line 789
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
	.word	_Label_914
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_915
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_916
	.word	12
	.word	4
	.word	_Label_917
	.word	-12
	.word	4
	.word	_Label_918
	.word	-16
	.word	4
	.word	_Label_919
	.word	-20
	.word	4
	.word	_Label_920
	.word	-24
	.word	4
	.word	_Label_921
	.word	-28
	.word	4
	.word	_Label_922
	.word	-32
	.word	4
	.word	0
_Label_914:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_915:
	.ascii	"Pself\0"
	.align
_Label_916:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_923
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_923:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_924
	.word	_sourceFileName
	.word	212		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_924:
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
_Label_1758:
	push	r0
	sub	r1,1,r1
	bne	_Label_1758
	mov	803,r13		! source line 803
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1759:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1759
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_926 = &addrSpace
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
	mov	807,r13		! source line 807
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
	.word	_Label_927
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_929
	.word	-12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	0
_Label_927:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_928:
	.ascii	"Pself\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_925\0"
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
_Label_1760:
	push	r0
	sub	r1,1,r1
	bne	_Label_1760
	mov	817,r13		! source line 817
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_931) then goto _runtimeErrorNullPointer
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
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_932 = &addrSpace
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
!   _temp_933 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CA",r10
	call	_function_125_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	835,r13		! source line 835
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
	.word	_Label_934
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_936
	.word	-12
	.word	4
	.word	_Label_937
	.word	-16
	.word	4
	.word	_Label_938
	.word	-20
	.word	4
	.word	0
_Label_934:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_935:
	.ascii	"Pself\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_931\0"
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
_Label_1761:
	push	r0
	sub	r1,1,r1
	bne	_Label_1761
	mov	840,r13		! source line 840
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_939 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_939  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_941 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_941  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_942 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_944		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_944
!	jmp	_Label_943
_Label_943:
! THEN...
	mov	850,r13		! source line 850
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_945 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_945  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_946
_Label_944:
! ELSE...
	mov	851,r13		! source line 851
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_948		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_948
!	jmp	_Label_947
_Label_947:
! THEN...
	mov	852,r13		! source line 852
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_949 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_950
_Label_948:
! ELSE...
	mov	853,r13		! source line 853
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_952		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_952
!	jmp	_Label_951
_Label_951:
! THEN...
	mov	854,r13		! source line 854
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_953 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_954
_Label_952:
! ELSE...
	mov	856,r13		! source line 856
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_955 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	856,r13		! source line 856
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_954:
! END IF...
_Label_950:
! END IF...
_Label_946:
! CALL STATEMENT...
!   _temp_956 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_957 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_957  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	862,r13		! source line 862
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
	.word	_Label_958
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_959
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_960
	.word	-12
	.word	4
	.word	_Label_961
	.word	-16
	.word	4
	.word	_Label_962
	.word	-20
	.word	4
	.word	_Label_963
	.word	-24
	.word	4
	.word	_Label_964
	.word	-28
	.word	4
	.word	_Label_965
	.word	-32
	.word	4
	.word	_Label_966
	.word	-36
	.word	4
	.word	_Label_967
	.word	-40
	.word	4
	.word	_Label_968
	.word	-44
	.word	4
	.word	_Label_969
	.word	-48
	.word	4
	.word	0
_Label_958:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_959:
	.ascii	"Pself\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_945\0"
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
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_970
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_970:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_971
	.word	_sourceFileName
	.word	232		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_971:
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
_Label_1762:
	push	r0
	sub	r1,1,r1
	bne	_Label_1762
	mov	873,r13		! source line 873
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0AS",r10
!   _temp_972 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1460]
!   NEW ARRAY Constructor...
!   _temp_974 = &_temp_973
	add	r14,-1456,r1
	store	r1,[r14+-212]
!   _temp_974 = _temp_974 + 4
	load	[r14+-212],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_976 = zeros  (sizeInBytes=124)
	add	r14,-204,r4
	mov	31,r3
_Label_1763:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1763
!   _temp_976 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-204]
	mov	10,r1
	store	r1,[r14+-208]
_Label_978:
!   Data Move: *_temp_974 = _temp_976  (sizeInBytes=124)
	add	r14,-204,r5
	load	[r14+-212],r4
	mov	31,r3
_Label_1764:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1764
!   _temp_974 = _temp_974 + 124
	load	[r14+-212],r1
	add	r1,124,r1
	store	r1,[r14+-212]
!   _temp_975 = _temp_975 + -1
	load	[r14+-208],r1
	add	r1,-1,r1
	store	r1,[r14+-208]
!   if intNotZero (_temp_975) then goto _Label_978
	load	[r14+-208],r1
	cmp	r1,r0
	bne	_Label_978
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1456]
!   _temp_979 = &_temp_973
	add	r14,-1456,r1
	store	r1,[r14+-76]
!   make sure array has size 10
	load	[r14+-1460],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1765
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1765:
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_972 = *_temp_979  (sizeInBytes=1244)
	load	[r14+-76],r5
	load	[r14+-1460],r4
	mov	311,r3
_Label_1766:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1766
! ASSIGNMENT STATEMENT...
	mov	882,r13		! source line 882
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
	mov	883,r13		! source line 883
	mov	"\0\0SE",r10
!   _temp_981 = &processManagerLock
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
	mov	884,r13		! source line 884
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
	mov	885,r13		! source line 885
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
	mov	886,r13		! source line 886
	mov	"\0\0SE",r10
!   _temp_984 = &aProcessBecameFree
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
	mov	887,r13		! source line 887
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
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_986 = &aProcessDied
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
	mov	890,r13		! source line 890
	mov	"\0\0AS",r10
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1464]
! WHILE STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0WH",r10
_Label_987:
!   if i >= 10 then goto _Label_989		(int)
	load	[r14+-1464],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_989
!	jmp	_Label_988
_Label_988:
	mov	890,r13		! source line 890
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_990 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_990 [i ] into _temp_991
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
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   _temp_992 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_992 [i ] into _temp_993
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
!   _temp_994 = _temp_993 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_994 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_996 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_996 [i ] into _temp_997
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
!   _temp_995 = _temp_997		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_998 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_995  sizeInBytes=4
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
	mov	890,r13		! source line 890
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-1464],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1464]
! END WHILE...
	jmp	_Label_987
_Label_989:
! RETURN STATEMENT...
	mov	890,r13		! source line 890
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
	.word	_Label_999
	.word	4		! total size of parameters
	.word	1464		! frame size = 1464
	.word	_Label_1000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1001
	.word	-12
	.word	4
	.word	_Label_1002
	.word	-16
	.word	4
	.word	_Label_1003
	.word	-20
	.word	4
	.word	_Label_1004
	.word	-24
	.word	4
	.word	_Label_1005
	.word	-28
	.word	4
	.word	_Label_1006
	.word	-32
	.word	4
	.word	_Label_1007
	.word	-36
	.word	4
	.word	_Label_1008
	.word	-40
	.word	4
	.word	_Label_1009
	.word	-44
	.word	4
	.word	_Label_1010
	.word	-48
	.word	4
	.word	_Label_1011
	.word	-52
	.word	4
	.word	_Label_1012
	.word	-56
	.word	4
	.word	_Label_1013
	.word	-60
	.word	4
	.word	_Label_1014
	.word	-64
	.word	4
	.word	_Label_1015
	.word	-68
	.word	4
	.word	_Label_1016
	.word	-72
	.word	4
	.word	_Label_1017
	.word	-76
	.word	4
	.word	_Label_1018
	.word	-80
	.word	4
	.word	_Label_1019
	.word	-204
	.word	124
	.word	_Label_1020
	.word	-208
	.word	4
	.word	_Label_1021
	.word	-212
	.word	4
	.word	_Label_1022
	.word	-1456
	.word	1244
	.word	_Label_1023
	.word	-1460
	.word	4
	.word	_Label_1024
	.word	-1464
	.word	4
	.word	0
_Label_999:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1000:
	.ascii	"Pself\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1024:
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
_Label_1767:
	push	r0
	sub	r1,1,r1
	bne	_Label_1767
	mov	900,r13		! source line 900
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1025 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1030 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1031 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1030  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1026:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1031 then goto _Label_1029		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1029
_Label_1027:
	mov	909,r13		! source line 909
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1032 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1033 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1034 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1034 [i ] into _temp_1035
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
_Label_1028:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1026
! END FOR
_Label_1029:
! CALL STATEMENT...
!   _temp_1036 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0SE",r10
!   _temp_1037 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1038 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1037  sizeInBytes=4
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
	mov	917,r13		! source line 917
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	918,r13		! source line 918
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
	.word	_Label_1039
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1041
	.word	-12
	.word	4
	.word	_Label_1042
	.word	-16
	.word	4
	.word	_Label_1043
	.word	-20
	.word	4
	.word	_Label_1044
	.word	-24
	.word	4
	.word	_Label_1045
	.word	-28
	.word	4
	.word	_Label_1046
	.word	-32
	.word	4
	.word	_Label_1047
	.word	-36
	.word	4
	.word	_Label_1048
	.word	-40
	.word	4
	.word	_Label_1049
	.word	-44
	.word	4
	.word	_Label_1050
	.word	-48
	.word	4
	.word	_Label_1051
	.word	-52
	.word	4
	.word	_Label_1052
	.word	-56
	.word	4
	.word	0
_Label_1039:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1040:
	.ascii	"Pself\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1051:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1052:
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
_Label_1768:
	push	r0
	sub	r1,1,r1
	bne	_Label_1768
	mov	923,r13		! source line 923
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1053 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1053  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1058 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1059 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1058  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1054:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1059 then goto _Label_1057		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1057
_Label_1055:
	mov	932,r13		! source line 932
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1060 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1061 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1061 [i ] into _temp_1062
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
_Label_1056:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1054
! END FOR
_Label_1057:
! CALL STATEMENT...
!   _temp_1063 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1064 = _function_124_PrintObjectAddr
	set	_function_124_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1065 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1064  sizeInBytes=4
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
	mov	939,r13		! source line 939
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	940,r13		! source line 940
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	940,r13		! source line 940
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
	.word	_Label_1066
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1068
	.word	-12
	.word	4
	.word	_Label_1069
	.word	-16
	.word	4
	.word	_Label_1070
	.word	-20
	.word	4
	.word	_Label_1071
	.word	-24
	.word	4
	.word	_Label_1072
	.word	-28
	.word	4
	.word	_Label_1073
	.word	-32
	.word	4
	.word	_Label_1074
	.word	-36
	.word	4
	.word	_Label_1075
	.word	-40
	.word	4
	.word	_Label_1076
	.word	-44
	.word	4
	.word	_Label_1077
	.word	-48
	.word	4
	.word	_Label_1078
	.word	-52
	.word	4
	.word	0
_Label_1066:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1067:
	.ascii	"Pself\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1077:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1078:
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
_Label_1769:
	push	r0
	sub	r1,1,r1
	bne	_Label_1769
	mov	945,r13		! source line 945
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_1079 = &processManagerLock
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
	mov	956,r13		! source line 956
	mov	"\0\0WH",r10
_Label_1080:
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1084 = &freeList
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
!   Retrieve Result: targetName=_temp_1083  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1085 = _temp_1083 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1085 then goto _Label_1082 else goto _Label_1081
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1081
	jmp	_Label_1082
_Label_1081:
	mov	956,r13		! source line 956
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1086 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   _temp_1087 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1086  sizeInBytes=4
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
	jmp	_Label_1080
_Label_1082:
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1088 = &freeList
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
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1089 = newProcessPtr + 20
	load	[r14+-60],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1089 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0AS",r10
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1090 = newProcessPtr + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   if intIsZero (newProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1093 = newProcessPtr + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1092 = *_temp_1093  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1091 = _temp_1092 + 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Data Move: *_temp_1090 = _temp_1091  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0SE",r10
!   _temp_1094 = &processManagerLock
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
	.word	_Label_1095
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1096
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1097
	.word	-16
	.word	4
	.word	_Label_1098
	.word	-20
	.word	4
	.word	_Label_1099
	.word	-24
	.word	4
	.word	_Label_1100
	.word	-28
	.word	4
	.word	_Label_1101
	.word	-32
	.word	4
	.word	_Label_1102
	.word	-36
	.word	4
	.word	_Label_1103
	.word	-40
	.word	4
	.word	_Label_1104
	.word	-44
	.word	4
	.word	_Label_1105
	.word	-48
	.word	4
	.word	_Label_1106
	.word	-9
	.word	1
	.word	_Label_1107
	.word	-52
	.word	4
	.word	_Label_1108
	.word	-10
	.word	1
	.word	_Label_1109
	.word	-56
	.word	4
	.word	_Label_1110
	.word	-60
	.word	4
	.word	0
_Label_1095:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1096:
	.ascii	"Pself\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1106:
	.byte	'C'
	.ascii	"_temp_1085\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1108:
	.byte	'C'
	.ascii	"_temp_1083\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1110:
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
	mov	8,r1
_Label_1770:
	push	r0
	sub	r1,1,r1
	bne	_Label_1770
	mov	973,r13		! source line 973
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1111 = &processManagerLock
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
!   _temp_1112 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1112 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1113 = &freeList
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
!   _temp_1114 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1115 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1114  sizeInBytes=4
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
!   _temp_1116 = &processManagerLock
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
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1117
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1118
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1119
	.word	12
	.word	4
	.word	_Label_1120
	.word	-12
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
	.word	-32
	.word	4
	.word	0
_Label_1117:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1118:
	.ascii	"Pself\0"
	.align
_Label_1119:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1126
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1126:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1127
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1127:
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
_Label_1771:
	push	r0
	sub	r1,1,r1
	bne	_Label_1771
	mov	1020,r13		! source line 1020
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1128 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1026,r13		! source line 1026
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
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
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1130 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
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
	mov	1029,r13		! source line 1029
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
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
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1132 = &frameManagerLock
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
	mov	1032,r13		! source line 1032
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
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1134 = &newFramesAvailable
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
	mov	1039,r13		! source line 1039
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1139 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1140 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1139  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1135:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1140 then goto _Label_1138		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1138
_Label_1136:
	mov	1039,r13		! source line 1039
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1143 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1143) then goto _Label_1142
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1142
!	jmp	_Label_1141
_Label_1141:
! THEN...
	mov	1043,r13		! source line 1043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1144 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1043,r13		! source line 1043
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1142:
!   Increment the FOR-LOOP index variable and jump back
_Label_1137:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1135
! END FOR
_Label_1138:
! RETURN STATEMENT...
	mov	1039,r13		! source line 1039
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
	.word	_Label_1145
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1147
	.word	-12
	.word	4
	.word	_Label_1148
	.word	-16
	.word	4
	.word	_Label_1149
	.word	-20
	.word	4
	.word	_Label_1150
	.word	-24
	.word	4
	.word	_Label_1151
	.word	-28
	.word	4
	.word	_Label_1152
	.word	-32
	.word	4
	.word	_Label_1153
	.word	-36
	.word	4
	.word	_Label_1154
	.word	-40
	.word	4
	.word	_Label_1155
	.word	-44
	.word	4
	.word	_Label_1156
	.word	-48
	.word	4
	.word	_Label_1157
	.word	-52
	.word	4
	.word	_Label_1158
	.word	-56
	.word	4
	.word	0
_Label_1145:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1146:
	.ascii	"Pself\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1158:
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
_Label_1772:
	push	r0
	sub	r1,1,r1
	bne	_Label_1772
	mov	1050,r13		! source line 1050
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1159 = &frameManagerLock
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
!   _temp_1160 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1160  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1161 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1161  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1162 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1057,r13		! source line 1057
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0SE",r10
!   _temp_1163 = &framesInUse
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
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1164 = &frameManagerLock
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
	mov	1059,r13		! source line 1059
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
	.word	_Label_1165
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1167
	.word	-12
	.word	4
	.word	_Label_1168
	.word	-16
	.word	4
	.word	_Label_1169
	.word	-20
	.word	4
	.word	_Label_1170
	.word	-24
	.word	4
	.word	_Label_1171
	.word	-28
	.word	4
	.word	_Label_1172
	.word	-32
	.word	4
	.word	0
_Label_1165:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1166:
	.ascii	"Pself\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1159\0"
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
_Label_1773:
	push	r0
	sub	r1,1,r1
	bne	_Label_1773
	mov	1064,r13		! source line 1064
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   _temp_1173 = &frameManagerLock
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
	mov	1075,r13		! source line 1075
	mov	"\0\0WH",r10
_Label_1174:
!   if numberFreeFrames >= 1 then goto _Label_1176		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1176
!	jmp	_Label_1175
_Label_1175:
	mov	1075,r13		! source line 1075
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0SE",r10
!   _temp_1177 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1178 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1177  sizeInBytes=4
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
	jmp	_Label_1174
_Label_1176:
! ASSIGNMENT STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
	mov	1080,r13		! source line 1080
	mov	"\0\0SE",r10
!   _temp_1179 = &framesInUse
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
	mov	1081,r13		! source line 1081
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
	mov	1084,r13		! source line 1084
	mov	"\0\0SE",r10
!   _temp_1180 = &frameManagerLock
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
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   _temp_1181 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1181		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1089,r13		! source line 1089
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
	.word	_Label_1182
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1183
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1189
	.word	-32
	.word	4
	.word	_Label_1190
	.word	-36
	.word	4
	.word	_Label_1191
	.word	-40
	.word	4
	.word	0
_Label_1182:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1183:
	.ascii	"Pself\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1190:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1191:
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
_Label_1774:
	push	r0
	sub	r1,1,r1
	bne	_Label_1774
	mov	1094,r13		! source line 1094
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1192 = &frameManagerLock
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
	mov	1104,r13		! source line 1104
	mov	"\0\0WH",r10
_Label_1193:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1195		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1195
!	jmp	_Label_1194
_Label_1194:
	mov	1104,r13		! source line 1104
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0SE",r10
!   _temp_1196 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1197 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1196  sizeInBytes=4
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
	jmp	_Label_1193
_Label_1195:
! FOR STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1202 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1203 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1202  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1198:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1203 then goto _Label_1201		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1201
_Label_1199:
	mov	1109,r13		! source line 1109
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0AS",r10
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   _temp_1204 = &framesInUse
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
	mov	1114,r13		! source line 1114
	mov	"\0\0AS",r10
!   _temp_1205 = freeFrameIdx * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   freeFrameAddr = 1048576 + _temp_1205		(int)
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
_Label_1200:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1198
! END FOR
_Label_1201:
! ASSIGNMENT STATEMENT...
	mov	1121,r13		! source line 1121
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
	mov	1123,r13		! source line 1123
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1206 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1206 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1207 = &frameManagerLock
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
	mov	1124,r13		! source line 1124
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
	.word	_Label_1208
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1209
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1210
	.word	12
	.word	4
	.word	_Label_1211
	.word	16
	.word	4
	.word	_Label_1212
	.word	-12
	.word	4
	.word	_Label_1213
	.word	-16
	.word	4
	.word	_Label_1214
	.word	-20
	.word	4
	.word	_Label_1215
	.word	-24
	.word	4
	.word	_Label_1216
	.word	-28
	.word	4
	.word	_Label_1217
	.word	-32
	.word	4
	.word	_Label_1218
	.word	-36
	.word	4
	.word	_Label_1219
	.word	-40
	.word	4
	.word	_Label_1220
	.word	-44
	.word	4
	.word	_Label_1221
	.word	-48
	.word	4
	.word	_Label_1222
	.word	-52
	.word	4
	.word	_Label_1223
	.word	-56
	.word	4
	.word	0
_Label_1208:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1209:
	.ascii	"Pself\0"
	.align
_Label_1210:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1211:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1221:
	.byte	'I'
	.ascii	"freeFrameIdx\0"
	.align
_Label_1222:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1223:
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
_Label_1775:
	push	r0
	sub	r1,1,r1
	bne	_Label_1775
	mov	1131,r13		! source line 1131
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_1224 = &frameManagerLock
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
	mov	1140,r13		! source line 1140
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1225 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1225  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1230 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1231 = numFramesReturned - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1230  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-60]
_Label_1226:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1231 then goto _Label_1229		
	load	[r14+-60],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1229
_Label_1227:
	mov	1141,r13		! source line 1141
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0AS",r10
	mov	1142,r13		! source line 1142
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
	mov	1143,r13		! source line 1143
	mov	"\0\0AS",r10
!   _temp_1232 = returnFrameAddr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   returnFrameIdx = _temp_1232 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1233 = &framesInUse
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
_Label_1228:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1226
! END FOR
_Label_1229:
! SEND STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1234 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1235 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1234  sizeInBytes=4
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
	mov	1149,r13		! source line 1149
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
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_1236 = &frameManagerLock
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
	mov	1150,r13		! source line 1150
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
	.word	_Label_1237
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1238
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1239
	.word	12
	.word	4
	.word	_Label_1240
	.word	-12
	.word	4
	.word	_Label_1241
	.word	-16
	.word	4
	.word	_Label_1242
	.word	-20
	.word	4
	.word	_Label_1243
	.word	-24
	.word	4
	.word	_Label_1244
	.word	-28
	.word	4
	.word	_Label_1245
	.word	-32
	.word	4
	.word	_Label_1246
	.word	-36
	.word	4
	.word	_Label_1247
	.word	-40
	.word	4
	.word	_Label_1248
	.word	-44
	.word	4
	.word	_Label_1249
	.word	-48
	.word	4
	.word	_Label_1250
	.word	-52
	.word	4
	.word	_Label_1251
	.word	-56
	.word	4
	.word	_Label_1252
	.word	-60
	.word	4
	.word	0
_Label_1237:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1238:
	.ascii	"Pself\0"
	.align
_Label_1239:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1249:
	.byte	'I'
	.ascii	"returnFrameIdx\0"
	.align
_Label_1250:
	.byte	'I'
	.ascii	"returnFrameAddr\0"
	.align
_Label_1251:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1252:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1253
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
_Label_1253:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1254
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1254:
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
_Label_1776:
	push	r0
	sub	r1,1,r1
	bne	_Label_1776
	mov	1163,r13		! source line 1163
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
!   _temp_1255 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1257 = &_temp_1256
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1257 = _temp_1257 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1259:
!   Data Move: *_temp_1257 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1257 = _temp_1257 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1258 = _temp_1258 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1258) then goto _Label_1259
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1259
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1260 = &_temp_1256
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1777
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1777:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1255 = *_temp_1260  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1778:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1778
! RETURN STATEMENT...
	mov	1168,r13		! source line 1168
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
	.word	_Label_1261
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1263
	.word	-12
	.word	4
	.word	_Label_1264
	.word	-16
	.word	4
	.word	_Label_1265
	.word	-20
	.word	4
	.word	_Label_1266
	.word	-104
	.word	84
	.word	_Label_1267
	.word	-108
	.word	4
	.word	0
_Label_1261:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1262:
	.ascii	"Pself\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1255\0"
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
_Label_1779:
	push	r0
	sub	r1,1,r1
	bne	_Label_1779
	mov	1173,r13		! source line 1173
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1268 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1268  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1269 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1274 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1275 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1274  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1270:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1275 then goto _Label_1273		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1273
_Label_1271:
	mov	1180,r13		! source line 1180
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1276 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1278 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1278 [i ] into _temp_1279
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
!   _temp_1277 = _temp_1279		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1280 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1282 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1282 [i ] into _temp_1283
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
!   Data Move: _temp_1281 = *_temp_1283  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1284 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1284  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1285 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1285  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1186,r13		! source line 1186
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1286 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1286  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1288) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1287  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1289 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-96],r1
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
	store	r1,[r14+-88]
!   if intIsZero (_temp_1293) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1292  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1292) then goto _Label_1291
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1291
!	jmp	_Label_1290
_Label_1290:
! THEN...
	mov	1191,r13		! source line 1191
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1295) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1294  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1296
_Label_1291:
! ELSE...
	mov	1193,r13		! source line 1193
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1297 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1296:
! CALL STATEMENT...
!   _temp_1298 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-72],r1
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
	store	r1,[r14+-68]
!   if intIsZero (_temp_1301) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1299 else goto _Label_1300
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1300
	jmp	_Label_1299
_Label_1299:
! THEN...
	mov	1197,r13		! source line 1197
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1302 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1302  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1197,r13		! source line 1197
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1303
_Label_1300:
! ELSE...
	mov	1199,r13		! source line 1199
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1304 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1199,r13		! source line 1199
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1303:
! CALL STATEMENT...
!   _temp_1305 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-56],r1
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
	store	r1,[r14+-52]
!   if intIsZero (_temp_1308) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1306 else goto _Label_1307
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1307
	jmp	_Label_1306
_Label_1306:
! THEN...
	mov	1203,r13		! source line 1203
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1309 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1203,r13		! source line 1203
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1310
_Label_1307:
! ELSE...
	mov	1205,r13		! source line 1205
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1311 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1205,r13		! source line 1205
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1310:
! CALL STATEMENT...
!   _temp_1312 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1207,r13		! source line 1207
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0IF",r10
	mov	1208,r13		! source line 1208
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1315) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1313 else goto _Label_1314
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1314
	jmp	_Label_1313
_Label_1313:
! THEN...
	mov	1209,r13		! source line 1209
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1316 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1316  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1209,r13		! source line 1209
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1317
_Label_1314:
! ELSE...
	mov	1211,r13		! source line 1211
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1318 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1211,r13		! source line 1211
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1317:
! CALL STATEMENT...
!   _temp_1319 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1319  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1213,r13		! source line 1213
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0IF",r10
	mov	1214,r13		! source line 1214
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1322) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1320 else goto _Label_1321
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1321
	jmp	_Label_1320
_Label_1320:
! THEN...
	mov	1215,r13		! source line 1215
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1323 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1324
_Label_1321:
! ELSE...
	mov	1217,r13		! source line 1217
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1325 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1324:
! CALL STATEMENT...
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1272:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1270
! END FOR
_Label_1273:
! RETURN STATEMENT...
	mov	1180,r13		! source line 1180
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
	.word	_Label_1326
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1327
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1328
	.word	-12
	.word	4
	.word	_Label_1329
	.word	-16
	.word	4
	.word	_Label_1330
	.word	-20
	.word	4
	.word	_Label_1331
	.word	-24
	.word	4
	.word	_Label_1332
	.word	-28
	.word	4
	.word	_Label_1333
	.word	-32
	.word	4
	.word	_Label_1334
	.word	-36
	.word	4
	.word	_Label_1335
	.word	-40
	.word	4
	.word	_Label_1336
	.word	-44
	.word	4
	.word	_Label_1337
	.word	-48
	.word	4
	.word	_Label_1338
	.word	-52
	.word	4
	.word	_Label_1339
	.word	-56
	.word	4
	.word	_Label_1340
	.word	-60
	.word	4
	.word	_Label_1341
	.word	-64
	.word	4
	.word	_Label_1342
	.word	-68
	.word	4
	.word	_Label_1343
	.word	-72
	.word	4
	.word	_Label_1344
	.word	-76
	.word	4
	.word	_Label_1345
	.word	-80
	.word	4
	.word	_Label_1346
	.word	-84
	.word	4
	.word	_Label_1347
	.word	-88
	.word	4
	.word	_Label_1348
	.word	-92
	.word	4
	.word	_Label_1349
	.word	-96
	.word	4
	.word	_Label_1350
	.word	-100
	.word	4
	.word	_Label_1351
	.word	-104
	.word	4
	.word	_Label_1352
	.word	-108
	.word	4
	.word	_Label_1353
	.word	-112
	.word	4
	.word	_Label_1354
	.word	-116
	.word	4
	.word	_Label_1355
	.word	-120
	.word	4
	.word	_Label_1356
	.word	-124
	.word	4
	.word	_Label_1357
	.word	-128
	.word	4
	.word	_Label_1358
	.word	-132
	.word	4
	.word	_Label_1359
	.word	-136
	.word	4
	.word	_Label_1360
	.word	-140
	.word	4
	.word	_Label_1361
	.word	-144
	.word	4
	.word	_Label_1362
	.word	-148
	.word	4
	.word	_Label_1363
	.word	-152
	.word	4
	.word	_Label_1364
	.word	-156
	.word	4
	.word	_Label_1365
	.word	-160
	.word	4
	.word	_Label_1366
	.word	-164
	.word	4
	.word	_Label_1367
	.word	-168
	.word	4
	.word	0
_Label_1326:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1327:
	.ascii	"Pself\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1367:
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
_Label_1780:
	push	r0
	sub	r1,1,r1
	bne	_Label_1780
	mov	1225,r13		! source line 1225
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0RE",r10
!   _temp_1370 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1370 [entry ] into _temp_1371
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
!   Data Move: _temp_1369 = *_temp_1371  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1368 = _temp_1369 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1368  (sizeInBytes=4)
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
	.word	_Label_1372
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1374
	.word	12
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
	.word	_Label_1378
	.word	-24
	.word	4
	.word	0
_Label_1372:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1373:
	.ascii	"Pself\0"
	.align
_Label_1374:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1368\0"
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
_Label_1781:
	push	r0
	sub	r1,1,r1
	bne	_Label_1781
	mov	1235,r13		! source line 1235
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0RE",r10
!   _temp_1381 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1381 [entry ] into _temp_1382
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
!   Data Move: _temp_1380 = *_temp_1382  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1379 = _temp_1380 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1379  (sizeInBytes=4)
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
	.word	_Label_1383
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1384
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1385
	.word	12
	.word	4
	.word	_Label_1386
	.word	-12
	.word	4
	.word	_Label_1387
	.word	-16
	.word	4
	.word	_Label_1388
	.word	-20
	.word	4
	.word	_Label_1389
	.word	-24
	.word	4
	.word	0
_Label_1383:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1384:
	.ascii	"Pself\0"
	.align
_Label_1385:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1379\0"
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
_Label_1782:
	push	r0
	sub	r1,1,r1
	bne	_Label_1782
	mov	1244,r13		! source line 1244
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0AS",r10
!   _temp_1390 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1390 [entry ] into _temp_1391
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
!   _temp_1395 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1395 [entry ] into _temp_1396
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
!   Data Move: _temp_1394 = *_temp_1396  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1393 = _temp_1394 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1392 = _temp_1393 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1391 = _temp_1392  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1249,r13		! source line 1249
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
	.word	_Label_1397
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1398
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1399
	.word	12
	.word	4
	.word	_Label_1400
	.word	16
	.word	4
	.word	_Label_1401
	.word	-12
	.word	4
	.word	_Label_1402
	.word	-16
	.word	4
	.word	_Label_1403
	.word	-20
	.word	4
	.word	_Label_1404
	.word	-24
	.word	4
	.word	_Label_1405
	.word	-28
	.word	4
	.word	_Label_1406
	.word	-32
	.word	4
	.word	_Label_1407
	.word	-36
	.word	4
	.word	0
_Label_1397:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1398:
	.ascii	"Pself\0"
	.align
_Label_1399:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1400:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1390\0"
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
_Label_1783:
	push	r0
	sub	r1,1,r1
	bne	_Label_1783
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0RE",r10
!   _temp_1411 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1411 [entry ] into _temp_1412
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
!   Data Move: _temp_1410 = *_temp_1412  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1409 = _temp_1410 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1409) then goto _Label_1413
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1413
!   _temp_1408 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1414
_Label_1413:
!   _temp_1408 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1414:
!   ReturnResult: _temp_1408  (sizeInBytes=1)
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
	.word	_Label_1415
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1416
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1417
	.word	12
	.word	4
	.word	_Label_1418
	.word	-16
	.word	4
	.word	_Label_1419
	.word	-20
	.word	4
	.word	_Label_1420
	.word	-24
	.word	4
	.word	_Label_1421
	.word	-28
	.word	4
	.word	_Label_1422
	.word	-9
	.word	1
	.word	0
_Label_1415:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1416:
	.ascii	"Pself\0"
	.align
_Label_1417:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1422:
	.byte	'C'
	.ascii	"_temp_1408\0"
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
_Label_1784:
	push	r0
	sub	r1,1,r1
	bne	_Label_1784
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0RE",r10
!   _temp_1426 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1426 [entry ] into _temp_1427
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
!   Data Move: _temp_1425 = *_temp_1427  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1424 = _temp_1425 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1424) then goto _Label_1428
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1428
!   _temp_1423 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1429
_Label_1428:
!   _temp_1423 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1429:
!   ReturnResult: _temp_1423  (sizeInBytes=1)
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
	.word	_Label_1430
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1431
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1432
	.word	12
	.word	4
	.word	_Label_1433
	.word	-16
	.word	4
	.word	_Label_1434
	.word	-20
	.word	4
	.word	_Label_1435
	.word	-24
	.word	4
	.word	_Label_1436
	.word	-28
	.word	4
	.word	_Label_1437
	.word	-9
	.word	1
	.word	0
_Label_1430:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1431:
	.ascii	"Pself\0"
	.align
_Label_1432:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1437:
	.byte	'C'
	.ascii	"_temp_1423\0"
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
_Label_1785:
	push	r0
	sub	r1,1,r1
	bne	_Label_1785
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0RE",r10
!   _temp_1441 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1441 [entry ] into _temp_1442
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
!   Data Move: _temp_1440 = *_temp_1442  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1439 = _temp_1440 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1439) then goto _Label_1443
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1443
!   _temp_1438 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1444
_Label_1443:
!   _temp_1438 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1444:
!   ReturnResult: _temp_1438  (sizeInBytes=1)
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
	.word	_Label_1445
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1447
	.word	12
	.word	4
	.word	_Label_1448
	.word	-16
	.word	4
	.word	_Label_1449
	.word	-20
	.word	4
	.word	_Label_1450
	.word	-24
	.word	4
	.word	_Label_1451
	.word	-28
	.word	4
	.word	_Label_1452
	.word	-9
	.word	1
	.word	0
_Label_1445:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1446:
	.ascii	"Pself\0"
	.align
_Label_1447:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1452:
	.byte	'C'
	.ascii	"_temp_1438\0"
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
_Label_1786:
	push	r0
	sub	r1,1,r1
	bne	_Label_1786
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0RE",r10
!   _temp_1456 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1456 [entry ] into _temp_1457
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
!   Data Move: _temp_1455 = *_temp_1457  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1454 = _temp_1455 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1454) then goto _Label_1458
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1458
!   _temp_1453 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1459
_Label_1458:
!   _temp_1453 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1459:
!   ReturnResult: _temp_1453  (sizeInBytes=1)
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
	.word	_Label_1460
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1462
	.word	12
	.word	4
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
	.word	-9
	.word	1
	.word	0
_Label_1460:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1461:
	.ascii	"Pself\0"
	.align
_Label_1462:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1467:
	.byte	'C'
	.ascii	"_temp_1453\0"
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
_Label_1787:
	push	r0
	sub	r1,1,r1
	bne	_Label_1787
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0AS",r10
!   _temp_1468 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1468 [entry ] into _temp_1469
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
!   _temp_1472 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1472 [entry ] into _temp_1473
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
!   Data Move: _temp_1471 = *_temp_1473  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1470 = _temp_1471 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1469 = _temp_1470  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
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
	.word	_Label_1474
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1475:
	.ascii	"Pself\0"
	.align
_Label_1476:
	.byte	'I'
	.ascii	"entry\0"
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
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1788:
	push	r0
	sub	r1,1,r1
	bne	_Label_1788
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0AS",r10
!   _temp_1483 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1483 [entry ] into _temp_1484
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
!   _temp_1487 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1487 [entry ] into _temp_1488
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
!   Data Move: _temp_1486 = *_temp_1488  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1485 = _temp_1486 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1484 = _temp_1485  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
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
	.word	_Label_1489
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1491
	.word	12
	.word	4
	.word	_Label_1492
	.word	-12
	.word	4
	.word	_Label_1493
	.word	-16
	.word	4
	.word	_Label_1494
	.word	-20
	.word	4
	.word	_Label_1495
	.word	-24
	.word	4
	.word	_Label_1496
	.word	-28
	.word	4
	.word	_Label_1497
	.word	-32
	.word	4
	.word	0
_Label_1489:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1490:
	.ascii	"Pself\0"
	.align
_Label_1491:
	.byte	'I'
	.ascii	"entry\0"
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
	.ascii	"_temp_1486\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1483\0"
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
_Label_1789:
	push	r0
	sub	r1,1,r1
	bne	_Label_1789
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0AS",r10
!   _temp_1498 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1498 [entry ] into _temp_1499
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
!   _temp_1502 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1502 [entry ] into _temp_1503
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
!   Data Move: _temp_1501 = *_temp_1503  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1500 = _temp_1501 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1499 = _temp_1500  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
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
	.word	_Label_1504
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1505
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1506
	.word	12
	.word	4
	.word	_Label_1507
	.word	-12
	.word	4
	.word	_Label_1508
	.word	-16
	.word	4
	.word	_Label_1509
	.word	-20
	.word	4
	.word	_Label_1510
	.word	-24
	.word	4
	.word	_Label_1511
	.word	-28
	.word	4
	.word	_Label_1512
	.word	-32
	.word	4
	.word	0
_Label_1504:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1505:
	.ascii	"Pself\0"
	.align
_Label_1506:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1498\0"
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
_Label_1790:
	push	r0
	sub	r1,1,r1
	bne	_Label_1790
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0AS",r10
!   _temp_1513 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1513 [entry ] into _temp_1514
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
!   _temp_1517 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1517 [entry ] into _temp_1518
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
!   Data Move: _temp_1516 = *_temp_1518  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1515 = _temp_1516 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1514 = _temp_1515  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
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
	.word	_Label_1519
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1521
	.word	12
	.word	4
	.word	_Label_1522
	.word	-12
	.word	4
	.word	_Label_1523
	.word	-16
	.word	4
	.word	_Label_1524
	.word	-20
	.word	4
	.word	_Label_1525
	.word	-24
	.word	4
	.word	_Label_1526
	.word	-28
	.word	4
	.word	_Label_1527
	.word	-32
	.word	4
	.word	0
_Label_1519:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1520:
	.ascii	"Pself\0"
	.align
_Label_1521:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1513\0"
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
_Label_1791:
	push	r0
	sub	r1,1,r1
	bne	_Label_1791
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_1528 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1528 [entry ] into _temp_1529
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
!   _temp_1532 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1532 [entry ] into _temp_1533
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
!   Data Move: _temp_1531 = *_temp_1533  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1530 = _temp_1531 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1529 = _temp_1530  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
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
	.word	_Label_1534
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1536
	.word	12
	.word	4
	.word	_Label_1537
	.word	-12
	.word	4
	.word	_Label_1538
	.word	-16
	.word	4
	.word	_Label_1539
	.word	-20
	.word	4
	.word	_Label_1540
	.word	-24
	.word	4
	.word	_Label_1541
	.word	-28
	.word	4
	.word	_Label_1542
	.word	-32
	.word	4
	.word	0
_Label_1534:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1535:
	.ascii	"Pself\0"
	.align
_Label_1536:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1528\0"
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
_Label_1792:
	push	r0
	sub	r1,1,r1
	bne	_Label_1792
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_1543 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1543 [entry ] into _temp_1544
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
!   _temp_1547 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1547 [entry ] into _temp_1548
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
!   Data Move: _temp_1546 = *_temp_1548  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1545 = _temp_1546 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1544 = _temp_1545  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1339,r13		! source line 1339
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
	.word	_Label_1549
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	12
	.word	4
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
_Label_1549:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'I'
	.ascii	"entry\0"
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
	.ascii	"_temp_1546\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1543\0"
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
_Label_1793:
	push	r0
	sub	r1,1,r1
	bne	_Label_1793
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   _temp_1558 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1558 [entry ] into _temp_1559
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
!   _temp_1562 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1562 [entry ] into _temp_1563
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
!   Data Move: _temp_1561 = *_temp_1563  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1560 = _temp_1561 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1559 = _temp_1560  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1348,r13		! source line 1348
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
	.word	_Label_1564
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1566
	.word	12
	.word	4
	.word	_Label_1567
	.word	-12
	.word	4
	.word	_Label_1568
	.word	-16
	.word	4
	.word	_Label_1569
	.word	-20
	.word	4
	.word	_Label_1570
	.word	-24
	.word	4
	.word	_Label_1571
	.word	-28
	.word	4
	.word	_Label_1572
	.word	-32
	.word	4
	.word	0
_Label_1564:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1565:
	.ascii	"Pself\0"
	.align
_Label_1566:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1558\0"
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
_Label_1794:
	push	r0
	sub	r1,1,r1
	bne	_Label_1794
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_1573 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1573 [entry ] into _temp_1574
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
!   _temp_1577 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1577 [entry ] into _temp_1578
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
!   Data Move: _temp_1576 = *_temp_1578  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1575 = _temp_1576 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1574 = _temp_1575  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1357,r13		! source line 1357
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
	.word	_Label_1579
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.word	-24
	.word	4
	.word	_Label_1586
	.word	-28
	.word	4
	.word	_Label_1587
	.word	-32
	.word	4
	.word	0
_Label_1579:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1580:
	.ascii	"Pself\0"
	.align
_Label_1581:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1573\0"
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
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	1362,r13		! source line 1362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1589 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1589 [0 ] into _temp_1590
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
!   _temp_1588 = _temp_1590		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1591 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1591  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1592
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1594
	.word	-12
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
	.word	0
_Label_1592:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1593:
	.ascii	"Pself\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1588\0"
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
_Label_1796:
	push	r0
	sub	r1,1,r1
	bne	_Label_1796
	mov	1373,r13		! source line 1373
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1598
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1598
	jmp	_Label_1599
_Label_1598:
! THEN...
	mov	1389,r13		! source line 1389
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1600
_Label_1599:
! ELSE...
	mov	1390,r13		! source line 1390
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1602		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1602
!	jmp	_Label_1601
_Label_1601:
! THEN...
	mov	1391,r13		! source line 1391
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1602:
! END IF...
_Label_1600:
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
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
	mov	1394,r13		! source line 1394
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
	mov	1397,r13		! source line 1397
	mov	"\0\0WH",r10
_Label_1603:
!	jmp	_Label_1604
_Label_1604:
	mov	1397,r13		! source line 1397
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1607		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1607
!	jmp	_Label_1606
_Label_1606:
! THEN...
	mov	1399,r13		! source line 1399
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1608 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1608  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1400,r13		! source line 1400
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1607:
! IF STATEMENT...
	mov	1402,r13		! source line 1402
	mov	"\0\0IF",r10
	mov	1402,r13		! source line 1402
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1612) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1611  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1611 then goto _Label_1610 else goto _Label_1609
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1609
	jmp	_Label_1610
_Label_1609:
! THEN...
	mov	1403,r13		! source line 1403
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1613 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1613  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1403,r13		! source line 1403
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1610:
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
	mov	1406,r13		! source line 1406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1615) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1614  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1614 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0WH",r10
_Label_1616:
!   if offset >= 8192 then goto _Label_1618		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1618
!	jmp	_Label_1617
_Label_1617:
	mov	1408,r13		! source line 1408
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1619 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1619  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1412,r13		! source line 1412
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1621		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1621
!	jmp	_Label_1620
_Label_1620:
! THEN...
	mov	1417,r13		! source line 1417
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1621:
! END WHILE...
	jmp	_Label_1616
_Label_1618:
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1603
_Label_1605:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1622
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1623
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1624
	.word	12
	.word	4
	.word	_Label_1625
	.word	16
	.word	4
	.word	_Label_1626
	.word	20
	.word	4
	.word	_Label_1627
	.word	-9
	.word	1
	.word	_Label_1628
	.word	-16
	.word	4
	.word	_Label_1629
	.word	-20
	.word	4
	.word	_Label_1630
	.word	-24
	.word	4
	.word	_Label_1631
	.word	-28
	.word	4
	.word	_Label_1632
	.word	-10
	.word	1
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
	.word	0
_Label_1622:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1623:
	.ascii	"Pself\0"
	.align
_Label_1624:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1626:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1627:
	.byte	'C'
	.ascii	"_temp_1619\0"
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
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1632:
	.byte	'C'
	.ascii	"_temp_1611\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1634:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1635:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1636:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1637:
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
_Label_1797:
	push	r0
	sub	r1,1,r1
	bne	_Label_1797
	mov	1427,r13		! source line 1427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1638
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1638
	jmp	_Label_1639
_Label_1638:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1640
_Label_1639:
! ELSE...
	mov	1440,r13		! source line 1440
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1642		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1642
!	jmp	_Label_1641
_Label_1641:
! THEN...
	mov	1441,r13		! source line 1441
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1642:
! END IF...
_Label_1640:
! ASSIGNMENT STATEMENT...
	mov	1443,r13		! source line 1443
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
	mov	1444,r13		! source line 1444
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
	mov	1445,r13		! source line 1445
	mov	"\0\0WH",r10
_Label_1643:
!	jmp	_Label_1644
_Label_1644:
	mov	1445,r13		! source line 1445
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1649		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1649
	jmp	_Label_1646
_Label_1649:
	mov	1447,r13		! source line 1447
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1651) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1650  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1650 then goto _Label_1648 else goto _Label_1646
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1646
	jmp	_Label_1648
_Label_1648:
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1653) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1652  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1652 then goto _Label_1647 else goto _Label_1646
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1646
	jmp	_Label_1647
_Label_1646:
! THEN...
	mov	1449,r13		! source line 1449
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1647:
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
	mov	1451,r13		! source line 1451
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1655) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1654  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1654 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0WH",r10
_Label_1656:
!   if offset >= 8192 then goto _Label_1658		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1658
!	jmp	_Label_1657
_Label_1657:
	mov	1452,r13		! source line 1452
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1659 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1659  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1661		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1661
!	jmp	_Label_1660
_Label_1660:
! THEN...
	mov	1459,r13		! source line 1459
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1661:
! END WHILE...
	jmp	_Label_1656
_Label_1658:
! ASSIGNMENT STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1643
_Label_1645:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1662
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1663
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1664
	.word	12
	.word	4
	.word	_Label_1665
	.word	16
	.word	4
	.word	_Label_1666
	.word	20
	.word	4
	.word	_Label_1667
	.word	-9
	.word	1
	.word	_Label_1668
	.word	-16
	.word	4
	.word	_Label_1669
	.word	-20
	.word	4
	.word	_Label_1670
	.word	-24
	.word	4
	.word	_Label_1671
	.word	-10
	.word	1
	.word	_Label_1672
	.word	-28
	.word	4
	.word	_Label_1673
	.word	-11
	.word	1
	.word	_Label_1674
	.word	-32
	.word	4
	.word	_Label_1675
	.word	-36
	.word	4
	.word	_Label_1676
	.word	-40
	.word	4
	.word	_Label_1677
	.word	-44
	.word	4
	.word	0
_Label_1662:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1663:
	.ascii	"Pself\0"
	.align
_Label_1664:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1665:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1667:
	.byte	'C'
	.ascii	"_temp_1659\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1671:
	.byte	'C'
	.ascii	"_temp_1652\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1673:
	.byte	'C'
	.ascii	"_temp_1650\0"
	.align
_Label_1674:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1675:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1676:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1677:
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
_Label_1798:
	push	r0
	sub	r1,1,r1
	bne	_Label_1798
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0IF",r10
	mov	1493,r13		! source line 1493
	mov	"\0\0SE",r10
!   _temp_1681 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1682) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1681  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1680  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1680 >= 4 then goto _Label_1679		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1679
!	jmp	_Label_1678
_Label_1678:
! THEN...
	mov	1496,r13		! source line 1496
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1679:
! IF STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1684		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1684
!	jmp	_Label_1683
_Label_1683:
! THEN...
	mov	1501,r13		! source line 1501
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1684:
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
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
	mov	1506,r13		! source line 1506
	mov	"\0\0RE",r10
	mov	1506,r13		! source line 1506
	mov	"\0\0SE",r10
!   _temp_1687 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1686 = _temp_1687 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1688 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1689) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1686  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1688  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1685  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1685  (sizeInBytes=4)
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
	.word	_Label_1690
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1692
	.word	12
	.word	4
	.word	_Label_1693
	.word	16
	.word	4
	.word	_Label_1694
	.word	20
	.word	4
	.word	_Label_1695
	.word	-12
	.word	4
	.word	_Label_1696
	.word	-16
	.word	4
	.word	_Label_1697
	.word	-20
	.word	4
	.word	_Label_1698
	.word	-24
	.word	4
	.word	_Label_1699
	.word	-28
	.word	4
	.word	_Label_1700
	.word	-32
	.word	4
	.word	_Label_1701
	.word	-36
	.word	4
	.word	_Label_1702
	.word	-40
	.word	4
	.word	_Label_1703
	.word	-44
	.word	4
	.word	0
_Label_1690:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1691:
	.ascii	"Pself\0"
	.align
_Label_1692:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1693:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1694:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1703:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
