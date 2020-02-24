require 'bank_statement'

describe BankStatement do

  it 'has a blank transaction history when initialized' do
    expect(subject.transactions).to be_empty
  end
  
end