# frozen_string_literal: true

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples_of_divisor(num, divisor)
  #   returns the sum of all numbers below num that are divisible by divisor
  #   Summation formula: (n*(n + 1))/2

  limit = num - 1
  (((divisor * (limit / divisor)) * ((limit / divisor) + 1))) / 2
end

def sum_multiples_of_3_and_5(num)
  #   returns the sum of all multiples of three and five below num
  #
  #   Sum all numbers divisible by 3: (3 * limit / 3) * ((limit / 3) + 1) / 2
  #   Sum all numbers divisible by 5: (5 * limit / 5) * ((limit / 5) + 1) / 2
  #
  #   Subtract the sum of terms divisible by the GCD of 3 and 5:
  #   (15 * limit / 15) * ((limit / 15) + 1) / 2

  sum_multiples_of_divisor(num, 3) + sum_multiples_of_divisor(num, 5) - sum_multiples_of_divisor(num, 15)
end
