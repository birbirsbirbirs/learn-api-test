Feature: posts call with param and assert

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  @api
  Scenario: assert request with path variable, https://jsonplaceholder.typicode.com/posts/1
    Given path 'posts'
    And path 1
    When method get
    Then status 200
    And match response.userId == 1

  @api
  Scenario: assert request with param, https://jsonplaceholder.typicode.com/comments?postId=1
    Given path 'comments'
    And param postId = 1
    When method get
    Then status 200
    And match response[0].postId == 1
    * assert response.length > 0