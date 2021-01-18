require './lib/shift'
require './lib/enigma'

class Enigmatic

  def encrypt(message, key, date)
    shifting = Shift.new
    created = shifting.to_letters(message, key, date)
    self.new_message(created)
  end

  def new_message(created)
    enigma = Enigma.new
    enigma.encrypted(created)
  end


end
