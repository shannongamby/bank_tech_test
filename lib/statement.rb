# This class is responsible for printing bank statements
class Statement
  def print(transactions)
    puts 'date || credit || debit || balance'
    transactions.reverse_each do |transaction|
      transaction.credit == 0 ? credit = "" : credit = "#{transaction.credit}.00"
      transaction.debit == 0 ? debit = "" : debit = "#{transaction.debit}.00"
      puts "#{transaction.date} || #{credit} || #{debit} || #{transaction.balance}.00"
    end
  end
end
