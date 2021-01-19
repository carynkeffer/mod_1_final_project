require_relative './enigma'

class Crypt

  def open
       enigma = Enigma.new
     readable = ARGV[0]
    writeable = ARGV[1]
          key = ARGV[2] || nil
         date = ARGV[3] || nil
    file = File.open(ARGV[0], "r")
    file.read
      if ARGV[2] == nil
        message = gets.chomp
        file.close
        encrypted = enigma.encrypt(message)
        puts "Created #{ARGV[0]} with the key #{encrypted["key:"]} and date #{encrypted["date:"]}"
      else
        ciphertext = gets.chomp
        file.close
        decrypted = enigma.decrypt(ciphertext, key, date)
        puts "Created #{ARGV[0]} with the key #{ARGV[1]} and date #{ARGV[2]}"
      end
  end

  def crypted(new_message)
    writer = File.open(ARGV[0], "w")
    writer.write(new_message)
    writer.close
  end

end
