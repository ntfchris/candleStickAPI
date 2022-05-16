Feature: 9 Day Forecast
  Description: This feature tests 9 Day Forecast API functions


  Background:
    * call read('classpath:karate-config.js')
    * def nineDayForecastURL = baseUrl
    Given url nineDayForecastURL


  @9DayForecastAPI @status
  Scenario: Testing the request response status of 9 day Forecast
    When method GET
    Then status 200

  @9DayForecastAPI @relativeHumidity
  Scenario: Extract relative humidity for the day after tomorrow
    When method GET
    Then status 200
    * def forecastDayAfterTmr = response.forecast_detail[1].forecast_date
    * def minRelativeHumid = response.forecast_detail[1].min_rh
    * def maxRelativeHumid = response.forecast_detail[1].max_rh
    And print 'The Humidity of the day after tomorrow (', forecastDayAfterTmr, ') is: ', minRelativeHumid, '% -', maxRelativeHumid,'%'
