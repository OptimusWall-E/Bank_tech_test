require_relative 'ledger.rb'

class Statement
  attr_reader :transactions, :statement, :time

  def initialize
    @transactions = []
    @time = Time.new
    @statement = []
  end

  def log_transactions
    if @transactions.empty?
      return "#{@time.strftime("%d/%m/%Y")} || credit || debit || balance"
    else @transactions.each do |entry|
        if entry > 0 
          @statement.prepend("#{@time.strftime("%d/%m/%Y")} || #{entry.to_i.to_s}.00 || || #{balance.to_i.to_s}.00")
        elsif entry < 0
          @statement.prepend("#{@time.strftime("%d/%m/%Y")} || || #{entry.to_i.to_s}.00 || #{balance.to_i.to_s}.00")
        end
      end
    end
  end

  def balance
    @transactions.sum
  end

  def print_statement
    p "date || credit || debit || balance"
    @statement.each do |record|
      puts record
    end
  end
end

