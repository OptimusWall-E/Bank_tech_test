# Bank_tech_test

<h1>App's goal</h1>

This programme's goal is to produce a bank statement monitoring bank account activity, and produce a statement like the following:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

<h2>Classes</h2>

The app is divided into three classes: Ledger, Statement and Time  

<h3>1. Ledger</h3>
   _**initialize**_  
   
   **@base_statement = Statement.new**  
   assigns name to instance of Statement class
   
   _**methods**_  
   <strong>deposit(payin)</strong>  
   prepends payin amount to @base_statement.transactions array (prepending allows us to order the newest transactions at the front of the array)

   **withdraw(take)**  
   prepends minus take amount to @base_statement.transactions array

<h3>2. Statement</h3>
   _**initialize**_  
   
   **@transactions = []**  
   takes transaction amounts from Ledger class, prepended  
   

   **@time = Time.new**  
    takes today's date in dd/mm/yyyy format from Time class 

   **@statement = []**  
   takes full transaction records from Statement's print_transactions method, prepended
  
  _**methods**_  
  **@log_transactions**  
  if there are no transactions, it returns the statement headings (including today's date)  
  else, iterating over transactions,  
      if transaction is a credit it pushes a full credit transaction record to the @statement array
      elsif transaction is a debit it pushes a full debit transaction record to the @statement array
  
  **balance**  
  
   returns the sum of transactions

  **print statement**  
  
   returns statement headings and all transaction records, most recent first

<h3>3. Time</h3>

  _**initialize**_
    @time = Time.new
  
  _**methods**_
  - transaction_date
    returns today's date in the dd/mm/yyyy format


<h2>Known issues</h2>
Statement.balance returns the balance at the time Statement.log_transactions is called rather than the balance at the time of the transaction

Statement.print_statement is returning an array rather than the elements of the array. Tests must be updated and code updated to pass
