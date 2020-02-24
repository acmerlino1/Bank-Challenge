# frozen_string_literal: true

class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(ammount)
    @balance += ammount

    @transactions << {credit: ammount, balance: @balance}

    # puts Time.now.strftime("%d/%m/%Y")
  end

  def withdraw(ammount)
    raise 'Cannot make withdrawal when balance is 0' if @balance == 0

    @balance -= ammount
  end

end
