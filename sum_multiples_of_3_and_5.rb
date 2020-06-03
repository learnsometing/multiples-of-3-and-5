# frozen_string_literal: true

def sum_multiples_of_3_and_5(num)
  # Subtract 1 to remain below input
  top = num - 1
  sum = 0

  (0..top).each { |i| sum += i if (i % 3).zero? || (i % 5).zero? }

  sum
end
