class Ledger
  attr_reader :balance

  def initialize
    @balance = 0.00
  end

  def deposit(payin)
    @balance += payin
  end

  def withdraw(take)
    @balance -= take
  end

end