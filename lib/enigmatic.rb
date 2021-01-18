require './lib/shift'
require './lib/enigma'

class Enigmatic

  def encrypt(message, key, date)
    shifting = Shift.new
    created = shifting.to_letters(message, key, date)
    created
  end


end
