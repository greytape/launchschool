Class Integer
  def numeral(num)
    
    string = ''

    thous = num / 1000
    num = num % 1000
    string << 'M' * thous

    five_hun = num / 500
    num = num % 500
    string << 'D' * five_hun

    hun = num / 100
    num = num % 100
    string << 'C' * hun

    fifty = num / 50
    num = num % 50
    string << 'L' * fifty

    ten = num / 10
    num = num % 10
    string << 'X' * ten

    five = num / 5
    
    if num == 9
      string << 'IX'
    else
      num = num % 5
      string << 'V' * five

      one = num / 1
      if one == 4
        string << 'IV'
      else 
        string << 'I' * one
      end
    end

    string
  end
end

puts 2009.numeral

