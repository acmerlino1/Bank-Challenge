class BankStatement

attr_reader :transactions

  def initialize
    @transactions = []
  end

  # puts Time.now.strftime("%d/%m/%Y")

  def print_statement
    "date || credit || debit || balance"
  end
end