module Encryptable
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

    def todays_date
      month + day + year
    end

    def date_squared
      todays_date.to_i ** 2
    end

    def offsets
      date_squared.digits[0..3].reverse
    end
end
