# This class is responsible for storing all transactions
class TransactionHistory
  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def store(transaction)
    @transactions << transaction
  end
end
