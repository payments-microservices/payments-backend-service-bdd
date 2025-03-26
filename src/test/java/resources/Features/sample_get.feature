@FeatureTag
Feature: Additional GET API Testing Feature

  @ScenarioTag3
  Scenario: Test another GET request
    Given url 'https://jsonplaceholder.typicode.com/comments'
    When method GET
    Then status 200
    * print response
