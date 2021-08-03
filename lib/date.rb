class Date
  attr_reader :time

  def initialize
    @time = Time.new
  end

  def transaction_date
    @time.strftime("%d/%m/%Y")
  end
end