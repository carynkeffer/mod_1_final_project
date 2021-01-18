require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigmatic'

class EnigmaticTest < Minitest::Test
  def test_it_exists
    enigmatic = Enigmatic.new

    assert_instance_of Enigmatic, enigmatic
  end
end
