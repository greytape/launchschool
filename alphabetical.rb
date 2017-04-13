list = ['aat','zat','bat','dat','hat','pat','mat','fat']

def first_alpha array
  smallest = 'z'
  array.each do |x| 
    array.each do |y|
      if x <= y && x <= smallest
        smallest = x
      end
    end
  end 
  return smallest
end

puts first_alpha list

