module Shiftable

  def date_squared(date)
    date.to_i ** 2
  end

  def date_squared_last(date_squared)
    date_squared.digits[0..3].reverse
  end

  def offsets(date)
    date_squared_last(date_squared(date))
  end

  def all_keys(key)
    keys = []
    key.split("").each_cons(2) do |num|
      keys << num[0] + num[1]
    end
    keys.map { |k| k.to_i }
  end

  def each_shift_value(all_keys, date)
    zips = []
    all_keys.zip(offsets(date)) do |key|
      zips << key.sum
    end
    zips
  end

  def shifts(key, date)
    keys = all_keys(key)
    each_shift_value(keys, date)
  end

  def shifts_by_name(key, date)
    names = ["A", "B", "C", "D"]
    two_d = names.zip(shifts(key, date))
      two_d.reduce({}) do |hash, key|
        hash[key[0]] = key[1]
        hash
    end
  end

  def ordinal_values(message)
    ords = []
      message.chars.map do |char|
        if char.ord <= 96 || char.ord >= 123
          ords << char
        else
          ords << char.downcase.ord
        end
      end
    ords
  end

  def ords_by_index(message)
    by_index = Hash.new
    ordinal_values(message).each_with_index do |ord, index|
      by_index[index] = ord
    end
    by_index
  end

end
