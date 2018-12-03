require 'account'

describe Account do

  context 'depositing money' do
    it 'should add the deposited money to the balance' do
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
  end

end
