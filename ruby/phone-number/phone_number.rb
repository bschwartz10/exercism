class PhoneNumber

  def self.clean(raw_number)
    clean_number = santize_number(raw_number)
    if clean_number.length == 10 && digit_is_two_through_nine(select_digit(clean_number, 1)) && digit_is_two_through_nine(select_digit(clean_number, 4))
      clean_number
    elsif clean_number.length == 11 && select_digit(clean_number, 1) == 1
      clean_number[1..-1]
    else
      nil
    end
  end

private

  def self.santize_number(raw_number)
    raw_number.gsub(/\D/,'')
  end

  def self.digit_is_two_through_nine(digit)
    (2..9).include?(digit)
  end

  def self.select_digit(clean_number, position)
    index = position - 1
    clean_number[index].to_i
  end

end

module BookKeeping
  VERSION = 2
end
