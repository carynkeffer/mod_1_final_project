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

  def encrypted(created)
    created
    file = ARGV[0]
    writer = File.open(file, "w")
    writer.write(created)
    writer.close
  end
end
