Feature: Contiene tests de tipo POST para crear usuarios

  Scenario Outline: Verifica que se puede crear un usuario con nombre: <nombreUsuario>
    Given url 'https://reqres.in/api/'
    And path 'users'
    * def randomText = read('classpath:utils/generateRandomTexto.js')
    * def jobAleatorio = call randomText { baseText: 'Dev', length: 3 }
    * print jobAleatorio
    * def bodyRequest =
      """
      {
        "name": "<nombreUsuario>",
        "job": "#(jobAleatorio)"
      }
      """
    And request bodyRequest
    When method POST
    Then status 201
    And match response ==
      """
      {
        "name": "#string",
        "job": "#string",
        "id": "#string",
        "createdAt": "#string"
      }
      """

  Examples:
    | nombreUsuario     |
    | Jhonny Murillo    |
    | Ana Perez         |
    | Carlos Gutierrez  |

Scenario: Verifica que se puede crear un usuario con nombre y trabajo

    Given url 'https://reqres.in/api/'
    And path 'users'
    * def randomText = call read('classpath:utils/generateRandomTex.js') { baseText: 'User_', length: 4 }
    * def randomJob = call read('classpath:utils/generateRandomTex.js') { baseText: 'Job_', length: 4 }
    * print 'Nombre generado:', randomText
    * print 'Trabajo generado:', randomJob
    * def bodyRequest =
      """
      {
        "name": "#(randomText)",
        "job": "#(randomJob)"
      }
      """
    And request bodyRequest
    When method POST
    Then status 201
    And assert responseTime < 3000
    And match response == "#object"
    And match response ==
      """
      {
        "name": "#string",
        "job": "#string",
        "id": "#string",
        "createdAt": "#string"
      }
      """