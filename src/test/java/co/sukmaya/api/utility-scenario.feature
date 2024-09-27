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

  Scenario: client scenario first1
    * def inputVariable = 'hello world'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello world hero!'
    And match response.newHero == 'super man'

  Scenario: client scenario second1
    * def inputVariable = 'hello india'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello india hero!'
    Then match response.newHero == 'super man'

  Scenario: client scenario first2
    * def inputVariable = 'hello world'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello world hero!'
    And match response.newHero == 'super man'

  Scenario: client scenario second2
    * def inputVariable = 'hello india'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello india hero!'
    Then match response.newHero == 'super man'

  Scenario: client scenario first3
    * def inputVariable = 'hello world'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello world hero!'
    And match response.newHero == 'super man'

  Scenario: client scenario second3
    * def inputVariable = 'hello india'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello india hero!'
    Then match response.newHero == 'super man'

  Scenario: client scenario first4
    * def inputVariable = 'hello world'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello world hero!'
    And match response.newHero == 'super man'

  Scenario: client scenario second4
    * def inputVariable = 'hello india'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello india hero!'
    Then match response.newHero == 'super man'

  Scenario: client scenario first5
    * def inputVariable = 'hello world'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello world hero!'
    And match response.newHero == 'super man'

  Scenario: client scenario second5
    * def inputVariable = 'hello india'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello india hero!'
    Then match response.newHero == 'super man'

  Scenario: client scenario first6
    * def inputVariable = 'hello world'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello world hero!'
    And match response.newHero == 'super man'

  Scenario: client scenario second6
    * def inputVariable = 'hello india'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello india hero!'
    Then match response.newHero == 'super man'

  Scenario: client scenario first7
    * def inputVariable = 'hello world'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello world hero!'
    And match response.newHero == 'super man'

  Scenario: client scenario second7
    * def inputVariable = 'hello india'
    * def response = call read('../utils/utiltiy-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.result == 'hello india hero!'
    Then match response.newHero == 'super man'

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