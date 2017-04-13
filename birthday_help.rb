require 'time' 
require 'date'

birth_dates = Hash.new

contents = File.read("birthdays.txt") 

contents.each_line do |l|
  birth_dates[l[0..l.index(',')]] = Date.parse(l[l.index(",")+2..-2])
end

birth_dates.each do |k,v|
  years = ((Date.today - v) / 365).to_i
  puts "If your name is #{k} then you are currently #{years} years old."
end

