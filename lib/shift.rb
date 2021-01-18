class Shift

  # attr_reader :message

  # def write(message)
  #   @message = message
  # end

  def date_squared
    @enigma.today.to_i ** 2
  end

  def offsets
    date_squared.digits[0..3].reverse
  end

  def all_keys
    keys = []
    require "pry"; binding.pry
    @enigma.key.split("").each_cons(2) do |num|
      keys << num[0] + num[1]
    end
    keys
  end

  def keys_to_integers
    all_keys.map do |key|
      key.to_i
    end
  end

  def shifts
    zips = []
    keys_to_integers.zip(offsets) do |key|
      zips << key.sum
    end
    zips
  end

  def shifts_by_name
    names = ["A", "B", "C", "D"]
    two_d = names.zip(shifts)
      two_d.reduce({}) do |hash, key|
        hash[key[0]] = key[1]
        hash
    end
  end

  def ordinal_values
    ords = []
      @message.chars.map do |char|
        if char.ord != 32
        ords << char.downcase.ord
      else
        ords << char = " "
      end
    end
    ords
  end

  def ords_by_index
    by_index = Hash.new
    ordinal_values.each_with_index do |ord, index|
      by_index[index] = ord
    end
    by_index
  end

  def counter(shift, ordinal)
    counter_value = shift
    until counter_value == 0
      ordinal += 1
      ordinal = 97 if ordinal == 123
      counter_value -= 1
    end
    ordinal
  end

  def parse_index
    shifted_ords = ords_by_index.map do |key|
      if key[1] == " "
        key[1] = " "
      elsif key[0] % 4 == 3
        counter(shifts_by_name["D"], key[1])
      elsif key[0] % 4 == 2
        counter(shifts_by_name["C"], key[1])
      elsif key[0] % 4 == 1
        counter(shifts_by_name["B"], key[1])
      else
        counter(shifts_by_name["A"], key[1])
      end
    end
    shifted_ords
  end

end
