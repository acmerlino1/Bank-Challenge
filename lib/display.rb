class Display

  def display(bank_statement)
    puts title
    bank_statement.transaction_history.reverse.each do |transaction|
      puts display_transaction(transaction)
    end
  end

  private

  def title
    'date || credit || debit || balance'
  end

  def display_transaction(transaction)
    credit = ''
    debit  = ''
    if transaction.amount < 0
      debit = format '%.2f', transaction.amount.abs
    else
      credit = format '%.2f', transaction.amount
    end
    "#{transaction.time.strftime('%d/%m/%Y')} ||"\
    " #{credit} || #{debit}"\
    " || #{(format '%.2f', transaction.balance)}"
  end

end
