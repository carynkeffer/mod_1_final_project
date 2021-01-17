require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_key_can_be_optional
    enigma = Enigma.new

    expected = {
                "encryption:" => "hello world",
                "key:" => nil,
                "date:" => nil
                }

    assert_equal expected, enigma.encrypt("hello world")
  end
end
