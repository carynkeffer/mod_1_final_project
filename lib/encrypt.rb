require './lib/shift'
require './lib/enigma'

shift = Shift.new
enigma = Enigma.new

file = File.open("#{ARGV[0]}", "r")
message = gets.chomp
require "pry"; binding.pry

file_2 = File.open("#{ARGV[1]}", "a+").each do |x|
        x << [enigma.encrypt(message, key, date)]
end
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
