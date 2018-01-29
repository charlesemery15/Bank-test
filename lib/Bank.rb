class Bank

DEFAULT_BALANCE = 0

attr_accessor :balance
attr_reader :transactions

  def initialize(balance = DEFAULT_BALANCE)
    @transactions = []
    @balance = balance
  end

  def deposit(num)
    @balance += num
    value = "#{'%.2f' % num}|| "
    transaction(value)
  end

  def withdraw(num)
    @balance -= num
    value = " ||#{'%.2f' % num}"
    transaction(value)
  end

  def statement
    column_titles + "\n" + @transactions.join("\n")
  end

  private

  def time
    Time.new.strftime("%d/%m/%y")
  end

  def column_titles
    "Date||Credit||Debit||Balance"
  end

  def transaction(value)
    @transactions.unshift("#{time}||#{value}||#{'%.2f'% @balance}")
  end

end
