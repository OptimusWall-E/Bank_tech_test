require 'ledger.rb'

describe Ledger do
  let (:statement) {subject.base_statement}
  context '#balance' do
    it 'shows a balance of zero' do
      expect(statement.balance).to eq 0.00
    end
  end

  context '#deposit' do
    it 'adds money to the balance' do
      expect(subject.deposit(100.00)[0]).to eq 100.00
    end
  end

  context '#withdrawal' do
    it 'deducts money from balance' do
      expect(subject.withdraw(100.00)[0]).to eq -100.00
    end
  end

  context 'can meet tech test balance specs' do
    it 'by taking deposits and withdrawals equalling 2500' do
      subject.deposit(1000.00)
      subject.deposit(2000.00)
      subject.withdraw(500.00)
      expect(statement.balance).to eq 2500.00
    end
  end


end