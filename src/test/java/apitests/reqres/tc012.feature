Feature: CASE GET

Background:
  * url 'https://reqres.in/api'
  * header Content-Type = 'application/json'
  * header x-api-key = 'reqres-free-v1'

Scenario: TC-012 - Obtener usuarios con retardo
  Given path 'users'
  And param delay = 3
  When method GET
  Then status 200
  And match response.data[0] contains
    """
    {
      "id": "#number",
      "email": "#string"
    }
    """
