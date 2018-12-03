require 'account'

describe Account do
  context 'depositing money' do
    it 'should add the deposited money to the balance' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end
  end
end
