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

  def open_decrypt
    enigma = Enigma.new
    encrypted_message = ARGV[0]
    decrypted_message = ARGV[1]
    key = ARGV[2]
    date = ARGV[3] || nil
    file = File.open(encrypted_message, "r")
    file.read
    ciphertext = gets.chomp
    file.close
    decrypted = enigma.decrypt(ciphertext, key, date)
    puts "Created #{ARGV[0]} with the key #{ARGV[2]} and date #{ARGV[3]}"
  end

  def encrypted(created)
    writer = File.open(ARGV[0], "w")
    writer.write(created)
    writer.close
  end

  def decrypted(solved)
    writer = File.open(ARGV[0], "w")
    writer.write(solved)
    writer.close
  end
end
