require 'transaction'

describe Transaction do
  subject { described_class.new(100, 0, 100) }

  it 'should store deposit' do
    expect(subject.credit).to eq 100
  end

  it 'should store withdrawal' do
    expect(subject.debit).to eq 0
  end

  it 'should store balance' do
    expect(subject.balance).to eq 100
  end
end
