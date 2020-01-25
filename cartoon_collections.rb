def roll_call_dwarves(arg)
  count = 1
  arg.each do |draw|
    puts "#{count}. #{draw}"
    count += 1
  end
end

def summon_captain_planet(arg)
  count = 0
  arg.each do |word|
    word = word.capitalize + "!"
    arg[count] = word
    count += 1
  end
  puts arg
  return arg
end

def long_planeteer_calls(arg)
  count = 0
  all = false
  any = false
  while count < arg.length
    if arg[count].length > 4
      #string chars are over 4
      any = true
      all = true
    end
    count += 1
  end
  if any == true
    return true
  end
  if all == false
    return false
  end
end

def find_the_cheese(arg)
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  count = 0
  check = false
  arg.each do |cheese|
    while count < cheese_types.length
      if cheese == cheese_types[count]
        return cheese
        check  = true
      end
      count += 1
    end
    count = 0
  end
  if check == false
    return nil
  end
end
