def ask(question)
  puts question
  input = gets.chomp.downcase
  if (input == 'yes' || input == 'no') 
    if input == 'yes' 
      return  true
    elsif input == 'no'
      return false
    end
  else 
    puts 'Please answer "yes" or "no' 
  end
end

puts "I'm going to ask you a question"

ask 'Do you like eating tacos?' # Ignore this return value
ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'