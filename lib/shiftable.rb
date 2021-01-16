require 'date'

module Shiftable
  def sum_of(num1, num2)
    num1 + num2
  end

  def random_5_digit
    key = rand(1000..99999).to_s.rjust(5, "0")
  end

  def a_key
    random_5_digit[0..1]
  end
end
