require './lib/enigma'

enigma = Enigma.new

file = File.open(ARGV[0], "r")
