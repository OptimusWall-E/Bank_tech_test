# Bank_tech_test

This programme's goal is to produce a bank statement monitoring bank account activity, and produce a statement like the following:

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00


The app is divided into three classes:

1. Ledger
  - initialize
    @base_statement = Statement.new

  - deposit(payin)
    prepends payin amount to @base_statement.transactions array (prepending allows us to order the newest transactions at the front of the array)

  - withdraw(take)
    prepends minus take amount to @base_statement.transactions array

2. Statement
  - initialize
    @transactions = []
    takes transaction amounts from Ledger class, prepended

    @time = Time.new
    takes today's date in dd/mm/yyyy format from Time class 

    @statement = []
    takes full transaction records from Statement's print_transactions method, prepended

  - log_transactions
    if there are no transactions, it returns the statement headings (including today's date)
    else, iterating over transactions, 
      if transaction is a credit it pushes a full credit transaction record to the @statement array
      elsif transaction is a debit it pushes a full debit transaction record to the @statement array
  
  - balance
    returns the sum of transactions

  - print statement
    returns statement headings and all transaction records, most recent first

3. Time

  - initialize
    @time = Time.new

  - transaction_date
    returns today's date in the dd/mm/yyyy format


Known issues:
Statement.balance returns the balance at the time Statement.log_transactions is called rather than the balance at the time of the transaction

Statement.print_statement is returning an array rather than the elements of the array. Tests must be updated and code updated to pass