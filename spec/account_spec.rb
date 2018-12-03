require 'account'

describe Account do
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

    context 'when deposit is made' do
      it 'should store amount deposited, amount withdrawn, and current balance' do
        subject.deposit(100)
        expect(subject.transactions).to eq [100, 0, 100]
      end
    end
    context 'when withdrawal is made' do
      it 'should store amount deposited, amount withdrawn, and current balance' do
        subject.deposit(100)
        subject.withdraw(100)
        expect(subject.transactions).to eq [0, 100, 0]
      end
    end
  end
end
