
red = gets.chomp
blue = ARGV[1]

puts "please enter a response"
response = gets.chomp

red_file = File.new(red, "w")
red_file.write(response)
 
