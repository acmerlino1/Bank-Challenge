require_relative 'bank_statement'

class BankAccount
  attr_reader :balance, :transaction, :bank_statement

  def initialize(bank_statement = BankStatement.new)
    @balance = 0.00
    @transaction = []
    @bank_statement = bank_statement
  end

  def deposit(ammount)
    @balance += ammount
    @transaction << {credit: ammount, balance: @balance}
  end

  def withdraw(ammount)
    raise 'Cannot make withdrawal when balance is 0' if @balance == 0

    @balance -= ammount
    @transaction << {debit: ammount, balance: @balance}
  end

  def add_to_statement
    @transaction.pop
  end

end
