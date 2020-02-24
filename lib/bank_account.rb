class BankAccount

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(ammount)
    @balance += ammount
  end

  def withdraw(ammount)
    raise "Cannot withdraw from account when balance is 0" if @balance == 0

    @balance -= ammount
  end
end