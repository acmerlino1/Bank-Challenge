# Bank-Challenge

An app to manage a bank account through bank statements, with functionality such as making deposits, withdrawing, viewing balance and generating bank statements.

There are four key classes. A Bank statement, Bank account, Transactions and Display. A bank statement is required to instantiate a bank account, which allows the user to deposit money, withdraw money, check balance. Each transaction (deposit or wihdrawal), is added to the bank statement class.

# Specification

## Acceptance criteria
**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Run Tests
Clone repository.

```
$ bundle install
$ rspec
```

## Run Program
Clone repository.
```
$ bundle install
$ irb
```
## Example of Running the Program
```
require './lib/bank_account'
require './lib/display'
account = BankAccount.new
display = Display.new
account.deposit(1000)
account.withdraw(355)
account.deposit(500)
account.deposit(750)
account.withdraw(50)
display.display(account.statement)

date || credit || debit || balance
25/02/2020 ||  || 50.00 || 1845.00
25/02/2020 || 750.00 ||  || 1895.00
25/02/2020 || 500.00 ||  || 1145.00
25/02/2020 ||  || 355.00 || 645.00
25/02/2020 || 1000.00 ||  || 1000.00
```


