class Ledger
  attr_reader :balance
  attr_accessor :base_statement

  def initialize
    @base_statement = Statement.new
  end

  def deposit(payin)
    @base_statement.transactions.prepend(payin.round(2))
  end

  def withdraw(take)
    @base_statement.transactions.prepend(-take.round(2))
  end

end