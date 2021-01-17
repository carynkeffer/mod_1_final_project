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

    def offset
      month + day + year
    end
end
