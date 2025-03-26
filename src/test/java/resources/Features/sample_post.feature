@FeatureTag
Feature: Additional POST API Testing Feature

  @ScenarioTag4
  Scenario: Test another POST request
    Given url 'https://jsonplaceholder.typicode.com/comments'
    And  request read('../data/request_body4.json')
    When method POST
    Then status 201
    * print response
