require 'transaction'

describe Transaction do
  let(:time) { double :time }
  subject { described_class.new(100, 0, 100, time) }

  it 'should store the date' do
    expect(subject.date).to eq time
  end

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
