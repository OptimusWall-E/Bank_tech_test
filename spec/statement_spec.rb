require 'statement.rb'

describe Statement do

  context '#print_statement' do
    it 'prints headings' do
      expect(subject.print_statement).to eq 'date || credit || debit || balance'
    end
  end

end