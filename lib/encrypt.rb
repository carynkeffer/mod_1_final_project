require './lib/crypt'


writer = File.open(ARGV[0], "w")
writer.write(encrypted)
writer.close

puts "Created #{ARGV[0]} with the key #{encrypted["key:"]} and date #{encrypted["date:"]}"
