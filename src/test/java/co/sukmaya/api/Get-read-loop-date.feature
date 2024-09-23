Feature: parameterized test

  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * def csvJson = read("../files/expectedUser.csv")

  Scenario: loop scenario to test data
    * karate.forEach(csvJson, function(item){ karate.call('Get-parameterized.feature@repeatedScenario',item) })

  @repeatedScenario @ignore
  Scenario: test each data
    Given path 'posts'
    And path id
    When method get
    Then status 200
    And match response.id == parseInt(id)


  Scenario: test string function
    * def heroName = 'hello   '
    * def trimHeroName = heroName.trim()
    And assert 'hello' == trimHeroName
    * def truncateTrimHeroName = trimHeroName.substring(0,2)
    And assert truncateTrimHeroName.length == 2

  Scenario: different date format with java DateTimeFormatter
    * def LocalDate = Java.type('java.time.LocalDate')
    * def date = LocalDate.now()
    * print date
    * def DateTimeFormatter = Java.type('java.time.format.DateTimeFormatter')
    * def datePattern = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    * def formatDate = date.format(datePattern)
    * print formatDate