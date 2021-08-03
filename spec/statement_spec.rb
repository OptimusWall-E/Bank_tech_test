require 'statement.rb'
require 'ledger.rb'

describe Statement do
  # let (:ledger) {Ledger.new}

  context '#print_statement' do
    it 'prints headings' do
      expect(subject.print_statement).to eq 'date || credit || debit || balance'
    end

    it 'prints statement entry including credit' do
      ledger = Ledger.new
      statement = ledger.base_statement
      ledger.deposit(100)
      expect(statement.print_statement).to eq 'date || 100.00 || debit || 100.00'
    end

    it 'prints statement entry including credit' do
      ledger = Ledger.new
      statement = ledger.base_statement
      ledger.withdraw(100)
      expect(statement.print_statement).to eq 'date || credit || -100.00 || -100.00'
    end

  end

end