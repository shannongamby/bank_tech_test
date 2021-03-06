require_relative '../lib/account.rb'

context 'client deposits money and prints statement' do
  it 'should print out the correct statement' do
    subject = Account.new
    subject.deposit(100)
    expect(subject.balance).to eq 100
    expect { subject.print_statement }.to output(
      'date || credit || debit || balance' \
      "\n#{Time.now.strftime('%d/%m/%Y')} || 100.00 || || 100.00\n"
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
      'date || credit || debit || balance' \
      "\n#{Time.now.strftime('%d/%m/%Y')} || || 50.00 || 50.00" \
      "\n#{Time.now.strftime('%d/%m/%Y')} || 100.00 || || 100.00\n"
    ).to_stdout
  end
end
