class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    primes = []
    (2..limit).each do |number1|
      prime = true
      (2...number1).each do |number2|
        prime = false if number1 % number2 == 0
      end
      primes << number1 if prime
    end
    primes
  end

end

module BookKeeping
  VERSION = 1
end
