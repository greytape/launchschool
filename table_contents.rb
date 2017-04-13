contents = [["Getting Started",1],["Numbers",9],["Letters",13]]


puts("Table of Contents".center(50))

contents.each_with_index do |chap,index|
  name, page = chap
  chap_num = index + 1
  beginning = "Chapter #{chap_num} : #{name}"
  ending = "page #{page}"
  puts beginning.ljust(30) + ending.rjust(20)
end
