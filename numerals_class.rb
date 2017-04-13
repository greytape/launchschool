class Integer
  def numeral
    
    string = ''

    thous = self / 1000
    self = self % 1000
    string << 'M' * thous

    five_hun = self / 500
    self = self % 500
    string << 'D' * five_hun

    hun = self / 100
    self = self % 100
    string << 'C' * hun

    fifty = self / 50
    self = self % 50
    string << 'L' * fifty

    ten = self / 10
    self = self % 10
    string << 'X' * ten

    five = self / 5
    
    if self == 9
      string << 'IX'
    else
      self = self % 5
      string << 'V' * five

      one = self / 1
      if one == 4
        string << 'IV'
      else 
        string << 'I' * one
      end
    end

    puts string
  end
end

2009.numeral

