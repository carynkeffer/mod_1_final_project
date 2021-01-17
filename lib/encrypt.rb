file = File.open('lib/#{ARGV[0]}', "r")
enigma = Enigma.new
enigma.encrypt(message, key, date)
key =

date = ARGV[2]

enigma.encrypt(message, key, date)

new_file = File.new('lib/#{ARGV[1]}', "w")
f.write(response)

response = gets.chomp

puts "Created #{file.path} with the key #{} and date #{}"
