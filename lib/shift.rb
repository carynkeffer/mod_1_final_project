require './lib/encryptable'

class Shift
  include Encryptable

  attr_reader :key

  def initialize
    @key = key
  end

  def shifts_by_name
    names = ["A", "B", "C", "D"]
    two_d = names.zip(shifts)
      two_d.reduce({}) do |hash, key|
        hash[key[0]] = key[1]
        hash
    end
  end

  def ordinal_values(message)
    ords = []
      message.chars.map do |char|
        ords << char.downcase.ord
    end
    ords
  end

  def shift
    x = ordinal_values("hello world")
    require "pry"; binding.pry
    # this is how you rotate ordinal values
  end
end
