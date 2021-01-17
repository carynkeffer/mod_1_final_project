require './shift'
require './enigma'

shift = Shift.new
enigma = Enigma.new(shift)

file = File.open("#{ARGV[0]}", "r").each do |line|
  require "pry"; binding.pry
  File.open("encrypted.txt", "a+").each do |x|

    # x << [enigma.encrypt(message, key, date)]
  end
end


#
#
#
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
