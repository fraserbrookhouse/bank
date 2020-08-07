require 'bank'

describe Account do
  it 'exists' do
    expect(subject).to be_instance_of Account
  end
  it 'has a readable varible called balance' do
    expect(subject).to respond_to(:balance)
  end
  it 'returns a variable called balance' do
    expect(subject.balance).to eq (3)
  end

  it 'responds to deposit method which takes 1 argument' do
    expect(subject).to respond_to(:deposit).with(1).argument
  end
end
