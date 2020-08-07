require 'bank'

describe Account do
  it 'exists' do
    expect(subject).to be_instance_of Account
  end
  it 'has a readable varible called balance' do
    expect(subject).to respond_to(:balance)
  end
  it 'responds to deposit method which takes 1 argument' do
    expect(subject).to respond_to(:deposit).with(1).argument
  end
    describe '#initialize' do
      it 'sets a default balance of zero' do
        expect(subject.balance).to eq (0)
      end
      it 'sets a balance of 100' do
        account = Account.new(100)
        expect(account.balance).to eq (100)
      end
    end 
    describe '#balance' do
      
    end
end
