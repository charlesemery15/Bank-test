class Bank

DEFAULT_BALANCE = 0

attr_accessor :balance

  def initialize(balance = DEFAULT_BALANCE)
    @transactions = []
    @balance = balance
  end

  def deposit(num)
    @balance += num
  end

  def withdraw(num)
    @balance -= num
  end

end
