require 'date.rb'

describe Date do
let(:time) {Time.new}
  context '#today' do
    it 'returns today\'s date' do
      expect(subject.transaction_date).to eq (time.strftime("%d/%m/%Y"))
    end
  end

end