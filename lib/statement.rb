class Statement

  def print(transactions)
    statement = "Credit || Debit || Balance\n"
    transactions.each do |transaction|
      statement += "#{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
    statement
  end
end
