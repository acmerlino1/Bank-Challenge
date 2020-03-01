require 'transaction'

# describe Transaction do 

#   subject { described_class.new }

#   before do
#     @time_now = Time.now.strftime('%d/%m/%Y')
#     allow(Time).to receive(:now).and_return(@time_now)
#     allow(bank_statement).to receive(:add_to_history)
#   end

#   describe '#make_transaction' do
#     it 'makes transaction with credit' do
#       expect(subject.make_transaction(100, 100)).to eq({time: @time_now, credit: 100.00, debit: nil, balance: 100.00})
#     end

#     it 'makes transaction with debit' do
#       expect(subject.make_transaction(-100, 100)).to eq({time: @time_now, credit: nil, debit: 100.00, balance: 100.00})
#     end
#   end

#   describe '#add_to_statement' do
#     it 'Stores transaction in statement class and clears transaction' do
#       subject.add_to_statement
#       expect(subject.transaction).to be_empty 
#     end
#   end
# end
