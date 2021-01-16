require 'date'

class Shift
  attr_reader :key

  def initialize
    @key = rand(1000..99999).to_s.rjust(5, "0")
  end

  def a_key
    random_5_digit[0..1]
  end
end
