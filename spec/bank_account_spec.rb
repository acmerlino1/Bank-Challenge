require 'bank_account'

describe BankAccount do
  subject { BankAccount.new }
  let(:bank_statement) { double :bank_statement }

  it 'starts with a balance of 0' do
    expect(subject.balance).to eq(0)
  end

  it 'Has a bank statement' do
    expect(subject.bank_statement).to be_an_instance_of(BankStatement)
  end

  describe '#depost' do
    it 'Deposit of 10.00 increases baance to 10.00' do
      subject.deposit(10.00)
      expect(subject.balance).to eq(10.00)
    end

    it 'Continues to increase balance if 100.00 is deposited' do
      subject.deposit(10.00)
      subject.deposit(100.00)
      expect(subject.balance).to eq(110.00)
    end
  end

  describe '#withdraw' do
    it 'Balance cannot decrease below 0' do
      expect { subject.withdraw(50.00) }.to raise_error 'Cannot make withdrawal when balance is 0'
    end

    it 'Decreases balance by 10.00' do
      subject.deposit(100.00)
      subject.withdraw(10.00)
      expect(subject.balance).to eq(90.00)
    end
  end

  describe '#view_statement' do
    it 'Prints account statement in correct format' do
      subject.deposit(100.00)
      subject.withdraw(10.00)
      expect(subject.view_statement).to be_kind_of(Array)
    end
  end

end
