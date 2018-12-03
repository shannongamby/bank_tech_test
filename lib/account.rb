class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions.clear.push(amount, 0, @balance)
  end

  def withdraw(amount)
    @balance -= amount unless amount > @balance
    @transactions.clear.push(0, amount, @balance)
  end
end
