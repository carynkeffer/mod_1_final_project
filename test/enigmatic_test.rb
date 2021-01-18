require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigmatic'
require './lib/shift'

class EnigmaticTest < Minitest::Test
  def test_it_exists_and_has_attributes
    enigmatic = Enigmatic.new

    assert_instance_of Enigmatic, enigmatic
    assert_instance_of Enigma, enigmatic.enigma
    assert_instance_of Shift, enigmatic.shift
  end

  def test_it_knows_message_key_date
    enigmatic = Enigmatic.new

    assert_equal "hello world", enigmatic.message
  end
end
