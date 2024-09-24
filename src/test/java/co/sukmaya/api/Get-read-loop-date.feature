Feature: parameterized test

  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * def csvJson = read("../files/expectedUser.csv")

  Scenario: loop scenario to test data
    * karate.forEach(csvJson, function(item){ karate.call('Get-read-loop-date.feature@repeatedScenario',item) })

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

  Scenario: java LocalDate java DateTimeFormatter
    * def LocalDate = Java.type('java.time.LocalDate')
    * def date = LocalDate.now()
    * print date
    * def DateTimeFormatter = Java.type('java.time.format.DateTimeFormatter')
    * def datePatternddMMyyyyy = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    * def formatDateFirst = date.format(datePatternddMMyyyyy)
    * print 'dd/MM/yyyy: ' + formatDateFirst
    * def datePatternyyyyyMMdd = DateTimeFormatter.ofPattern("yyyy/MM/dd")
    * def formatDateSecond = date.format(datePatternyyyyyMMdd)
    * print 'yyyy/MM/dd: ' + formatDateSecond
    * def datePatternEEEE = DateTimeFormatter.ofPattern("EEEE")
    * def formatDateThird = date.format(datePatternEEEE)
    * print 'EEEE: ' + formatDateThird

  Scenario: java LocalDateTime with DateTimeFormatter
    * def LocalDateTime = Java.type('java.time.LocalDateTime')
    * def myLocalDateTime = LocalDateTime.now()
    * def DateTimeFormatter = Java.type('java.time.format.DateTimeFormatter')
    * def formatterFirst = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
    * def myLocalDateTimefirst = myLocalDateTime.format(formatterFirst)
    * print 'yyyy-MM-dd HH:mm:ss: '+ myLocalDateTimefirst
    * def formatterSecond = DateTimeFormatter.ofPattern("MM-dd-yyyy\'T\'HH:mm:ss")
    * def myLocalDateTimeSecond = myLocalDateTime.format(formatterSecond)
    * print 'MM-dd-yyyy\'T\'HH:mm:ss: '+ myLocalDateTimeSecond

  Scenario: java LocalDatetime in different time zone
    * def LocalDateTime = Java.type('java.time.LocalDateTime')
    * def DateTimeFormatter = Java.type('java.time.format.DateTimeFormatter')
    * def ZoneId = Java.type('java.time.ZoneId')
    * def newYorkTimeZone = ZoneId.of('America/New_York')
    * def myLocalDateTimeAtNewYork = LocalDateTime.now(newYorkTimeZone)
    * def formatterNewYorkTime = DateTimeFormatter.ofPattern("MM-dd-yyyy HH:mm:ss")
    * print 'locaDateTime at America/New_York: ' + myLocalDateTimeAtNewYork.format(formatterNewYorkTime)
    * def delhiTimeZone = ZoneId.of('Asia/Calcutta')
    * def myLocalDateTimeAtDelhi = LocalDateTime.now(delhiTimeZone)
    * def formatterDelhiTime = DateTimeFormatter.ofPattern("yyyy/MM/dd hh:mm a")
    * def formattedMyLocalDateTimeAtDelhi = myLocalDateTimeAtDelhi.format(formatterDelhiTime)
    * print 'localDatetime in delhi, india: '+ formattedMyLocalDateTimeAtDelhi