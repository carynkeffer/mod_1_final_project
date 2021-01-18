require './lib/shift'
require './lib/enigma'

class Enigmatic

  def encrypt(message, key, date)
    shifting = Shift.new
    shifting.shifts(key, date)
    shifting.parse_index(message, key, date)
    # require "pry"; binding.pry
  end


end
