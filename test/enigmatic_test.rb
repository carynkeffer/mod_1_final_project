require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigmatic'
require './lib/shift'
require 'mocha/minitest'

class EnigmaticTest < Minitest::Test
  def test_it_can_encrypt
    enigmatic = Enigmatic.new

    enigmatic.stubs(:today).returns('012621')
    enigmatic.stubs(:key).returns("05665")
    enigmatic.stubs(:message).returns("hello world")

    assert_equal "vodzc ocfvv", enigmatic.encrypt("hello world", "05665", '012621')
  end
end
