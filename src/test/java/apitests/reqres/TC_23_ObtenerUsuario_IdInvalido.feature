Feature: Prueba Obtener usuario con ID negativo
 Background:
    * url baseUrl

  Scenario: Retorna 404 al solicitar usuario con ID negativo
    * def userId = -3
    Given path 'users', userId
    When method GET
    Then status 404