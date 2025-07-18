Feature:  CASE POST Registro exitoso 

Background:
  * def apiKey = 'reqres-free-v1'

Scenario: TC-007 - Registro exitoso
  Given url 'https://reqres.in/api/register'
  And header Content-Type = 'application/json'
  And header x-api-key = apiKey
  * def payload =
    """
    {
      "email": "eve.holt@reqres.in",
      "password": "pistol"
    }
    """
  And request payload
  When method POST
  Then status 200
  And match response contains { id: '#number', token: '#string' }
