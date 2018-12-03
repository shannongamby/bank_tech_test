# Bank Tech Test
[![Build Status](https://travis-ci.com/shannongamby/bank_tech_test.svg?branch=master)](https://travis-ci.com/shannongamby/bank_tech_test)
[![Coverage Status](https://coveralls.io/repos/github/shannongamby/bank_tech_test/badge.svg?branch=master)](https://coveralls.io/github/shannongamby/bank_tech_test?branch=master)

When completing this tech test I focussed on implementing the principles of OOD and TDD.

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
<<<<<<< HEAD
I want to be able to print my balance
=======
I want to be able to print my bank statement
>>>>>>> d3e97153ca7f718647c51e2e61ff1d5c62ee49b6
```

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

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
