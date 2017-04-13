require 'yaml'

test_array = [42,'42',['hats','cats',42,[1,'one']]]

test_string = test_array.to_yaml

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
  f.write test_string
end 

read_string = File.read filename

read_array = YAML::load read_string

puts (test_string == read_string)
puts (test_array == read_array)
