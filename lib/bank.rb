class Account
  attr_accessor :balance
  attr_accessor :overdraft

  def initialize(balance_amount = 0, overdraft_amount = -100)
    @balance = balance_amount
    @overdraft = overdraft_amount
  end

  def deposit(amount)
    @balance += amount
    puts "Your new balance is #{@balance}"
  end
  def withdraw(amount)
    p @balance - amount < @overdraft
    fail 'Amount requested would exceed overdraft' if @balance - amount < @overdraft
    @balance -= amount
    puts "Your new balance is #{@balance}"
  end
end
