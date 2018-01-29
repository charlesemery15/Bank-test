require "Bank"

describe Bank do

  it "should let a user deposit an amount" do
   expect(subject.deposit(1000)).to eq(subject.balance)
 end
end
