require './lib/enigma'

enigma = Enigma.new

file = File.open(ARGV[0], "r")
incoming_text = file.read
message = gets.chomp
file.close

encrypt = enigma.encrypt(message)

encrypted = incoming_text.downcase

writer = File.open(ARGV[0], "w")
writer.write(encrypted)
writer.close

puts "Created #{ARGV[0]} with the key #{encrypt["key:"]} and date #{encrypt["date:"]}"
