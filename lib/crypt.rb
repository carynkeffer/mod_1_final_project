require './lib/enigma'

class Crypt

  def open_encrypt
    enigma = Enigma.new
    file = File.open(ARGV[0], "r")
    file.read
    message = gets.chomp
    file.close
    encrypted = enigma.encrypt(message)
    puts "Created #{ARGV[0]} with the key #{encrypted["key:"]} and date #{encrypted["date:"]}"
  end

  # writer = File.open(ARGV[0], "w")
  # writer.write(encrypted)
  # writer.close


  def encrypted(created)
    created
  end
end
