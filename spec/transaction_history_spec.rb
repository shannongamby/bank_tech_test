require 'transaction_history'

describe TransactionHistory do
  let(:transaction) { double :transaction }
  let(:transaction_two) { double :transaction_two }

  it 'should create a new transaction' do
    subject.create_transaction([100, '', 100])
  end

  it 'should store objects (transactions)' do
    subject.store(transaction)
    expect(subject.transactions[0]).to eq transaction
  end

  it 'should store multiple objects' do
    subject.store(transaction)
    subject.store(transaction_two)
    expect(subject.transactions.length).to eq 2
  end
end
