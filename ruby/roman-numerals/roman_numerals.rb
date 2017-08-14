class Fixnum

  DICTIONARY = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    6 => 'VI',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }
  def to_roman
    roman_numeral = ''
    input = self
    DICTIONARY.each do |number, letter|
      while input >= number
        input -= number
        roman_numeral << letter
      end
    end
    roman_numeral
  end

end

module BookKeeping
  VERSION = 2
end
