require_relative './transaction'
require_relative './statement'

class Account
  attr_reader :balance, :transactions

  def initialize(statement = Statement.new)
    @balance = 0
    @transactions = []
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @transactions.push(Transaction.new(amount, 0, @balance))
  end

  def withdraw(amount)
    @balance -= amount unless amount > @balance
    @transactions.push(Transaction.new(0, amount, @balance))
  end

  def print_statement
    @statement.print(@transactions)
  end
end
