$nesting_depth = 0

def log block_description, &block
  $nesting_depth += 1
  $nesting_depth.times {print" "} 
  puts "Block Started!"
  output = block.call
  $nesting_depth.times {print" "} 
  puts "Block finished!"
  $nesting_depth -= 1
end


log "outer_block" do 
  log "little block" do 
    $nesting_depth.times {print" "} 
    puts "small"
  end

  log "another block" do
    $nesting_depth.times {print" "} 
    puts "again"
  end

  $nesting_depth.times do 
    print " "
  end 
  puts "Big one."

end

