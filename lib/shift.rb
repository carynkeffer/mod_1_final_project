require './lib/enigmatic'
require './lib/shiftable'

class Shift
  include Shiftable

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

  def counter(shift, ordinal)
    counter_value = shift
      until counter_value == 0
        ordinal += 1
        ordinal = 97 if ordinal == 123
        counter_value -= 1
      end
      ordinal
  end

  def parse_index(message, key, date)
    shifted_ords = ords_by_index(message).map do |join|
      if join[1].class == String
        join[1] = join[1]
      elsif join[0] % 4 == 3
        counter(shifts_by_name(key, date)["D"], join[1])
      elsif join[0] % 4 == 2
        counter(shifts_by_name(key, date)["C"], join[1])
      elsif join[0] % 4 == 1
        counter(shifts_by_name(key, date)["B"], join[1])
      else
        counter(shifts_by_name(key, date)["A"], join[1])
      end
    end
    shifted_ords
  end

  def to_letters(message, key, date)
    letters = parse_index(message, key, date).map do |ord|
      ord.chr
    end
    letters.join
  end

  def encrypt_output(message, key, date)
    
  end

end
