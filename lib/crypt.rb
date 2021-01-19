require './lib/enigma'

class Crypt

  def open
       enigma = Enigma.new
     readable = ARGV[0]
    writeable = ARGV[1]
          key = ARGV[2] || nil
         date = ARGV[3] || nil
    file = File.open(ARGV[0], "r")
    file.read
    message = gets.chomp
    file.close
      if ARGV[2] == nil
        encrypted = enigma.encrypt(message)
        puts "Created #{ARGV[0]} with the key #{encrypted["key:"]} and date #{encrypted["date:"]}"
      else
        decrypted = enigma.decrypt(message, key, date)
        puts "Created #{ARGV[0]} with the key #{ARGV[2]} and date #{ARGV[3]}"
      end
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
