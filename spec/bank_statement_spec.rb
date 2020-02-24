require 'bank_statement'

describe BankStatement do

  it 'has a blank transaction history when initialized' do
    expect(subject.transaction_history).to be_empty
  end

  describe '#print_statement' do
    it 'prints date || credit || debit || balance if no transactions' do
      expect(subject.print_statement).to eq("date || credit || debit || balance")
    end
  end

  describe '#add_to_history' do
    it 'Adds a transaction to the transaction history' do
      transaction = {credit: 100.00, balance: 100.00}
      subject.add_to_history(transaction)
      expect(subject.transaction_history.count).to eq(1) 
    end
  end
  
end