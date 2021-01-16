require 'date'
require './lib/enigma'
require 'minitest/autorun'
require 'minitest/pride'

class EnigmaTest < Minitest::Test
  def test_it_is
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_it_can_encrpyt_with_three_given_arguments
    enigma = Enigma.new

    expected = {
              encryption: "hello world",
              key: "02715",
              date: "040895"
              }

    assert_instance_of Hash, enigma.encryption
    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end
end
