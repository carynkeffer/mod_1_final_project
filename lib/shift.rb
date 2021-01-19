require './lib/enigmatic'
require './lib/shiftable'

class Shift
  include Shiftable

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

  def reverse_counter(shift, ordinal)
    counter_value = shift
      until counter_value == 0
        ordinal -= 1
        ordinal = 122 if ordinal == 96
        counter_value -= 1
      end
      ordinal
  end

  def reverse_index(message, key, date)
    shifted_ords = ords_by_index(message).map do |join|
      if join[1].class == String
        join[1] = join[1]
      elsif join[0] % 4 == 3
        reverse_counter(shifts_by_name(key, date)["D"], join[1])
      elsif join[0] % 4 == 2
        reverse_counter(shifts_by_name(key, date)["C"], join[1])
      elsif join[0] % 4 == 1
        reverse_counter(shifts_by_name(key, date)["B"], join[1])
      else
        reverse_counter(shifts_by_name(key, date)["A"], join[1])
      end
    end
    shifted_ords
  end

  def reverse_letters(message, key, date)
    letters = reverse_index(message, key, date).map do |ord|
      ord.chr
    end
    letters.join
  end

end
