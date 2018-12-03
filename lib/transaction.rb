# This class stores the date, credit, debit, and balance of each transaction
class Transaction
  attr_reader :date, :credit, :debit, :balance
  def initialize(deposit, withdrawal, balance)
    @date = Time.now.strftime('%d/%m/%Y')
    @credit = deposit
    @debit = withdrawal
    @balance = balance
  end
end
