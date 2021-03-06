code Main

  -- OS Class: Project 3
  --
  -- Yuan Hong Sun
  -- 1003039838

  -- This package contains the following:
  --     Gaming Parlor
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      gamingparlor ()
      ThreadFinish ()
    endFunction

------------------------------- Gaming Parlor ----------------------------------
  var
    GP: GamingParlor = new GamingParlor
    gamers: array[8] of Thread = new array of Thread {8 of new Thread}
    mutex: Mutex
    condition: Condition

  function gamingparlor()
    GP.Init()

    mutex = new Mutex
    mutex.Init()
    condition = new Condition
    condition.Init()

    gamers[0].Init ("A")
    gamers[0].Fork(call_playgames, 0)
    gamers[1].Init ("B")
    gamers[1].Fork(call_playgames, 0)
    gamers[2].Init ("C")
    gamers[2].Fork(call_playgames, 1)
    gamers[3].Init ("D")
    gamers[3].Fork(call_playgames, 1)
    gamers[4].Init ("E")
    gamers[4].Fork(call_playgames, 2)
    gamers[5].Init ("F")
    gamers[5].Fork(call_playgames, 2)
    gamers[6].Init ("G")
    gamers[6].Fork(call_playgames, 3)
    gamers[7].Init ("H")
    gamers[7].Fork(call_playgames, 3)
  endFunction

  function call_playgames(num: int)
    GP.playGames(num)
  endFunction


  behavior GamingParlor

    method Init()
      dice_available = total_dice
    endMethod

    method playGames(gameNum: int)
      var numPlayed: int
      numPlayed = 0
      while numPlayed < 5
          numPlayed = numPlayed + 1
          self.Request(group_names[gameNum], dice_per_group[gameNum])
 	  currentThread.Yield()
	  self.Return(group_names[gameNum], dice_per_group[gameNum])
      endWhile
    endMethod

    method Request(name: char, nr_of_dice: int)
      mutex.Lock()
      self.Print(name, "requests", nr_of_dice)
      while dice_available < nr_of_dice
        condition.Wait(&mutex)
      endWhile
      dice_available = dice_available - nr_of_dice
      self.Print(name, "proceeds with", nr_of_dice)
      mutex.Unlock()
    endMethod

    method Return(name: char, nr_of_dice: int)
      mutex.Lock()
      dice_available = dice_available + nr_of_dice
      self.Print(name, "releases and adds back", nr_of_dice)
      condition.Broadcast(&mutex)
      mutex.Unlock()
    endMethod

    method PrintExample()
      ----------------------------- Example -----------------------------
      -- This is an example of using print functions.
      -- You should not use this function in your implementation.

      -- A requests
      self.Request(group_names[0], 4)
      -- B requests
      self.Request(group_names[1], 4)
      -- B returns
      self.Return(group_names[1], 4)
      -- A returns
      self.Return(group_names[0], 4)
      -- C requests
      self.Request(group_names[2], 5)
      -- C returns
      self.Return(group_names[2], 5)

    endMethod

    method Print(name: char, str: String, nr_of_dice: int)
    --
    -- This method prints the current thread's name and the arguments.
    -- It also prints the current number of dice available.
    --
       printChar(name)
       print(" ")
       print(str)
       print(" ")
       printInt(nr_of_dice)
       nl()
       print("------------------------------Number of dice now avail = ")
       printInt(dice_available)
       nl()
    endMethod
  endBehavior

endCode
