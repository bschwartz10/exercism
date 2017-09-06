# Method name: fibonacci
# Inputs:      A single non-negative integer, n
# Returns:     The n-th Fibonacci number (see below)
# Prints:      Nothing

# The Fibonacci numbers are the numbers in the following sequence:
#
# n       0  1  2  3  4  5  6   7   8   9  10  11  12  13  14
# fib(n)  0  1  1  2  3  5  8  13  21  34  55  89 144 233 377
#
# If you can't see the pattern, you start with the numbers 0 and 1. From there,
# every subsequent number is the sum of the previous two numbers. That is,
#
# 0 + 1 = 1
# 1 + 1 = 2
# 1 + 2 = 3
# 2 + 3 = 5
# 3 + 5 = 8

class Fibonacci

  def self.compute(num)
    return 0 if num == 0
    return 1 if num == 1

    count = 1
    a = 0
    b = 0
    c = 1

    until count == num
      count += 1
      c = a + b
      a = b
      b = c
    end
    c
  end

  # def self.compute(num, count=1, a=0, b=1, c =0)
  #   if count == num
  #     return c
  #   else
  #     c = a + b
  #     a = b
  #     b = c
  #     count += 1
  #     compute(num, count, a, b, c)
  #   end
  # end

end
