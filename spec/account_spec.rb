require 'account'

describe Account do
  let(:statement) { double :statement }
  subject { described_class.new(statement) }

  context 'depositing money' do
    it 'should add a specified amount to the balance' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end
  end

  context 'withdrawing money' do
    it 'should remove a specified amount from the balance' do
      subject.deposit(100)
      subject.withdraw(100)
      expect(subject.balance).to eq 0
    end

    it 'should not withdraw an amount if it is larger than the balance' do
      subject.withdraw(100)
      expect(subject.balance).to eq 0
    end
  end

  context 'keeping track of transactions' do
    context 'when a deposit is made' do
      it 'should store amount deposited' do
        subject.deposit(100)
        expect(subject.transactions[0].credit).to eq 100
      end

      it 'should store amount withdrawn' do
        subject.deposit(100)
        expect(subject.transactions[0].debit).to eq 0
      end

      it 'should store balance' do
        subject.deposit(100)
        expect(subject.transactions[0].balance).to eq 100
      end
    end

    context 'when a withdrawal is made' do
      before do
        subject.deposit(100)
      end

      it 'should store amount deposited' do
        subject.withdraw(100)
        expect(subject.transactions[1].credit).to eq 0
      end

      it 'should store amount withdrawn' do
        subject.withdraw(100)
        expect(subject.transactions[1].debit).to eq 100
      end

      it 'should store balance' do
        subject.withdraw(100)
        expect(subject.transactions[1].balance).to eq 0
      end
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
