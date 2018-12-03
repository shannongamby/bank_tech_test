require_relative './transaction'

class Account
  attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = nil
  end

  def deposit(amount)
    @balance += amount
    @transaction = Transaction.new(amount, 0, @balance)
  end

  def withdraw(amount)
    @balance -= amount unless amount > @balance
    @transaction = Transaction.new(0, amount, @balance)
  end

end
