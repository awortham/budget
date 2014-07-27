require_relative 'account'

describe Account do 
  before do 
    @account = Account.new

    @account.deposit(1000)
  end

  it "has a balance" do 
    @account.balance.should == "$1000"
  end

  it "assigns value to sub-accounts within the account" do
    @account.budget.should == 
    "Housing = 250
     Vehicle = 100
     Utilities = 50
     Credit Card = 50"
  end

  it "allows you to make a deposit" do 
    @account.deposit(500).should == "$1500"
  end

  it "allows you to make a withdrawl" do
    @account.withdrawl(500).should == "$1000"
  end

  # it "prints totals for all subaccounts within account" do 
  #   checking = Account.new
  #   checking.totals.should == 

  #   "Checking Account"
  #     @balance = "$0.00"
  #     @housing = "$0.00"
  #     @vehicle = "$0.00"
  #     @utilities = "$0.00"
  #     @credit_card = "$0.00"

  #   "Savings Account"
  #     @emergency_fund = "$0.00"
  #     @three_months = "$0.00"
  # end

  it "deposits money in account upto goals" do 
    savings = Account.new
    savings.deposit(2100) 
    @emergency_fund.should == 1000
    @three_months.should == 1100
  end
end