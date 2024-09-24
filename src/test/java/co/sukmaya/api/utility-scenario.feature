Feature: test reusable scenario

  Scenario: client scenario first
    * def inputVariable = 'hello world'
    * def response = call read('utility-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.newHero == 'super man'

  Scenario: client scenario second
    * def inputVariable = 'hello india'
    * def response = call read('utility-scenario.feature@utilityHelloWorld'){ input: inputVariable}
    * print 'result is: '+ response.result
    * print 'new hero from result: ' + response.newHero
    Then match response.newHero == 'super man'

  @ignore @utilityHelloWorld
  Scenario: helloWorld utility
    * def inputFromCleint = inputVariable
    * def output = inputFromCleint+' hero!'
    * karate.set('result',output)
    * karate.set('newHero','super man')