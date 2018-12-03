# This class is responsible for printing bank statements
class Statement
  def print(transactions)
    puts 'Date || Credit || Debit || Balance'
    transactions.reverse_each do |transaction|
      puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end
end
