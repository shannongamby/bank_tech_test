class Statement
  def print(transactions)
    statement = 'Date || Credit || Debit || Balance'
    transactions.reverse_each do |transaction|
      statement += "\n#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
    statement
  end
end
