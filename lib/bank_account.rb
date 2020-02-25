require_relative 'bank_statement'

class BankAccount
  attr_reader :balance, :transaction

  def initialize(bank_statement = BankStatement.new)
    @balance = 0.00
    @transaction = []
    @bank_statement = bank_statement
  end

  def deposit(ammount)
    @balance += ammount.round(2)
    @transaction << {credit: (sprintf '%.2f', ammount), debit: nil, balance: (sprintf '%.2f', @balance)}
    add_to_statement
  end

  def withdraw(ammount)
    raise 'Cannot make withdrawal when balance is 0' if @balance == 0
    
    raise "There is only #{@balance} in your account" if @balance - ammount < 0

    @balance -= ammount
    @transaction << {credit: nil, debit: (sprintf '%.2f', ammount), balance: (sprintf '%.2f', @balance)}
    add_to_statement
  end

  def view_statement
    @bank_statement.print_statement
  end

  private

  def add_to_statement
    @bank_statement.add_to_history(@transaction.pop)
  end

end
