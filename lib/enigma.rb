class Enigma

  def random_number_generator
    @key = rand(1000..99999).to_s.rjust(5, "0")
  end

  def encrypt(message, key = nil, date = nil)
    encrypt_output = Hash.new
    encrypt_output["encryption:"] = message
    encrypt_output["key:"] = key
    encrypt_output["date:"] = date
    encrypt_output
  end

  def decrypt(message, key, date)
    # create a hash
  end
end
