class Binary

  def self.to_decimal(input)
    raise ArgumentError.new if input.match(/[^01]/)
    index = -1
    input.reverse.chars.reduce(0) do |sum, num|
      index += 1
      sum + (num.to_i * (2 ** index))
    end
  end

end

module BookKeeping
  VERSION = 3
end
