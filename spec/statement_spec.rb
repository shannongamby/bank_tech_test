require 'statement'

describe Statement do
  let(:time) { double :time }
  let(:time_two) { double :time_two }

  let(:transaction) do
    double(:transaction, credit: 100, debit: 0, balance: 100, date: time)
  end

  let(:transaction_two) do
    double(:transaction_two, credit: 10, debit: 0, balance: 110, date: time_two)
  end

  it 'should print a correctly formatted transaction' do
    expect { subject.print([transaction]) }.to output(
      "date || credit || debit || balance\n#{time} || 100.00 ||  || 100.00\n"
    ).to_stdout
  end

  it 'should print the transactions in reverse chronological order' do
    expect { subject.print([transaction, transaction_two]) }.to output(
      "date || credit || debit || balance\n#{time_two} || 10.00 ||  || 110.00\n#{time} || 100.00 ||  || 100.00\n"
    ).to_stdout
  end
end
