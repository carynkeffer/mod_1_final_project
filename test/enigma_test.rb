require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require 'date'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new({message: "hello world", key: "02715", date: "040895"})

    assert_instance_of Enigma, enigma
  end

  def test_it_has_attributes
    enigma = Enigma.new({message: "hello world", key: "02715", date: "040895"})

    assert_equal "hello world", enigma.message
    assert_equal "02715", enigma.key
    assert_equal "040895", enigma.date
  end

  def test_date_can_take_no_argument
    enigma = Enigma.new({message: "hello world", key: "02715"})

    assert_equal Date.today.to_s, enigma.date
  end

  def test_key_can_take_no_argument
    enigma = Enigma.new({message: "hello world"})

    assert_instance_of String, enigma.key
  end
end
