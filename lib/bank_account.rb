# frozen_string_literal: true

require_relative 'transaction'

class BankAccount
  attr_reader :balance

  def initialize(transaction = Transaction.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(ammount)
    @balance += ammount
    make_transaction(ammount, @balance)
  end

  def withdraw(ammount)
    raise "Account balance is #{@balance}. Cannot make withdrawal." if
    (@balance - ammount).negative?

    @balance -= ammount
    make_transaction(-ammount, @balance)
  end

  private

  def make_transaction(ammount, balance)
    @transaction.make_transaction(ammount, balance)
  end
end
