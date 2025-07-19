Feature: Prueba Modificar campo Job a Vacio

  Background:
     * url baseUrl

Scenario: Actualizar campo job a valor vacío
    Given path 'users', '2'
    And request { job: '' }
    When method PATCH
    Then status 200
    And match response.job == ''