Feature: utility feature for this project

  @ignore @utilityHelloWorld
  Scenario: helloWorld utility
    * def inputFromCleint = inputVariable
    * def output = inputFromCleint+' hero!'
    * karate.set('result',output)
    * karate.set('newHero','super man')