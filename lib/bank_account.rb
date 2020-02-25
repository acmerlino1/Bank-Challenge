# frozen_string_literal: true

require_relative 'bank_statement'

class BankAccount
  attr_reader :balance, :transaction

  def initialize(bank_statement = BankStatement.new)
    @balance = 0.00
    @bank_statement = bank_statement
  end

  def deposit(ammount)
    @balance += ammount
    transaction = {
      credit: (format '%.2f', ammount),
      debit: nil,
      balance: (format '%.2f', @balance)
    }
    add_to_statement(transaction)
  end

  def withdraw(ammount)
    raise "Account balance is #{@balance}. Cannot make withdrawal." if
    (@balance - ammount).negative?

    @balance -= ammount
    transaction = {
      credit: nil,
      debit: (format '%.2f', ammount), 
      balance: (format '%.2f', @balance)
    }
    add_to_statement(transaction)
  end

  def view_statement
    @bank_statement.print_statement
  end

  private

  def add_to_statement(transaction)
    @bank_statement.add_to_history(transaction)
  end
end
