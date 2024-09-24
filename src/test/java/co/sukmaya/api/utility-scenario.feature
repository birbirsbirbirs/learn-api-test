Feature: test reusable scenario

  Scenario: client scenario first
    * def inputVariable = 'hello world'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello world hero!'
    And match response.newHero == 'super man'

  Scenario: client scenario second
    * def inputVariable = 'hello india'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello india hero!'
    Then match response.newHero == 'super man'