require 'date'
require './lib/enigma'
require 'minitest/autorun'
require 'minitest/pride'

class EnigmaTest < Minitest::Test
  def test_it_is
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end
end
