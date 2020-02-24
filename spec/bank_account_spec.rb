require "bank_account"

describe BankAccount do

  it "starts with a balance of 0" do
    expect(subject.balance).to eq(0)
  end

  describe "Deposit of 10.00 increases baance to 10.00" do
    subject.deposit(10.00)
    expect(subject.balance).to eq(10.00)
  end
  
end