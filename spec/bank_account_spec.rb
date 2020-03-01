# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  let(:statement) { double :statement }
  subject { described_class.new(statement) }

  before do
    allow(statement).to receive(:add_to_history)
  end

  describe '#deposit' do
    it 'Deposit of 10.00 increases balance to 10.00' do
      expect(subject.deposit(10.00)).to eq(10.00)
    end

    it 'Continues to increase balance if 100.00 is deposited' do
      subject.deposit(10.00)
      expect(subject.deposit(100.00)).to eq(110.00)
    end
  end

  describe '#withdraw' do
    it 'Balance cannot decrease below 0' do
      expect { subject.withdraw(50.00) }.to raise_error "Account balance is #{subject.balance}. Cannot make withdrawal."
    end

    it 'Decreases balance by 10.00' do
      subject.deposit(100.00)
      expect(subject.withdraw(10.00)).to eq(90.00)
    end

    it 'Balance cannot be negative' do
      subject.deposit(10)
      expect { subject.withdraw(20) }.to raise_error "Account balance is #{subject.balance}. Cannot make withdrawal."
    end
  end
end
