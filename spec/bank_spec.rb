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

    describe '#deposit' do
      it 'adds amount to existing balance' do
        subject.deposit(1000)
        expect(subject.balance).to eq (1000)
      end

      it 'adds amount to existing balance' do
        account = Account.new(1500)
        account.deposit(1500)
        expect(account.balance).to eq (3000)
      end
    end
end
