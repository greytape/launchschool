array = []
puts "Enter as many words as you like:"

loop do
  input = gets.chomp
  break if input.empty?
  array << input 
end

puts array.sort_by{|i| i}