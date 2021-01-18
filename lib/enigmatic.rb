require './lib/enigma'
require './lib/shift'

class Enigmatic

  attr_reader :enigma,
              :shift

  def initialize
    @enigma = Enigma.new
    @shift = Shift.new
  end

  def message
    require "pry"; binding.pry
  end

end
