Feature: Prueba Actualizar parcialmente un Usuario con PATCH

  Background:
     * url baseUrl

 Scenario: Actualizacion de solamente el campo Job de usuario
    Given path 'users', '2'
    And request { job: 'dev junior' }
    When method PATCH
    Then status 200
    And match response.job == 'dev junior'