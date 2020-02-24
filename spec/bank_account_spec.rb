require "bank_account"

describe BankAccount do

  subject {BankAccount.new}

  it "starts with a balance of 0" do
    expect(subject.balance).to eq(0)
  end

  it "Deposit of 10.00 increases baance to 10.00" do
    subject.deposit(10.00)
    expect(subject.balance).to eq(10.00)
  end

  it "Continues to increase balance if 100.00 is deposited" do
    subject.deposit(10.00)
    subject.deposit(100.00)
    expect(subject.balance).to eq(110.00)
  end
  
end