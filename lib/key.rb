require './lib/enigma'

class Key < Enigma

  def all_keys
    keys = []
    @key.split("").each_cons(2) do |num|
      keys << num[0] + num[1]
    end
    keys
  end

  def keys_to_integers
    all_keys.map do |key|
      key.to_i
    end
  end

end
