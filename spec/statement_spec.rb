require 'statement'

describe Statement do
  let(:transaction) do
    transaction = double :transaction
    allow(transaction).to receive(:credit) { 100 }
    allow(transaction).to receive(:debit) { 0 }
    allow(transaction).to receive(:balance) { 100 }
    transaction
  end

  it 'should print each transaction' do
    expect(subject.print([transaction])).to eq "Credit || Debit || Balance\n100 || 0 || 100"
  end
end
