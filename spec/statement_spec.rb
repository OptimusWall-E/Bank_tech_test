require 'statement.rb'
require 'ledger.rb'
require 'date.rb'

describe Statement do
  let(:time) {Time.new}
  let(:ledger) {Ledger.new}
  let(:statement) {ledger.base_statement}


  context '#balance' do
    it 'returns the statement balance' do
      # ledger = Ledger.new
      # statement = ledger.base_statement
      ledger.deposit(100.00)
      expect(statement.balance).to eq(100.00)
    end
  end

  context '#print_statement' do
    it 'prints headings' do
      expect(subject.print_statement).to eq "#{time.strftime("%d/%m/%Y")} || credit || debit || balance"
    end

    it 'prints statement entry including single credit' do
      ledger = Ledger.new
      statement = ledger.base_statement
      ledger.deposit(100.00)
      expect(statement.print_statement).to eq "#{time.strftime("%d/%m/%Y")} || 100.00 || || 100.00"
    end

    it 'prints statement entry including single debit ' do
      ledger = Ledger.new
      statement = ledger.base_statement
      ledger.withdraw(100)
      expect(statement.print_statement).to eq "#{time.strftime("%d/%m/%Y")} || || -100.00 || -100.00"
    end

    it 'prints statement entry multiple debits and credits' do
      ledger = Ledger.new
      statement = ledger.base_statement
      ledger.deposit(100.00)
      ledger.deposit(100.00)
      ledger.withdraw(50.00)
      expect(statement.print_statement).to eq "#{time.strftime("%d/%m/%Y")} || 100.00 || || 150.00"
    end

    it 'prints today\'s date' do
      ledger = Ledger.new
      statement = ledger.base_statement
      ledger.deposit(100.00)
      expect(statement.print_statement).to eq "#{time.strftime("%d/%m/%Y")} || 100.00 || || 100.00"
    end
  end

end