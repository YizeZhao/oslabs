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
_StringConst_8:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_7:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_6:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_5:
	.word	68			! length
	.ascii	"Logic error in unlock: the thread requested for unlock is not locked"
	.align
_StringConst_4:
	.word	68			! length
	.ascii	"Logic error in lock: the thread requested for lock is already locked"
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
	set	0xad7e9145,r4		! myHashVal = -1384214203
	cmp	r3,r4
	be	_Label_9
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
_Label_9:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_10
_Label_10:
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
	.word	_Label_11
	jmp	_Method_P_Synch_Semaphore_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_11:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_12
	.word	_sourceFileName
	.word	5		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Semaphore
	.word	_P_System_Object
	.word	0
_Label_12:
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
_Label_161:
	push	r0
	sub	r1,1,r1
	bne	_Label_161
	mov	34,r13		! source line 34
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_14		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_14
!	jmp	_Label_13
_Label_13:
! THEN...
	mov	36,r13		! source line 36
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_15 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_15  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	36,r13		! source line 36
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_14:
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
	.word	_Label_17
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_18
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_19
	.word	12
	.word	4
	.word	_Label_20
	.word	-12
	.word	4
	.word	_Label_21
	.word	-16
	.word	4
	.word	0
_Label_17:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_18:
	.ascii	"Pself\0"
	.align
_Label_19:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_20:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_21:
	.byte	'?'
	.ascii	"_temp_15\0"
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
_Label_162:
	push	r0
	sub	r1,1,r1
	bne	_Label_162
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
!   if count != 2147483647 then goto _Label_23		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_23
!	jmp	_Label_22
_Label_22:
! THEN...
	mov	50,r13		! source line 50
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_24 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_24  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	50,r13		! source line 50
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_23:
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
!   if count > 0 then goto _Label_26		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_26
!	jmp	_Label_25
_Label_25:
! THEN...
	mov	54,r13		! source line 54
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   _temp_27 = &waitingThreads
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
!   _temp_28 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_28 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_29 = &_P_Thread_readyList
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
_Label_26:
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
	.word	_Label_30
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_31
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_32
	.word	-12
	.word	4
	.word	_Label_33
	.word	-16
	.word	4
	.word	_Label_34
	.word	-20
	.word	4
	.word	_Label_35
	.word	-24
	.word	4
	.word	_Label_36
	.word	-28
	.word	4
	.word	_Label_37
	.word	-32
	.word	4
	.word	0
_Label_30:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_31:
	.ascii	"Pself\0"
	.align
_Label_32:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_36:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_37:
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
_Label_163:
	push	r0
	sub	r1,1,r1
	bne	_Label_163
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
!   if count != -2147483648 then goto _Label_39		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_39
!	jmp	_Label_38
_Label_38:
! THEN...
	mov	68,r13		! source line 68
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_40 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_40  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_39:
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
!   if count >= 0 then goto _Label_42		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_42
!	jmp	_Label_41
_Label_41:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_43 = &waitingThreads
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
_Label_42:
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
	.word	_Label_44
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_45
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_46
	.word	-12
	.word	4
	.word	_Label_47
	.word	-16
	.word	4
	.word	_Label_48
	.word	-20
	.word	4
	.word	0
_Label_44:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_45:
	.ascii	"Pself\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_48:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex:
	.word	_Label_49
	jmp	_Method_P_Synch_Mutex_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex_2	! 8:	Lock
	jmp	_Method_P_Synch_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_49:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_50
	.word	_sourceFileName
	.word	16		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Mutex
	.word	_P_System_Object
	.word	0
_Label_50:
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
_Label_164:
	push	r0
	sub	r1,1,r1
	bne	_Label_164
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
	mov	101,r13		! source line 101
	mov	"\0\0AS",r10
!   heldby = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	101,r13		! source line 101
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
	.word	_Label_52
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_53
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_54
	.word	-12
	.word	4
	.word	0
_Label_52:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_53:
	.ascii	"Pself\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_51\0"
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
	mov	8,r1
_Label_165:
	push	r0
	sub	r1,1,r1
	bne	_Label_165
	mov	106,r13		! source line 106
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0IF",r10
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_58) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_57  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_59 = _temp_57 XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_59 then goto _Label_55 else goto _Label_56
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_56
	jmp	_Label_55
_Label_55:
! THEN...
	mov	118,r13		! source line 118
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0IF",r10
!   if intIsZero (heldby) then goto _Label_61
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_Label_61
!	jmp	_Label_60
_Label_60:
! THEN...
	mov	119,r13		! source line 119
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0SE",r10
!   _temp_62 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
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
	mov	120,r13		! source line 120
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
	mov	121,r13		! source line 121
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_63) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_64
_Label_61:
! ELSE...
	mov	124,r13		! source line 124
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   heldby = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_64:
	jmp	_Label_65
_Label_56:
! ELSE...
	mov	127,r13		! source line 127
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_66 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_66  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_65:
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_2:
	.word	_sourceFileName
	.word	_Label_67
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_68
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_69
	.word	-16
	.word	4
	.word	_Label_70
	.word	-20
	.word	4
	.word	_Label_71
	.word	-24
	.word	4
	.word	_Label_72
	.word	-9
	.word	1
	.word	_Label_73
	.word	-28
	.word	4
	.word	_Label_74
	.word	-10
	.word	1
	.word	_Label_75
	.word	-32
	.word	4
	.word	0
_Label_67:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_68:
	.ascii	"Pself\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_72:
	.byte	'C'
	.ascii	"_temp_59\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_74:
	.byte	'C'
	.ascii	"_temp_57\0"
	.align
_Label_75:
	.byte	'I'
	.ascii	"oldIntStat\0"
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
	mov	10,r1
_Label_166:
	push	r0
	sub	r1,1,r1
	bne	_Label_166
	mov	135,r13		! source line 135
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0IF",r10
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_79) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_78  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_80 = _temp_78 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_80 then goto _Label_77 else goto _Label_76
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_76
	jmp	_Label_77
_Label_76:
! THEN...
	mov	141,r13		! source line 141
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_81 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_81  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	141,r13		! source line 141
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_77:
! ASSIGNMENT STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
	mov	145,r13		! source line 145
	mov	"\0\0SE",r10
!   _temp_82 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
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
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_84
	load	[r14+-40],r1
	cmp	r1,r0
	be	_Label_84
!	jmp	_Label_83
_Label_83:
! THEN...
	mov	148,r13		! source line 148
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_85 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_85 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_86 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-40],r1
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
_Label_84:
! ASSIGNMENT STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0AS",r10
!   heldby = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_3:
	.word	_sourceFileName
	.word	_Label_87
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_88
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_89
	.word	-16
	.word	4
	.word	_Label_90
	.word	-20
	.word	4
	.word	_Label_91
	.word	-24
	.word	4
	.word	_Label_92
	.word	-28
	.word	4
	.word	_Label_93
	.word	-9
	.word	1
	.word	_Label_94
	.word	-32
	.word	4
	.word	_Label_95
	.word	-10
	.word	1
	.word	_Label_96
	.word	-36
	.word	4
	.word	_Label_97
	.word	-40
	.word	4
	.word	0
_Label_87:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_88:
	.ascii	"Pself\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_93:
	.byte	'C'
	.ascii	"_temp_80\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_95:
	.byte	'C'
	.ascii	"_temp_78\0"
	.align
_Label_96:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_97:
	.byte	'P'
	.ascii	"t\0"
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
	mov	159,r13		! source line 159
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread != heldby then goto _Label_99		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bne	_Label_99
!	jmp	_Label_98
_Label_98:
! THEN...
	mov	162,r13		! source line 162
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_99:
! RETURN STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_4:
	.word	_sourceFileName
	.word	_Label_100
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_101
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_100:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_101:
	.ascii	"Pself\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Synch_Condition:
	.word	_Label_102
	jmp	_Method_P_Synch_Condition_1	! 4:	Init
	jmp	_Method_P_Synch_Condition_2	! 8:	Wait
	jmp	_Method_P_Synch_Condition_3	! 12:	Signal
	jmp	_Method_P_Synch_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_102:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_103
	.word	_sourceFileName
	.word	29		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Synch_Condition
	.word	_P_System_Object
	.word	0
_Label_103:
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
_Label_167:
	push	r0
	sub	r1,1,r1
	bne	_Label_167
	mov	204,r13		! source line 204
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	205,r13		! source line 205
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
	mov	205,r13		! source line 205
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
	.word	_Label_105
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_107
	.word	-12
	.word	4
	.word	0
_Label_105:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_106:
	.ascii	"Pself\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_104\0"
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
_Label_168:
	push	r0
	sub	r1,1,r1
	bne	_Label_168
	mov	210,r13		! source line 210
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0IF",r10
	mov	213,r13		! source line 213
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
!   Retrieve Result: targetName=_temp_110  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_110 then goto _Label_109 else goto _Label_108
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_108
	jmp	_Label_109
_Label_108:
! THEN...
	mov	214,r13		! source line 214
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_111 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_111  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_109:
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	216,r13		! source line 216
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	217,r13		! source line 217
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
	mov	218,r13		! source line 218
	mov	"\0\0SE",r10
!   _temp_112 = &waitingThreads
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
	mov	219,r13		! source line 219
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
	mov	220,r13		! source line 220
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
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	221,r13		! source line 221
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
	.word	_Label_113
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.word	-9
	.word	1
	.word	_Label_119
	.word	-24
	.word	4
	.word	0
_Label_113:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
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
	.byte	'C'
	.ascii	"_temp_110\0"
	.align
_Label_119:
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
_Label_169:
	push	r0
	sub	r1,1,r1
	bne	_Label_169
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
!   Retrieve Result: targetName=_temp_122  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_122 then goto _Label_121 else goto _Label_120
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_120
	jmp	_Label_121
_Label_120:
! THEN...
	mov	231,r13		! source line 231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_123 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_123  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_121:
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
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
	mov	234,r13		! source line 234
	mov	"\0\0SE",r10
!   _temp_124 = &waitingThreads
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
	mov	235,r13		! source line 235
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_126		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_126
!	jmp	_Label_125
_Label_125:
! THEN...
	mov	236,r13		! source line 236
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_127 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_127 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0SE",r10
!   _temp_128 = &_P_Thread_readyList
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
_Label_126:
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	239,r13		! source line 239
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
	.word	_Label_129
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_130
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_131
	.word	12
	.word	4
	.word	_Label_132
	.word	-16
	.word	4
	.word	_Label_133
	.word	-20
	.word	4
	.word	_Label_134
	.word	-24
	.word	4
	.word	_Label_135
	.word	-28
	.word	4
	.word	_Label_136
	.word	-9
	.word	1
	.word	_Label_137
	.word	-32
	.word	4
	.word	_Label_138
	.word	-36
	.word	4
	.word	0
_Label_129:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_130:
	.ascii	"Pself\0"
	.align
_Label_131:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_136:
	.byte	'C'
	.ascii	"_temp_122\0"
	.align
_Label_137:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_138:
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
_Label_170:
	push	r0
	sub	r1,1,r1
	bne	_Label_170
	mov	244,r13		! source line 244
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0IF",r10
	mov	248,r13		! source line 248
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
!   Retrieve Result: targetName=_temp_141  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_141 then goto _Label_140 else goto _Label_139
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_139
	jmp	_Label_140
_Label_139:
! THEN...
	mov	249,r13		! source line 249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_142 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_142  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	249,r13		! source line 249
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_140:
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0WH",r10
_Label_143:
!	jmp	_Label_144
_Label_144:
	mov	252,r13		! source line 252
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_146 = &waitingThreads
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
	mov	254,r13		! source line 254
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_147
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_147
	jmp	_Label_148
_Label_147:
! THEN...
	mov	255,r13		! source line 255
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0BR",r10
	jmp	_Label_145
! END IF...
_Label_148:
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_149 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_149 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   _temp_150 = &_P_Thread_readyList
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
	jmp	_Label_143
_Label_145:
! ASSIGNMENT STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	260,r13		! source line 260
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	260,r13		! source line 260
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
	.word	_Label_151
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_153
	.word	12
	.word	4
	.word	_Label_154
	.word	-16
	.word	4
	.word	_Label_155
	.word	-20
	.word	4
	.word	_Label_156
	.word	-24
	.word	4
	.word	_Label_157
	.word	-28
	.word	4
	.word	_Label_158
	.word	-9
	.word	1
	.word	_Label_159
	.word	-32
	.word	4
	.word	_Label_160
	.word	-36
	.word	4
	.word	0
_Label_151:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_152:
	.ascii	"Pself\0"
	.align
_Label_153:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_158:
	.byte	'C'
	.ascii	"_temp_141\0"
	.align
_Label_159:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_160:
	.byte	'P'
	.ascii	"t\0"
	.align
