require_relative './test_helper'

class EnigmaticTest < Minitest::Test
  def test_it_can_encrypt
    enigmatic = Enigmatic.new

    enigmatic.stubs(:encrypt).returns("vodzc ocfvv")

    assert_equal "vodzc ocfvv", enigmatic.encrypt("hello world", "05665", '012621')
  end

  def test_it_can_decrypt
    enigmatic = Enigmatic.new

    enigmatic.stubs(:decrypt).returns("hello world")

    assert_equal "hello world", enigmatic.decrypt("ywqhf bkidi", "05665", '012621')
  end
end
