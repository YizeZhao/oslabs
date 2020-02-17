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
	.export	_P_Main_SleepingBarber
	.export	_Method_P_Main_SleepingBarber_1
	.export	_Method_P_Main_SleepingBarber_2
	.export	_Method_P_Main_SleepingBarber_3
	.export	_Method_P_Main_SleepingBarber_4
	.export	_Method_P_Main_SleepingBarber_5
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
_Global_sb:
	.skip	16
_Global_bStatus:
	.word	0x00000002		! decimal value = 2
_Global_cStatus:
! Static array
	.word	10		! number of elements
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.align
_Global_waiting_customer:
	.skip	4
_Global_waiting_customer_sem:
	.skip	20
_Global_barber_ready_sem:
	.skip	20
_Global_customer_status_sem:
	.skip	20
_Global_barber_done_sem:
	.skip	20
_Global_mutexlock:
	.skip	20
	.align
! String constants
_StringConst_15:
	.word	7			! length
	.ascii	"      \t"
	.align
_StringConst_14:
	.word	4			! length
	.ascii	"End\n"
	.align
_StringConst_13:
	.word	6			! length
	.ascii	"Start\n"
	.align
_StringConst_12:
	.word	3			! length
	.ascii	"C10"
	.align
_StringConst_11:
	.word	2			! length
	.ascii	"C9"
	.align
_StringConst_10:
	.word	2			! length
	.ascii	"C8"
	.align
_StringConst_9:
	.word	2			! length
	.ascii	"C7"
	.align
_StringConst_8:
	.word	2			! length
	.ascii	"C6"
	.align
_StringConst_7:
	.word	2			! length
	.ascii	"C5"
	.align
_StringConst_6:
	.word	2			! length
	.ascii	"C4"
	.align
_StringConst_5:
	.word	2			! length
	.ascii	"C3"
	.align
_StringConst_4:
	.word	2			! length
	.ascii	"C2"
	.align
_StringConst_3:
	.word	2			! length
	.ascii	"C1"
	.align
_StringConst_2:
	.word	6			! length
	.ascii	"Barber"
	.align
_StringConst_1:
	.word	7			! length
	.ascii	"Barber\t"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x9ec8daed,r3		! .  hashVal = -1631003923
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_19		! .
	ret				! .
_Label_19:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Task2.c\0"
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
	set	0x9ec8daed,r4		! myHashVal = -1631003923
	cmp	r3,r4
	be	_Label_20
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
_Label_20:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_21
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_21
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_21
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_21
_Label_21:
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
	call	_function_18_sleepingbarber
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
	.word	_Label_22
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_22:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION sleepingbarber  ===============
! 
_function_18_sleepingbarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_18_sleepingbarber,r1
	push	r1
	mov	22602,r1
_Label_612:
	push	r0
	sub	r1,1,r1
	bne	_Label_612
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0AS",r10
!   _temp_23 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	set	-45380,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_25 = &_temp_24
	set	-45376,r1
	add	r14,r1,r1
	store	r1,[r14+-4452]
!   _temp_25 = _temp_25 + 4
	load	[r14+-4452],r1
	add	r1,4,r1
	store	r1,[r14+-4452]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_27 = zeros  (sizeInBytes=4092)
	add	r14,-4444,r4
	mov	1023,r3
_Label_613:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_613
!   _temp_27 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4444]
	mov	10,r1
	store	r1,[r14+-4448]
_Label_29:
!   Data Move: *_temp_25 = _temp_27  (sizeInBytes=4092)
	add	r14,-4444,r5
	load	[r14+-4452],r4
	mov	1023,r3
_Label_614:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_614
!   _temp_25 = _temp_25 + 4092
	load	[r14+-4452],r1
	add	r1,4092,r1
	store	r1,[r14+-4452]
!   _temp_26 = _temp_26 + -1
	load	[r14+-4448],r1
	add	r1,-1,r1
	store	r1,[r14+-4448]
!   if intNotZero (_temp_26) then goto _Label_29
	load	[r14+-4448],r1
	cmp	r1,r0
	bne	_Label_29
!   Initialize the array size...
	mov	10,r1
	set	-45376,r2
	store	r1,[r14+r2]
!   _temp_30 = &_temp_24
	set	-45376,r1
	add	r14,r1,r1
	store	r1,[r14+-348]
!   make sure array has size 10
	set	-45380,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_615
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_615:
!   make sure array has size 10
	load	[r14+-348],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_23 = *_temp_30  (sizeInBytes=40924)
	load	[r14+-348],r5
	set	-45380,r4
	load	[r14+r4],r4
	mov	10231,r3
_Label_616:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_616
! ASSIGNMENT STATEMENT...
	mov	61,r13		! source line 61
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
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_32 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-340]
!   Send message Init
	load	[r14+-340],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   _Global_waiting_customer = 0		(4 bytes)
	mov	0,r1
	set	_Global_waiting_customer,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_waiting_customer_sem = zeros  (sizeInBytes=20)
	set	_Global_waiting_customer_sem,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_waiting_customer_sem = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_waiting_customer_sem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   _temp_34 = &_Global_waiting_customer_sem
	set	_Global_waiting_customer_sem,r1
	store	r1,[r14+-332]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-332],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barber_ready_sem = zeros  (sizeInBytes=20)
	set	_Global_barber_ready_sem,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barber_ready_sem = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barber_ready_sem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_36 = &_Global_barber_ready_sem
	set	_Global_barber_ready_sem,r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-324],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barber_done_sem = zeros  (sizeInBytes=20)
	set	_Global_barber_done_sem,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barber_done_sem = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barber_done_sem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_38 = &_Global_barber_done_sem
	set	_Global_barber_done_sem,r1
	store	r1,[r14+-316]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_customer_status_sem = zeros  (sizeInBytes=20)
	set	_Global_customer_status_sem,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_customer_status_sem = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_customer_status_sem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0SE",r10
!   _temp_40 = &_Global_customer_status_sem
	set	_Global_customer_status_sem,r1
	store	r1,[r14+-308]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-308],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_45 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-304]
!   Calculate and save the FOR-LOOP ending value
!   _temp_46 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-300]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_45  (sizeInBytes=4)
	load	[r14+-304],r1
	set	-45384,r2
	store	r1,[r14+r2]
_Label_41:
!   Perform the FOR-LOOP termination test
!   if i > _temp_46 then goto _Label_44		
	set	-45384,r1
	load	[r14+r1],r1
	load	[r14+-300],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_44
_Label_42:
	mov	82,r13		! source line 82
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_43:
!   i = i + 1
	set	-45384,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45384,r2
	store	r1,[r14+r2]
	jmp	_Label_41
! END FOR
_Label_44:
! CALL STATEMENT...
!   _temp_47 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_47  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_52 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-292]
!   Calculate and save the FOR-LOOP ending value
!   _temp_53 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-288]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_52  (sizeInBytes=4)
	load	[r14+-292],r1
	set	-45384,r2
	store	r1,[r14+r2]
_Label_48:
!   Perform the FOR-LOOP termination test
!   if i > _temp_53 then goto _Label_51		
	set	-45384,r1
	load	[r14+r1],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_51
_Label_49:
	mov	86,r13		! source line 86
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_54 = i + 1		(int)
	set	-45384,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
!   Prepare Argument: offset=8  value=_temp_54  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	88,r13		! source line 88
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_50:
!   i = i + 1
	set	-45384,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45384,r2
	store	r1,[r14+r2]
	jmp	_Label_48
! END FOR
_Label_51:
! CALL STATEMENT...
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_sb = zeros  (sizeInBytes=16)
	set	_Global_sb,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_sb = _P_Main_SleepingBarber
	set	_P_Main_SleepingBarber,r1
	set	_Global_sb,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_56 = &_Global_cStatus
	set	_Global_cStatus,r1
	store	r1,[r14+-276]
!   _temp_57 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=12  value=_Global_bStatus  sizeInBytes=4
	set	_Global_bStatus,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_56  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: barber = zeros  (sizeInBytes=4092)
	set	-90400,r4
	add	r14,r4,r4
	mov	1023,r3
_Label_617:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_617
!   barber = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	-90400,r2
	store	r1,[r14+r2]
! SEND STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0SE",r10
!   _temp_59 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-264]
!   _temp_60 = &barber
	set	-90400,r1
	add	r14,r1,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=_temp_59  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0SE",r10
!   _temp_61 = _function_17_Barber
	set	_function_17_Barber,r1
	store	r1,[r14+-256]
!   _temp_62 = &barber
	set	-90400,r1
	add	r14,r1,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=_temp_61  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0SE",r10
!   _temp_63 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-248]
!   _temp_64 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-244]
!   Move address of _temp_64 [0 ] into _temp_65
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   Prepare Argument: offset=12  value=_temp_63  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_66 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-236]
!   _temp_67 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-232]
!   Move address of _temp_67 [0 ] into _temp_68
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-228]
!   Prepare Argument: offset=12  value=_temp_66  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_69 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-224]
!   _temp_70 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-220]
!   Move address of _temp_70 [1 ] into _temp_71
!     make sure index expr is >= 0
	mov	1,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Prepare Argument: offset=12  value=_temp_69  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_72 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-212]
!   _temp_73 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-208]
!   Move address of _temp_73 [1 ] into _temp_74
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
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
	store	r2,[r14+-204]
!   Prepare Argument: offset=12  value=_temp_72  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_75 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-200]
!   _temp_76 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-196]
!   Move address of _temp_76 [2 ] into _temp_77
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
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
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_75  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_78 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-188]
!   _temp_79 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-184]
!   Move address of _temp_79 [2 ] into _temp_80
!     make sure index expr is >= 0
	mov	2,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_78  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_81 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-176]
!   _temp_82 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   Move address of _temp_82 [3 ] into _temp_83
!     make sure index expr is >= 0
	mov	3,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_81  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_84 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-164]
!   _temp_85 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-160]
!   Move address of _temp_85 [3 ] into _temp_86
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
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
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_84  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_87 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-152]
!   _temp_88 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   Move address of _temp_88 [4 ] into _temp_89
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
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
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_87  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
!   _temp_90 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-140]
!   _temp_91 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-136]
!   Move address of _temp_91 [4 ] into _temp_92
!     make sure index expr is >= 0
	mov	4,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_90  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   _temp_93 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-128]
!   _temp_94 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-124]
!   Move address of _temp_94 [5 ] into _temp_95
!     make sure index expr is >= 0
	mov	5,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_93  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   _temp_96 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-116]
!   _temp_97 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-112]
!   Move address of _temp_97 [5 ] into _temp_98
!     make sure index expr is >= 0
	mov	5,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_96  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0SE",r10
!   _temp_99 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-104]
!   _temp_100 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-100]
!   Move address of _temp_100 [6 ] into _temp_101
!     make sure index expr is >= 0
	mov	6,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_99  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0SE",r10
!   _temp_102 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-92]
!   _temp_103 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-88]
!   Move address of _temp_103 [6 ] into _temp_104
!     make sure index expr is >= 0
	mov	6,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_102  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0SE",r10
!   _temp_105 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-80]
!   _temp_106 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   Move address of _temp_106 [7 ] into _temp_107
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_105  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0SE",r10
!   _temp_108 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-68]
!   _temp_109 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   Move address of _temp_109 [7 ] into _temp_110
!     make sure index expr is >= 0
	mov	7,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_108  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0SE",r10
!   _temp_111 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-56]
!   _temp_112 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   Move address of _temp_112 [8 ] into _temp_113
!     make sure index expr is >= 0
	mov	8,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_111  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0SE",r10
!   _temp_114 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-44]
!   _temp_115 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-40]
!   Move address of _temp_115 [8 ] into _temp_116
!     make sure index expr is >= 0
	mov	8,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_114  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0SE",r10
!   _temp_117 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   _temp_118 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-28]
!   Move address of _temp_118 [9 ] into _temp_119
!     make sure index expr is >= 0
	mov	9,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_117  sizeInBytes=4
	load	[r14+-32],r1
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
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_120 = _function_16_Customer
	set	_function_16_Customer,r1
	store	r1,[r14+-20]
!   _temp_121 = &customerList
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   Move address of _temp_121 [9 ] into _temp_122
!     make sure index expr is >= 0
	mov	9,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_120  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0RE",r10
	set	90412,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_18_sleepingbarber:
	.word	_sourceFileName
	.word	_Label_123
	.word	0		! total size of parameters
	.word	90408		! frame size = 90408
	.word	_Label_124
	.word	-12
	.word	4
	.word	_Label_125
	.word	-16
	.word	4
	.word	_Label_126
	.word	-20
	.word	4
	.word	_Label_127
	.word	-24
	.word	4
	.word	_Label_128
	.word	-28
	.word	4
	.word	_Label_129
	.word	-32
	.word	4
	.word	_Label_130
	.word	-36
	.word	4
	.word	_Label_131
	.word	-40
	.word	4
	.word	_Label_132
	.word	-44
	.word	4
	.word	_Label_133
	.word	-48
	.word	4
	.word	_Label_134
	.word	-52
	.word	4
	.word	_Label_135
	.word	-56
	.word	4
	.word	_Label_136
	.word	-60
	.word	4
	.word	_Label_137
	.word	-64
	.word	4
	.word	_Label_138
	.word	-68
	.word	4
	.word	_Label_139
	.word	-72
	.word	4
	.word	_Label_140
	.word	-76
	.word	4
	.word	_Label_141
	.word	-80
	.word	4
	.word	_Label_142
	.word	-84
	.word	4
	.word	_Label_143
	.word	-88
	.word	4
	.word	_Label_144
	.word	-92
	.word	4
	.word	_Label_145
	.word	-96
	.word	4
	.word	_Label_146
	.word	-100
	.word	4
	.word	_Label_147
	.word	-104
	.word	4
	.word	_Label_148
	.word	-108
	.word	4
	.word	_Label_149
	.word	-112
	.word	4
	.word	_Label_150
	.word	-116
	.word	4
	.word	_Label_151
	.word	-120
	.word	4
	.word	_Label_152
	.word	-124
	.word	4
	.word	_Label_153
	.word	-128
	.word	4
	.word	_Label_154
	.word	-132
	.word	4
	.word	_Label_155
	.word	-136
	.word	4
	.word	_Label_156
	.word	-140
	.word	4
	.word	_Label_157
	.word	-144
	.word	4
	.word	_Label_158
	.word	-148
	.word	4
	.word	_Label_159
	.word	-152
	.word	4
	.word	_Label_160
	.word	-156
	.word	4
	.word	_Label_161
	.word	-160
	.word	4
	.word	_Label_162
	.word	-164
	.word	4
	.word	_Label_163
	.word	-168
	.word	4
	.word	_Label_164
	.word	-172
	.word	4
	.word	_Label_165
	.word	-176
	.word	4
	.word	_Label_166
	.word	-180
	.word	4
	.word	_Label_167
	.word	-184
	.word	4
	.word	_Label_168
	.word	-188
	.word	4
	.word	_Label_169
	.word	-192
	.word	4
	.word	_Label_170
	.word	-196
	.word	4
	.word	_Label_171
	.word	-200
	.word	4
	.word	_Label_172
	.word	-204
	.word	4
	.word	_Label_173
	.word	-208
	.word	4
	.word	_Label_174
	.word	-212
	.word	4
	.word	_Label_175
	.word	-216
	.word	4
	.word	_Label_176
	.word	-220
	.word	4
	.word	_Label_177
	.word	-224
	.word	4
	.word	_Label_178
	.word	-228
	.word	4
	.word	_Label_179
	.word	-232
	.word	4
	.word	_Label_180
	.word	-236
	.word	4
	.word	_Label_181
	.word	-240
	.word	4
	.word	_Label_182
	.word	-244
	.word	4
	.word	_Label_183
	.word	-248
	.word	4
	.word	_Label_184
	.word	-252
	.word	4
	.word	_Label_185
	.word	-256
	.word	4
	.word	_Label_186
	.word	-260
	.word	4
	.word	_Label_187
	.word	-264
	.word	4
	.word	_Label_188
	.word	-268
	.word	4
	.word	_Label_189
	.word	-272
	.word	4
	.word	_Label_190
	.word	-276
	.word	4
	.word	_Label_191
	.word	-280
	.word	4
	.word	_Label_192
	.word	-284
	.word	4
	.word	_Label_193
	.word	-288
	.word	4
	.word	_Label_194
	.word	-292
	.word	4
	.word	_Label_195
	.word	-296
	.word	4
	.word	_Label_196
	.word	-300
	.word	4
	.word	_Label_197
	.word	-304
	.word	4
	.word	_Label_198
	.word	-308
	.word	4
	.word	_Label_199
	.word	-312
	.word	4
	.word	_Label_200
	.word	-316
	.word	4
	.word	_Label_201
	.word	-320
	.word	4
	.word	_Label_202
	.word	-324
	.word	4
	.word	_Label_203
	.word	-328
	.word	4
	.word	_Label_204
	.word	-332
	.word	4
	.word	_Label_205
	.word	-336
	.word	4
	.word	_Label_206
	.word	-340
	.word	4
	.word	_Label_207
	.word	-344
	.word	4
	.word	_Label_208
	.word	-348
	.word	4
	.word	_Label_209
	.word	-352
	.word	4
	.word	_Label_210
	.word	-4444
	.word	4092
	.word	_Label_211
	.word	-4448
	.word	4
	.word	_Label_212
	.word	-4452
	.word	4
	.word	_Label_213
	.word	-45376
	.word	40924
	.word	_Label_214
	.word	-45380
	.word	4
	.word	_Label_215
	.word	-45384
	.word	4
	.word	_Label_216
	.word	-86308
	.word	40924
	.word	_Label_217
	.word	-90400
	.word	4092
	.word	0
_Label_123:
	.ascii	"sleepingbarber\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_30\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_215:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_216:
	.byte	'A'
	.ascii	"customerList\0"
	.align
_Label_217:
	.byte	'O'
	.ascii	"barber\0"
	.align
! 
! ===============  FUNCTION Barber  ===============
! 
_function_17_Barber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_17_Barber,r1
	push	r1
	mov	19,r1
_Label_618:
	push	r0
	sub	r1,1,r1
	bne	_Label_618
	mov	128,r13		! source line 128
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0WH",r10
_Label_218:
!	jmp	_Label_219
_Label_219:
	mov	129,r13		! source line 129
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   _temp_221 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-80]
!   Send message Lock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
!   _Global_waiting_customer = _Global_waiting_customer - 1		(int)
	set	_Global_waiting_customer,r1
	load	[r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting_customer,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
!   _temp_222 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-76]
!   _temp_223 = _temp_222 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   _temp_226 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-60]
!   _temp_227 = _temp_226 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   Data Move: _temp_225 = *_temp_227  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_224 = _temp_225 + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Data Move: *_temp_223 = _temp_224  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_228 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-52]
!   Send message Unlock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
!   _temp_229 = &_Global_waiting_customer_sem
	set	_Global_waiting_customer_sem,r1
	store	r1,[r14+-48]
!   Send message Down
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0AS",r10
!   _temp_230 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-44]
!   _temp_231 = _temp_230 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_231 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
!   _temp_232 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-36]
!   Send message printBarberStatus
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_233 = &_Global_barber_ready_sem
	set	_Global_barber_ready_sem,r1
	store	r1,[r14+-32]
!   Send message Up
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	143,r13		! source line 143
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
	mov	145,r13		! source line 145
	mov	"\0\0SE",r10
!   _temp_234 = &_Global_barber_done_sem
	set	_Global_barber_done_sem,r1
	store	r1,[r14+-28]
!   Send message Up
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
!   _temp_235 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-24]
!   _temp_236 = _temp_235 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_236 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_237 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-16]
!   Send message printBarberStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_238 = &_Global_customer_status_sem
	set	_Global_customer_status_sem,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END WHILE...
	jmp	_Label_218
_Label_220:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_17_Barber:
	.word	_sourceFileName
	.word	_Label_239
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_240
	.word	-12
	.word	4
	.word	_Label_241
	.word	-16
	.word	4
	.word	_Label_242
	.word	-20
	.word	4
	.word	_Label_243
	.word	-24
	.word	4
	.word	_Label_244
	.word	-28
	.word	4
	.word	_Label_245
	.word	-32
	.word	4
	.word	_Label_246
	.word	-36
	.word	4
	.word	_Label_247
	.word	-40
	.word	4
	.word	_Label_248
	.word	-44
	.word	4
	.word	_Label_249
	.word	-48
	.word	4
	.word	_Label_250
	.word	-52
	.word	4
	.word	_Label_251
	.word	-56
	.word	4
	.word	_Label_252
	.word	-60
	.word	4
	.word	_Label_253
	.word	-64
	.word	4
	.word	_Label_254
	.word	-68
	.word	4
	.word	_Label_255
	.word	-72
	.word	4
	.word	_Label_256
	.word	-76
	.word	4
	.word	_Label_257
	.word	-80
	.word	4
	.word	0
_Label_239:
	.ascii	"Barber\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
! 
! ===============  FUNCTION Customer  ===============
! 
_function_16_Customer:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_16_Customer,r1
	push	r1
	mov	41,r1
_Label_619:
	push	r0
	sub	r1,1,r1
	bne	_Label_619
	mov	153,r13		! source line 153
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0SE",r10
!   _temp_258 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-164]
!   Send message Lock
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0AS",r10
!   _temp_260 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-156]
!   _temp_261 = _temp_260 + 8
	load	[r14+-156],r1
	add	r1,8,r1
	store	r1,[r14+-152]
!   Data Move: _temp_259 = *_temp_261  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_259) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_259 [n ] into _temp_262
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
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
	store	r2,[r14+-148]
!   Data Move: *_temp_262 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-148],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   _temp_263 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0IF",r10
!   if _Global_waiting_customer >= 5 then goto _Label_265		(int)
	set	_Global_waiting_customer,r1
	load	[r1],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_265
!	jmp	_Label_264
_Label_264:
! THEN...
	mov	159,r13		! source line 159
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	159,r13		! source line 159
	mov	"\0\0AS",r10
!   _Global_waiting_customer = _Global_waiting_customer + 1		(int)
	set	_Global_waiting_customer,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting_customer,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0AS",r10
!   _temp_266 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-140]
!   _temp_267 = _temp_266 + 12
	load	[r14+-140],r1
	add	r1,12,r1
	store	r1,[r14+-136]
!   _temp_270 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-124]
!   _temp_271 = _temp_270 + 12
	load	[r14+-124],r1
	add	r1,12,r1
	store	r1,[r14+-120]
!   Data Move: _temp_269 = *_temp_271  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   _temp_268 = _temp_269 - 1		(int)
	load	[r14+-128],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   Data Move: *_temp_267 = _temp_268  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r14+-136],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
!   _temp_273 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-112]
!   _temp_274 = _temp_273 + 8
	load	[r14+-112],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   Data Move: _temp_272 = *_temp_274  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_272) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_272 [n ] into _temp_275
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Data Move: *_temp_275 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-104],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
!   _temp_276 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0SE",r10
!   _temp_277 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-96]
!   Send message Unlock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0SE",r10
!   _temp_278 = &_Global_waiting_customer_sem
	set	_Global_waiting_customer_sem,r1
	store	r1,[r14+-92]
!   Send message Up
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0SE",r10
!   _temp_279 = &_Global_barber_ready_sem
	set	_Global_barber_ready_sem,r1
	store	r1,[r14+-88]
!   Send message Down
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0AS",r10
!   _temp_281 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-80]
!   _temp_282 = _temp_281 + 8
	load	[r14+-80],r1
	add	r1,8,r1
	store	r1,[r14+-76]
!   Data Move: _temp_280 = *_temp_282  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_280) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_280 [n ] into _temp_283
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: *_temp_283 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0SE",r10
!   _temp_284 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0SE",r10
!   _temp_285 = &_Global_customer_status_sem
	set	_Global_customer_status_sem,r1
	store	r1,[r14+-64]
!   Send message Up
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0AS",r10
!   _temp_287 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-56]
!   _temp_288 = _temp_287 + 8
	load	[r14+-56],r1
	add	r1,8,r1
	store	r1,[r14+-52]
!   Data Move: _temp_286 = *_temp_288  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_286) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_286 [n ] into _temp_289
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
	store	r2,[r14+-48]
!   Data Move: *_temp_289 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_290 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0SE",r10
!   _temp_291 = &_Global_barber_done_sem
	set	_Global_barber_done_sem,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0SE",r10
!   _temp_292 = &_Global_customer_status_sem
	set	_Global_customer_status_sem,r1
	store	r1,[r14+-36]
!   Send message Up
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_293
_Label_265:
! ELSE...
	mov	180,r13		! source line 180
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0SE",r10
!   _temp_294 = &_Global_mutexlock
	set	_Global_mutexlock,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_293:
! ASSIGNMENT STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0AS",r10
!   _temp_296 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-24]
!   _temp_297 = _temp_296 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_295 = *_temp_297  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_295) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_295 [n ] into _temp_298
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	store	r2,[r14+-16]
!   Data Move: *_temp_298 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0SE",r10
!   _temp_299 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=n  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0RE",r10
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_16_Customer:
	.word	_sourceFileName
	.word	_Label_300
	.word	4		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_301
	.word	8
	.word	4
	.word	_Label_302
	.word	-12
	.word	4
	.word	_Label_303
	.word	-16
	.word	4
	.word	_Label_304
	.word	-20
	.word	4
	.word	_Label_305
	.word	-24
	.word	4
	.word	_Label_306
	.word	-28
	.word	4
	.word	_Label_307
	.word	-32
	.word	4
	.word	_Label_308
	.word	-36
	.word	4
	.word	_Label_309
	.word	-40
	.word	4
	.word	_Label_310
	.word	-44
	.word	4
	.word	_Label_311
	.word	-48
	.word	4
	.word	_Label_312
	.word	-52
	.word	4
	.word	_Label_313
	.word	-56
	.word	4
	.word	_Label_314
	.word	-60
	.word	4
	.word	_Label_315
	.word	-64
	.word	4
	.word	_Label_316
	.word	-68
	.word	4
	.word	_Label_317
	.word	-72
	.word	4
	.word	_Label_318
	.word	-76
	.word	4
	.word	_Label_319
	.word	-80
	.word	4
	.word	_Label_320
	.word	-84
	.word	4
	.word	_Label_321
	.word	-88
	.word	4
	.word	_Label_322
	.word	-92
	.word	4
	.word	_Label_323
	.word	-96
	.word	4
	.word	_Label_324
	.word	-100
	.word	4
	.word	_Label_325
	.word	-104
	.word	4
	.word	_Label_326
	.word	-108
	.word	4
	.word	_Label_327
	.word	-112
	.word	4
	.word	_Label_328
	.word	-116
	.word	4
	.word	_Label_329
	.word	-120
	.word	4
	.word	_Label_330
	.word	-124
	.word	4
	.word	_Label_331
	.word	-128
	.word	4
	.word	_Label_332
	.word	-132
	.word	4
	.word	_Label_333
	.word	-136
	.word	4
	.word	_Label_334
	.word	-140
	.word	4
	.word	_Label_335
	.word	-144
	.word	4
	.word	_Label_336
	.word	-148
	.word	4
	.word	_Label_337
	.word	-152
	.word	4
	.word	_Label_338
	.word	-156
	.word	4
	.word	_Label_339
	.word	-160
	.word	4
	.word	_Label_340
	.word	-164
	.word	4
	.word	0
_Label_300:
	.ascii	"Customer\0"
	.align
_Label_301:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
! 
! ===============  CLASS SleepingBarber  ===============
! 
! Dispatch Table:
! 
_P_Main_SleepingBarber:
	.word	_Label_341
	jmp	_Method_P_Main_SleepingBarber_1	! 4:	Init
	jmp	_Method_P_Main_SleepingBarber_2	! 8:	printExample
	jmp	_Method_P_Main_SleepingBarber_3	! 12:	printBarberStatus
	jmp	_Method_P_Main_SleepingBarber_4	! 16:	printCustomerStatus
	jmp	_Method_P_Main_SleepingBarber_5	! 20:	printChairs
	.word	0
! 
! Class descriptor:
! 
_Label_341:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_342
	.word	_sourceFileName
	.word	12		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Main_SleepingBarber
	.word	_P_System_Object
	.word	0
_Label_342:
	.ascii	"SleepingBarber\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_SleepingBarber_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_1,r1
	push	r1
	mov	6,r1
_Label_620:
	push	r0
	sub	r1,1,r1
	bne	_Label_620
	mov	189,r13		! source line 189
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_343) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_344 = _temp_343 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_344 = bStat  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_345) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_346 = _temp_345 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_346 = cStat  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_347) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _temp_347 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_348 = numOfChair  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_1:
	.word	_sourceFileName
	.word	_Label_349
	.word	16		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_350
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_351
	.word	12
	.word	4
	.word	_Label_352
	.word	16
	.word	4
	.word	_Label_353
	.word	20
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
	.word	0
_Label_349:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_350:
	.ascii	"Pself\0"
	.align
_Label_351:
	.byte	'I'
	.ascii	"bStat\0"
	.align
_Label_352:
	.byte	'P'
	.ascii	"cStat\0"
	.align
_Label_353:
	.byte	'I'
	.ascii	"numOfChair\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
! 
! ===============  METHOD printExample  ===============
! 
_Method_P_Main_SleepingBarber_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_2,r1
	push	r1
	mov	88,r1
_Label_621:
	push	r0
	sub	r1,1,r1
	bne	_Label_621
	mov	196,r13		! source line 196
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_361) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_362 = _temp_361 + 8
	load	[r14+-348],r1
	add	r1,8,r1
	store	r1,[r14+-344]
!   Data Move: _temp_360 = *_temp_362  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_360) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_360 [0 ] into _temp_363
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-352],r1
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
	store	r2,[r14+-340]
!   Data Move: *_temp_363 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-340],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_364) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_366) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_367 = _temp_366 + 8
	load	[r14+-328],r1
	add	r1,8,r1
	store	r1,[r14+-324]
!   Data Move: _temp_365 = *_temp_367  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_365) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_365 [0 ] into _temp_368
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
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
	store	r2,[r14+-320]
!   Data Move: *_temp_368 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-320],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_369) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_370 = _temp_369 + 12
	load	[r14+-316],r1
	add	r1,12,r1
	store	r1,[r14+-312]
	load	[r14+8],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_373) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_374 = _temp_373 + 12
	load	[r14+-300],r1
	add	r1,12,r1
	store	r1,[r14+-296]
!   Data Move: _temp_372 = *_temp_374  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   _temp_371 = _temp_372 - 1		(int)
	load	[r14+-304],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-308]
!   Data Move: *_temp_370 = _temp_371  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r14+-312],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_375) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_377) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_378 = _temp_377 + 8
	load	[r14+-284],r1
	add	r1,8,r1
	store	r1,[r14+-280]
!   Data Move: _temp_376 = *_temp_378  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_376) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_376 [1 ] into _temp_379
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-288],r1
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
	store	r2,[r14+-276]
!   Data Move: *_temp_379 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-276],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_380) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_382) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_383 = _temp_382 + 8
	load	[r14+-264],r1
	add	r1,8,r1
	store	r1,[r14+-260]
!   Data Move: _temp_381 = *_temp_383  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_381) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_381 [1 ] into _temp_384
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-268],r1
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
	store	r2,[r14+-256]
!   Data Move: *_temp_384 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-256],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_385) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_386 = _temp_385 + 12
	load	[r14+-252],r1
	add	r1,12,r1
	store	r1,[r14+-248]
	load	[r14+8],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_389) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = _temp_389 + 12
	load	[r14+-236],r1
	add	r1,12,r1
	store	r1,[r14+-232]
!   Data Move: _temp_388 = *_temp_390  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_387 = _temp_388 - 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Data Move: *_temp_386 = _temp_387  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_391) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_392) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_393 = _temp_392 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_393 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-220],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_394) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = _temp_394 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
	load	[r14+8],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_398) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = _temp_398 + 12
	load	[r14+-200],r1
	add	r1,12,r1
	store	r1,[r14+-196]
!   Data Move: _temp_397 = *_temp_399  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_396 = _temp_397 + 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   Data Move: *_temp_395 = _temp_396  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r14+-212],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_400) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_402) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = _temp_402 + 8
	load	[r14+-184],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Data Move: _temp_401 = *_temp_403  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_401) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_401 [0 ] into _temp_404
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Data Move: *_temp_404 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-176],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_405) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_406) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _temp_406 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_407 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_408) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_410) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_411 = _temp_410 + 8
	load	[r14+-152],r1
	add	r1,8,r1
	store	r1,[r14+-148]
!   Data Move: _temp_409 = *_temp_411  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_409) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_409 [0 ] into _temp_412
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Data Move: *_temp_412 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_413) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_415) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_416 = _temp_415 + 8
	load	[r14+-132],r1
	add	r1,8,r1
	store	r1,[r14+-128]
!   Data Move: _temp_414 = *_temp_416  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_414) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_414 [0 ] into _temp_417
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: *_temp_417 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-124],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_418) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_419) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_420 = _temp_419 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_420 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_421) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_422 = _temp_421 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-104]
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_425) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_426 = _temp_425 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_424 = *_temp_426  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_423 = _temp_424 + 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   Data Move: *_temp_422 = _temp_423  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_427) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_429) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_430 = _temp_429 + 8
	load	[r14+-76],r1
	add	r1,8,r1
	store	r1,[r14+-72]
!   Data Move: _temp_428 = *_temp_430  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_428) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_428 [1 ] into _temp_431
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: *_temp_431 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_432) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_433) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _temp_433 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_434 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_435) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_437) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_438 = _temp_437 + 8
	load	[r14+-44],r1
	add	r1,8,r1
	store	r1,[r14+-40]
!   Data Move: _temp_436 = *_temp_438  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_436) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_436 [1 ] into _temp_439
!     make sure index expr is >= 0
	mov	1,r2
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
	store	r2,[r14+-36]
!   Data Move: *_temp_439 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_440) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_442) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = _temp_442 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_441 = *_temp_443  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_441) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_441 [1 ] into _temp_444
!     make sure index expr is >= 0
	mov	1,r2
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
	store	r2,[r14+-16]
!   Data Move: *_temp_444 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_445) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0RE",r10
	add	r15,356,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_2:
	.word	_sourceFileName
	.word	_Label_446
	.word	4		! total size of parameters
	.word	352		! frame size = 352
	.word	_Label_447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_448
	.word	-12
	.word	4
	.word	_Label_449
	.word	-16
	.word	4
	.word	_Label_450
	.word	-20
	.word	4
	.word	_Label_451
	.word	-24
	.word	4
	.word	_Label_452
	.word	-28
	.word	4
	.word	_Label_453
	.word	-32
	.word	4
	.word	_Label_454
	.word	-36
	.word	4
	.word	_Label_455
	.word	-40
	.word	4
	.word	_Label_456
	.word	-44
	.word	4
	.word	_Label_457
	.word	-48
	.word	4
	.word	_Label_458
	.word	-52
	.word	4
	.word	_Label_459
	.word	-56
	.word	4
	.word	_Label_460
	.word	-60
	.word	4
	.word	_Label_461
	.word	-64
	.word	4
	.word	_Label_462
	.word	-68
	.word	4
	.word	_Label_463
	.word	-72
	.word	4
	.word	_Label_464
	.word	-76
	.word	4
	.word	_Label_465
	.word	-80
	.word	4
	.word	_Label_466
	.word	-84
	.word	4
	.word	_Label_467
	.word	-88
	.word	4
	.word	_Label_468
	.word	-92
	.word	4
	.word	_Label_469
	.word	-96
	.word	4
	.word	_Label_470
	.word	-100
	.word	4
	.word	_Label_471
	.word	-104
	.word	4
	.word	_Label_472
	.word	-108
	.word	4
	.word	_Label_473
	.word	-112
	.word	4
	.word	_Label_474
	.word	-116
	.word	4
	.word	_Label_475
	.word	-120
	.word	4
	.word	_Label_476
	.word	-124
	.word	4
	.word	_Label_477
	.word	-128
	.word	4
	.word	_Label_478
	.word	-132
	.word	4
	.word	_Label_479
	.word	-136
	.word	4
	.word	_Label_480
	.word	-140
	.word	4
	.word	_Label_481
	.word	-144
	.word	4
	.word	_Label_482
	.word	-148
	.word	4
	.word	_Label_483
	.word	-152
	.word	4
	.word	_Label_484
	.word	-156
	.word	4
	.word	_Label_485
	.word	-160
	.word	4
	.word	_Label_486
	.word	-164
	.word	4
	.word	_Label_487
	.word	-168
	.word	4
	.word	_Label_488
	.word	-172
	.word	4
	.word	_Label_489
	.word	-176
	.word	4
	.word	_Label_490
	.word	-180
	.word	4
	.word	_Label_491
	.word	-184
	.word	4
	.word	_Label_492
	.word	-188
	.word	4
	.word	_Label_493
	.word	-192
	.word	4
	.word	_Label_494
	.word	-196
	.word	4
	.word	_Label_495
	.word	-200
	.word	4
	.word	_Label_496
	.word	-204
	.word	4
	.word	_Label_497
	.word	-208
	.word	4
	.word	_Label_498
	.word	-212
	.word	4
	.word	_Label_499
	.word	-216
	.word	4
	.word	_Label_500
	.word	-220
	.word	4
	.word	_Label_501
	.word	-224
	.word	4
	.word	_Label_502
	.word	-228
	.word	4
	.word	_Label_503
	.word	-232
	.word	4
	.word	_Label_504
	.word	-236
	.word	4
	.word	_Label_505
	.word	-240
	.word	4
	.word	_Label_506
	.word	-244
	.word	4
	.word	_Label_507
	.word	-248
	.word	4
	.word	_Label_508
	.word	-252
	.word	4
	.word	_Label_509
	.word	-256
	.word	4
	.word	_Label_510
	.word	-260
	.word	4
	.word	_Label_511
	.word	-264
	.word	4
	.word	_Label_512
	.word	-268
	.word	4
	.word	_Label_513
	.word	-272
	.word	4
	.word	_Label_514
	.word	-276
	.word	4
	.word	_Label_515
	.word	-280
	.word	4
	.word	_Label_516
	.word	-284
	.word	4
	.word	_Label_517
	.word	-288
	.word	4
	.word	_Label_518
	.word	-292
	.word	4
	.word	_Label_519
	.word	-296
	.word	4
	.word	_Label_520
	.word	-300
	.word	4
	.word	_Label_521
	.word	-304
	.word	4
	.word	_Label_522
	.word	-308
	.word	4
	.word	_Label_523
	.word	-312
	.word	4
	.word	_Label_524
	.word	-316
	.word	4
	.word	_Label_525
	.word	-320
	.word	4
	.word	_Label_526
	.word	-324
	.word	4
	.word	_Label_527
	.word	-328
	.word	4
	.word	_Label_528
	.word	-332
	.word	4
	.word	_Label_529
	.word	-336
	.word	4
	.word	_Label_530
	.word	-340
	.word	4
	.word	_Label_531
	.word	-344
	.word	4
	.word	_Label_532
	.word	-348
	.word	4
	.word	_Label_533
	.word	-352
	.word	4
	.word	0
_Label_446:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printExample\0"
	.align
_Label_447:
	.ascii	"Pself\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
! 
! ===============  METHOD printBarberStatus  ===============
! 
_Method_P_Main_SleepingBarber_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_3,r1
	push	r1
	mov	8,r1
_Label_622:
	push	r0
	sub	r1,1,r1
	bne	_Label_622
	mov	263,r13		! source line 263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! SEND STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_534) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_538) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = _temp_538 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_537 = *_temp_539  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_537 != 1 then goto _Label_536		(int)
	load	[r14+-28],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_536
!	jmp	_Label_535
_Label_535:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_540 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_540  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	268,r13		! source line 268
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_541
_Label_536:
! ELSE...
	mov	270,r13		! source line 270
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_542 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	270,r13		! source line 270
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_541:
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_3:
	.word	_sourceFileName
	.word	_Label_543
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_545
	.word	-12
	.word	4
	.word	_Label_546
	.word	-16
	.word	4
	.word	_Label_547
	.word	-20
	.word	4
	.word	_Label_548
	.word	-24
	.word	4
	.word	_Label_549
	.word	-28
	.word	4
	.word	_Label_550
	.word	-32
	.word	4
	.word	_Label_551
	.word	-36
	.word	4
	.word	0
_Label_543:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printBarberStatus\0"
	.align
_Label_544:
	.ascii	"Pself\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_551:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD printCustomerStatus  ===============
! 
_Method_P_Main_SleepingBarber_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_4,r1
	push	r1
	mov	12,r1
_Label_623:
	push	r0
	sub	r1,1,r1
	bne	_Label_623
	mov	275,r13		! source line 275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_552) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_553 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_558 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_559 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_558  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_554:
!   Perform the FOR-LOOP termination test
!   if i > _temp_559 then goto _Label_557		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_557
_Label_555:
	mov	281,r13		! source line 281
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0IF",r10
!   if i == customer then goto _Label_561		(int)
	load	[r14+-48],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_561
!	jmp	_Label_560
_Label_560:
! THEN...
	mov	283,r13		! source line 283
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CE",r10
	call	printChar
	jmp	_Label_562
_Label_561:
! ELSE...
	mov	285,r13		! source line 285
	mov	"\0\0EL",r10
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_565) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = _temp_565 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_564 = *_temp_566  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_564) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_564 [i ] into _temp_567
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_563 = *_temp_567  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CE",r10
	call	printChar
! END IF...
_Label_562:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_556:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_554
! END FOR
_Label_557:
! CALL STATEMENT...
!   Call the function
	mov	289,r13		! source line 289
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_4:
	.word	_sourceFileName
	.word	_Label_568
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_570
	.word	12
	.word	4
	.word	_Label_571
	.word	-16
	.word	4
	.word	_Label_572
	.word	-20
	.word	4
	.word	_Label_573
	.word	-24
	.word	4
	.word	_Label_574
	.word	-28
	.word	4
	.word	_Label_575
	.word	-9
	.word	1
	.word	_Label_576
	.word	-32
	.word	4
	.word	_Label_577
	.word	-36
	.word	4
	.word	_Label_578
	.word	-40
	.word	4
	.word	_Label_579
	.word	-44
	.word	4
	.word	_Label_580
	.word	-48
	.word	4
	.word	_Label_581
	.word	-52
	.word	4
	.word	0
_Label_568:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printCustomerStatus\0"
	.align
_Label_569:
	.ascii	"Pself\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"customer\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_575:
	.byte	'C'
	.ascii	"_temp_563\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_580:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_581:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD printChairs  ===============
! 
_Method_P_Main_SleepingBarber_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_5,r1
	push	r1
	mov	12,r1
_Label_624:
	push	r0
	sub	r1,1,r1
	bne	_Label_624
	mov	293,r13		! source line 293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! FOR STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_588) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = _temp_588 + 12
	load	[r14+-36],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_587 = *_temp_589  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_586 = _temp_587 + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_590 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_586  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-48]
_Label_582:
!   Perform the FOR-LOOP termination test
!   if i > _temp_590 then goto _Label_585		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_585
_Label_583:
	mov	297,r13		! source line 297
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=88  sizeInBytes=1
	mov	88,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_584:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_582
! END FOR
_Label_585:
! FOR STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_595 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_597) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _temp_597 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_596 = *_temp_598  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_595  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-48]
_Label_591:
!   Perform the FOR-LOOP termination test
!   if i > _temp_596 then goto _Label_594		
	load	[r14+-48],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_594
_Label_592:
	mov	300,r13		! source line 300
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=45  sizeInBytes=1
	mov	45,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_593:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_591
! END FOR
_Label_594:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_5:
	.word	_sourceFileName
	.word	_Label_599
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_600
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_601
	.word	-12
	.word	4
	.word	_Label_602
	.word	-16
	.word	4
	.word	_Label_603
	.word	-20
	.word	4
	.word	_Label_604
	.word	-24
	.word	4
	.word	_Label_605
	.word	-28
	.word	4
	.word	_Label_606
	.word	-32
	.word	4
	.word	_Label_607
	.word	-36
	.word	4
	.word	_Label_608
	.word	-40
	.word	4
	.word	_Label_609
	.word	-44
	.word	4
	.word	_Label_610
	.word	-48
	.word	4
	.word	_Label_611
	.word	-52
	.word	4
	.word	0
_Label_599:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printChairs\0"
	.align
_Label_600:
	.ascii	"Pself\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_610:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_611:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
