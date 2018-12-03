class Transaction
  attr_reader :credit, :debit, :balance
  def initialize(deposit, withdrawal, balance)
    @credit = deposit
    @debit = withdrawal
    @balance = balance
  end
end
