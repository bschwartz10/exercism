class SumOfMultiples
  attr_reader :num_one, :num_two, :num_three

  def initialize(num_one=nil, num_two=nil, num_three=nil)
    @num_one = num_one
    @num_two = num_two
    @num_three = num_three
  end

  def to(number)
    (1...number).reduce(0) do |total, num|
      if num_three
        num % num_one == 0 || num % num_two == 0 || num % num_three == 0 ? total + num : total
      elsif num_two
        num % num_one == 0 || num % num_two == 0 ? total + num : total
      elsif num_one
        num % num_one == 0 ? total + num : total
      else
        0
      end
    end
  end

end

module BookKeeping
  VERSION = 1
end
