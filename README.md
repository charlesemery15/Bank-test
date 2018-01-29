Bank Tech Test
===============

* First attempt at a tech test for Makers Academy
* Practice for dev interviews

Requirements
--------------
 1. Deposits
 2. Withdrawals
 3. View Account Statements
   - Date
   - Amount
   - Balance

```
As a bank customer
So I can save my money
I would like to make a deposit to an account
```

```
As a bank customer
So I can buy things
I would like to withdraw some of my money
```

```
As a bank customer
So I can manage my money
I would like to view my bank transactions
```

```
As a bank customer
So I can keep a record of my account
I would like to print a copy of my bank statement.
```

Approach
-----------
* TDD
* OOD
* Agile
* Using Ruby

For this Test I will use
---------------------------
 * IRB - Interactive Ruby Shell (REPL specific to Ruby)
 * Data - Stored in memory rather than a database
 * Tests - Feature tests spec file

CRC Cards
----------

 |Class:              |Account          |
 |--------------------------------------|
 |**Responsibilities**|**Collaborators**|
 |Store transactions  |Statement        |
 |                    |Transaction      |
 |                    |                 |

 |Class:              |Transaction      |
 |--------------------------------------|
 |**Responsibilities**|**Collaborators**|
 |Manage transactions:|Account          |
 | 1. Deposit         |                 |
 | 2. Withdraw        |                 |
 | 3. Time            |                 |

 |Class:              |Statement        |
 |--------------------------------------|
 |**Responsibilities**|**Collaborators**|
 |Time                |Account          |
 |Credit              |                 |
 |Debit               |                 |
 |Balance             |                 |
