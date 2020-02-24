# frozen_string_literal: true

class BankAccount
  attr_reader :balance, :transaction

  def initialize
    @balance = 0.00
    @transaction = []
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

end
