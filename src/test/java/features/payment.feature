Feature: Payment Processing

  Background:
    * url 'http://localhost:8082/payment'
    * header Content-Type = 'application/json'

  @SuccessfulPayment
  Scenario: Successful payment transaction
    Given request read('../data/successful-payment.json')
    When method post
    Then status 200
    And match response.status == 'SUCCESS'

  @InsufficientBalance
  Scenario: Payment fails due to insufficient balance
    Given request read('../data/insufficient-balance.json')
    When method post
    Then status 400
    And match response.status == 'INSUFFICIENT_BALANCE'

  @InvalidPayerAccount
  Scenario: Payment fails due to invalid payer account
    Given request read('../data/invalid-payer.json')
    When method post
    Then status 400
    And match response.status == 'REQUEST_DETAILS_INVALID'

  @InvalidReceiverAccount
  Scenario: Payment fails due to invalid receiver account
    Given request read('../data/invalid-receiver.json')
    When method post
    Then status 400
    And match response.status == 'REQUEST_DETAILS_INVALID'