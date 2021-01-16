require 'time'

class Enigma
  attr_reader :encryption

  def initialize
    @encryption = Hash.new
  end

  def encrypt(message, key, date)
  end
end
