x = File.open('encrypted.txt', "w")
puts "Created #{x.path} with the key #{} and date #{}"
require "pry"; binding.pry
file_path = ARGV[0]
response = ARGV[1]

f = File.new(file_path, "w+")
f.write(response)

require "pry"; binding.pry
puts "r u ok"
response = gets.chomp
require "pry"; binding.pry
