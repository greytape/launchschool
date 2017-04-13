def hours(&block)
  count = Time.new.hour
  count.times do 
    block.call
  end
end

hours do 
  puts 'DONG!'
end
