# Bank-Challenge

A simple app to print bank statement.

# Specification

## Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

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

## Run Program
Clone repository.
```
$ bundle install
$ irb
```
```
require './lib/bank_account'
account = BankAccount.new
account.deposit(1000)
account.withdraw(355)
account.deposit(500)
account.deposit(750)
account.withdraw(50)
account.view_statement

date || credit || debit || balance
25/02/2020 ||  || 50.00 || 1845.00
25/02/2020 || 750.00 ||  || 1895.00
25/02/2020 || 500.00 ||  || 1145.00
25/02/2020 ||  || 355.00 || 645.00
25/02/2020 || 1000.00 ||  || 1000.00
```


