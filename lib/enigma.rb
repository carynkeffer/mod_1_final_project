class Enigma

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
