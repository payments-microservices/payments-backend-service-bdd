@FeatureTag
Feature: Generic API Testing Feature

  @ScenarioTag1
  Scenario: Test GET request
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method GET
    Then status 200
    * print response

  @ScenarioTag2
  Scenario: Test POST request
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request { "userId": 5,"title": "title of the post","body": "body of the post"}
    When method POST
    Then status 201
    * print response

  # Import additional feature files
  * call read('sample_get.feature')
  * call read('sample_post.feature')
