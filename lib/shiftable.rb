module Shiftable

  def date_squared(today)
    today.to_i ** 2
  end

  def date_squared_last(date_squared)
    date_squared.digits[0..3].reverse
  end

  def offsets(today)
    date_squared_last(date_squared(today))
  end

  def all_keys(key)
    keys = []
    key.split("").each_cons(2) do |num|
      keys << num[0] + num[1]
    end
    keys.map { |k| k.to_i }
  end

  def each_shift_value(all_keys)
    zips = []
    all_keys.zip(offsets(today)) do |key|
      zips << key.sum
    end
    zips
  end

  def shifts(key, today)
    keys = all_keys(key)
    each_shift_value(keys)
  end
end
