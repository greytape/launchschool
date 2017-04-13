doc_names = Dir["**/*.{rb}"]

def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = [] 

  unsorted.each do |tested_object|
    if [true,false].sample 
      still_unsorted.push smallest
      smallest = tested_object
    else 
      still_unsorted.push tested_object
    end
  end

  sorted.push smallest

  rec_sort still_unsorted, sorted
end

File.open("doc_list.txt","w") do |x|
  x.print doc_names
end


 sort(doc_names)
