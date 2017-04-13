puts "Please enter a start year:"

start = gets.chomp.to_i

puts "Please enter an end year:"

final = gets.chomp.to_i


puts "Between those two years, the following leap years took place:"

while start < final
  if start % 4 == 0 && (start % 100 != 0) || (start % 400 == 0) 
    puts start
  end
  start += 1
end