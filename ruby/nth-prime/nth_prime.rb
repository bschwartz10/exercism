class Prime

  def self.nth(num)
    raise ArgumentError.new unless num > 0
    (2..Float::INFINITY).lazy.select { |number| is_prime?(number) }.first(num).last
  end

  def self.is_prime?(num)
    (2..Math.sqrt(num).floor).all? { |num2| num % num2 != 0 }
  end

end

module BookKeeping
  VERSION = 1
end
