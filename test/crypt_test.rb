require 'minitest/autorun'
require 'minitest/pride'
require './lib/crypt'

class CryptTest < Minitest::Test
  def test_it_exists
    crypt = Crypt.new({message: "hello world", key: "02715", date: "040895"})

    assert_instance_of Crypt, crypt
  end

  def test_it_has_attributes
    crypt = Crypt.new({message: "hello world", key: "02715", date: "040895"})

    assert_equal "hello world", crypt.message
    assert_equal "02715", crypt.key
    assert_equal "040895", crypt.date
  end

end
