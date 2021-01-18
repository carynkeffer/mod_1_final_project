require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigmatic'
require './lib/shift'

class EnigmaticTest < Minitest::Test
  def test_it_can_encrypt
    enigmatic = Enigmatic.new

    assert_equal [], enigmatic.encrypt
  end
end
