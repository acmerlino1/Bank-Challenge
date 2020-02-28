# frozen_string_literal: true

require 'bank_statement'

describe BankStatement do
  subject { described_class.new }

  before do
    @time_now = Time.now.strftime('%d/%m/%Y')
    allow(Time).to receive(:now).and_return(@time_now)
    @transaction = { credit: 100.00, debit: nil, balance: 100.00, time: @time_now }
  end

  describe '#add_to_history' do
    it 'Adds a transaction to the transaction history' do
      subject.add_to_history(@transaction)
      expect(subject.transaction_history.count).to eq(1)
    end

    it 'Adds a transaction to history with correct format' do
      subject.add_to_history(@transaction)
      expect(subject.transaction_history).to include(
        time: @time_now,
        credit: 100.00,
        debit: nil,
        balance: 100.00
      )
    end
  end

end
