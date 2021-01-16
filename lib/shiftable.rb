require 'date'

module Shiftable
  def sum_of(num1, num2)
    num1 + num2
  end

  def random_5_digit
    key = rand(1000..99999).to_s
    if key.length == 4
      key = sum_of("0", key)
      return key
    end
  end
end
