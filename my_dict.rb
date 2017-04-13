list = ['cat','Zat','bat','Dat','hat','Pat','mat','fat']

def sort arr
  rec_sort arr, []
end

def is_upper?(input)
  input == input.upcase
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = [] 

  unsorted.each do |tested_object|
    
    testcaps = is_upper?(tested_object[0])
    smallcaps = is_upper?(smallest[0])

    tested_object.downcase!
    smallest.downcase!
    if tested_object < smallest 
      if testcaps
        tested_object.capitalize!
      end

      if smallcaps
        smallest.capitalize!
      end

      still_unsorted.push smallest
      smallest = tested_object
    else 
      if testcaps
        tested_object.capitalize!
      end

      if smallcaps
        smallest.capitalize!
      end

      still_unsorted.push tested_object
    end


  end

  sorted.push smallest

  rec_sort still_unsorted, sorted
end



puts sort list
