print "Please type in a sentence: "
text = gets.chomp

words = text.split(" ")

frequencies = {}

words.each do |i|
  frequencies[:i] += 1 
end

print frequencies

