require 'statement.rb'
require 'ledger.rb'
require 'date.rb'

describe Statement do
  let(:time) {Time.new}
  let(:ledger) {Ledger.new}
  let(:statement) {ledger.base_statement}


  context 'get statement' do
    it 'takes deposits and withdrawals and returns statement' do
      ledger.deposit(100.00)
      ledger.deposit(100.00)
      ledger.withdraw(50.00)
      ledger.deposit(5000.00)
      ledger.withdraw(450.00)
      statement.log_transactions
      expect(statement.print_statement).to eq "#{time.strftime("%d/%m/%Y")} || || -450.00 || 4700.00, #{time.strftime("%d/%m/%Y")} || || 5000.00 || 5150.00, #{time.strftime("%d/%m/%Y")} || || -50.00 || 150.00, #{time.strftime("%d/%m/%Y")} || || 100.00 || 200.00, #{time.strftime("%d/%m/%Y")} || || 100.00 || 100.00"
    end
  end

end