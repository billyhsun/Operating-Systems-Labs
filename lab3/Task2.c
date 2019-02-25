code Main

  -- OS Class: Project 3
  --
  -- Yuan Hong Sun
  -- 1003039838

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
    Barber: Thread

    customers: Semaphore
    barbers: Semaphore
    cutting: Semaphore
    done: Semaphore
    access_lock: Mutex
    waiting: int


  function sleepingbarber()
    var
      i: int
      Customers: array[10] of Thread 

    waiting = 0
    Customers = new array of Thread {10 of new Thread}

    customers = new Semaphore
    barbers = new Semaphore
    cutting = new Semaphore
    done = new Semaphore
    access_lock = new Mutex

    customers.Init(0)
    barbers.Init(0)
    cutting.Init(0)
    done.Init(0)
    access_lock.Init()


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

    Barber = new Thread
    Barber.Init("B")
    Barber.Fork(call_barber, nrChairs)

    Customers[0].Init ("1")
    Customers[0].Fork(call_customer, 0)
    Customers[1].Init ("2")
    Customers[1].Fork(call_customer, 1)
    Customers[2].Init ("3")
    Customers[2].Fork(call_customer, 2)
    Customers[3].Init ("4")
    Customers[3].Fork(call_customer, 3)
    Customers[4].Init ("5")
    Customers[4].Fork(call_customer, 4)
    Customers[5].Init ("6")
    Customers[5].Fork(call_customer, 5)
    Customers[6].Init ("7")
    Customers[6].Fork(call_customer, 6)
    Customers[7].Init ("8")
    Customers[7].Fork(call_customer, 7)
    Customers[8].Init ("9")
    Customers[8].Fork(call_customer, 8)
    Customers[9].Init ("10")
    Customers[9].Fork(call_customer, 9)
  endFunction

  -- Helper functions that facilitate calling a function inside the SleepingBarber class
  function call_barber(num: int)
    sb.barber(num)
  endFunction

  function call_customer(num: int)
    sb.customer(num)
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

    method barber(numChairs: int)
      while true
        customers.Down()
        access_lock.Lock()
        -- waiting = waiting - 1
        self.availChairs = self.availChairs + 1
        self.barberStatus = Start
        self.printBarberStatus()
        access_lock.Unlock()

        barbers.Up()
        self.cut_hair()
        self.barberStatus = End
        self.printBarberStatus()
        done.Up()
      endWhile
    endMethod

    method cut_hair()
        cutting.Down()
        currentThread.Yield()
        cutting.Down()
    endMethod


    method customer(Customer: int)
      var
        numCuts: int
        cutsReceived: int

      cutsReceived = 0
      numCuts = 3
      while cutsReceived < numCuts
        access_lock.Lock()
        self.customerStatus[Customer] = 'E'
        self.printCustomerStatus(Customer)
        cutsReceived = cutsReceived + 1

        if self.availChairs > 0
          -- waiting = waiting + 1
          self.availChairs = self.availChairs - 1
	  self.customerStatus[Customer] = 'S'
          self.printCustomerStatus(Customer)

          access_lock.Unlock()
          customers.Up()
          barbers.Down()
          self.get_haircut(Customer)
          done.Down()
        else
          access_lock.Unlock()
        endIf
	self.customerStatus[Customer] = 'L'
        self.printCustomerStatus(Customer)
      endWhile
    endMethod

    method get_haircut(Customer: int)
      self.customerStatus[Customer] = 'B'
      self.printCustomerStatus(Customer)
      cutting.Up()
      currentThread.Yield()
      self.customerStatus[Customer] = 'F'
      self.printCustomerStatus(Customer)
      cutting.Up()
    endMethod


    method printBarberStatus()
      var 
	oldIntStat: int 

      oldIntStat = SetInterruptsTo(DISABLED)
      self.printChairs()
      if self.barberStatus == Start
         print("Start\n")
      else
         print("End\n")
      endIf
      oldIntStat = SetInterruptsTo(oldIntStat)
    endMethod

    method printCustomerStatus(customer: int)
      var 
	i: int
	oldIntStat: int 

      oldIntStat = SetInterruptsTo(DISABLED)
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
      oldIntStat = SetInterruptsTo(oldIntStat)
    endMethod

    method printChairs()
      var 
	i: int
	oldIntStat: int 

      oldIntStat = SetInterruptsTo(DISABLED)
      for i = self.availChairs + 1 to nrChairs
        printChar('X')
      endFor
      for i = 1 to self.availChairs
        printChar('-')
      endFor
      printChar(' ')
      oldIntStat = SetInterruptsTo(oldIntStat)
    endMethod

  endBehavior

endCode
