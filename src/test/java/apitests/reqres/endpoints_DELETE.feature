Feature: Contiene tests de tipo DELETE

  Scenario: Verifica que se puede eliminar un usuario
    Given url 'https://reqres.in/api/users/95'
    And header x-api-key = 'reqres-free-v1'
    When method DELETE
    Then status 204
    And assert responseTime < 3000


