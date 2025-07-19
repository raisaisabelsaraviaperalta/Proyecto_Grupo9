Proyecto de Testing a la API - "app.reqres.in"


Propósito del Proyecto: 
Consolidar las habilidades técnicas y metodológicas en pruebas funcionales de servicios web mediante la aplicación de conocimientos adquiridos sobre pruebas de APIs REST. El proyecto integrará análisis funcional, diseño de pruebas exploratorias y automatización básica utilizando herramientas como Postman y librerías como Karate, con el fin de asegurar la calidad y el correcto funcionamiento de los servicios ofrecidos por una API REST.

Stack de Tecnología:

1.- Postman:

   *Herramienta gráfica para pruebas manuales de APIs REST.
   
   *Permite enviar peticiones HTTP (GET, POST, PUT, DELETE, etc.), gestionar colecciones de pruebas y validar respuestas.
   
   *Ideal para pruebas exploratorias, pruebas funcionales iniciales y documentación de endpoints.

   

2.- Karate Syntax:

   *Framework open-source para automatización de pruebas de APIs.
   
   *Utiliza una sintaxis sencilla basada en Gherkin, lo que facilita escribir pruebas legibles sin necesidad de conocimientos profundos de programación.
   
   *Permite combinar pruebas funcionales, validaciones de esquemas JSON, y pruebas de rendimiento.

   

3.- Karate Runner:

   *Componente encargado de ejecutar los archivos de prueba escritos con Karate.
   
   *Se puede integrar fácilmente con sistemas de CI/CD y herramientas como Maven o Gradle.
   
   *Permite ejecutar múltiples escenarios de prueba de forma automática.


4.- Cucumber (Gherkin) Full Support:

   *Lenguaje estructurado usado para definir casos de prueba de forma clara y entendible por todos los miembros del equipo.
   
   *Karate extiende Gherkin para permitir automatización sin requerir Java explícito.
   
   *Soporte completo para escenarios, pasos (Given, When, Then), tablas de datos y estructuras reutilizables



EJECUCIÓN DE LOS TEST AUTOMATIZADOS DEL PROYECTO

PASOS DETALLADOS PARA EJECUTAR LOS TESTS:

1.- Instalar Java JDK

•	Descarga Java JDK 11 desde:

https://www.oracle.com/java/technologies/javase-jdk11-downloads.html

•	Configurar que la variable de entorno JAVA_HOME y agregar java al PATH

Verificar que se instalo correctamente:

Ejecutar el comando "java -version" en CMD


2.- Instalar Maven

•	Descarga Maven desde:

https://maven.apache.org/download.cgi

•	Configurar y agregar mvn al PATH.

Verificar que se instalo correctamente:

Ejecutar el comando "mvn -v" en CMD

3.- Instalar Visual Studio Code
   
•	Descarga desde:

https://code.visualstudio.com/

4.- Instalar extensiones necesarias en Visual Studio Code

•	Desde la barra lateral izquierda (extensiones) buscar e instalar:

-Karate Runner

-Karate Syntax

-Cucumber (Gherkin) Full Support 

5.- Clonar el repositorio del Proyecto

•	Abrir CMD y elegir la ruta donde deseas clonar el repositorio

•	Ejecutar el comando "git clone https://github.com/raisaisabelsaraviaperalta/Proyecto_Grupo9.git"

6.- Ejecutar los test automatizados desde Visual Studio Code

•	Buscar en la barra lateral izquierda la extension Karate Runner

•	Hacer clic en la extensión (Logo de persona en posición de karate)

•	Localizar carpeta "reqres" donde se encuentran todos los tests automatizados

•	Hacer clic en el botón de play al lado del nombre de la carpeta para ejecutar todos los test 

•	Escribir "APITest.java" en el campo de texto que se abre de Karate Runner y dar a ENTER 

7.- Ver resultados del test

•	Localizar la carpeta target en la carpeta principal del proyecto

•	Localizar la carpeta cucumber-html-reports

•	Abrir el archivo.html en tu navegador para ver un resumen gráfico.


   

   
