class Account
  attr_accessor :balance
  def initialize(amount = 0)
    @balance = amount
  end

  def deposit(amount)
    @balance += amount
    puts "Your new balance is #{@balance}"
  end
  def withdraw(amount)
    @balance -= amount
    puts "Your new balance is #{@balance}"
  end
end
