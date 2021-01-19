require_relative './shift'
require_relative './enigma'

class Enigmatic

  def encrypt(message, key, date)
    shifting = Shift.new
    new_message = shifting.to_letters(message, key, date)
    self.new_message(new_message)
  end

  def decrypt(ciphertext, key, date)
    shifting = Shift.new
    new_message = shifting.reverse_letters(message = ciphertext, key, date)
    self.new_message(new_message)
  end

  def new_message(new_message)
    enigma = Enigma.new
    enigma.crypted(new_message)
  end

end
