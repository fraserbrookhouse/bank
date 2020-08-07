require 'bank'

describe Account do
  it 'exists' do
    expect(subject).to be_instance_of Account
  end
  it 'has a readable varible called balance' do
    expect(subject).to respond_to(:balance)
  end
end