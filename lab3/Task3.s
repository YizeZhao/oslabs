! Name of package being compiled: Main
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
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_GamingParlor
	.export	_Method_P_Main_GamingParlor_1
	.export	_Method_P_Main_GamingParlor_2
	.export	_Method_P_Main_GamingParlor_3
	.export	_Method_P_Main_GamingParlor_4
	.export	_Method_P_Main_GamingParlor_5
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
	.export	_P_Main_group_names
	.export	_P_Main_dice_per_group
_P_Main_group_names:
! Static array
	.word	8		! number of elements
	.byte	65			! 'A'
	.byte	66			! 'B'
	.byte	67			! 'C'
	.byte	68			! 'D'
	.byte	69			! 'E'
	.byte	70			! 'F'
	.byte	71			! 'G'
	.byte	72			! 'H'
	.align
_P_Main_dice_per_group:
! Static array
	.word	8		! number of elements
	.word	0x00000004		! decimal value = 4
	.word	0x00000004		! decimal value = 4
	.word	0x00000005		! decimal value = 5
	.word	0x00000005		! decimal value = 5
	.word	0x00000002		! decimal value = 2
	.word	0x00000002		! decimal value = 2
	.word	0x00000001		! decimal value = 1
	.word	0x00000001		! decimal value = 1
	.align
_Global_GP:
! Static object
	.word	_P_Main_GamingParlor
	.word	0
_Global_game_groups:
	.skip	32740
_Global_enough_dice:
	.skip	16
_Global_mutexlock:
	.skip	20
_Global_i:
	.skip	4
_Global_name_ptr:
	.skip	4
_Global_temp_name:
	.skip	8
	.align
! String constants
_StringConst_6:
	.word	57			! length
	.ascii	"------------------------------Number of dice now avail = "
	.align
_StringConst_5:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_4:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_3:
	.word	22			! length
	.ascii	"releases and adds back"
	.align
_StringConst_2:
	.word	13			! length
	.ascii	"proceeds with"
	.align
_StringConst_1:
	.word	8			! length
	.ascii	"requests"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x2cd72276,r3		! .  hashVal = 752296566
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_9		! .
	ret				! .
_Label_9:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Task3.c\0"
_packageName:
	.ascii	"Main\0"
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
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0x2cd72276,r4		! myHashVal = 752296566
	cmp	r3,r4
	be	_Label_10
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
_Label_10:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_11
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_11
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_11
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_11
_Label_11:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CA",r10
	call	_function_8_gamingparlor
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_12
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_12:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION gamingparlor  ===============
! 
_function_8_gamingparlor:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_8_gamingparlor,r1
	push	r1
	mov	9237,r1
_Label_211:
	push	r0
	sub	r1,1,r1
	bne	_Label_211
	mov	30,r13		! source line 30
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0SE",r10
!   _temp_13 = &_Global_GP
	set	_Global_GP,r1
	set	-36944,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-36944,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   _temp_14 = &_Global_game_groups
	set	_Global_game_groups,r1
	set	-36940,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_16 = &_temp_15
	set	-36936,r1
	add	r14,r1,r1
	store	r1,[r14+-4196]
!   _temp_16 = _temp_16 + 4
	load	[r14+-4196],r1
	add	r1,4,r1
	store	r1,[r14+-4196]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_18 = zeros  (sizeInBytes=4092)
	add	r14,-4188,r4
	mov	1023,r3
_Label_212:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_212
!   _temp_18 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4188]
	mov	8,r1
	store	r1,[r14+-4192]
_Label_20:
!   Data Move: *_temp_16 = _temp_18  (sizeInBytes=4092)
	add	r14,-4188,r5
	load	[r14+-4196],r4
	mov	1023,r3
_Label_213:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_213
!   _temp_16 = _temp_16 + 4092
	load	[r14+-4196],r1
	add	r1,4092,r1
	store	r1,[r14+-4196]
!   _temp_17 = _temp_17 + -1
	load	[r14+-4192],r1
	add	r1,-1,r1
	store	r1,[r14+-4192]
!   if intNotZero (_temp_17) then goto _Label_20
	load	[r14+-4192],r1
	cmp	r1,r0
	bne	_Label_20
!   Initialize the array size...
	mov	8,r1
	set	-36936,r2
	store	r1,[r14+r2]
!   _temp_21 = &_temp_15
	set	-36936,r1
	add	r14,r1,r1
	store	r1,[r14+-92]
!   make sure array has size 8
	set	-36940,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,0
	be	_Label_214
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_214:
!   make sure array has size 8
	load	[r14+-92],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_14 = *_temp_21  (sizeInBytes=32740)
	load	[r14+-92],r5
	set	-36940,r4
	load	[r14+r4],r4
	mov	8185,r3
_Label_215:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_215
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_mutexlock = zeros  (sizeInBytes=20)
	set	_Global_mutexlock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_mutexlock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_mutexlock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_23 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-84]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_enough_dice = zeros  (sizeInBytes=16)
	set	_Global_enough_dice,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_enough_dice = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	set	_Global_enough_dice,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0SE",r10
!   _temp_25 = &_Global_enough_dice
	set	_Global_enough_dice,r1
	store	r1,[r14+-76]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   _temp_26 = &_Global_temp_name
	set	_Global_temp_name,r1
	store	r1,[r14+-72]
!   NEW ARRAY Constructor...
!   _temp_28 = &_temp_27
	add	r14,-68,r1
	store	r1,[r14+-60]
!   _temp_28 = _temp_28 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	1,r1
	store	r1,[r14+-56]
_Label_30:
!   Data Move: *_temp_28 = 88  (sizeInBytes=1)
	mov	88,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_28 = _temp_28 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_29 = _temp_29 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_29) then goto _Label_30
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_30
!   Initialize the array size...
	mov	1,r1
	store	r1,[r14+-68]
!   _temp_31 = &_temp_27
	add	r14,-68,r1
	store	r1,[r14+-52]
!   make sure array has size 1
	load	[r14+-72],r1
	load	[r1],r1
	set	1, r2
	cmp	r1,0
	be	_Label_216
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_216:
!   make sure array has size 1
	load	[r14+-52],r1
	load	[r1],r1
	set	1, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_26 = *_temp_31  (sizeInBytes=8)
	load	[r14+-52],r1
	fload	[r1],f1
	load	[r14+-72],r2
	fstore	f1,[r2]
! ASSIGNMENT STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0AS",r10
!   _Global_name_ptr = &_Global_temp_name
	set	_Global_temp_name,r1
	set	_Global_name_ptr,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0AS",r10
!   _Global_i = 0		(4 bytes)
	mov	0,r1
	set	_Global_i,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0AS",r10
!   _Global_i = 0		(4 bytes)
	mov	0,r1
	set	_Global_i,r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0WH",r10
_Label_32:
!   if _Global_i >= 8 then goto _Label_34		(int)
	set	_Global_i,r1
	load	[r1],r1
	mov	8,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_34
!	jmp	_Label_33
_Label_33:
	mov	50,r13		! source line 50
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0AS",r10
!   _temp_35 = &_Global_temp_name
	set	_Global_temp_name,r1
	store	r1,[r14+-48]
!   Move address of _temp_35 [0 ] into _temp_36
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_38 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-40]
!   Move address of _temp_38 [_Global_i ] into _temp_39
!     make sure index expr is >= 0
	set	_Global_i,r2
	load	[r2],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_37 = *_temp_39  (sizeInBytes=1)
	load	[r14+-36],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_36 = _temp_37  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0SE",r10
!   _temp_40 = &_Global_game_groups
	set	_Global_game_groups,r1
	store	r1,[r14+-32]
!   Move address of _temp_40 [_Global_i ] into _temp_41
!     make sure index expr is >= 0
	set	_Global_i,r2
	load	[r2],r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Prepare Argument: offset=12  value=_Global_name_ptr  sizeInBytes=4
	set	_Global_name_ptr,r1
	load	[r1],r1
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
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_42 = _function_7_game
	set	_function_7_game,r1
	store	r1,[r14+-24]
!   _temp_43 = &_Global_game_groups
	set	_Global_game_groups,r1
	store	r1,[r14+-20]
!   Move address of _temp_43 [_Global_i ] into _temp_44
!     make sure index expr is >= 0
	set	_Global_i,r2
	load	[r2],r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_42  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_Global_i  sizeInBytes=4
	set	_Global_i,r1
	load	[r1],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0AS",r10
!   _Global_i = _Global_i + 1		(int)
	set	_Global_i,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_i,r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_32
_Label_34:
! RETURN STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0RE",r10
	set	36952,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_8_gamingparlor:
	.word	_sourceFileName
	.word	_Label_45
	.word	0		! total size of parameters
	.word	36948		! frame size = 36948
	.word	_Label_46
	.word	-16
	.word	4
	.word	_Label_47
	.word	-20
	.word	4
	.word	_Label_48
	.word	-24
	.word	4
	.word	_Label_49
	.word	-28
	.word	4
	.word	_Label_50
	.word	-32
	.word	4
	.word	_Label_51
	.word	-36
	.word	4
	.word	_Label_52
	.word	-40
	.word	4
	.word	_Label_53
	.word	-9
	.word	1
	.word	_Label_54
	.word	-44
	.word	4
	.word	_Label_55
	.word	-48
	.word	4
	.word	_Label_56
	.word	-52
	.word	4
	.word	_Label_57
	.word	-56
	.word	4
	.word	_Label_58
	.word	-60
	.word	4
	.word	_Label_59
	.word	-68
	.word	8
	.word	_Label_60
	.word	-72
	.word	4
	.word	_Label_61
	.word	-76
	.word	4
	.word	_Label_62
	.word	-80
	.word	4
	.word	_Label_63
	.word	-84
	.word	4
	.word	_Label_64
	.word	-88
	.word	4
	.word	_Label_65
	.word	-92
	.word	4
	.word	_Label_66
	.word	-96
	.word	4
	.word	_Label_67
	.word	-4188
	.word	4092
	.word	_Label_68
	.word	-4192
	.word	4
	.word	_Label_69
	.word	-4196
	.word	4
	.word	_Label_70
	.word	-36936
	.word	32740
	.word	_Label_71
	.word	-36940
	.word	4
	.word	_Label_72
	.word	-36944
	.word	4
	.word	0
_Label_45:
	.ascii	"gamingparlor\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_51:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_53:
	.byte	'C'
	.ascii	"_temp_37\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_57:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_58:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_60:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_61:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_62:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_64:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_13\0"
	.align
! 
! ===============  FUNCTION game  ===============
! 
_function_7_game:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_7_game,r1
	push	r1
	mov	17,r1
_Label_217:
	push	r0
	sub	r1,1,r1
	bne	_Label_217
	mov	58,r13		! source line 58
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0AS",r10
!   j = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   j = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
! WHILE STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0WH",r10
_Label_73:
!   if j >= 5 then goto _Label_75		(int)
	load	[r14+-64],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_75
!	jmp	_Label_74
_Label_74:
	mov	62,r13		! source line 62
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0SE",r10
!   _temp_77 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-60]
!   Move address of _temp_77 [group_idx ] into _temp_78
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
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
	store	r2,[r14+-56]
!   Data Move: _temp_76 = *_temp_78  (sizeInBytes=1)
	load	[r14+-56],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_80 = &_P_Main_dice_per_group
	set	_P_Main_dice_per_group,r1
	store	r1,[r14+-48]
!   Move address of _temp_80 [group_idx ] into _temp_81
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   Data Move: _temp_79 = *_temp_81  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_82 = &_Global_GP
	set	_Global_GP,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_76  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_79  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0SE",r10
!   _temp_84 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-36]
!   Move address of _temp_84 [group_idx ] into _temp_85
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_83 = *_temp_85  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_87 = &_P_Main_dice_per_group
	set	_P_Main_dice_per_group,r1
	store	r1,[r14+-24]
!   Move address of _temp_87 [group_idx ] into _temp_88
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_86 = *_temp_88  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_89 = &_Global_GP
	set	_Global_GP,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_83  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_86  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   j = j + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! END WHILE...
	jmp	_Label_73
_Label_75:
! RETURN STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_7_game:
	.word	_sourceFileName
	.word	_Label_90
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_91
	.word	8
	.word	4
	.word	_Label_92
	.word	-16
	.word	4
	.word	_Label_93
	.word	-20
	.word	4
	.word	_Label_94
	.word	-24
	.word	4
	.word	_Label_95
	.word	-28
	.word	4
	.word	_Label_96
	.word	-32
	.word	4
	.word	_Label_97
	.word	-36
	.word	4
	.word	_Label_98
	.word	-9
	.word	1
	.word	_Label_99
	.word	-40
	.word	4
	.word	_Label_100
	.word	-44
	.word	4
	.word	_Label_101
	.word	-48
	.word	4
	.word	_Label_102
	.word	-52
	.word	4
	.word	_Label_103
	.word	-56
	.word	4
	.word	_Label_104
	.word	-60
	.word	4
	.word	_Label_105
	.word	-10
	.word	1
	.word	_Label_106
	.word	-64
	.word	4
	.word	0
_Label_90:
	.ascii	"game\0"
	.align
_Label_91:
	.byte	'I'
	.ascii	"group_idx\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_98:
	.byte	'C'
	.ascii	"_temp_83\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_105:
	.byte	'C'
	.ascii	"_temp_76\0"
	.align
_Label_106:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  CLASS GamingParlor  ===============
! 
! Dispatch Table:
! 
_P_Main_GamingParlor:
	.word	_Label_107
	jmp	_Method_P_Main_GamingParlor_1	! 4:	Init
	jmp	_Method_P_Main_GamingParlor_2	! 8:	Request
	jmp	_Method_P_Main_GamingParlor_3	! 12:	Return
	jmp	_Method_P_Main_GamingParlor_4	! 16:	PrintExample
	jmp	_Method_P_Main_GamingParlor_5	! 20:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_107:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_108
	.word	_sourceFileName
	.word	16		! line number
	.word	8		! size of instances, in bytes
	.word	_P_Main_GamingParlor
	.word	_P_System_Object
	.word	0
_Label_108:
	.ascii	"GamingParlor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_GamingParlor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_1,r1
	push	r1
	mov	72,r13		! source line 72
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   dice_available = 8		(4 bytes)
	mov	8,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_1:
	.word	_sourceFileName
	.word	_Label_109
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_110
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_109:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_110:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD Request  ===============
! 
_Method_P_Main_GamingParlor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_2,r1
	push	r1
	mov	12,r1
_Label_218:
	push	r0
	sub	r1,1,r1
	bne	_Label_218
	mov	76,r13		! source line 76
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0SE",r10
!   _temp_111 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0SE",r10
!   _temp_112 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_113) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_112  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! WHILE STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0WH",r10
_Label_114:
!   if dice_available >= nr_of_dice then goto _Label_116		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_116
!	jmp	_Label_115
_Label_115:
	mov	79,r13		! source line 79
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0SE",r10
!   _temp_117 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-28]
!   _temp_118 = &_Global_enough_dice
	set	_Global_enough_dice,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_117  sizeInBytes=4
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
	jmp	_Label_114
_Label_116:
! ASSIGNMENT STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0AS",r10
!   dice_available = dice_available - nr_of_dice		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_119 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-20]
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_120) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_119  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_121 = &_Global_mutexlock
	set	_Global_mutexlock,r1
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
	mov	85,r13		! source line 85
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_2:
	.word	_sourceFileName
	.word	_Label_122
	.word	12		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_123
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_124
	.word	12
	.word	1
	.word	_Label_125
	.word	16
	.word	4
	.word	_Label_126
	.word	-12
	.word	4
	.word	_Label_127
	.word	-16
	.word	4
	.word	_Label_128
	.word	-20
	.word	4
	.word	_Label_129
	.word	-24
	.word	4
	.word	_Label_130
	.word	-28
	.word	4
	.word	_Label_131
	.word	-32
	.word	4
	.word	_Label_132
	.word	-36
	.word	4
	.word	_Label_133
	.word	-40
	.word	4
	.word	0
_Label_122:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Request\0"
	.align
_Label_123:
	.ascii	"Pself\0"
	.align
_Label_124:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_125:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
! 
! ===============  METHOD Return  ===============
! 
_Method_P_Main_GamingParlor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_3,r1
	push	r1
	mov	10,r1
_Label_219:
	push	r0
	sub	r1,1,r1
	bne	_Label_219
	mov	88,r13		! source line 88
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_134 = &_Global_mutexlock
	set	_Global_mutexlock,r1
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
	mov	90,r13		! source line 90
	mov	"\0\0AS",r10
!   dice_available = dice_available + nr_of_dice		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_135 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_136) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_135  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_137 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-20]
!   _temp_138 = &_Global_enough_dice
	set	_Global_enough_dice,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_137  sizeInBytes=4
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
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_139 = &_Global_mutexlock
	set	_Global_mutexlock,r1
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
	mov	93,r13		! source line 93
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_3:
	.word	_sourceFileName
	.word	_Label_140
	.word	12		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_142
	.word	12
	.word	1
	.word	_Label_143
	.word	16
	.word	4
	.word	_Label_144
	.word	-12
	.word	4
	.word	_Label_145
	.word	-16
	.word	4
	.word	_Label_146
	.word	-20
	.word	4
	.word	_Label_147
	.word	-24
	.word	4
	.word	_Label_148
	.word	-28
	.word	4
	.word	_Label_149
	.word	-32
	.word	4
	.word	0
_Label_140:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_141:
	.ascii	"Pself\0"
	.align
_Label_142:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_143:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
! 
! ===============  METHOD PrintExample  ===============
! 
_Method_P_Main_GamingParlor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_4,r1
	push	r1
	mov	23,r1
_Label_220:
	push	r0
	sub	r1,1,r1
	bne	_Label_220
	mov	96,r13		! source line 96
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0SE",r10
!   _temp_151 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-88]
!   Move address of _temp_151 [0 ] into _temp_152
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Data Move: _temp_150 = *_temp_152  (sizeInBytes=1)
	load	[r14+-84],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_153) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_150  sizeInBytes=1
	loadb	[r14+-14],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0SE",r10
!   _temp_155 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-76]
!   Move address of _temp_155 [1 ] into _temp_156
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: _temp_154 = *_temp_156  (sizeInBytes=1)
	load	[r14+-72],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_157) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_154  sizeInBytes=1
	loadb	[r14+-13],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_159 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-64]
!   Move address of _temp_159 [1 ] into _temp_160
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: _temp_158 = *_temp_160  (sizeInBytes=1)
	load	[r14+-60],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_161) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_158  sizeInBytes=1
	loadb	[r14+-12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_163 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-52]
!   Move address of _temp_163 [0 ] into _temp_164
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_162 = *_temp_164  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_165) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_162  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_167 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-40]
!   Move address of _temp_167 [2 ] into _temp_168
!     make sure index expr is >= 0
	mov	2,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_166 = *_temp_168  (sizeInBytes=1)
	load	[r14+-36],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_169) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_166  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_171 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-28]
!   Move address of _temp_171 [2 ] into _temp_172
!     make sure index expr is >= 0
	mov	2,r2
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
!   Data Move: _temp_170 = *_temp_172  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_173) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_170  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_4:
	.word	_sourceFileName
	.word	_Label_174
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_175
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_176
	.word	-20
	.word	4
	.word	_Label_177
	.word	-24
	.word	4
	.word	_Label_178
	.word	-28
	.word	4
	.word	_Label_179
	.word	-9
	.word	1
	.word	_Label_180
	.word	-32
	.word	4
	.word	_Label_181
	.word	-36
	.word	4
	.word	_Label_182
	.word	-40
	.word	4
	.word	_Label_183
	.word	-10
	.word	1
	.word	_Label_184
	.word	-44
	.word	4
	.word	_Label_185
	.word	-48
	.word	4
	.word	_Label_186
	.word	-52
	.word	4
	.word	_Label_187
	.word	-11
	.word	1
	.word	_Label_188
	.word	-56
	.word	4
	.word	_Label_189
	.word	-60
	.word	4
	.word	_Label_190
	.word	-64
	.word	4
	.word	_Label_191
	.word	-12
	.word	1
	.word	_Label_192
	.word	-68
	.word	4
	.word	_Label_193
	.word	-72
	.word	4
	.word	_Label_194
	.word	-76
	.word	4
	.word	_Label_195
	.word	-13
	.word	1
	.word	_Label_196
	.word	-80
	.word	4
	.word	_Label_197
	.word	-84
	.word	4
	.word	_Label_198
	.word	-88
	.word	4
	.word	_Label_199
	.word	-14
	.word	1
	.word	0
_Label_174:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"PrintExample\0"
	.align
_Label_175:
	.ascii	"Pself\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_179:
	.byte	'C'
	.ascii	"_temp_170\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_183:
	.byte	'C'
	.ascii	"_temp_166\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_187:
	.byte	'C'
	.ascii	"_temp_162\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_191:
	.byte	'C'
	.ascii	"_temp_158\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_195:
	.byte	'C'
	.ascii	"_temp_154\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_199:
	.byte	'C'
	.ascii	"_temp_150\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Main_GamingParlor_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_5,r1
	push	r1
	mov	4,r1
_Label_221:
	push	r0
	sub	r1,1,r1
	bne	_Label_221
	mov	116,r13		! source line 116
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_200 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_200  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	123,r13		! source line 123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_201 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_201  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nr_of_dice  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_202 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_202  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=dice_available  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_5:
	.word	_sourceFileName
	.word	_Label_203
	.word	16		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_204
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_205
	.word	12
	.word	1
	.word	_Label_206
	.word	16
	.word	4
	.word	_Label_207
	.word	20
	.word	4
	.word	_Label_208
	.word	-12
	.word	4
	.word	_Label_209
	.word	-16
	.word	4
	.word	_Label_210
	.word	-20
	.word	4
	.word	0
_Label_203:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_204:
	.ascii	"Pself\0"
	.align
_Label_205:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_206:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_207:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
