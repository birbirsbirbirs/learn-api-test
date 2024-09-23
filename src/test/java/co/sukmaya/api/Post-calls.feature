Feature: rest call to POST jsonplaceholder

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: posts assert exact value
    Given path 'posts'
    When method get
    Then status 200
    And match response[0].userId == 1
    And match response[0] contains {userId: 1}

  @api
  Scenario: posts assert json payload
    Given path 'posts'
    When method get
    Then status 200
    And match response[0] == { "userId": 1,"id": 1,"title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit","body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"}
    And match response[0] == { "userId": "#present","id": 1,"title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit","body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"}

  @api
  Scenario:  posts assert json variable
    * def expectedPost =
        """
        {
        "userId": 1,
        "id": 1,
        "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
        }
        """

    Given path 'posts'
    When method get
    Then status 200
    And match response[0] == expectedPost

  @api
  Scenario:  posts assert json variable with #present
    * def expectedPost =
        """
        {
        "userId": "#present",
        "id": 1,
        "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
        }
        """

    Given path 'posts'
    When method get
    Then status 200
    And match response[0] == expectedPost

  @api
  Scenario: posts assert generic number or string
    Given path 'posts'
    When method get
    Then status 200
    And match response[0] == {"userId":"#number","id":"#number","title":"#string","body":"#string"}

  @api
  Scenario: posts assert total count
    Given path 'posts'
    When method get
    Then status 200
    * print response.length
    And assert response.length == 100
