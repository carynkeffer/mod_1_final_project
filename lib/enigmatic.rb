require './lib/shift'
require './lib/enigma'
require './lib/crypt'

class Enigmatic

  def encrypt(message, key, date)
    shifting = Shift.new
    created = shifting.to_letters(message, key, date)
    created
    self.encrypted_message(created)
  end

  def encrypted_message(created)
    crypt = Crypt.new
    crypt.encrypted_message(created)
  end
end
