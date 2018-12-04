require 'account'

describe Account do
  let(:statement) { double :statement }
  let(:transaction_history) { double :transaction_history }
  subject { described_class.new(statement, transaction_history) }

  context 'creating an account' do
    it 'should have a default balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  context 'depositing money' do
    it 'should add a specified amount to the balance' do
      allow(transaction_history).to receive(:add_transaction)
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end
    it 'should return a message telling the client deposit was successful' do
      allow(transaction_history).to receive(:add_transaction)
      expect(subject.deposit(100)).to eq '£100 has been deposited.'
    end
  end

  context 'withdrawing money' do
    it 'should remove a specified amount from the balance' do
      allow(transaction_history).to receive(:add_transaction)
      subject.deposit(100)
      subject.withdraw(100)
      expect(subject.balance).to eq 0
    end

    it 'should not withdraw an amount if it is larger than the balance' do
      allow(transaction_history).to receive(:add_transaction)
      expect { subject.withdraw(100) }.to raise_error 'Not enough money in account!'
    end

    it 'should return a message telling the client withdraw was successful' do
      allow(transaction_history).to receive(:add_transaction)
      subject.deposit(100)
      expect(subject.withdraw(100)).to eq '£100 has been withdrawn.'
    end
  end

  context 'keeping track of transactions' do
    it 'when #deposit is called transaction_history should receive #create_transaction' do
      transaction_history = spy('transaction_history')
      subject = Account.new(statement, transaction_history)
      subject.deposit(100)
      expect(transaction_history).to have_received(:add_transaction)
    end

    it 'when #withdraw is called transaction_history should receive #create_transaction' do
      transaction_history = spy('transaction_history')
      subject = Account.new(statement, transaction_history)
      subject.deposit(100)
      subject.withdraw(100)
      expect(transaction_history).to have_received(:add_transaction).twice
    end
  end

  context 'printing a bank statement' do
    it 'should respond to #print_statement' do
      expect(subject).to respond_to(:print_statement)
    end

    it 'passes when #print_statement is called and statement receives #print' do
      statement = spy('statement')
      subject = Account.new(statement)
      subject.print_statement
      expect(statement).to have_received(:print)
    end
  end
end
