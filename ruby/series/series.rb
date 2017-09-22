class Series
  attr_reader :digits

  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    raise ArgumentError.new if digits.length < length
    index = 0
    result = []
    until index == digits.length
      series = digits.slice(index, length)
      result << series if series.length >= length
      index += 1
    end
    result
  end

end
