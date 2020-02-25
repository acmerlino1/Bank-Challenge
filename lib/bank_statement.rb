class BankStatement

attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def add_to_history(transaction)
    transaction[:time] = Time.new.strftime("%d/%m/%Y")
    @transaction_history << transaction 
  end

  def print_statement
    puts "date || credit || debit || balance"
    @transaction_history.reverse.each do |transaction|
      puts "#{transaction[:time]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
end