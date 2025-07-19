Feature: Prueba Login con email invalido o no registrado

  Background:
    * url baseUrl


  Scenario: Login con email inválido
    Given path 'login'
    And request { email: 'raoden@email.com', password: '123456' }
    When method POST
    Then status 400
    And match response.error == 'user not found'