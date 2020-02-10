code Main

  -- OS Class: Project 3
  --
  -- <Yize Zhao>
  --

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
    -- Hint: Some variables are defined in "Task3.h".
    game_groups: array[total_groups] of Thread
    enough_dice: Condition
    mutexlock: Mutex
    i: int


  function gamingparlor()
    GP.Init()
    game_groups = new array of Thread{total_groups of new Thread}
    mutexlock = new Mutex
    mutexlock.Init()

    enough_dice = new Condition
    enough_dice.Init()


    -- Remove the following line in your implementation
    -- This is only an example.
    GP.PrintExample()

    -- Add more code below
    i = 0
    for (i=0;i<total_groups;i=i+1)
        game_groups[i].Init(group_names[i])
        game_groups[i].Fork(game, i)
    endFor
  
  endFunction

  function game(group_idx: int)
    GP.Request(group_names[group_idx], dice_per_group[group_idx])
    currentThread.Yield()
    GP.Return(group_names[group_idx], dice_per_group[group_idx])

  endFunction

  behavior GamingParlor

    method Init()
      dice_available = total_dice
    endMethod

    method Request(name: char, nr_of_dice: int)
      mutexlock.Lock()
      self.Print(name, "requests", nr_of_dice)
      while dice_available < nr_of_dice
        -- FatalError ("Needs to be implemented")
        enough_dice.wait(&mutexlock)
      endWhile
      dice_available = dice_available - nr_of_dice
      self.Print(name, "proceeds with", nr_of_dice)
        mutexlock.Unlock()
    endMethod

    method Return(name: char, nr_of_dice: int)
        mutexlock.Lock()
      dice_available = dice_available + nr_of_dice
      self.Print(name, "releases and adds back", nr_of_dice)
        enough_dice.Broadcast(&mutexlock)
        mutexlock.Unlock()
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
