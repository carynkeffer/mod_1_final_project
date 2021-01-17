require 'date'
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
    keys
  end

  def shift
    shifts = Hash.new
    ["a", "b", "c", "d"].each do |letter|
      all_keys.each do |key|
        offsets.each do |offset|
          shifts[letter] = key.to_i + offset
        end
      end
    end
    shifts
  end
end
