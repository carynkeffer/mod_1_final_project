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

  def decrypt(ciphertext, key, date)
    shifting = Shift.new
    solved = shifting.reverse_letters(message = ciphertext, key, date)
    require "pry"; binding.pry
  end


end
