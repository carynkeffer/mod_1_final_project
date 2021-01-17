class Key

  def random_number_generator
    @key = rand(1000..99999).to_s.rjust(5, "0")
  end

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
