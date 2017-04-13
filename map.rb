M = 'LAND'
o = 'water'

world = [[o,o,M,M,M,o,o,o,o,o,o],[o,o,o,o,M,M,o,o,o,o,o],
[o,o,o,M,o,o,o,o,M,M,o],[o,o,o,M,o,o,o,o,o,M,o],
[o,o,o,M,o,M,M,o,o,o,o],[o,o,o,o,M,M,M,M,o,o,o],
[o,o,o,M,M,M,M,M,M,M,o],[o,o,o,M,M,o,M,M,M,o,o],
[o,o,o,o,o,o,M,M,o,o,o],[o,M,o,o,o,M,o,o,o,o,o],
[o,o,o,o,M,M,o,o,o,o,o]]

world.each do |r|
  puts r.each {|p| p}.join(" ")
end

def continent_size world, x,y 

  if world[y][x] != 'LAND'
    return 0
  end
  
  size = 1
  world[y][x] = 'counted LAND'

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y )
  size = size + continent_size(world, x+1, y )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x , y+1)
  size = size + continent_size(world, x+1, y+1) 

  size
end

puts continent_size(world, 5,5) 