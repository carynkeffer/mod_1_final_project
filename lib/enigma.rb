require './lib/enigmatic'
require './lib/crypt'

class Enigma

  def random_number_generator
    key = rand(1000..99999).to_s.rjust(5, "0")
  end

  def today
    Time.now.strftime("%d%m%y")
  end

  def encrypt(message, key = random_number_generator, date = today)
    encrypt_message(message, key, date)
    encrypt_output = Hash.new
    encrypt_output["encryption:"] = message
    encrypt_output["key:"] = key
    encrypt_output["date:"] = date
    encrypt_output
  end

  def encrypt_message(message, key, date)
    enigmatic = Enigmatic.new
    enigmatic.encrypt(message, key, date)
  end

  def encrypted(created)
    crypt = Crypt.new
    crypt.encrypted(created)
  end

  def decrypt(ciphertext, key, date)
    # create a hash
  end
end
