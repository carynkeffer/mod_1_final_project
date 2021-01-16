require 'date'

class Shift
  attr_reader :key

  def initialize
    @key = key
  end

  def random_number_generator
    @key = rand(1000..99999).to_s.rjust(5, "0")
  end

  def a_key
    @key[0..1]
  end
end
