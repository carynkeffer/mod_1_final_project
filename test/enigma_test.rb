require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_key_can_be_optional_date_can_be_optional
    enigma = Enigma.new

    enigma.stubs(:random_number_generator).returns('76543')
    enigma.stubs(:today).returns('012621')

    assert_equal "oxrdv cgyej", enigma.encrypt("hello world")
  end

  def test_random_number_generator
    enigma = Enigma.new

    assert_equal 5, enigma.random_number_generator.length
  end

  def test_it_can_find_todays_date
    enigma = Enigma.new

    assert_equal Time.now.strftime("%d%m%y"), enigma.today
  end

  def test_encrypt_output
    enigma = Enigma.new

    expected = {
                "encryption:" => "hello world",
                "key:" => '76543',
                "date:" => '012621'
                }

    assert_insatnce_of Hash, enigma.encrypt_output
  end
end
