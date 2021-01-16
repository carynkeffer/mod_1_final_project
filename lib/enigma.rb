require 'date'

class Enigma

  attr_reader :message,
              :key,
              :date

  def initialize(info)
    @message = info[:message]
    @key = info[:key] || rand(1000..99999).to_s
    @date = info[:date] || Date.today.to_s
  end
end
