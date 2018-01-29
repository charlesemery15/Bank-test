require "Bank"

describe Bank do

  describe "#initialize" do

    it "should start with the default balance of 0" do
      expect(subject.balance).to eq(0)
    end

    it "should start with 0 transactions" do
      expect(subject.transactions).to be_empty
    end

  end

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
      expect(subject.statement).to eq("Date||Credit||Debit||Balance\n#{Time.new.strftime("%d/%m/%y")}|| ||500.00||500.00\n#{Time.new.strftime("%d/%m/%y")}||1000.00|| ||1000.00")
    end
  end

end
