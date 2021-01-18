require './lib/shift'
require './lib/enigma'

shift = Shift.new
enigma = Enigma.new

file = File.open(ARGV[0], "r")
incoming_text = file.read
file.close
encrypted = incoming_text.upcase
message = gets.chomp
puts "Created #{ARGV[0]} with the key"
# require "pry"; binding.pry
writer = File.open(ARGV[0], "w")
writer.write(encrypted)
writer.close
        # enigma.encrypt(message, key, date)

require "pry"; binding.pry

# date = ARGV[2]
#
# enigma.encrypt(message, key, date)
#
# new_file = File.new('lib/#{ARGV[1]}', "w")
# f.write(response)
#
# response = gets.chomp
#
# puts "Created #{file.path} with the key #{} and date #{}"
