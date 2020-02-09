code Main

  -- OS Class: Project 3
  --
  -- <Yize Zhao>
  --

  -- This package contains the following:
  --     Sleeping Barber
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      sleepingbarber ()
      ThreadFinish ()
    endFunction

-----------------------------  Sleeping Barber --------------------------------
  -- In the Producer/Consumer and Dining Philosophers problems, we tried to print the activity
  -- of each thread in a different column so that you could see what each thread was doing.
  -- The actual events in this problem can be reduced to a single letter, such as:
  --
  --         E = Enter
  --         S = Sit in waiting chair
  --         B = Begin haircut
  --         F = Finish haircut
  --         L = Leave
  --         start = Barber begins haircut
  --         end = Barber ends haircut
  --
  -- The status of the chairs should be printed every time you print a line. If there are 5
  -- chairs, of which 2 are occupied, print 2 X's and 3 -'s.  For example:
  --
  --         XX---
  --

  enum Start, End

  var
    sb: SleepingBarber
    bStatus: int = End
    cStatus: array[nrCustomers] of char =
             new array of char { nrCustomers of 'L' }
    -- Hint: Some variables are defined in "Task2.h".

    waiting_customer: int
    waiting_customer_sem: Semaphore  --number of waiting customers
    barber_ready_sem: Semaphore   -- is the barber ready to start?
    customer_status_sem: Semaphore
    barber_done_sem: Semaphore -- is the barber done?

    mutexlock: Mutex

  function sleepingbarber()
    var
      i: int
      customerList: array[nrCustomers] of Thread
      barber: Thread
    customerList = new array of Thread {nrCustomers of new Thread }

    mutexlock = new Mutex
    mutexlock.Init()

    waiting_customer = 0
    waiting_customer_sem = new Semaphore
    waiting_customer_sem.Init(0)

    barber_ready_sem = new Semaphore
    barber_ready_sem.Init(0)

    barber_done_sem = new Semaphore
    barber_done_sem.Init(0)

    customer_status_sem = new Semaphore
    customer_status_sem.Init(0)





    -- print initial line
    for i = 0 to nrChairs
        printChar(' ')
    endFor
    print("Barber\t")
    for i = 0 to nrCustomers - 1
        printInt(i+1)
        printChar('\t')
    endFor
    nl()

    sb = new SleepingBarber
    sb.Init(bStatus, &cStatus, nrChairs)

    -- Remove the following line in your implementation
    -- This is only an example.
    -- sb.printExample()

    -- Add more code below.

    barber = new Thread
    barber.Init("Barber")
    barber.Fork(Barber, nrChairs)

    customerList[0].Init("C1")
    customerList[0].Fork(Customer, 0)
    customerList[1].Init("C2")
    customerList[1].Fork(Customer, 1)
    customerList[2].Init("C3")
    customerList[2].Fork(Customer, 2)
    customerList[3].Init("C4")
    customerList[3].Fork(Customer, 3)
    customerList[4].Init("C5")
    customerList[4].Fork(Customer, 4)
    customerList[5].Init("C6")
    customerList[5].Fork(Customer, 5)
    customerList[6].Init("C7")
    customerList[6].Fork(Customer, 6)
    customerList[7].Init("C8")
    customerList[7].Fork(Customer, 7)
    customerList[8].Init("C9")
    customerList[8].Fork(Customer, 8)
    customerList[9].Init("C10")
    customerList[9].Fork(Customer, 9)

  endFunction

  function Barber(nChairs: int)
  while true
    waiting_customer_sem.Down()
    mutexlock.Lock()
    waiting_customer = waiting_customer - 1
    sb.availChairs = sb.availChairs + 1
    mutexlock.Unlock()

    sb.barberStatus = Start
    sb.printBarberStatus()

    barber_ready_sem.Up()
    -- cut hair
    customer_status_sem.Down()
    currentThread.Yield()
    customer_status_sem.Down()
    barber_done_sem.Up()

    sb.barberStatus = End
    sb.printBarberStatus()
  endWhile
endFunction

function Customer(n: int)
  mutexlock.Lock()
  sb.customerStatus[n] = 'E'
  sb.printCustomerStatus(n)

  if (waiting_customer < nrChairs)
    waiting_customer = waiting_customer + 1
    sb.availChairs = sb.availChairs - 1
    sb.customerStatus[n] = 'S'
    sb.printCustomerStatus(n)
    mutexlock.Unlock()

    waiting_customer_sem.Up()
    barber_ready_sem.Down()

    sb.customerStatus[n] = 'B'
    sb.printCustomerStatus(n)

    customer_status_sem.Up()
    currentThread.Yield()

    sb.customerStatus[n] = 'F'
    sb.printCustomerStatus(n)

    barber_done_sem.Down()
    customer_status_sem.Up()
  else
    mutexlock.Unlock()  -- do not get a haircut
  endIf

  sb.customerStatus[n] = 'L'
  sb.printCustomerStatus(n)
endFunction

  -- implementation of SleepingBarber class
  behavior SleepingBarber
    method Init(bStat: int, cStat: ptr to array of char, numOfChair: int)
      self.barberStatus = bStat
      self.customerStatus = cStat
      self.availChairs = numOfChair
    endMethod


    method printExample()
      ----------------------------- Example -----------------------------
      -- This is an example of using print functions.
      -- You should not use this function in your implementation.

      -- Customer 1 enter.
      self.customerStatus[0] = 'E'
      self.printCustomerStatus(0)

      -- Customer 1 sit in waiting chair.
      self.customerStatus[0] = 'S'
      self.availChairs = self.availChairs - 1
      self.printCustomerStatus(0)

      -- Customer 2 enter.
      self.customerStatus[1] = 'E'
      self.printCustomerStatus(1)

      -- Customer 2 sit in waiting chair.
      self.customerStatus[1] = 'S'
      self.availChairs = self.availChairs - 1
      self.printCustomerStatus(1)

      -- Barber begins haircut. Customer begins haircut and chair becomes available.
      self.barberStatus = Start
      self.availChairs = self.availChairs + 1
      self.printBarberStatus()

      -- Customer 1 begins haircut.
      self.customerStatus[0] = 'B'
      self.printCustomerStatus(0)

      -- Barber ends haircut.
      self.barberStatus = End
      self.printBarberStatus()

      -- Customer 1 finish haircut.
      self.customerStatus[0] = 'F'
      self.printCustomerStatus(0)

      -- Customer 1 leave.
      self.customerStatus[0] = 'L'
      self.printCustomerStatus(0)

      -- Barber begins haircut. Customer begins haircut and chair becomes available.
      self.barberStatus = Start
      self.availChairs = self.availChairs + 1
      self.printBarberStatus()

      -- Customer 2 begins haircut.
      self.customerStatus[1] = 'B'
      self.printCustomerStatus(1)

      -- Barber ends haircut.
      self.barberStatus = End
      self.printBarberStatus()

      -- Customer 2 finish haircut.
      self.customerStatus[1] = 'F'
      self.printCustomerStatus(1)

      -- Customer 2 leave.
      self.customerStatus[1] = 'L'
      self.printCustomerStatus(1)
      -----------------------------  End  -----------------------------
    endMethod

    method printBarberStatus()
      self.printChairs()
      if self.barberStatus == Start
         print("Start\n")
      else
         print("End\n")
      endIf
    endMethod

    method printCustomerStatus(customer: int)
      var i: int
      self.printChairs()
      print("      \t")
      for i = 0 to nrCustomers - 1
        if (i != customer)
          printChar(' ')
        else
          printChar(self.customerStatus[i])
        endIf
        printChar('\t')
      endFor
      nl()
    endMethod

    method printChairs()
      var i: int
      for i = self.availChairs + 1 to nrChairs
        printChar('X')
      endFor
      for i = 1 to self.availChairs
        printChar('-')
      endFor
      printChar(' ')
    endMethod

  endBehavior

endCode
