require './lib/enigma'

enigma = Enigma.new

file = File.open(ARGV[0], "r")
incoming_text = file.read
message = gets.chomp
file.close

output = enigma.encrypt(message)

writer = File.open(ARGV[0], "w")
writer.write(output)
writer.close

puts "Created #{ARGV[0]} with the key #{output["key:"]} and date #{output["date:"]}"
