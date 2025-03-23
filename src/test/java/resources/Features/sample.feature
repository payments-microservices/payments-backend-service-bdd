@Fea1
Feature: Sample feature

  @Sce1
  Scenario: sample 1
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method GET
    Then status 200
    * print response

  @Sce2
  Scenario: sample 2
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    * print response
