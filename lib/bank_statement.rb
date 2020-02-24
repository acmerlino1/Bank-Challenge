class BankStatement

attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  # puts Time.now.strftime("%d/%m/%Y")

  def add_to_history(transaction)
    @transaction_history << transaction
  end

  def print_statement
    "date || credit || debit || balance"
  end
end