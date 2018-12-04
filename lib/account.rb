require_relative './transaction'
require_relative './statement'
require_relative './transaction_history'

# This class stores the balance and is responsible for handling deposits and withdrawals
class Account
  attr_reader :balance
  DEFAULT_BALANCE = 0

  def initialize(statement = Statement.new, transaction_history = TransactionHistory.new)
    @balance = DEFAULT_BALANCE
    @transaction_history = transaction_history
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @transaction_history.store(Transaction.new(amount, 0, @balance))
    "£#{amount} has been deposited."
  end

  def withdraw(amount)
    raise 'Not enough money in account!' if amount > @balance

    @balance -= amount
    @transaction_history.store(Transaction.new(0, amount, @balance))
    "£#{amount} has been withdrawn."
  end

  def print_statement
    @statement.print(@transaction_history.transactions)
  end
end
