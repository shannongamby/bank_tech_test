require_relative '../lib/account.rb'

context 'client deposits money and prints statement' do
  it 'should print out the correct statement' do
    subject = Account.new
    subject.deposit(100)
    expect(subject.balance).to eq 100
    expect { subject.print_statement }.to output(
      "Date || Credit || Debit || Balance\n#{Time.now.strftime('%d/%m/%Y')} || 100 || 0 || 100\n"
    ).to_stdout
  end
end

context 'client deposits and withdraws money and prints statement' do
  it 'should print out the correct statement' do
    subject = Account.new
    subject.deposit(100)
    subject.withdraw(50)
    expect(subject.balance).to eq 50
    expect { subject.print_statement }.to output(
      "Date || Credit || Debit || Balance\n#{Time.now.strftime('%d/%m/%Y')} || 0 || 50 || 50\n#{Time.now.strftime('%d/%m/%Y')} || 100 || 0 || 100\n"
    ).to_stdout
  end
end
