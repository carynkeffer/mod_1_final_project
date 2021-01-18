require './lib/enigma'
require './lib/shift'

class Enigmatic

  attr_reader :enigma

  def initialize
    @enigma = Enigma.new
    @shift = Shift.new
  end

end
