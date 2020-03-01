# frozen_string_literal: true

require 'bank_statement'
require 'transaction'

describe BankStatement do
  subject { described_class.new }
  let(:transaction) { Transaction.new(100.00, 100.00, Time.now) }

  describe '#add_to_history' do
    it 'Adds a transaction to the transaction history' do
      subject.add_to_history(transaction)
      expect(subject.transaction_history.count).to eq(1)
      expect(subject.transaction_history.first).to eq(transaction)
    end
  end

end
