require './lib/shift'
require './lib/enigma'

shift = Shift.new
enigma = Enigma.new

file = File.open(ARGV[0], "r")
