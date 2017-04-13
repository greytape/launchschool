class Orangetree
  
  def initialize
    @height = 1
    @age = 0
    @fruit = 0
    @good_year = false
  end

  def admire
    puts "The tree is really very beautiful."
  end

  def height
    puts "Your tree is #{@height} metres tall."
  end

  def one_year_passes
    
    puts "The seasons shift, and another year passes on."
    puts ""
    puts "Year #{@age}."
    @age += 1
    @height = @height * 1.1
    @good_year = [true, false].sample
    @last_fruit = @fruit
    @alive = true

    if @age > 5
      if @fruit > 0
        puts "As winter approaches, all #{@fruit} oranges fall off the tree."
        @fruit = 0
      end

      if @good_year
        
        @fruit = (@last_fruit + (@age * 0.6).to_i)
        puts "Summer arrives. Your tree grows #{@fruit} new oranges!"
      else 
        @fruit = ((@last_fruit * 0.6).to_i)
        puts "Summer arrives. Your tree grows only #{@fruit} new oranges."
      end
    else
      puts "There are still no oranges on the tree."
    end

    if @age > 30
      @height = 0 
      puts "Your tree begins to wither, and ultimately dies, and falls over."
      @alive = false
      exit
    end
  end

  def pick_an_orange
    if @fruit > 0 
      @fruit -= 1
      puts "You take down a fresh orange from the tree. It tastes wonderful."
    else
      puts "Sadly, there are no oranges to take."
    end   
  end

end

tree = Orangetree.new
puts "You plant a beautiful tree."
puts "What would you like to do with it?"
puts ""

while true do
  puts "Admire the tree: A"
  puts "Measure the tree: M"
  puts "Pick some fruit: P"
  puts "Wait another year: W"
  input = gets.chomp
  case input
  when "A"
    tree.admire
  when "M"
    tree.height
  when "P"
    tree.pick_an_orange
  when "W"
    tree.one_year_passes
  else
    puts "Please enter a valid command."
  end
  puts ""
end