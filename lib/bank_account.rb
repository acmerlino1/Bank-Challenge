# frozen_string_literal: true

require_relative 'transaction'
require_relative 'bank_statement'


class BankAccount
  attr_reader :balance, :statement

  def initialize(statement = BankStatement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.add_to_history(make_transaction(amount, @balance))
    @balance
  end

  def withdraw(amount)
    raise "Account balance is #{@balance}. Cannot make withdrawal." if
    (@balance - amount).negative?

    @balance -= amount
    @statement.add_to_history(make_transaction(-amount, @balance))
    @balance
  end

  private

  def make_transaction(amount, balance)
    Transaction.new(amount, balance, Time.now)
  end
end
