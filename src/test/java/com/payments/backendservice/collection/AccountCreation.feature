Feature: Account Creation

  Scenario: Create a new Account object with valid data
    Given def userName = "testuser"
    And def accountNumber = "1234567890"
    And def accountBalance = "100.00"
    When def account = new com.payments.backendservice.collection.Account(userName, accountNumber, accountBalance)
    Then assert account.getUserName() == userName
    And assert account.getAccountNumber() == accountNumber
    And assert account.getAccountBalance() == accountBalance

  Scenario: Create a new Account object with empty data
    Given def userName = ""
    And def accountNumber = ""
    And def accountBalance = ""
    When def account = new com.payments.backendservice.collection.Account(userName, accountNumber, accountBalance)
    Then assert account.getUserName() == userName
    And assert account.getAccountNumber() == accountNumber
    And assert account.getAccountBalance() == accountBalance

  Scenario: Account toString method check
    Given def userName = "testuser"
    And def accountNumber = "1234567890"
    And def accountBalance = "100.00"
    When def account = new com.payments.backendservice.collection.Account(userName, accountNumber, accountBalance)
    Then assert account.toString() == "Account{id='null', userName='testuser', accountNumber='1234567890', accountBalance='100.00'}"