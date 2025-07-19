Feature: Prueba Login con contraseña Vacia

  Background:
    * url baseUrl


  Scenario: Login con email válido y campo contraseña vacio
    Given path 'login'
    And request { email: 'eve.holt@reqres.in' }
    When method POST
    Then status 400
    And match response.error == 'Missing password'