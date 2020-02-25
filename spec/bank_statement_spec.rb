require 'bank_statement'

describe BankStatement do

  it 'has a blank transaction history when initialized' do
    expect(subject.transaction_history).to be_empty
  end

  describe '#add_to_history' do
    it 'Adds a transaction to the transaction history' do
      transaction = {credit: 100.00, debit: nil, balance: 100.00}
      subject.add_to_history(transaction)
      expect(subject.transaction_history.count).to eq(1) 
    end

    it 'Adds a transaction to history with correct format' do
      transaction = {credit: 100.00, debit: nil, balance: 100.00}
      @time_now = Time.now.strftime("%d/%m/%Y")
      allow(Time).to receive(:now).and_return(@time_now)
      subject.add_to_history(transaction)
      expect(subject.transaction_history).to include({time: @time_now, credit: 100.00, debit: nil, balance: 100.00}) 
    end
  end
  
end