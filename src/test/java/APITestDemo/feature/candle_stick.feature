Feature: candle_stick
  Description: This feature tests candle stick API functions


  Background:
    * call read('classpath:karate-config.js')
    * def candle_stickURL = baseUrl
    Given url candle_stickURL


  @9DayForecastAPI @status
  Scenario: Testing the request response status of candle_stick
    When method GET
    Then status 200


