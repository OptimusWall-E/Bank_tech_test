class Ledger
  attr_reader :balance, :statement

  def initialize
    @balance = 0.00
    @statement = Statement.new
  end

  def deposit(payin)
    @statement.transactions << payin
  end

  def withdraw(take)
    @statement.transactions << take
  end

end