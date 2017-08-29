# 47 plus its reverse (47 => 74) add together to a
# number (121) which is a palindrome
# starting at 0, find the first 25 numbers
# that have this same characteristic where the
# palindrome is greater than 1000
class Palindrome

  def self.palindrome
    results = []
    (0..1500).each do |num|
      palindrome = true
      if num.to_s.length >= 3
        reverse_num = num.to_s.reverse.to_i
        sum = num + reverse_num
        sum.to_s.chars.each_with_index do |digit, i|
          reverse_sum = sum.to_s.reverse
          palindrome = false unless digit == reverse_sum[i]
        end
        results << num if palindrome && sum > 1000
      end
    end
    results.first(25)
  end

end

p Palindrome.palindrome
