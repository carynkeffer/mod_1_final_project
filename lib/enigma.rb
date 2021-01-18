require './lib/enigmatic'

class Enigma

  def random_number_generator
    key = rand(1000..99999).to_s.rjust(5, "0")
  end

  def today
    Time.now.strftime("%d%m%y")
  end

  def output(message, key, date)
    { encryption: message,
      key: key,
      date: date }
  end

  def encrypt(message, key = random_number_generator, date = today)
    encrypted(message, key, date)
    output(message, key, date)
  end

  def encrypted(message, key, date)
    encrypted = Hash.new
    encrypted["encrypted"] = encrypt_message(message, key, date)
    encrypted["output"] = output(message, key, date)
    encrypted
  end

  def encrypt_message(message, key, date)
    enigmatic = Enigmatic.new
    created = enigmatic.encrypt(message, key, date)
    created
  end

  def decrypt(ciphertext, key, date)
    # create a hash
  end
end
