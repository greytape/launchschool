puts "Say something to your Grandma."
input = gets.chomp
count = 0 
while count < 2 
  
  if input == "BYE"
    
    while count < 2
      
      if input == 'BYE'
        puts "Oh, are you going?"
      else
        puts "Oh, that's good."
        break
      end
      
      input = gets.chomp

      if input == "BYE"
        count += 1
      else 
        count = 0
      end

    end

  end

  if input != input.upcase
    puts "SPEAK UP SONNY!"
  else 
    puts "NO, NOT SINCE #{rand(1930..1950)}"

  end

  input = gets.chomp  

end
