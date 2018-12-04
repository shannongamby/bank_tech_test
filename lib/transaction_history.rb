# This class is responsible for storing all transactions
class TransactionHistory
  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def add_transaction(transaction)
    store(create_transaction(transaction))
  end

  def create_transaction(transaction)
    Transaction.new(transaction[0], transaction[1], transaction[2])
  end

  def store(transaction)
    @transactions << transaction
  end
end
