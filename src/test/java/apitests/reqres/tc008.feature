Feature: CASE POST Registro fallido al omitir password 400 Bad Request

Scenario: TC-008 - Registro fallido (sin password)
  Given url 'https://reqres.in/api/register'
  And header Content-Type = 'application/json'
  And header x-api-key = 'reqres-free-v1'
  And request { email: 'raisa@gmail.com' }
  When method POST
  Then status 400
  And match response == { error: 'Missing password' }
