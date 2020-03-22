require_relative 'bank_statement'

class Transaction

  attr_reader :amount, :balance, :time  

  def initialize(amount, balance, time)
    @amount = amount
    @balance = balance
    @time = time
  end

end
