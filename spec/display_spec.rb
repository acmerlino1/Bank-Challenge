require 'display'

describe Display do

  before do
    @time_now = Time.now.strftime('%d/%m/%Y')
    allow(Time).to receive(:now).and_return(@time_now)
  end

  describe '#title' do
    it 'Has a title for statement' do
      expect(subject.title).to eq('date || credit || debit || balance')
    end
  end
  
end