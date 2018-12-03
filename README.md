# Bank Tech Test
[![Build Status](https://travis-ci.com/shannongamby/bank_tech_test.svg?branch=master)](https://travis-ci.com/shannongamby/bank_tech_test)
[![Coverage Status](https://coveralls.io/repos/github/shannongamby/bank_tech_test/badge.svg?branch=master&service=github)](https://coveralls.io/github/shannongamby/bank_tech_test?branch=master&service=github)

When completing this tech test I focussed on implementing the principles of OOD and TDD.
## Set Up
- Fork and clone this repo
- Run the command `bundle` to install dependencies
- Use the command `rspec` to run tests

## User Stories
```
As a client
So that I can store my money
I want to be able to make a deposit
```
```
As a client
So that I can spend my money
I want to be able to make a withdrawal
```
```
As a client
So that I can see how much money I have
I want to be able to print my bank statement
```
## How to use
* Open `irb` and run `require './lib/account.rb'` 
* Then you can interact with the program by following the notes below:
```
account = Account.new
=> creates a new bank account instance

account.deposit(100)
=> Adds £100 to your balance

account.withdraw(10)
=> Removes £10 from your balance

account.print_statement
=> Prints your bank statement
=> Date || Credit || Debit || Balance
   3/12/18 || 0 || 10 || 90
   3/12/18 || 100 || 0 || 100
```

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).
