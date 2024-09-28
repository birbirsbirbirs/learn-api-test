Feature: test kdt1 spring boot application

  Background:
    * url 'http://localhost:8080'

  Scenario: get hero
    Given path '/hero'
    When method get
    Then status 200