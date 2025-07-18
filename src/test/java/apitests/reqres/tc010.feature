Feature: CASE GET

Background:
  * url 'https://reqres.in/api'
  * header Content-Type = 'application/json'
  * header x-api-key = 'reqres-free-v1'

Scenario: TC-010 - Obtener lista de recursos paginados
  Given path 'unknown'
  And param page = 1
  When method GET
  Then status 200
  And match response.data[0] contains
    """
    {
      "name": "#string",
      "year": "#number",
      "color": "#string"
    }
    """
