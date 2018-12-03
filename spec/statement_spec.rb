require 'statement'

describe Statement do
  let(:transaction) do
    double(:transaction, credit: 100, debit: 0, balance: 100, date: Time.now.strftime('%d/%m/%Y').to_s)
  end

  let(:transaction_two) do
    double(:transaction_two, credit: 10, debit: 0, balance: 110, date: Time.now.strftime('%d/%m/%Y').to_s)
  end

  it 'should print a correctly formatted transaction' do
    expect{ subject.print([transaction]) }.to output(
      "Date || Credit || Debit || Balance\n#{Time.now.strftime('%d/%m/%Y')} || 100 || 0 || 100\n"
    ).to_stdout
  end

  it 'should print the transactions in reverse chronological order' do
    expect{ subject.print([transaction, transaction_two]) }.to output(
      "Date || Credit || Debit || Balance\n
      #{Time.now.strftime('%d/%m/%Y')} || 10 || 0 || 110\n#{Time.now.strftime('%d/%m/%Y')} || 100 || 0 || 100\n"
    ).to_stdout
  end
end
