require_relative 'bank_statement'

class Transaction

  attr_reader :transaction

  def initialize(bank_statement = BankStatement.new)
    @bank_statement = bank_statement
    @transaction = Hash.new
  end

  def make_transaction(ammount, balance)
    if ammount.negative?
      @transaction[:debit] = (format '%.2f', ammount.abs).to_i
      @transaction[:credit] = nil
    else
      @transaction[:debit] = nil
      @transaction[:credit] = (format '%.2f', ammount).to_i
    end
    @transaction[:balance] = (format '%.2f', balance).to_i
    @transaction[:time] = date
    @transaction
  end

  def add_to_statement
    @bank_statement.add_to_history(@statement)
    @statement = Hash.new
  end

  private

  def date
    Time.new.strftime('%d/%m/%Y')
  end

end
