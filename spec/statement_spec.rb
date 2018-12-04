require 'statement'

describe Statement do
  let(:time) { double :time }
  let(:time_two) { double :time_two }

  let(:transaction) do
    double(:transaction, credit: 100, debit: '', balance: 100, date: time)
  end

  let(:transaction_two) do
    double(:transaction_two, credit: 10, debit: '', balance: 110, date: time_two)
  end

  it 'should print a correctly formatted transaction' do
    expect { subject.print([transaction]) }.to output(
      "Date || Credit || Debit || Balance\n#{time} || 100 ||  || 100\n"
    ).to_stdout
  end

  it 'should print the transactions in reverse chronological order' do
    expect { subject.print([transaction, transaction_two]) }.to output(
      "Date || Credit || Debit || Balance\n#{time_two} || 10 ||  || 110\n#{time} || 100 ||  || 100\n"
    ).to_stdout
  end
end
