require './lib/encryptable'

class Shift
  include Encryptable

  attr_reader :key

  def initialize
    @key = key
  end

  def random_number_generator
    @key = rand(1000..99999).to_s.rjust(5, "0")
  end

  def all_keys
    keys = []
    @key.split("").each_cons(2) do |num|
      keys << num[0] + num[1]
    end
    keys.map do |key|
      key.to_i
    end
  end

  def shifts
    zips = []
    all_keys.zip(offsets) do |key|
      zips << key.sum
    end
    zips
  end

  def ordinal_values
    # assign ordinal values to each letter in the message
  end

  def shift
    # this is how you rotate ordinal values
  end
end
