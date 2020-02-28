# frozen_string_literal: true

class BankStatement
  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def add_to_history(transaction)
    @transaction_history << transaction
  end

  def print_statement
    statement = ['date || credit || debit || balance']
    @transaction_history.reverse.each do |transaction|
      single_transaction = "#{transaction[:time]} ||"\
      "  #{transaction[:credit]} || #{transaction[:debit]}"\
      " || #{transaction[:balance]}"
      statement.push(single_transaction)
    end
    puts statement
  end
end
