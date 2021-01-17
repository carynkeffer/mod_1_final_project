x = File.open('decrypted.txt', "r")
puts "Created #{x.path} with the key #{} and date #{}"

enigma = Enigma.new
engima.decrypt(message, key, date)
