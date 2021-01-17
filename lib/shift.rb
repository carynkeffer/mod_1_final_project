require 'date'

class Shift
  attr_reader :key

  def initialize
    @key = key
  end

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

  def today
    Date.today.strftime
  end

  def year
    today[2..3]
  end

  def day
    today[8..9]
  end

  def month
    today[5..6]
  end

  def offset
    month + day + year
  end
end
