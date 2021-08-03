require_relative 'ledger.rb'

class Statement
  attr_reader :transactions

  def initialize
    @transactions = {}
  end

  def print_statement
    p 'date || credit || debit || balance'
  end
end