require "Bank"

describe Bank do

  it "should let a user deposit an amount" do
   expect(subject.deposit(1000)).to eq(subject.balance)
 end

  it "should let a user withdraw an amount" do
    subject.balance = 500
    subject.withdraw(500)
    expect(subject.balance).to eq(0)
  end

end
