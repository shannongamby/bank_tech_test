# This class is responsible for printing bank statements
class Statement
  def print(transactions)
    puts 'date || credit || debit || balance'
    transactions.reverse_each do |transaction|
      credit = transaction.credit.zero? ? ' ' : " #{transaction.credit}.00 "
      debit = transaction.debit.zero? ? ' ' : " #{transaction.debit}.00 "
      puts "#{transaction.date} ||#{credit}||#{debit}|| #{transaction.balance}.00"
    end
  end
end
