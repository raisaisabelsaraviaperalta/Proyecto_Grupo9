Feature: CASE GET

Background:
  * url 'https://reqres.in/api'
  * header Content-Type = 'application/json'
  * header x-api-key = 'reqres-free-v1'

Scenario: TC-011 - Obtener recurso específico por ID
  Given path 'unknown', '2'
  When method GET
  Then status 200
  And match response.data contains
    """
    {
      "id": 2,
      "name": "#string",
      "year": "#number",
      "color": "#string",
      "pantone_value": "#string"
    }
    """
