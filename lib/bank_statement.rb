# frozen_string_literal: true

class BankStatement
  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def add_to_history(transaction)
    @transaction_history << transaction
  end
  
end
