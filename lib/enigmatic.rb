require './lib/shift'
require './lib/enigma'

class Enigmatic

  def encrypt(message, key, date)
    shifting = Shift.new
    created = shifting.to_letters(message, key, date)
    self.encrypted_message(created)
  end

  def encrypted_message(created)
    enigma = Enigma.new
    enigma.x(created)
  end


end
