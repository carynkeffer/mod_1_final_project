require 'date'
require './lib/enigma'
require 'minitest/autorun'
require 'minitest/pride'

class EnigmaTest < Minitest::Test
  def test_it_is
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_encrypt_can_take_all_arguments
    enigma = Enigma.new

    expected = {encryption => "hello world",
                key => "02715",
                date => "040895"}

    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end
end
