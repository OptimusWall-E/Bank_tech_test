require_relative 'ledger.rb'

class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def print_statement
    if @transactions.empty?
      return 'date || credit || debit || balance'
    else @transactions.each { |entry|
      if entry > 0 
        return "date || #{entry.to_s} || || #{balance.to_s}"
      elsif entry < 0
        return "date || || #{entry.to_s}  || #{balance.to_s}"
      end
      }
    end

  end

  def balance
    @transactions.sum
  end
end