class BankStatement

attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def add_to_history(transaction)
    transaction[:time] = Time.new.strftime("%d/%m/%Y")
    @transaction_history << transaction
    p @transaction_history
  end

  def print_statement
    "date || credit || debit || balance"
  end
end