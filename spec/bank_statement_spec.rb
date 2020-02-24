require 'bank_statement'

describe BankStatement do

  it 'has a blank transaction history when initialized' do
    expect(subject.transactions).to be_empty
  end

  describe '#print_statement' do
    it 'prints date || credit || debit || balance if no transactions' do
      expect(subject.print_statement).to eq("date || credit || debit || balance")
    end
  end
  
end