@FeatureTag
Feature: Additional POST API Testing Feature

  @ScenarioTag4
  Scenario: Test another POST request
    Given url 'https://jsonplaceholder.typicode.com/comments'
    And request { "postId": 1, "name": "test name", "email": "test@example.com", "body": "test body" }
    When method POST
    Then status 201
    * print response
