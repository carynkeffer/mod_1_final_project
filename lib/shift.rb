require './lib/datable'
require './lib/key'

class Shift < Key
  include Datable

  attr_reader :message

  def write(message)
    @message = message
  end

  def shifts
    zips = []
    keys_to_integers.zip(offsets) do |key|
      zips << key.sum
    end
    zips
  end

  def shifts_by_name
    names = ["A", "B", "C", "D"]
    two_d = names.zip(shifts)
      two_d.reduce({}) do |hash, key|
        hash[key[0]] = key[1]
        hash
    end
  end

  def ordinal_values
    ords = []
      @message.chars.map do |char|
        ords << char.downcase.ord
    end
    ords
  end

  def ords_by_index
    by_index = Hash.new
    ordinal_values.each_with_index do |ord, index|
      by_index[index] = ord
    end
    by_index
  end

  def parse_index
    shifted_ords = ords_by_index.map do |key|
      if key[0] % 4 == 3
        shifts_by_name["D"] + key[1]
      elsif key[0] % 4 == 2
        shifts_by_name["C"] + key[1]
      elsif key[0] % 4 == 1
        shifts_by_name["B"] + key[1]
      else
        shifts_by_name["A"] + key[1]
      end
    end
    shifted_ords
  end

  # def char_shift_by
  #   ordinal_values.rotate(shifts_by_name["A"])
  # end
  #
  # def add_ords_to_shifts
  #   x = ordinal_values("hello world")
  #   require "pry"; binding.pry
  #   # this is how you rotate ordinal values
  # end
end
