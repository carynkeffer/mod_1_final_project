module Datable

  def date_squared
    today.to_i ** 2
  end

  def offsets
    date_squared.digits[0..3].reverse
  end

end
