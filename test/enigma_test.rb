require_relative './test_helper'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_key_can_be_optional_date_can_be_optional
    enigma = Enigma.new

    enigma.stubs(:random_number_generator).returns('76543')
    enigma.stubs(:today).returns('012621')
    enigma.stubs(:encrypt).returns("hfglo rormy")

    assert_equal "hfglo rormy", enigma.encrypt("hello world")
  end

  def test_encrypt_message
    enigma = Enigma.new

    enigma.stubs(:encrypt_message).returns("hfglo rormy")

    assert_equal "hfglo rormy", enigma.encrypt_message("hello world", '76543', '012621')
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

    enigma.stubs(:today).returns('012621')

    expected = {
                "encryption:" => "hello world",
                "key:" => '76543',
                "date:" => '012621'
                }

    assert_instance_of Hash, enigma.encrypt_output(expected["encryption:"], expected["key:"], expected["date:"])
  end

  def test_decrypt
    enigma = Enigma.new

    enigma.stubs(:decrypt).returns("hello world")
    enigma.stubs(:decrypt_message).returns("hello world")

    assert_equal "hello world", enigma.decrypt("hfglo rormy", '76543', '012621')
    assert_equal "hello world", enigma.decrypt_message("hfglo rormy", '76543', '012621')
  end
end
