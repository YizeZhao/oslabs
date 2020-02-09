header Main

  uses System, Thread, Synch

  const
    nrCustomers = 10
    nrChairs = 5

  functions
    main ()

  class SleepingBarber
    superclass Object
    fields
      barberStatus: int
      customerStatus: ptr to array of char
      availChairs: int
    methods
      Init(bStat: int, cStat: ptr to array of char, numOfChair: int)
      --Customer(p: int)
      --Barber()
      printExample()
      printBarberStatus()
      printCustomerStatus(customer: int)
      printChairs()
  endClass
endHeader
