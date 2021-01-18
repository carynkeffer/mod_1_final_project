class Crypt

  enigma = Enigma.new

  file = File.open(ARGV[0], "r")
  file.read
  message = gets.chomp
  file.close

  encrypted = enigma.encrypt(message)
  
  def encrypted_message(created)
    created
  end

end
