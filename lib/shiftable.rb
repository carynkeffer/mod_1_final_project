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

end
