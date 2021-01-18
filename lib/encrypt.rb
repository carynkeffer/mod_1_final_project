require './lib/enigma'

enigma = Enigma.new
file = File.open(ARGV[0], "r")
file.read
message = gets.chomp
file.close

encrypted = enigma.encrypt(message)

writer = File.open(ARGV[0], "w")
writer.write(encrypted)
writer.close

puts "Created #{ARGV[0]} with the key #{encrypted[:key]} and date #{encrypted[:date]}"
