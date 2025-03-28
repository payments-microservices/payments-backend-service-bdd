Feature: Account Getter Methods - payments-backend-service

  Scenario: Verify getUserName() method
    Given def account = { userName: "testUser", accountNumber: "1234567890", accountBalance: "100.00" }
    And def accountObject = new com.payments.backendservice.collection.Account(account.userName, account.accountNumber, account.accountBalance)
    Then assert accountObject.getUserName() == "testUser"

  Scenario: Verify getAccountNumber() method
    Given def account = { userName: "testUser", accountNumber: "1234567890", accountBalance: "100.00" }
    And def accountObject = new com.payments.backendservice.collection.Account(account.userName, account.accountNumber, account.accountBalance)
    Then assert accountObject.getAccountNumber() == "1234567890"

  Scenario: Verify getAccountBalance() method
    Given def account = { userName: "testUser", accountNumber: "1234567890", accountBalance: "100.00" }
    And def accountObject = new com.payments.backendservice.collection.Account(account.userName, account.accountNumber, account.accountBalance)
    Then assert accountObject.getAccountBalance() == "100.00"
