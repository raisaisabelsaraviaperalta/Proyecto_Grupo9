Feature: CASE PUT 

Background:
  * url 'https://reqres.in/api'
  * header Content-Type = 'application/json'
  * header x-api-key = 'reqres-free-v1'

Scenario: TC-009 - Actualización completa de usuario
  * def payload =
    """
    {
      "name": "Marta",
      "job": "Ingeniera QA"
    }
    """
  Given path 'users', '2'
  And request payload
  When method PUT
  Then status 200
  And match response contains
    """
    {
      "name": "Marta",
      "job": "Ingeniera QA",
      "updatedAt": "#present"
    }
    """
