class Crypt
  attr_reader :message,
              :key,
              :date

  def initialize(info)
    @message = info[:message]
    @key = info[:key]
    @date = info[:date]
  end
end
