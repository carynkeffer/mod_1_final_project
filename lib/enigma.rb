class Enigma

  def encrypt(message, key, date)
    encrypt_output = Hash.new
    encrypt_output["encryption:"] = message
    encrypt_output["key:"] = key || self.random_number_generator
    encrypt_output["date:"] = date || self.today
    encrypt_output
  end

  def decrypt(message, key, date)
    # create a hash
  end

  def random_number_generator
    key = rand(1000..99999).to_s.rjust(5, "0")
  end

  def today
    Time.now.strftime("%d%m%y")
  end

end
