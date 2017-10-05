class PhoneNumber

  def self.clean(raw_number)
    clean_number = raw_number.gsub(/[^0-9]/,'')
    if clean_number.length == 10 && (2..9).include?(clean_number[0].to_i) && (2..9).include?(clean_number[3].to_i)
      clean_number
    elsif clean_number.length == 11 && clean_number[0] == '1'
      clean_number[1..-1]
    else
      nil
    end
  end

end
