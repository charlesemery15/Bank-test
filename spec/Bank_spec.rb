require "Bank"

describe Bank do

  describe "#deposit" do

    it "should let a user deposit an amount" do
      subject.deposit(1000)
     expect(subject.balance).to eq(1000)
    end

    it "should update transactions" do
      subject.deposit(1000)
      expect(subject.transactions).not_to be_empty
    end

  end

  describe "#withdraw" do

    it "should let a user withdraw an amount" do
      subject.balance = 500
      subject.withdraw(500)
      expect(subject.balance).to eq(0)
    end

    it "should update transactions" do
      subject.balance = 500
      subject.withdraw(500)
      expect(subject.transactions).not_to be_empty
    end

  end

  describe "#statement" do

    it "should print an empty statement if no transactions have occured" do
      expect(subject.statement).to eq("Date||Credit||Debit||Balance\n")
    end

    it "should print statements out in reverse chronolgical order" do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.statement).to eq("Date||Credit||Debit||Balance\n29/01/18|| ||500||500.00\n29/01/18||1000|| ||1000.00")
    end
  end

end
