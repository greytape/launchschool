def english_number number

  num_string = ''

  tens = %w(twenty thirty forty fifty sixty seventy eighty ninety)
  teenagers = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  ones = %w(one two three four five six seven eight nine)

  left = number

  write = left / 1000
  left = left - write * 1000

  if write > 0
    num_string = num_string + english_number(write) + " thousand "
  end 
  

  write = left / 100
  left = left - write * 100

  if write > 0
    num_string = num_string + english_number(write) + " hundred "
  end 
  
  write = left / 10
  left = left - write * 10

  if write == 1
    num_string = num_string + teenagers[left - 1]
    left = 0
  end

  if write > 1
    num_string = num_string + tens[write - 2] + " "
  end

  if left > 0
    num_string = num_string + ones[left - 1]
  end



  num_string

end

puts english_number(770001)

